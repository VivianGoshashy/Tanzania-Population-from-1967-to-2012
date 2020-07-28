# loading packages -----------------------------------------------------------------------------
library(tidyverse)
library(dplyr)
library(magrittr)
library(ggplot2)
library(readr)
library(ggmap)
library(magick)
library(cowplot)
theme_set(theme_cowplot())

# Cleares the environment ----------------------------------------------------------------------
rm(list=ls())

# Importing File -------------------------------------------------------------------------------
TNZ_Pop <- read_csv("../../2010 Demographic Health Survey/Tanzania population.csv")


# Cleaning Data --------------------------------------------------------------------------------
# Rename variables ( Constituency and Region)
names(TNZ_Pop)[names(TNZ_Pop) == " Region"] <- "Regions"
names(TNZ_Pop)[names(TNZ_Pop) == "Land Area (Sq. Kms)"] <- "Land_Area(Sq.Kms)"
names(TNZ_Pop)[names(TNZ_Pop) == "Population Density - 1967"] <- "1967"
names(TNZ_Pop)[names(TNZ_Pop) == "Population Density - 1978"] <- "1978"
names(TNZ_Pop)[names(TNZ_Pop) == "Population Density - 1988"] <- "1988"
names(TNZ_Pop)[names(TNZ_Pop) == "Population Density - 2002"] <- "2002"
names(TNZ_Pop)[names(TNZ_Pop) == "Population Density - 2012"] <- "2012"
 
# removing multiple rows
TNZ_Pop %<>% filter(!Region %in% c("Tanzania", "Tanzania Mainland", "Tanzania Zanzibar"))

# Finding the sum of each political party and removing some columns






