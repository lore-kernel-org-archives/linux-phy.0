Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6421C61DD3
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rypf4sMNZ5b6kCWUWbq5m+NzJYmBFQlXfF+RbA5nOZ8=; b=re+xszlX+j6SQG
	FGCzTSDonZYC2t/wSY70+MqXtaqZDNHhIhKrRhfAO9wbn+C6riLvOPXhtRezO97v3Py42OZAkFy8L
	UpJXik2ybMuV8InL89oSSz5EKvILFh2wRewU5cF7KpnKFTnWnMJoXlW40b7YFi7tt6bSJtieECseY
	GpszviO+Gk3hO+n56m+faycZJH+EHoVZ/n+LIWBnuZEHjbImEtinoQ9UxHC9CyIBaen8mq6amFWUO
	0NaEtOlGaeEOXqZ89VS23/AfftxR5FJHDHouhAnC+Db3p2k5VYCHtw1Juzt4NIGWyPdx2TUhTldX0
	yrE+Ft3ST7HpjJZsGZVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxDJ-00000005wVT-2bKb;
	Fri, 28 Aug 2026 14:05:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxDF-00000005wU7-0S9X
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:05:47 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SDke2G2647039
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hMggueJrEfi9Ea0CXs0IW5lUopvMP6HZ3I3Pa5LDYY4=; b=Y8nkxqiZpP6cd/Zr
	D9evTg+nu14ILTepQu3MQa4ruXrjJUDhPeHJCg0zkK1FOgFv0Qgp1zr5nzvDt+iU
	3/9/JjcEZmq75vtQ2wuzVWhZ1AqS62b6p7t3Slql0K0pHBSnG6PruHDuw+ypmBuO
	I22wGZvElXpzB2wtKdlAWKwTP2xOY/L8fkkVtGbWmaRNTEIx3VizOam/cbIy9glj
	dM4OFkqzd5TlR5i8BE1G1Wp25jCE9CMRtWA+eo6IklF6LSLbulEtRrfkCO5/JNx+
	U48FB3As1OwhJ7roJzuSMGfMVuqzNiTyRoYjnFhSWm5z+HvJZBJMLov8ExTYtp6I
	Rf2Skw==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb6h01abs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:44 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-785b66a7017so207165137.2
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 07:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787925943; x=1788530743; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hMggueJrEfi9Ea0CXs0IW5lUopvMP6HZ3I3Pa5LDYY4=;
        b=ZGvTWm39bqJqyiH/jYTWiW1dpZ4VzAS2AtcLSztAdbm6uRMIaNJ+V1nvdw7bA3Slrc
         DO2S3zynsHFNjVHglxDFUr+T5xof48ilTREVvkW5OAhKFPqoNfGcDhqI76YROL1CWqUA
         V8u7EDOk0AaXFbxbqM7hvnDDuFh7tzruw1AaF3PANP0a3MqK4zC+JBcBVw0UL4ZcMDhw
         +XAao2LIsOAWeV/D7ipp0huWC7RC3GoDtV1b4x34RL4HaAqM4CyfkY0Kd3TtSJJukeo8
         /kGeylE8jnC4s+Vyt//JVRyEfpgrbwAhXnFiEsXp/IyyDefkOcYgIZgl6KOZm2o8XsRm
         DYbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787925943; x=1788530743;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hMggueJrEfi9Ea0CXs0IW5lUopvMP6HZ3I3Pa5LDYY4=;
        b=nlfmKh1MLWiGH+pXdf11AOLa8vh9Hp94XbFBgVKNjJpoeueJ+x7FjTY3Yvk2Piuldo
         T1HMnhs/VzzhJ9eYy1ZiVYTwfFyFBh1/OGozf1bScpFJ4NAE+XqT5jn6MSQV3ddPNyvd
         L6ZtA7+h2XV6/kRAGMuFUTKAzK+cfuyJ0XXDVOd/vJ0XEBwGpWsNbr3WxBjE8DRby+vp
         ZS2rYyKNMe5+0HHdTXdgQ2CObfOpCDrQUKO3QgCiDe3Mgd2WiCq8O/M1PxdPDWGG1pqc
         eSiIelYvxfppe5iAu3u/qZAAWt2B2CuG2JpF+BG+ZlaHCNF5+We980mhTT7dQ32pBnyu
         lgLA==
