%% HRTF from a rotating audio source
% http://en.wikipedia.org/wiki/Head-related_transfer_function

% loading HRIR (head related impulse response) data file from subject 3
load('hrir_final_subject03.mat');

%loading wav audio in memory
original_sound = wavread('bell.wav');

for azimuth = 0:360
    elevation = 0;

    filter_left = getNearestUCDpulse(azimuth, elevation, hrir_l);
    filter_right = getNearestUCDpulse(azimuth, elevation, hrir_r);



end
%%  TODO
%  select automatically the correct channels if the sound is mono

% filter the left/right channels
leftsound = filter(filter_left, 1, original_sound(:,1));
rightsound = filter(filter_right, 1, original_sound(:,2));

%% compose the filtered channel
finalsound = [leftsound, rightsound];
wavwrite(finalsound, 44100, 16, 'filtered.wav');
%sound(sound_or, 44100);