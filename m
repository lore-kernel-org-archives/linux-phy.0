Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F2160744B4
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 10:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qJf2PaJn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=l8GJAOvd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=HkJn3HP3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EXcRYDh/2Vu1SoHDJ1clmLcgGprnzfZ4MtsQR+B3Bdc=; b=qJf2PaJnuFCnlENGLTlwvht88C
	XloB+7G01mxaRESo7hLUtPqJS3avdoX55u1sOXOV4NKON2Thb5AnZTVdenb9mrwDydpaLlr3NG/Hv
	1EF1xWzr5/49XrHdpmCxtY198K8YkjgycrbZ0GWKRlkH2WJyESVdTLf7hxUGrtpHlQUwTPm142eVH
	+sGd1sb7Xqu1xec7xzu7/irpoxSok/zwy7a3HjUTR2OS9Euno9aUy+uXNoDf33TFZfs15IMMNS9wm
	InNISk9ZfVkggHYV+y1ME0WRadaiUjntGmP4zhigwiIdPM/KqX+F2IRTXwZPdDO1/cYVTU7wky6IZ
	W+Z6ydlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBs7-0000000223b-3cmp;
	Tue, 03 Nov 2026 10:36:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBs4-0000000222F-3tjG
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 10:36:06 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A3AAMd12552983
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 10:36:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NAX0Zdv6X7idA1sDG56dXYCZVHe69B4hO8bLwUy2jqI=; b=l8GJAOvdYSWANG61
	KFH5BYtuW/gMKo1oVLJh1lkmvGgFHImxPvahJ8Cnn9LAUOLEIJAmXGxd4g+40UjQ
	yOySMIjXXKu638gxtG8Rn53C/+ejBl0k94ilFzAZ6SaDg9u5whVRmyz6RVQhL5oP
	zWDSic80K20FV2HhCJmKe4YlRW5jasdkLgSgmkCDw8Qq0IyF1/vH+et8dVXjLn49
	uQgkun4f27wQPwac57YG2vIhiP9S8kW/KwdgrNNEALa8MwMwbyPLMEUG50Q1S770
	1vMfdPffjzl4rcQOvwnVxEUfQ0oMgh9hjOKweZ3KFXiXQ6A3aofQocjrszERKJic
	DNxmjQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq0873995-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 10:36:03 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93f2c0e6653so685472785a.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 02:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793702163; x=1794306963; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NAX0Zdv6X7idA1sDG56dXYCZVHe69B4hO8bLwUy2jqI=;
        b=HkJn3HP3jQpgTtauB7rHqkX2UR5vsZZ5fkRAciv9AaGVN0M007lLe4dFQli7Qe1tKV
         2OSae88rdVkOIUCI390vXGdbwqoJs+BeYkFe28od/kN9Rk4A3xZFuwPFctbIu0L83wNc
         823DMISL1jjFJf9sx9jjswPWOmuO1IQOckg80x1D6G09tHBkENl0oXAdb3DnkblevziL
         h+02wo318fxhR1bcjVAWn7D2tBwn2CU4fxMVmxQTU2lDSvY0ACDPYcU67QAPK/XCjC6h
         hoFaZB/Q4xDvms7NEjek8nZcLthjbi2Ma9YQ46Fa2t+k/0QQhprvEWorpX6z0ERsY4xd
         aL4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793702163; x=1794306963;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NAX0Zdv6X7idA1sDG56dXYCZVHe69B4hO8bLwUy2jqI=;
        b=SvujRQshMVPjP0vAGm7FWKWVJ/LUBeDTVXOywKUBalvg20sizLCw7IyXMbDuPzIm6t
         ebIV4snBAd4MQ1t108vqzlI/3S1ihDiButBTYGud9bOMnJH2givUlgDZM/H01/9d4Xf4
         tzxx/ujLl3EX00RTP445Xh06jMdLD2+UN76i40Bc2DPSiBeBNKGL8SzZMEN3SFnMnUex
         795qm7NtcXL31kdw//bCfB5SDmmegaIQO8iI1/4Mm8IAR4z+4quy1QfNdiLyNIMdYZHa
         FOBv0Ak1rF8/9MWvNWvtKhiaxF2YN7dy8/IavhiuZjN8SA5BOtKtNbwBI/u3mIa04DgF
         +zAA==