X-Forwarded-Encrypted: i=1; AHgh+RqiqNLA4qol/fdibnPadmwO+oN4UkgXv4lGrM91w1eNtX56T3ySMNijVVByHk7eGwhpxiOT+siCzsU=@lists.infradead.org
X-Gm-Message-State: AFuF++mmRNvQBBhOLnRYVUnFKfBuMRtu5gC79/fNdC7+ScWkQhPQ5zyQ
	YGkNvcPYLxd6C3d7s3KK4S5FZm4ZD8rFHTJVHX6JWoXFH52I97z1PsYgn7rbbfO6M++MXEb9Lpw
	7fjsyklpnaoNQUnW+7NfAbAk7LCADSLacmSvMMQw33Bt8pVVVJuQ5K7BJgvVLsLqsbhjU5n0HnY
	LZ
X-Gm-Gg: AR+sD10f730NGc1U5XjDHvvdcq1Q8/fl6EyZR1s3JCbD/H7o5IDMQ2pWVYlflmOQyYe
	fybEnhHId1ZI1MXjU0RXsvw9A7/oaya4AAHVOyRSvLh+5FC9hDXw1fzais2bVFa6/6J/4nnZ43W
	/EBPr1n8AWPBU4IJgtvOR9bLq6EP3I4z8ZYAAzgr5BfD+AQFVf5kGupUKIW5jUXABJIi/W0BdaY
	CIaatTrWa3POX7YvUA65fXSXNQ579sBg+Q3dL5NS/UeBxnaMeTiXkxBhmHm8CFGgLV8Ih2dm4fi
	peWm0gaz0ID2uxyjiFh4k7SxM1gyfrfoXt/sbfqJjLqCSUz9M2NIQe+28l8jNkqMg5yE0+hgOP+
	f+gqfHJ99OfJ7a7uB31l5XIs=
X-Received: by 2002:a05:6102:441b:b0:785:3211:f5e4 with SMTP id ada2fe7eead31-78596acadafmr1836565137.4.1787925943418;
        Fri, 28 Aug 2026 07:05:43 -0700 (PDT)
X-Received: by 2002:a05:6102:441b:b0:785:3211:f5e4 with SMTP id ada2fe7eead31-78596acadafmr1836517137.4.1787925942860;
        Fri, 28 Aug 2026 07:05:42 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482fbb20122sm3908633f8f.20.2026.08.28.07.05.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 07:05:41 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 16:05:04 +0200
Subject: [PATCH RFC/DO NOT MERGE 06/12] dt-bindings: display/msm:
 eliza-hdmi-phy: Add Eliza HDMI PHY
MIME-Version: 1.0
Message-Id: <20260828-drm-msm-hdmi-eliza-v1-6-67843277de17@oss.qualcomm.com>
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2303;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=2ZoWKXh14IFtzY+jQ6vF0Zhx1BAkHO8mYs9EuOJq9ck=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqkZWdh7HfytneGYVObjElDzO1HVTUQvEj7tn3D
 XQg6/WJeMmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCapGVnQAKCRDBN2bmhouD
 1wt+D/9VrlG2+yThOGo4fnvqiAFSf7vxedxD15XsiCrnglQiiclrvXuBJ3VNN8TrQJtLNGagih5
 dlXwCMTqnHie8c+pydAR5ohQsNXDyardZTgaAjUirpa+wZxFF76rfVBGKcu0/e2IjdltiQVr6yj
 i0XvsNaS4q0w50TEkK3dOJP5fDmBVBk6DDwMA8NiHU6jsxTuK+LQTnKCsR15L2BsGrosX/BrRd5
 zlzVIxnvLOZaqWeuL+Ky+gDjlHyidxGbz6JCzs5e/Z3g95iBRFC3B7UVcJCK9sR1TCjLdxHefnq
 kVqh+FgzvcbKHsZeSha0B4TwlDbbTZPmdbmGCnZuLNfCHlF/wpYauRTJ5uHTEHIATHixlEXerA5
 MWx3Br9x3dvPUIuFzKpKXmkaQlPH0zGkRQ/FdHxjk4NeSLjX4DGWCzbP+eKmzfA8e5WflT1sph+
 8+51rU4aTvygnPrSOZ9PwIrtNNmojcZZlHvAhGftM+81G9umoXMirbdZeXvorC3n+5UbADeFamF
 vft7Mdm584q+tmdVV8rc0qNKI1RGdgvB6swbSbCZByK8n74Vzo10dbCcZGE7e+JlZJdoSlZF7fQ
 CxtCIGKfM/IxK93srEX8Hn6ENL5br4AbNBG1dWR71NCSsjO3jMECbDGN6NscLiszcsQgElAMMNM
 R3/NufZ/7h4Pn+g==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: FwvyG5b50HIke8uZaLPKrAbW9zWFPdIf
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfXze7jAC06YbB9
 +vswNYCFiz+u2e8frIJ7acDG/gvGbfOV/Cqi56lL1SIO6lqma+yU5vZgD60GMVXd1Gvwuot+mSC
 I87kaqvIndXBI8AipluK6z5VwKBL10A=
