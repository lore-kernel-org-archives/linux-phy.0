Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D8D606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1/77pS0v;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Enb8SmqC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=UCgfNOHW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Pax+OOBWeGAZGVmSzQLiZygecDejJeV5mbw5kIo0rQk=; b=1/77pS0vuvsMsc3GEJdjjwIZmB
	ol9ZWBxyAu+UUYqdS1s9vzUm8zD5dlUJCJIcQJV1WSoNQ6COChk4/Oe+DhSSgLoTlM8cgfZnZXuGX
	xZj9+QReTvkINYsM2lbWXqAFRU5I1Lt77TlC60RJC/XxpBWsgR2Pahg30eGiV/kDoVGnRHoC9JUiQ
	nlG+7id8Am14wO/DsQ4GKrsYHRM5lceRd0Ax5cpOCZc60HYqt2ZzmCnbXFHcpcAkqZExAZEOq3FyX
	9pN22ItSkR08axrqn8R0KVccXfYi4wtVk5+aOYiPSsRzPi5HnNYULhOFyOKLA/xEhZamfdMiTpHkP
	NXMjrwLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuNX-0000000FsUB-23Pk;
	Fri, 27 Nov 2026 11:44:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuNU-0000000FsSn-3wsQ
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:44:34 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ARApBdr1377008
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 11:44:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=FEX6OHmXYNA3Xbk1r0bkAK
	zjv/2jynYmSmXZuZBaYX4=; b=Enb8SmqC6MpVINMF1WBOevqxa+zMuk47FbNFjF
	/YJO8H9kmQMwPSbW6/+JnFGO4JN6Tr0mTN9z2tHY4TnUrSlY2qp2agdq+H7v1DQF
	YHGCtJZ8FoPNFnT84sFt6oo6Ws7bjfp/wAdS0CnTzejFJDt9dJr/9jfTetulzdxo
	Zb6O0uD9JgghITmQg8qrra8wz3iK4xG/h+EoU8PnaQgF8osgozM/KpglYj9RZnV+
	ym1s68Jc/S6daCRyOrOhbUkreHeGFhq1yt1vXTverLWuyWQKG4IRPQapMxptbMzE
	7x3Cviu/LNTfQbddAlSR1+dnYK2qTMVAwq++VTp28XRZim7g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j6ru3absp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 11:44:32 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-949b0d322fcso1321543885a.2
        for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 03:44:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795779871; x=1796384671; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=FEX6OHmXYNA3Xbk1r0bkAKzjv/2jynYmSmXZuZBaYX4=;
        b=UCgfNOHWZfuJgbkuNPS+atvJW0DVwG3IqwBM1PE8hvjnKct7jUQ81E20dhbF5qDo29
         nnHVqsR7GGGJqVNNDhR2+oK4RyH/bZr45CSsjLMug3IGhD3qcIv3iuhAHHgrL1VyRAIl
         t9Tyfl9PpewCA6JcNKigPGxYTcJJA/ie3Kk6Bh3nBOWg+fe+yoA/I2OeyDmtxGDoTDKJ
         78jpg32f3BwuphzJbYDvtdvwoQYO6UaPp9GzKv0oOfF+ZVmoM+L7qsO2jg3H0/HdrSyr
         N7Y+pTf+Eb/NzgCwLKr/wlO+TL31jY4C+fINHK2/ClOnt8JWvOHJLATAytGwso0V2LxZ
         hErQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795779871; x=1796384671;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=FEX6OHmXYNA3Xbk1r0bkAKzjv/2jynYmSmXZuZBaYX4=;
        b=HUxFDwdWTwoY/h5795qU5AiIh9EsznidfwEnh2/KDOCUEo1wkhs6ApGSph6mEpwj6H
         kjdvxz/pWHIpjz3J87cxfIxdi7dW33qCLRsp93f0MK89MjVHFS8GHYzy9Ju2f41JEp4H
         6DywadCNx/IS7mHMzspwI0tjcLbM+l/e4LPNLbYV/19sv43zwQxFg29uU8dkLwPjrb6Y
         AXB9POuQxbA164cBYMcuFdX9Yx7+CKVuodOeQ0n+kBcfKuFqeV6MKYezhhxWXnLDTBOd
         /G1ZjG5EY/YY6rTGCgXPi5qL/jKZJP3EcF1fj06IR5nduuwIb4bSxp4u/VUKsmuarQjc
         SyXA==
