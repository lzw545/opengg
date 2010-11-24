onerror {resume}
quietly WaveActivateNextPane {} 0

add wave -noupdate -divider {BFM System Level Ports}
add wave -noupdate -format Logic /bfm_system/sys_clk
add wave -noupdate -format Logic /bfm_system/sys_reset

add wave -noupdate -divider {PLBv46 Bus Master Signals}
add wave -noupdate -format Logic /bfm_system/plb_bus_M_request
add wave -noupdate -format Logic /bfm_system/plb_bus_M_priority
add wave -noupdate -format Logic /bfm_system/plb_bus_M_busLock
add wave -noupdate -format Logic /bfm_system/plb_bus_M_RNW
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/plb_bus_M_BE
add wave -noupdate -format Logic /bfm_system/plb_bus_M_MSize
add wave -noupdate -format Logic /bfm_system/plb_bus_M_size
add wave -noupdate -format Logic /bfm_system/plb_bus_M_type
add wave -noupdate -format Logic /bfm_system/plb_bus_M_TAttribute
add wave -noupdate -format Logic /bfm_system/plb_bus_M_lockErr
add wave -noupdate -format Logic /bfm_system/plb_bus_M_abort
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/plb_bus_M_UABus
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/plb_bus_M_ABus
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/plb_bus_M_wrDBus
add wave -noupdate -format Logic /bfm_system/plb_bus_M_wrBurst
add wave -noupdate -format Logic /bfm_system/plb_bus_M_rdBurst
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_MAddrAck
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_MSSize
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_MRearbitrate
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_MTimeout
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_MBusy
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_MRdErr
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_MWrErr
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_MIRQ
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/plb_bus_PLB_MRdDBus
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/plb_bus_PLB_MRdWdAddr
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_MRdDAck
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_MRdBTerm
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_MWrDAck
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_MWrBTerm

add wave -noupdate -divider {PLBv46 Bus Slave Signals}
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/plb_bus_PLB_ABus
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/plb_bus_PLB_UABus
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_PAValid
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_SAValid
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_rdPrim
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_wrPrim
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_masterID
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_abort
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_busLock
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_RNW
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/plb_bus_PLB_BE
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_MSize
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_size
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_type
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_lockErr
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/plb_bus_PLB_wrDBus
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_wrBurst
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_rdBurst
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_wrPendReq
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_rdPendReq
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_wrPendPri
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_rdPendPri
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_reqPri
add wave -noupdate -format Logic /bfm_system/plb_bus_PLB_TAttribute
add wave -noupdate -format Logic /bfm_system/plb_bus_Sl_addrAck
add wave -noupdate -format Logic /bfm_system/plb_bus_Sl_SSize
add wave -noupdate -format Logic /bfm_system/plb_bus_Sl_wait
add wave -noupdate -format Logic /bfm_system/plb_bus_Sl_rearbitrate
add wave -noupdate -format Logic /bfm_system/plb_bus_Sl_wrDAck
add wave -noupdate -format Logic /bfm_system/plb_bus_Sl_wrComp
add wave -noupdate -format Logic /bfm_system/plb_bus_Sl_wrBTerm
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/plb_bus_Sl_rdDBus
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/plb_bus_Sl_rdWdAddr
add wave -noupdate -format Logic /bfm_system/plb_bus_Sl_rdDAck
add wave -noupdate -format Logic /bfm_system/plb_bus_Sl_rdComp
add wave -noupdate -format Logic /bfm_system/plb_bus_Sl_rdBTerm
add wave -noupdate -format Logic /bfm_system/plb_bus_Sl_MBusy
add wave -noupdate -format Logic /bfm_system/plb_bus_Sl_MWrErr
add wave -noupdate -format Logic /bfm_system/plb_bus_Sl_MRdErr
add wave -noupdate -format Logic /bfm_system/plb_bus_Sl_MIRQ

add wave -noupdate -divider {BFM Synch Bus Signals}
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/synch_bus/synch_bus/FROM_SYNCH_OUT
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/synch_bus/synch_bus/TO_SYNCH_IN