X-Forwarded-Encrypted: i=1; AKwUvBzTf50wxSVBBwxlw/sjzNR6o836BuWlyXl8g9lypBc7pe1/ehFABWz1VtovtWfAfDFPkLEf6FwimZs=@lists.infradead.org
X-Gm-Message-State: APuU4Z9LtLdY3VovD8rUQ4YPgqWbUVcfWnLQchWaYmAfhClJAIBN7KqV
	UUcKMRb+Hvx/frn8sbe0SNnv6oaiQiCFhGcPM9xECaDhKFZdxtUPxKMY15GcYvjLSpgzbYMaLiQ
	2n7hZasApJiZti8oreahswhltwomUbnc7UiVQyzq7WKWa1B+Yn+FPs2Za0npDgDjkBQYG
X-Gm-Gg: AYBFou3y7OpWKWNjSBkO0wZ0CiDG2naEjObQIfq4IDEAKjzBwC/nQHhzxoMTRJYcG0F
	Ftt4ApFMK+oVur+9TpgKwmVWIFkyK7hI+UzHCg7I4FPMyf5H+4+1+MlY/uFIGGCE9EGUm10n1Y3
	fZuX6vr/Za/AEWHSqXmxzQd/f2AtllHzXnzCoP5OIPRusb29Dgq2KYc+bT2uAnpLMmyMfo/lu3o
	yxKLLYQdv/+yxbaMnvmnB8l0YZdaHeXNNFwJL9PEOxqNX1t9G2sHUsbEpmFsvuCjY+532BDqJrp
	occ5bRKwujfpxNPqDdG9yqZaBRdISbuDd466KjyLYwG8iPCJjt4c2bqp4Q1D1UezgYgHigEnEh+
	NOEwPFEh/93qIRYG6YcIgDhyye16J5Z7hV5lID0vY6zWXlZE3Szz1abkknZMCo3mikmU8/j79W6
	cX4Q==
X-Received: by 2002:a05:620a:6f9a:10b0:944:2e2e:69cc with SMTP id af79cd13be357-9442e2e8f14mr1161860285a.49.1793702163277;
        Tue, 03 Nov 2026 02:36:03 -0800 (PST)
X-Received: by 2002:a05:620a:6f9a:10b0:944:2e2e:69cc with SMTP id af79cd13be357-9442e2e8f14mr1161857685a.49.1793702162852;
        Tue, 03 Nov 2026 02:36:02 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2a80e0fe6sm55210015e9.1.2026.11.03.02.36.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 02:36:01 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Tue, 03 Nov 2026 11:35:52 +0100
Subject: [PATCH v18 1/2] dt-bindings: phy: document the serdes PHY on
 sa8255p
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261103-sa8255p-eth-phy-v18-1-b00cc2fa0404@oss.qualcomm.com>
References: <20261103-sa8255p-eth-phy-v18-0-b00cc2fa0404@oss.qualcomm.com>
In-Reply-To: <20261103-sa8255p-eth-phy-v18-0-b00cc2fa0404@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1791;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=7YxsTW1rQPzMR96mXCD/od/qi/Dp8V9XKpVt8QO0Fwc=;
 b=kA0DAAoBBZ0uy/82hMMByyZiAGrpuQ6izRS9/QwpMWmIpO9IF860Byh2IKGUVdeTxAMyMXCje
 okCMwQAAQoAHRYhBJHlEy3ltUYde6Jl/AWdLsv/NoTDBQJq6bkOAAoJEAWdLsv/NoTDJS4QAJFs
 GuOKXIVpGw5xUeC4yp231kylt7+wzeoKEgKC/IFjyDYhIA7E7cO9fHVj4quvesg79OcR/wh192H
 cUnPGbAxbxnJy0D+W4Iv8tzTd6cPfs8r1ySgaQW1B1uvUsn52R41q+fO/FaNNa8Ckpxv/qWGnAw
 t9suybSTi6C7pLgyvXBlMopEQ0TzBvw82jkzdHpQFXqj/9DFP9naudm8R7E++LKEDfGkJC7eOqj
 lYTyPfq4bTxJkaUthsvzQDi0A90G/eDdkWeq3QiaPheWFJBA0YRKAzmvbnCqwdYqLdbdIlvY6/f
 8EoM7POlfjWcw1pZkoA7dSQMvU4qenIf3m+BDu9utDkNmheLSKJNF2njrscVv/jFi4L2iLRFFFU
 nXAz26NdKNUiLvZKNfX8gt53PXmoFGI3Uqn/k5X0vq2RyZJTHzsRb/uTFCft/07up/XqnaYBYhe
 643td5QJR2GZlZvxImJUfPpHAOkuuqRLh21WawqUh03QTO1TKRUzBxI7gHHplvMivurvK0OxTRJ
 j5lPrjVRy1GNZ/I2S4DUL0Yjw/ZtYNLlMmwyGwHduwQRpa5ueHxk9Ax/XmmSmUC5C6kfLbSUJmz
 jdlcldByKNatvN/8Pv2a6H6k5g2Dw/DD3e69ipXq6/tNJsMmJq12yi1/YjGHe5+hI3bw4T86Nbs
 fkUoS
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDA0MiBTYWx0ZWRfXxOAzJp9fr4sY
 Wp6EtS+JgZ9/n9G3KS4Awqi76qSQ8xyQd1sJZRkqsH5jdZ0OIDz679m49PDiXxdmodFTrxnaME2
 wZ2jf6pWGEkvD3pLOlWhnM5+NeTPrPo=
