L_p0n1 = load('L_multisession0_fixed1_SigmaKappa1_reputation0_humanity0_valence_p0_valence_n1.mat');
L_p1n0 = load('L_multisession0_fixed1_SigmaKappa1_reputation0_humanity0_valence_p1_valence_n0.mat');
L_p1n1 = load('L_multisession0_fixed1_SigmaKappa1_reputation0_humanity0_valence_p1_valence_n1.mat');

L_m0r0h0p0n0a0 = load('L_multisession0_fixed1_SigmaKappa1_reputation0_humanity0_valence_p0_valence_n0_assymetry_choice0.mat');
L_m0r0h0p0n1a0 = load('L_multisession0_fixed1_SigmaKappa1_reputation0_humanity0_valence_p0_valence_n1_assymetry_choice0.mat');
L_m0r0h0p1n0a0 = load('L_multisession0_fixed1_SigmaKappa1_reputation0_humanity0_valence_p1_valence_n0_assymetry_choice0.mat');
L_m0r1h0p0n0a0 = load('L_multisession0_fixed1_SigmaKappa1_reputation1_humanity0_valence_p0_valence_n0_assymetry_choice0.mat');
L_m0r0h1p0n0a0 = load('L_multisession0_fixed1_SigmaKappa1_reputation0_humanity1_valence_p0_valence_n0_assymetry_choice0.mat');
L_m0r0h0p1n1a0 = load('L_multisession0_fixed1_SigmaKappa1_reputation0_humanity0_valence_p1_valence_n1_assymetry_choice0.mat');
L_m0r0h0p0n0a1 = load('L_multisession0_fixed1_SigmaKappa1_reputation0_humanity0_valence_p0_valence_n0_assymetry_choice1.mat');
L_k0m0r0h0p0n0a1 = load('L_multisession0_fixed1_SigmaKappa0_reputation0_humanity0_valence_p0_valence_n0_assymetry_choice1.mat');



Lgood = [L_m0r0h0p0n0a0.L;L_m0r1h0p0n0a0.L;L_m0r0h1p0n0a0.L;L_m0r0h0p0n1a0.L;L_m0r0h0p1n0a0.L;L_m0r0h0p1n1a0.L; L_m0r0h0p0n0a1.L; L_k0m0r0h0p0n0a1.L];


%%
clear all; close all;
new = load('Ushifted2_L_multisession0_fixed1_SigmaKappa1_reputation0_humanity0_valence_p0_valence_n0_assymetry_choice0_beta0');
Lnew = new.L;
old = load('L_multisession0_fixed1_SigmaKappa1_reputation0_humanity0_valence_p0_valence_n0_assymetry_choice0_beta0');
Lold = old.L;

[posterior,out] = VBA_groupBMC([Lnew; Lold]);

clear all; close all;
old = load('L_counter0_multisession0_fixed1_SigmaKappa1_reputation0_humanity0_valence_p0_valence_n0_assymetry_choice0_beta0');
Lold = old.L;

new = load('L_counter1_multisession0_fixed1_SigmaKappa1_reputation0_humanity0_valence_p0_valence_n0_assymetry_choice0_beta0');
Lnew = new.L;

[posterior,out] = VBA_groupBMC([Lnew; Lold]);