X-Authority-Analysis: v=2.4 cv=KPpqylFo c=1 sm=1 tr=0 ts=6a9195b8 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=m4uPUOG36isBoBWOdqQA:9
 a=QEXdDO2ut3YA:10 a=ODZdjJIeia2B_SHc_B0f:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: FwvyG5b50HIke8uZaLPKrAbW9zWFPdIf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfXxeKaBUmmRJRL
 BtFyC0bS/4p8bV72R1FON9oayaJRyWkcegfzSUWtseBq6vEUJ21PcAt/z3mWMjz+xbLmb+wVKZw
 JKrPpQmaY38cO8flVobVKyoaudm5537cKtEWURPJgt+Ra9FLOCbrYeiBWlq/52XU9aVDEfz+mtL
 vc8G94DQ2+9yPXACtld174yRt5pCRDRSu+ETUdzpHg+0CvsPuFbEYNc9m+RR15I5wTU1UazLKh9
 o0qAN6puKjar3wP759Sk1Z39U/yVTrlv+TT6dok9jj7XQw02Hsdychif3qMMCzhDdzvWIGJ5qfB
 rJAL9tmYVYmwFsydgwpovFCD4t7gNXXR50+C+9D1oEkeh+VfSoWQbefMrzmMmWHMfkSR7bwwn5+
 puQCvYWVReaWdsoQh/goylWj4lk2C1M/erBbRmjoH9xguE+n5oQ7Bcs1IlEOctteeoua8sHx3jP
 CBOYopMmb0U8tVsWMLw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_04,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 clxscore=1011
 impostorscore=0 lowpriorityscore=0 spamscore=0 adultscore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608280122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_070545_156213_5E71EA5C 
X-CRM114-Status: GOOD (  12.83  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Qualcomm Eliza SoC comes with an Synopsys HDMI phy, unlike previous
variants with HDMI support, thus no compatibility is expressed.  There
is no documentation, except register list and register programming
sequence, and downstream sources do not point to any supplies.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/phy/qcom,eliza-hdmi-phy.yaml          | 71 ++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,eliza-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,eliza-hdmi-phy.yaml
new file mode 100644
index 000000000000..764fec0ef29b
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,eliza-hdmi-phy.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+
+$id: http://devicetree.org/schemas/phy/qcom,eliza-hdmi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Eliza SoC HDMI phy (Synopsys)
+
+maintainers:
+  - Rob Clark <robdclark@gmail.com>
+  - Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
+
+properties:
+  compatible:
+    enum:
+      - qcom,eliza-hdmi-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: iface
+      - const: ref
+      - const: xo
+
+  power-domains:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 0
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - '#clock-cells'
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,eliza-dispcc.h>
+    #include <dt-bindings/clock/qcom,eliza-tcsr.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    hdmi-phy@9a0600 {
+        compatible = "qcom,eliza-hdmi-phy";
+        reg = <0x0aea1000 0x1000>;
+
+        clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+                 <&tcsr TCSR_HDMI_CLKREF_EN>,
+                 <&bi_tcxo_div2>;
+        clock-names = "iface",
+                      "ref",
+                      "xo";
+
+        #clock-cells = <0>;
+        #phy-cells = <0>;
+
+        power-domains = <&rpmhpd RPMHPD_CX>;
+    };

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
