#
# The machine on which to run, the account to which to charge computational
# resources, the base directory in which to create the experiment directory
# (if different from the default location), and the name of the experiment
# subdirectory.
#
MACHINE="AMI"
ACCOUNT="none"
COMPILER="gnu"
EXPT_SUBDIR="GST_INDY_v1beta"
EXPT_BASEDIR="/home/$USER/expt_dirs"

NNODES_MAKE_OROG="1"
NNODES_MAKE_ICS="1"
NNODES_MAKE_LBCS="1"
NNODES_RUN_POST="1"
NNODES_MAKE_SFC_CLIMO="1"
OMP_NUM_THREADS_RUN_FCST="1"
OMP_STACKSIZE_RUN_FCST="1024m"
PPN_MAKE_ICS="36"
PPN_MAKE_LBCS="36"
PPN_RUN_POST="2"
PPN_MAKE_GRID="16"
PPN_MAKE_OROG="12"
PPN_MAKE_SFC_CLIMO="36"
PARTITION_DEFAULT=""
QUEUE_DEFAULT=""

RUN_ENVIR="community"
PREEXISTING_DIR_METHOD="rename"



#
# Flag specifying whether or not to automatically resubmit the worfklow
# to the batch system via cron and, if so, the frequency (in minutes) of
# resubmission.
#
USE_CRON_TO_RELAUNCH="TRUE"
CRON_RELAUNCH_INTVL_MNTS="01"
#
# Flag specifying whether to run in verbose mode.
#
VERBOSE="TRUE"
#
# TEST PURPOSE/DESCRIPTION:
# ------------------------
#
# Testing a custom grid for the AMS 2022 SRW Workshop.
#

RUN_ENVIR="community"
PREEXISTING_DIR_METHOD="rename"

CCPP_PHYS_SUITE="FV3_RRFS_v1beta"
POST_OUTPUT_DOMAIN_NAME="INDY"

EXTRN_MDL_NAME_ICS="HRRR"
EXTRN_MDL_NAME_LBCS="RAP"
USE_USER_STAGED_EXTRN_FILES="TRUE"

DATE_FIRST_CYCL="20190615"
DATE_LAST_CYCL="20190615"
CYCL_HRS=( "18" )

FV3GFS_FILE_FMT_ICS="grib2"
FV3GFS_FILE_FMT_LBCS="grib2"

FCST_LEN_HRS="6"
LBC_SPEC_INTVL_HRS="6"
WTIME_RUN_FCST="01:30:00"
#
# Locations and names of user-staged external model files for generating
# ICs and LBCs.
#
USE_USER_STAGED_EXTRN_FILES="TRUE"
EXTRN_MDL_SOURCE_BASEDIR_ICS="/contrib/GST/model_data/HRRR"
EXTRN_MDL_FILES_ICS=( "hrrr.wrfprsf00.grib2" )
EXTRN_MDL_SOURCE_BASEDIR_LBCS="/contrib/GST/model_data/RAP"
EXTRN_MDL_FILES_LBCS=( "rap.wrfprsf06.grib2" )
 
# Define custom grid.
GRID_GEN_METHOD="ESGgrid"
QUILTING="TRUE"

ESGgrid_LON_CTR="-86.16"
ESGgrid_LAT_CTR="39.77"

ESGgrid_DELX="3000.0"
ESGgrid_DELY="3000.0"

ESGgrid_NX="200"
ESGgrid_NY="200"

ESGgrid_PAZI="0.0"

ESGgrid_WIDE_HALO_WIDTH="6"
DT_ATMOS="${DT_ATMOS:-40}"
# Set the layout of the domain decomposition
LAYOUT_X="${LAYOUT_X:-8}"
LAYOUT_Y="${LAYOUT_Y:-8}"
BLOCKSIZE="${BLOCKSIZE:-40}"


WRTCMP_write_groups="1"
WRTCMP_write_tasks_per_group=$(( 1*LAYOUT_Y ))
WRTCMP_output_grid="lambert_conformal"
WRTCMP_cen_lon="${ESGgrid_LON_CTR}"
WRTCMP_cen_lat="${ESGgrid_LAT_CTR}"
WRTCMP_stdlat1="${ESGgrid_LAT_CTR}"
WRTCMP_stdlat2="${ESGgrid_LAT_CTR}"
WRTCMP_nx="197"
WRTCMP_ny="197"
WRTCMP_lon_lwr_left="-89.47120417"
WRTCMP_lat_lwr_left="37.07809642"
WRTCMP_dx="${ESGgrid_DELX}"
WRTCMP_dy="${ESGgrid_DELY}"


# Set maximum number of retries in case of failure
MAXTRIES_MAKE_GRID="2"
MAXTRIES_MAKE_OROG="1"
MAXTRIES_MAKE_SFC_CLIMO="1"
MAXTRIES_GET_EXTRN_ICS="1"
MAXTRIES_GET_EXTRN_LBCS="1"
MAXTRIES_MAKE_ICS="2"
MAXTRIES_MAKE_LBCS="2"
MAXTRIES_RUN_FCST="1"
MAXTRIES_RUN_POST="2"
