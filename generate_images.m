exp_type = 'gray'; % 'gray' = blackness intervals
bg = 'black'; % 'white', 'black', 'gray', 'chang[e]' --> NEEDS TO BE 5 CHAR's
root_name = 'grid_';
border = 'True'; %True = white border around dots
directory_name = 'Experiments/NEW_SGs/';
border_grayness = 0.8;
border_px_width = 1;
scaling_factor = 3; % Size of grid is N*256 by N*256

% Image translation parameters
updown_shift = 0; % positive is up, negative is down
rightleft_shift = 100; % positive is right, negative is left

% General parameters
internal_circle_diameter_px = scaling_factor*10;
external_circle_diameter_px = scaling_factor*(10+border_px_width);
% HG
%internal_circle_diameter_px = 1;
%external_circle_diameter_px = 1;

img_sz = scaling_factor * [256 256];

num_lines_x = 5;
num_lines_y = 5;
line_width_px = scaling_factor*5;
%circle_diameter_px = scaling_factor*10;

% Different dot color vectors
%%%%% for making color gradients %%%%
length = 21;
red1 = [1.5,1,1]; % change the 1.5 to R G B positions
red2 = [0,-0.5,-0.5]; % change the 0 to R G B positions
intervals = [linspace(red1(1),red2(1),length)', linspace(red1(2),red2(2),length)', linspace(red1(3),red2(3),length)'];
gray_intervals = {intervals(1,:)};
for i = 2:size(intervals,1)
    gray_intervals = [gray_intervals; intervals(i,:)];
end
gray_intervals = reshape(gray_intervals,[1 21]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% gray_intervals = {[0 0 0] [0.05 0.05 0.05] [0.10 0.10 0.10] [0.15 0.15 0.15] [0.20 0.20 0.20] [0.25 0.25 0.25] [0.30 0.30 0.30] [0.35 0.35 0.35] [0.40 0.40 0.40] [0.45 0.45 0.45] [0.50 0.50 0.50] [0.55 0.55 0.55] [0.60 0.60 0.60] [0.65 0.65 0.65] [0.70 0.70 0.70] [0.75 0.75 0.75] [0.80 0.80 0.80] [0.85 0.85 0.85] [0.90 0.90 0.90] [0.95 0.95 0.95] [1 1 1]};
border_unit = {[1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1]};

for i = 1:size(gray_intervals,2)
    num_tag = 100*gray_intervals{1, i}(1);
    gray_names{i} = strcat(root_name, num2str(num_tag));
end
% Finds experiment
if exp_type == 'gray'
    circle_intervals = gray_intervals;
    parameter_names = gray_names;
end

parameters = struct( ...
    'line_color', [0.5 0.5 0.5], ... 
    'internal_circle_color', circle_intervals, ...
    'external_circle_color', cellfun(@(x) x*border_grayness,border_unit,'un',0));
    % Dot Blackness
    %'line_color', [0.5 0.5 0.5], ... 
    %'internal_circle_color', circle_intervals, ...
    %'external_circle_color', cellfun(@(x) x*border_grayness,border_unit,'un',0));

    % Background Blackness
    %'line_color', [0.5 0.5 0.5], ... 
    %'internal_circle_color', {[1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1]}, ...
    %'external_circle_color', cellfun(@(x) x*border_grayness,border_unit,'un',0));

    % Line Blackness
    %'line_color', circle_intervals, ...
    %'internal_circle_color', [1,1,1], ...
    %'external_circle_color', [0,0,0]);
    
    % HERMANN GRID
    %'line_color', circle_intervals, ...
    %'internal_circle_color', circle_intervals, ...
    %'external_circle_color', circle_intervals);
    
    % HG Background
    %'line_color', [1 1 1], ...
    %'internal_circle_color', circle_intervals, ...
    %'external_circle_color', circle_intervals);

    %'external_circle_color', {[0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2] [0.2 0.2 0.2]});
    %'external_circle_color', {[1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1] [1 1 1]});
    %'external_circle_color', {[0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5] [0.5 0.5 0.5]});
%parameter_names = {'SG_white', 'SG_black', 'SG_control_white', 'SG_control_black'};
%assert(length(parameters)==length(parameter_names));

for prm_i = 1:size(parameters,2)
    %bkd_color = parameters(prm_i).bkd_color;
    if bg == 'white'
        bkd_color = [1 1 1]; % static white BG
 %       bkd_color = prm_i/length(parameters) * [1 1 1]; % background changing shades
    elseif bg == 'black'
        bkd_color = [0 0 0]; % static white BG
 %       bkd_color = prm_i/length(parameters) * [1 1 1]; % background changing shades
    elseif bg == 'grays'
        bkd_color = [0.5, 0.5, 0.5];
    elseif bg =='chang'
        bkd_color = prm_i * [1 1 1];
    elseif bg == 'green'
        bkd_color = [0.5, 0.7, 0.5];
    elseif bg == 'red00'
        bkd_color = [0.7, 0.5, 0.5];
    elseif bg == 'blue0'
        bkd_color = [0.5, 0.5, 0.7];
    else
        bkd_color = [1 0 0];
    end
    
    line_color = parameters(prm_i).line_color;
    internal_circle_color = parameters(prm_i).internal_circle_color;
    external_circle_color = parameters(prm_i).external_circle_color;
    
    % Start with background
    img_canvas = repmat(reshape(bkd_color, 1, 1, 3), img_sz(1), img_sz(2));

    
    % Draw line borders
