function stpddata = readnwb_rawtdtstpddata(nwb)
%  readnwb_rawtdtstpddata read raw sync. touchpad data of tdt system. 
%
%    stpddata = readnwb_rawtdtstpddata(nwb) return the readed touchpad
%    synchronization data (vector: 1 * ntemporal)
% 
%  Example:
%
%           stpddata = readraw_tdtstpddata(nwb);
% 
%  Input:
%           nwb         ----  NWB structure
% 
%  Output:
%           stpddata    ----- readed touch pad sync. data (vector: 1 * ntemporal)
% 

%%
elecserial_tdtstpd = nwb.acquisition.get('tdt_stpd'); % elecserial_tdtneur:  ElectricalSeries type
data = elecserial_tdtstpd.data;
if isa(data, 'types.untyped.DataStub')
    stpddata = data.load();
end