add wave -noupdate -divider {opengg Peripheral Interface Signals}
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/SPLB_Clk
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/SPLB_Rst
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/PLB_ABus
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/PLB_UABus
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_PAValid
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_SAValid
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_rdPrim
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_wrPrim
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_masterID
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_abort
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_busLock
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_RNW
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/PLB_BE
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_MSize
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_size
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_type
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_lockErr
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/PLB_wrDBus
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_wrBurst
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_rdBurst
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_wrPendReq
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_rdPendReq
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_wrPendPri
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_rdPendPri
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_reqPri
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_TAttribute
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/Sl_addrAck
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/Sl_SSize
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/Sl_wait
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/Sl_rearbitrate
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/Sl_wrDAck
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/Sl_wrComp
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/Sl_wrBTerm
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/Sl_rdDBus
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/Sl_rdWdAddr
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/Sl_rdDAck
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/Sl_rdComp
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/Sl_rdBTerm
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/Sl_MBusy
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/Sl_MWrErr
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/Sl_MRdErr
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/Sl_MIRQ
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/MPLB_Clk
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/MPLB_Rst
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/MD_error
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/M_request
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/M_priority
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/M_busLock
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/M_RNW
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/M_BE
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/M_MSize
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/M_size
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/M_type
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/M_TAttribute
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/M_lockErr
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/M_abort
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/M_UABus
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/M_ABus
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/M_wrDBus
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/M_wrBurst
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/M_rdBurst
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_MAddrAck
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_MSSize
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_MRearbitrate
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_MTimeout
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_MBusy
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_MRdErr
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_MWrErr
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_MIRQ
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/PLB_MRdDBus
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/PLB_MRdWdAddr
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_MRdDAck
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_MRdBTerm
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_MWrDAck
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/PLB_MWrBTerm

add wave -noupdate -divider {Peripheral Internal Signals}
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_Bus2IP_Clk
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_Bus2IP_Reset
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/ipif_IP2Bus_Data
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_IP2Bus_WrAck
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_IP2Bus_RdAck
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_IP2Bus_Error
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/ipif_Bus2IP_Addr
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/ipif_Bus2IP_Data
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_Bus2IP_RNW
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/ipif_Bus2IP_BE
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_Bus2IP_CS
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_Bus2IP_RdCE
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_Bus2IP_WrCE
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_IP2Bus_MstRd_Req
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_IP2Bus_MstWr_Req
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/ipif_IP2Bus_Mst_Addr
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/ipif_IP2Bus_Mst_BE
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_IP2Bus_Mst_Lock
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_IP2Bus_Mst_Reset
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_Bus2IP_Mst_CmdAck
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_Bus2IP_Mst_Cmplt
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_Bus2IP_Mst_Error
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_Bus2IP_Mst_Rearbitrate
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_Bus2IP_Mst_Cmd_Timeout
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/ipif_Bus2IP_MstRd_d
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_Bus2IP_MstRd_src_rdy_n
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/ipif_IP2Bus_MstWr_d
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/ipif_Bus2IP_MstWr_dst_rdy_n
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_Bus2IP_RdCE
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_Bus2IP_WrCE
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/user_IP2Bus_Data
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_IP2Bus_RdAck
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_IP2Bus_WrAck
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_IP2Bus_Error

add wave -noupdate -divider {User Logic Interface Signals}
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/Bus2IP_Clk
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/Bus2IP_Reset
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/user_logic_i/Bus2IP_Data
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/user_logic_i/Bus2IP_BE
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/Bus2IP_RdCE
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/Bus2IP_WrCE
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/user_logic_i/IP2Bus_Data
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/IP2Bus_RdAck
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/IP2Bus_WrAck
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/IP2Bus_Error
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/IP2Bus_MstRd_Req
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/IP2Bus_MstWr_Req
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/user_logic_i/IP2Bus_Mst_Addr
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/user_logic_i/IP2Bus_Mst_BE
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/IP2Bus_Mst_Lock
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/IP2Bus_Mst_Reset
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/Bus2IP_Mst_CmdAck
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/Bus2IP_Mst_Cmplt
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/Bus2IP_Mst_Error
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/Bus2IP_Mst_Rearbitrate
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/Bus2IP_Mst_Cmd_Timeout
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/user_logic_i/Bus2IP_MstRd_d
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/Bus2IP_MstRd_src_rdy_n
add wave -noupdate -format Literal -radix hexadecimal /bfm_system/my_core/my_core/uut/user_logic_i/IP2Bus_MstWr_d
add wave -noupdate -format Logic /bfm_system/my_core/my_core/uut/user_logic_i/Bus2IP_MstWr_dst_rdy_n

add wave -noupdate -divider {User Logic Internal Master Space Signals}

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {200 ns}
WaveRestoreZoom {0 ns} {2 us}
configure wave -namecolwidth 200
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