%      border_size = 1;
%      line_border_color = [1 1 1];
%      
%      tmp_x = linspace(1, img_sz(1)-updown_shift, num_lines_x+2);
%      tmp_y = linspace(1, img_sz(2)+rightleft_shift, num_lines_y+2);
%      lines_pos_x = round(tmp_x(2:end-1));
%      lines_pos_y = round(tmp_y(2:end-1));
%      for line_i = 1:length(lines_pos_x)
%          c_rng = (lines_pos_x(line_i)-ceil(line_width_px/2+border_size)):(lines_pos_x(line_i)+floor(line_width_px/2+border_size));
%          img_canvas(c_rng, :, :) = repmat(reshape(line_border_color, 1, 1, 3), length(c_rng), size(img_canvas, 2));
%      end
%      for line_i = 1:length(lines_pos_y)
%          c_rng = (lines_pos_y(line_i)-ceil(line_width_px/2+border_size)):(lines_pos_y(line_i)+floor(line_width_px/2+border_size));
%          img_canvas(:, c_rng, :) = repmat(reshape(line_border_color, 1, 1, 3), size(img_canvas, 1), length(c_rng));
%      end
    
    
    % Draw lines
     tmp_x = linspace(1, img_sz(1)-updown_shift, num_lines_x+2);
     tmp_y = linspace(1, img_sz(2)+rightleft_shift, num_lines_y+2);
     lines_pos_x = round(tmp_x(2:end-1));
     lines_pos_y = round(tmp_y(2:end-1));
%     for line_i = 1:length(lines_pos_x)
%         c_rng = (lines_pos_x(line_i)-ceil(line_width_px/2)):(lines_pos_x(line_i)+floor(line_width_px/2));
%         img_canvas(c_rng, :, :) = repmat(reshape(line_color, 1, 1, 3), length(c_rng), size(img_canvas, 2));
%     end
%     for line_i = 1:length(lines_pos_y)
%         c_rng = (lines_pos_y(line_i)-ceil(line_width_px/2)):(lines_pos_y(line_i)+floor(line_width_px/2));
%         img_canvas(:, c_rng, :) = repmat(reshape(line_color, 1, 1, 3), size(img_canvas, 1), length(c_rng));
%     end
    

    % Draw circles at intersections
    
    % Draw external circles at intersections
    if border == 'True'
        if ~isempty(external_circle_color)
            [centers_x, centers_y] = meshgrid(lines_pos_y, lines_pos_x);
            img_canvas_R = img_canvas(:, :, 1);
            img_canvas_G = img_canvas(:, :, 2);
            img_canvas_B = img_canvas(:, :, 3);
            for center_i = 1:size(centers_x(:),1)
                c_x = centers_x(center_i);
                c_y = centers_y(center_i);
                [rd_x, rd_y] = meshgrid((1:img_sz(1))-c_x, (1:img_sz(2))-c_y);
                is_in_circle = sqrt(rd_x.^2 + rd_y.^2) < (external_circle_diameter_px/2);
                img_canvas_R(is_in_circle) = external_circle_color(1);
                img_canvas_G(is_in_circle) = external_circle_color(2);
                img_canvas_B(is_in_circle) = external_circle_color(3);
            end
            img_canvas(:, :, 1) = img_canvas_R;
            img_canvas(:, :, 2) = img_canvas_G;
            img_canvas(:, :, 3) = img_canvas_B;
        end
    end
    
    % Draw internal circles at intersections
    if ~isempty(internal_circle_color)
        [centers_x, centers_y] = meshgrid(lines_pos_y, lines_pos_x);
        img_canvas_R = img_canvas(:, :, 1);
        img_canvas_G = img_canvas(:, :, 2);
        img_canvas_B = img_canvas(:, :, 3);
        for center_i = 1:size(centers_x(:),1)
            c_x = centers_x(center_i);
            c_y = centers_y(center_i);
            [rd_x, rd_y] = meshgrid((1:img_sz(1))-c_x, (1:img_sz(2))-c_y);
            is_in_circle = sqrt(rd_x.^2 + rd_y.^2) < (internal_circle_diameter_px/2);
            img_canvas_R(is_in_circle) = internal_circle_color(1);
            img_canvas_G(is_in_circle) = internal_circle_color(2);
            img_canvas_B(is_in_circle) = internal_circle_color(3);
        end
        img_canvas(:, :, 1) = img_canvas_R;
        img_canvas(:, :, 2) = img_canvas_G;
        img_canvas(:, :, 3) = img_canvas_B;
    end

    % Draw image
    imshow(img_canvas);

    % Save (may overwrite)
    imwrite(img_canvas, [directory_name parameter_names{prm_i} '.png']);
end
