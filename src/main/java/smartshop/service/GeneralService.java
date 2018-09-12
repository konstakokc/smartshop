package smartshop.service;

import org.modelmapper.ModelMapper;

public class GeneralService {

    private static ModelMapper modelMapper = new ModelMapper();

    public static <S, D> D map(S sourceObject, java.lang.Class<D> destinationClass) {
        return modelMapper.map(sourceObject, destinationClass);
    }
}
