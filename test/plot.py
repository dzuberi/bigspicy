import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('buffer_chain.sp.prn', delim_whitespace=True, comment='*')
df.plot(x=df.columns[0], y=df.columns[1:])  # x is usually time or VIN
plt.show()