X-Forwarded-Encrypted: i=1; AL+hErG++ZViPh7eq+WNYRYtH+Efr1zfni7QBTUOTe6X0f7TogfZ4KlXDY0bYBfUAaBdQkS/cT/Nf9hDrRg=@lists.infradead.org
X-Gm-Message-State: APuU4Z+4y3QkJjBpyc2A1GtutiJTNZK2DMGJoLvy21suKUZOVSBylnLU
	03ex8EV1N5HB9LucbRseym2VApcYLdQykvcGCvufqGR38ZnxDqfdpCRMjU6lLsb+VLoV/JV/mln
	6WaWtWClxtMI/Ew1gfbZnPl8RhE+1UZ3nB0XKtjtyaZpzQEVH1Q15zulGSsb0IELRm5Yg
X-Gm-Gg: AZFdTZfA13JatxAwv3tulM3HUBePHHIbbnQq+NL2YIREdMNUz9EnsZJ9KjpALbO77Jn
	7HVfTHOvFe+GcFU/frWZVTBT3ZVYIMCrpQmQkriMPBfQR3cjQiGYDck8pqscl3tUshYpbLWuA4U
	tNSbXCzz+B1mduOMy/PWzLAaPid+SSLt4lvgnPbf/qnzcVt145mpMkMZtffOeYZbP4iDtgEHfHk
	tO3dVS9nbwWido/ltagMCS2uAL5VcQ1YW7b490kdcqHAlbAhHoLa3lHyWWK1ri//WgBL251dwGA
	9txJguyOldjdrI0UH3spLyc4708nk/XNEjk7jh5etTRX4qdRnIOBgg8gBYn4juqHm+GyXJ9/6tu
	zGO3hMB84CmmTiURb2j5kFZUzqdLAjGQv2cymKhqg+shtxcBkYU6d0fQLifrHUEHwoCz0MMVz1H
	SPHRlcqAEeZDrqT2jnl4PGhBHA2n825Ren82DLkMNyIBLBy1t8T5DuJ6KaepPInOA=
X-Received: by 2002:a05:620a:838a:b0:93e:f0b9:505a with SMTP id af79cd13be357-949ba9fe6d8mr4101366885a.58.1795779871457;
        Fri, 27 Nov 2026 03:44:31 -0800 (PST)
X-Received: by 2002:a05:620a:838a:b0:93e:f0b9:505a with SMTP id af79cd13be357-949ba9fe6d8mr4101360685a.58.1795779870764;
        Fri, 27 Nov 2026 03:44:30 -0800 (PST)