X-Authority-Analysis: v=2.4 cv=K9m3jCWI c=1 sm=1 tr=0 ts=6ae9b913 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=wENndLYK2PIMvs9AUu4A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDA0MiBTYWx0ZWRfXxIC5rqCxFbaT
 0I1X+zel2QvEWIOQvoOokxPjXgp40kakM84ifDx3fCVFkSsCnJdCVo2N14+KmOKAkCmftJSy9Ym
 TdEyJe3dv/X7o6Nc9IUcFpslaQLtJtqO2CgkJTIZ3EF3bMRB03wEGdESAxUZ+0ZtC6wNT06zBi5
 AUsRZRdABlrIVJxOZffxJSLEOSRUDs2GY7e+RJcGHu5n9aZdor6VNJW6R33EwgypKxCRpv5h7dG
 DK+mhNmpPHUjOcpf+cdO3ee+0vxvX0Q2SUwS25jLWZf+Y34dlljaDEn888P5jQGrHdqhPxsmGde
 P8zsjXuGThfVGDOlRqbmu/BLhhEJ2PG0zD/8yiurcO/7VhsUNGGEyTOCkAVmwsSL9s46ja8Yzmb
 vt3rGS9zojBooYBTUqzm5IGesKtLEeibx3AUXIxIHZj/uXZ1LZ0smsj6Io9We77fWx3s9Z7o3EV
 zcjNNjmXNZkhFxLDVRQ==
X-Proofpoint-ORIG-GUID: kB_q9D1y5INka6lz0KB1S5oAnwW_Fd-d
X-Proofpoint-GUID: kB_q9D1y5INka6lz0KB1S5oAnwW_Fd-d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_02,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 malwarescore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611030042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_023605_086754_85EFF91F 
X-CRM114-Status: GOOD (  13.57  )
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

Describe the SGMII/SerDes PHY present on the Qualcomm sa8255p platforms.
This is essentially the same hardware as sa8775p rev3 but the PHY is
managed by firmware over SCMI.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml | 45 ++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml
new file mode 100644
index 0000000000000..4cbf1c271440f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SerDes/SGMII ethernet PHY controller (firmware managed)
+
+maintainers:
+  - Bartosz Golaszewski <brgl@kernel.org>
+
+description:
+  The SerDes PHY sits between the MAC and the external PHY and provides
+  separate Rx Tx lines.
+
+properties:
+  compatible:
+    const: qcom,sa8255p-dwmac-sgmii-phy
+
+  reg:
+    items:
+      - description: serdes
+
+  power-domains:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@8901000 {
+        compatible = "qcom,sa8255p-dwmac-sgmii-phy";
+        reg = <0x08901000 0xe10>;
+        #phy-cells = <0>;
+        power-domains = <&scmi7_dvfs 0>;
+    };

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
