% http://en.wikipedia.org/wiki/Head-related_transfer_function
% loading HRIR (head related impulse response) data file from subject 3
load('hrir_final_subject03.mat')

azimuth = 0;
elevation = 90;

filter_left = getNearestUCDpulse(azimuth, elevation, hrir_l);
filter_right = getNearestUCDpulse(azimuth, elevation, hrir_r);

sound_or = wavread('bell.wav');

leftsound = filter(filter_left, 1, sound_or(:,1));
rightsound = filter(filter_right, 1, sound_or(:,2));

finalsound = [leftsound, rightsound];
wavwrite(finalsound, 44100, 'filtered.wav');
%sound(sound_or, 44100);