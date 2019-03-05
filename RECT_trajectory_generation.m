% close all
% clear all
% clc

Num_stage = 6;
Req_pos = 10;
Each_station_period = 100;

RECT_X(:,1) = 0:(Num_stage*Each_station_period);
RECT_Y(:,1) = 0:(Num_stage*Each_station_period);
RECT_Z(:,1) = 0:(Num_stage*Each_station_period);

RECT_X(1:Each_station_period+1,2) = zeros(Each_station_period+1,1);
RECT_X(Each_station_period+2:2*Each_station_period+1,2) = Req_pos*ones(Each_station_period,1);
RECT_X(2*Each_station_period+2:3*Each_station_period+1,2) = Req_pos*ones(Each_station_period,1);
RECT_X(3*Each_station_period+2:4*Each_station_period+1,2) = zeros(Each_station_period,1);
RECT_X(4*Each_station_period+2:5*Each_station_period+1,2) = zeros(Each_station_period,1);
RECT_X(5*Each_station_period+2:6*Each_station_period+1,2) = zeros(Each_station_period,1);

RECT_Y(1:Each_station_period+1,2) = zeros(Each_station_period+1,1);
RECT_Y(Each_station_period+2:2*Each_station_period+1,2) = zeros(Each_station_period,1);
RECT_Y(2*Each_station_period+2:3*Each_station_period+1,2) = Req_pos*ones(Each_station_period,1);
RECT_Y(3*Each_station_period+2:4*Each_station_period+1,2) = Req_pos*ones(Each_station_period,1);
RECT_Y(4*Each_station_period+2:5*Each_station_period+1,2) = zeros(Each_station_period,1);
RECT_Y(5*Each_station_period+2:6*Each_station_period+1,2) = zeros(Each_station_period,1);

RECT_Z(1:Each_station_period+1,2) = Req_pos*ones(Each_station_period+1,1);
RECT_Z(Each_station_period+2:2*Each_station_period+1,2) = Req_pos*ones(Each_station_period,1);
RECT_Z(2*Each_station_period+2:3*Each_station_period+1,2) = Req_pos*ones(Each_station_period,1);
RECT_Z(3*Each_station_period+2:4*Each_station_period+1,2) = Req_pos*ones(Each_station_period,1);
RECT_Z(4*Each_station_period+2:5*Each_station_period+1,2) = Req_pos*ones(Each_station_period,1);
RECT_Z(5*Each_station_period+2:6*Each_station_period+1,2) = zeros(Each_station_period,1);

% plot3(RECT_X(:,2),RECT_Y(:,2),RECT_Z(:,2));
% grid
