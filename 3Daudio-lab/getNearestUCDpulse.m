function [pulse, azerr, elerr] = getNearestUCDpulse(azimuth, elevation, h3d);
% [pulse, azerr, elerr] = getNearestUCDpulse(azimut, elevation, h3d)
%
% retrieves the impulse  response from h3d that is closest to the
% specified azimith and elevations (in degress);

if (nargin < 1)
    fprintf('Format: [pulse, azerr, elerr] = getNearestUCDPulse(azimuth, elevation, h3d)\n');
    return;
end;

azimuth = pvaldeg(azimuth); %validation deg
if ((azimuth < -90) || (azimuth > 90))
    error('Invalid Azimuth');
end;

elevation = pvaldeg(elevation);
elmax = 50;
elindices = 1:elmax;

elevations = -45 + 5.625*(elindices-1);
el = round((elevation+45)/5.625 + 1);
el = max(el,1);
el = min(el,elmax);

elerr = pvaldeg(elevation - elevations(el));

azimuths = [-80 -65 -55 -45:5:45 55 65 80];
[azerr, az] = min(abs(pvaldeg(abs(azimuths - azimuth))));

pulse = squeeze(h3d(az, el, :));