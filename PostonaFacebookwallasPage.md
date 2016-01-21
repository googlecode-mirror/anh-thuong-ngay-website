Is it possible to post on a Facebook wall as application and not as user? As far as I understand an application is not a valid user for Facebook, but there are numerous comments about posting as Page and not as User or Application.

How can I do it using PHP Facebook API?

+ Answer:

You need the publish\_stream,manage\_pages permissions. The code is something like:

<?php
// This code is just a snippet of the example.php script
// from the PHP-SDK <https://github.com/facebook/facebook-php-sdk/blob/master/examples/example.php>
require '../src/facebook.php';

// Create our Application instance (replace this with your appId and secret).
$facebook = new Facebook(array(
> 'appId'  => 'app\_id',
> 'secret' => 'app\_secret',
));

// Get User ID
$user = $facebook->getUser();

if ($user) {
> try {
> > $page\_id = 'page\_id';
> > $page\_info = $facebook->api("/$page\_id?fields=access\_token");
> > if( !empty($page\_info['access\_token']) ) {
> > > $args = array(
> > > > 'access\_token'  => $page\_info['access\_token'],
> > > > 'message'       => "I'm a Page!"

> > > );
> > > $post\_id = $facebook->api("/$page\_id/feed","post",$args);

> > } else {
> > > $permissions = $facebook->api("/me/permissions");
> > > if( !array\_key\_exists('publish\_stream', $permissions['data'][0](0.md)) 
> > > > !array\_key\_exists('manage\_pages', $permissions['data'][0](0.md))) {
> > > > // We don't have one of the permissions
> > > > // Alert the admin or ask for the permission!
> > > > header( "Location: " . $facebook->getLoginUrl(array("scope" => "publish\_stream, manage\_pages")) );

> > > }


> }
> } catch (FacebookApiException $e) {
> > error\_log($e);
> > $user = null;

> }
}

// Login or logout url will be needed depending on current user state.
if ($user) {
> $logoutUrl = $facebook->getLogoutUrl();
} else {
> $loginUrl = $facebook->getLoginUrl(array('scope'=>'manage\_pages,publish\_stream'));
}

// ... rest of your code
?>

Link: http://stackoverflow.com/questions/5326537/post-on-a-facebook-wall-as-page-not-as-user