# -*- coding: utf-8 -*-

import pandas as pd
import matplotlib.pyplot as plt

def calculadora_interes(monto_inicial, interes_anual, nro_meses, aumento_men=0):
    '''
    Parameters
    ----------
    monto_inicial : float
        Cantidad de dinero inicial.
    interes_anual : float
        Interes Anual a utilizar.
    nro_meses : integer
        Cantidad de meses en las que va a estar depositado el monto de dinero.
    variacion_men : float, optional
        Aumento mensual(se aplica a partir del segundo mes). The default is 0.

    Returns
    -------
    Imprime respuesta con dinero total despues de el nro_meses ingresado.
    dict_meses:
        Diccionario con registros de el monto final durante el paso de los meses.
    '''
    
    monto_final = 0
    dict_meses = { 0:[monto_inicial, monto_inicial, 0, 0] }
    for mes in range( 1, nro_meses+1 ):
        if mes == 1:
            monto_final = round( monto_inicial * ( 1 + interes_anual/12 ), 2 )
            monto_propio = round ( monto_inicial, 2)
            ganancia_men = round( monto_final - monto_inicial, 2)
            ganancia_total = round( monto_final - monto_inicial, 2)
            dict_meses[mes] = [monto_final, monto_propio, ganancia_men, ganancia_total]
        else:
            ganancia_men = round( (monto_final + aumento_men) * (interes_anual/12), 2 )
            monto_final = round( (monto_final + aumento_men) * (1 + interes_anual/12), 2 )
            monto_propio = round( monto_inicial + aumento_men*(mes-1), 2)
            
            ganancia_total = round( monto_final - monto_propio, 2)
            dict_meses[mes] = [monto_final, monto_propio, ganancia_men, ganancia_total]
        
    print(f"El dinero despues de {nro_meses} meses es {round(monto_final,2)}")
    return dict_meses


def analisis():
    #Ingreso de valores
    monto_inicial = float( input("Ingrese el monto inicial:") )
    interes_anual = float( input("Ingrese el interes anual:") )
    nro_meses = int ( input("Ingrese el numero de meses:") )
    aumento_men = float( input("Ingrese el aumento mensual:") )
    
    # Creacion DataFrame
    registro = calculadora_interes(monto_inicial, interes_anual, nro_meses,aumento_men)
    tabla_registro = pd.DataFrame.from_dict(registro, orient='index', columns=['Monto', 'Monto Propio', 'Ganancia Mensual', 'Ganancia Total'])
    print( tabla_registro )
    
    # Grafico de la ganancia en el transcurso de los meses
    plt.plot(registro.keys(), tabla_registro["Ganancia Total"], label = "Ganancia Total")
    plt.xlabel("Mes")
    plt.ylabel("Ganancia")
    plt.title("Ganancia Total")
    
    plt.legend()
    plt.show()
    
    