Received: from brgl-qcom.local (2a01cb1d00dc7e0089167b9b97a26c96.ipv6.abo.wanadoo.fr. [2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6bb989b3sm46715864f8f.51.2026.11.27.03.44.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 03:44:29 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 12:44:25 +0100
Subject: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document the
 QMP UFS PHY for Seca
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-seca-ufs-phy-v1-1-75379cbdc641@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIABhtCWsC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzNDQyNz3eLU5ETd0rRi3YKMSl0TSyNLUxPDxGQLUwMloJaCotS0zAqwcdG
 xtbUAK1s+FV4AAAA=
X-Change-ID: 20261127-seca-ufs-phy-4929541ac850
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1111;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=XpXjuNt2nvdXv/PWfTHtjIJh5suL5Fie/ejPzYjt/Kw=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBrCW0dTfqbz3v+boJ+ccBCthzrEU+6AE+JCgjhH
 /hJLCe2NWmJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCawltHQAKCRAFnS7L/zaE
 wzwlD/9QMgX6B9Rg3L5cY4gCPNXbRy5GbjiuJg8fh+v3si44+KteXgX0/pTSznn5OcbdatXsY5e
 9hYYtIae+LdxRFMU/BzpGMSvVKrrCeG4qgwciid4AtRko368hlQLJYSLJaP5GVJg34+mO2xsfBc
 D6o6MmfHPSnITwnE131q38+v6IB8AOPDG5By21jYb9PfEhmiNhSU9EVdkqoP39Avc+7Ysz0PyAG
 rSv3Y5p7adC3S2Om88HQLfG4yUV4xirzgpkT4s3Z4pU9xgUQQzqgby2huPi9OfLWJwNE6ZcbGS0
 eh9eMJC2IXh4WgSCWo6KyKiZUOxoK1WW5f/dXX7aegweCKp2SKk1LT5jkh9JQBb6wAXYb8ALoky
 Gi4MWzRqfzaYRDTf8Day/8AOBnNt/SCX+s6uMh6Xaq5CV/xgI0lnSFc+PyenjdCNO3INgtJRrKK
 U711hzu1/3hkn06TEChzSjle5YSOj1m5aRwCHQT9maqfNI1ep6AMyfvKc2juxK20m7L5gvCNcQw
 mCq2ShCtQvSvri5eDOy5E5s4f1gQI1FiKKipPUfjY4bA9ma+Kx50VUShS2fBuGgLbpco+rx7GfT
 J79Gad2uYjvONzuk66ILXTDTJ+wSWdAv99BRBb1tajrYqAgIC0COp99S6SSXRfam4B7/9qtXuLO
 2zg3whsxFCwP0wg==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=cOF1IVeN c=1 sm=1 tr=0 ts=6b096d20 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=5OrrVIwHFqFdhR60284A:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: f8iBXUvXZip0Kgy2da_IhAidUssBxoKN
X-Proofpoint-ORIG-GUID: f8iBXUvXZip0Kgy2da_IhAidUssBxoKN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI3MDA0NiBTYWx0ZWRfX/VbxZLv19n54
 lEqg+hDSKa8t7M2B0xmpxRG8Ifk8IpyMZ06zhIzogy2B62W80IUqMweD4mGCHM7gl5gnasbceKb
 4URnNvIOpMPc1N+2CKQEDBS7AJpjB/aAANy9qypBmrySJ65qWX57PHp/Ozm1j98qRAwNd+x8Vra
 bR0jdXfOAgw2Zr+FKF6K8FSDAZkJ0NFvQQTBXEIF3urvVmpncHl35EMzQQelNURk8kA7b2IQPxE
 3erwue1VN5k1i7RXZuJR5GJgxbGkBNdQqsdN6+C6MLCnY0SU3TaU6/LVHhoV9Ou3mKIa48CgFNW
 FcPsohTCjvFCFUYkpfs5GqpDmr59nFlOC26l5jnI+5H1KehuXxqAsOA6Ni+4KYdGVdJrV2Jzi58
 FAI+X/gw5CJ+Hka+X3z8HAgp5AevYncw+kzA3m8vQ/sgIsV39VkfPOBgAsygCL1ktXvJVUsICh4
 J99OObRkXne8PFUz9ew==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI3MDA0NiBTYWx0ZWRfXwRmQ1IjKxZb5
 qpGITanGrA3oDvkr+nHRstys5+gjmbn0KFKDTDjWVILBMzkdZdKB4/+G8yOxvf5arKC/04zm7B/
 1Kovxblnl76UQbKkNsUX1jxtYLOX0so=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-27_02,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0
 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611270046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_034433_013692_F90FD165 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Document the QMP UFS PHY for Seca SoC. This is the same IP as Nord.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 10435a0b523080e1043ed670edf5ac7080f306cd..08b0fd3f876f40101ae2bc0939d5f8861f489fa9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -36,6 +36,7 @@ properties:
           - enum:
               - qcom,eliza-qmp-ufs-phy
               - qcom,nord-qmp-ufs-phy
+              - qcom,seca-qmp-ufs-phy
           - const: qcom,sm8650-qmp-ufs-phy
       - items:
           - enum:

---
base-commit: a9c48428cbd8d96b26f92631d0db6f8519c5fcc5
change-id: 20261127-seca-ufs-phy-4929541ac850

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
