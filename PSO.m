% Homework 6 - Shashank - Johann
% Particle Swarm Optimization

close all
clear all
clc

cf = @(x) multi_gauss_fn(x);  % Cost Function
nDim = 2; % Number of Dimensions
DimSize = [1 nDim];
lb = 0;
ub = 50;

% Parameters
k = 90;                % Number of iterations
pop = 100;              % Number of particles in swarm
w = 1;                  % Intertia Coefficient
c1 = 2;                 % Local acceleration coefficient
c2 = 2;                 % Global acceleration coefficient

% Intialization
% Empty Structure Definition
e_particle.Position=[];
e_particle.Velocity=[];
e_particle.Cost=[];
e_particle.Best.Position=[];
e_particle.Best.Cost=[];

% Population Array
particle = repmat(e_particle,pop,1);

% Global Initialization
GBest.Cost = inf;

% Uniform Random Distribution of Particles
for i=1:pop
    particle(i).Position = unifrnd(lb,ub,DimSize);
    particle(i).Velocity = zeros(DimSize);
    particle(i).Cost = cf(particle(i).Position);
    
    % Local Best
    particle(i).Best.Position = particle(i).Position;
    particle(i).Best.Cost = particle(i).Cost;
    
    % Global Best
    if particle(i).Best.Cost < GBest.Cost
        GBest = particle(i).Best;
    end
end

BestCost = zeros(k,1);      % Best Cost in each iteration

% Swarm Optimization
for i=1:k
    for j=1:pop
        
        % Velocity Update
        particle(j).Velocity = w*particle(j).Velocity...
            + rand(DimSize)*c1.*(particle(j).Best.Position-particle(j).Position)...
            + rand(DimSize)*c2.*(GBest.Position-particle(j).Position);
        
        % Position Update
        particle(j).Position = particle(j).Position + particle(j).Velocity;
        particle(j).Cost = cf(particle(j).Position);
        
        if particle(j).Cost < particle(j).Best.Cost
            particle(j).Best.Position = particle(j).Position;
            particle(j).Best.Cost = particle(j).Cost;
            % Update Global Best
            if particle(j).Best.Cost < GBest.Cost
                GBest = particle(j).Best;
            end
        end  
    end
    BestCost(k) = GBest.Cost;
    
    % Update weight for convergence
    w = w * 0.99;
end

GBest


% Case 2
cf = @(x) fn_2(x);  % Cost Function
nDim = 2; % Number of Dimensions
DimSize = [1 nDim];
lb = -5;
ub = 5;

% Parameters
k = 200;                 % Number of iterations
pop = 100;              % Number of particles in swarm
w = 1;                  % Intertia Coefficient
c1 = 2;                 % Local acceleration coefficient
c2 = 2;                 % Global acceleration coefficient

% Intialization
% Empty Structure Definition
e_particle.Position=[];
e_particle.Velocity=[];
e_particle.Cost=[];
e_particle.Best.Position=[];
e_particle.Best.Cost=[];

% Population Array
particle = repmat(e_particle,pop,1);

% Global Initialization
GBest.Cost = inf;

% Uniform Random Distribution of Particles
for i=1:pop
    particle(i).Position = unifrnd(lb,ub,DimSize);
    particle(i).Velocity = zeros(DimSize);
    particle(i).Cost = cf(particle(i).Position);
    
    % Local Best
    particle(i).Best.Position = particle(i).Position;
    particle(i).Best.Cost = particle(i).Cost;
    
    % Global Best
    if particle(i).Best.Cost < GBest.Cost
        GBest = particle(i).Best;
    end
end

BestCost = zeros(k,1);      % Best Cost in each iteration

% Swarm Optimization
for i=1:k
    for j=1:pop
        
        % Velocity Update
        particle(j).Velocity = w*particle(j).Velocity...
            + rand(DimSize)*c1.*(particle(j).Best.Position-particle(j).Position)...
            + rand(DimSize)*c2.*(GBest.Position-particle(j).Position);
        % Position Update
        particle(j).Position = particle(j).Position + particle(j).Velocity;
        particle(j).Cost = cf(particle(j).Position);
        
        if particle(j).Cost < particle(j).Best.Cost
            particle(j).Best.Position = particle(j).Position;
            particle(j).Best.Cost = particle(j).Cost;
            % Update Global Best
            if particle(j).Best.Cost < GBest.Cost
                GBest = particle(j).Best;
            end
        end  
    end
    BestCost(k) = GBest.Cost;
    
    % Update weight for convergence
    w = w * 0.99;
end

GBest


% Case 3
cf = @(x) rastrigin(x);  % Cost Function
nDim = 2; % Number of Dimensions
DimSize = [1 nDim];
lb = -5;
ub = 5;

% Parameters
k = 200;                 % Number of iterations
pop = 100;              % Number of particles in swarm
w = 1;                  % Intertia Coefficient
c1 = 2;                 % Local acceleration coefficient
c2 = 2;                 % Global acceleration coefficient

% Intialization
% Empty Structure Definition
e_particle.Position=[];
e_particle.Velocity=[];
e_particle.Cost=[];
e_particle.Best.Position=[];
e_particle.Best.Cost=[];

% Population Array
particle = repmat(e_particle,pop,1);

% Global Initialization
GBest.Cost = inf;

% Uniform Random Distribution of Particles
for i=1:pop
    particle(i).Position = unifrnd(lb,ub,DimSize);
    particle(i).Velocity = zeros(DimSize);
    particle(i).Cost = cf(particle(i).Position);
    
    % Local Best
    particle(i).Best.Position = particle(i).Position;
    particle(i).Best.Cost = particle(i).Cost;
    
    % Global Best
    if particle(i).Best.Cost < GBest.Cost
        GBest = particle(i).Best;
    end
end

BestCost = zeros(k,1);      % Best Cost in each iteration

% Swarm Optimization
for i=1:k
    for j=1:pop
        
        % Velocity Update
        particle(j).Velocity = w*particle(j).Velocity...
            + rand(DimSize)*c1.*(particle(j).Best.Position-particle(j).Position)...
            + rand(DimSize)*c2.*(GBest.Position-particle(j).Position);
        % Position Update
        particle(j).Position = particle(j).Position + particle(j).Velocity;
        particle(j).Cost = cf(particle(j).Position);
        
        if particle(j).Cost < particle(j).Best.Cost
            particle(j).Best.Position = particle(j).Position;
            particle(j).Best.Cost = particle(j).Cost;
            % Update Global Best
            if particle(j).Best.Cost < GBest.Cost
                GBest = particle(j).Best;
            end
        end  
    end
    BestCost(k) = GBest.Cost;
    
    % Update weight for convergence
    w = w * 0.99;
end

GBest



