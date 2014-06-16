use Mojolicious::Lite;

# routes
get '/' => sub {
    my $self = shift;
    $self->render;
} => '/index';

get '/rf' => sub {
    my $self = shift;
    my $region = $self->param('region');
    my $lobby  = $self->param('lobby');
    my $game_mode = $self->param('game_mode');
    my $skill     = $self->param('skill');
    my $result    = $self->param('result');
    my $duration  = $self->param('duration');
    my $hero      = $self->param('hero');
    $self->stash(region => $region);
    $self->stash(lobby => $lobby);
    $self->stash(game_mode => $game_mode);
    $self->stash(skill => $skill);
    $self->stash(result => $result);
    $self->stash(duration => $duration);
    $self->stash(hero => $hero);
} => '/rf';

# render
any '/external' => sub {
    my $self = shift;
    $self->render('index');
};

app->start;
