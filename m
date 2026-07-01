Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20FCEC43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 16:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xi/JjGLvkORXAFe8XTuZ/OrW92oUc52hu8tvfR/r/oo=; b=pvQ8O0hFnTMVjD
	WxMs6lf0WURO2loj6SgUgJlhO+UdMETmLpdKPzWpF4rcZcTieTtV5Qd0c81VdB3l6FWyVANQQsF7S
	mYzXnsK7w1hXlFcyGd6Dbj/4JGOgC2mLChedcxrQWxe3ll4/61SmFNGfWrBp3VoBEBlTgsi12idJd
	h2ZlRWMaTP21NnEhbxAlCM6mEAAmNaqEgO3r0uN9TWLUnkAbQmennI0umFyrtnj7c2Uj/pls0go/5
	oO/GFu0M0FGn+1gWzLTCQIC0hCLa/uhXB2lr3WvXdUBT9quR32JzMC30MR4QB4qzNtSW85stpti39
	fNLKHJCZU76Ohkwl3aEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey9j-00000002anX-3QwE;
	Wed, 01 Jul 2026 16:51:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey9h-00000002an8-1v5U
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 16:51:22 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 661GmiKb1730720
	for <linux-phy@lists.infradead.org>; Wed, 1 Jul 2026 16:51:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=xiz5ohHlOSI
	vlO2N/i3IWz8Du228mi1b7RksHuMyzMA=; b=U5qAUNiOMBEzRWP+r2QUfT/pB1B
	NP597bUwZ5AkSjgKoh+3ntuBqUIKAl4VmLJcSlO7Dqtqr+7M5Tul4gmsWzvb4Ay0
	ekwtImmyLNuvV00piF4drsLKQTGl2nu/SlygSADOcyFw22dxvZRCZiyk2nGAVIn5
	kSiYLw99l+oFeVND4lPzHSKaY9w2W5T6ab8ILefDUAUPeI5V3EQxF9ZDmZqTqojb
	IRKWHIsW9UfkR3KAQZPGlULtxJrB6Rfqs0/h4HFNo3IBW6rT1JjufGU2JZLi9ouo
	84XFdjQi6vOL5yjlbLeqaQgYY8Uh+kJwCKXKqnpXTNkYBdIsqJJTIiyItNA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f510ahnt2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 16:51:20 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c8952346bb9so638518a12.2
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 09:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782924680; x=1783529480; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xiz5ohHlOSIvlO2N/i3IWz8Du228mi1b7RksHuMyzMA=;
        b=AnFN/3ddyOvvKqzwaX/ekVWU2jln2pF5VyYq33SubH7GmC5lQaSuXxEcXeMBG68h+P
         27yr19MCVeOYIAz9o+RPD+ZeKL8sGTDsOzUcf+geED87gjRI9tm1rfZdoXhypAwRsI72
         lvQPD0fOtz8JYXNInBxbt4b4mcRXqIj9ivEFd4KNkQJqVqRAQ56LZNKctgp3CcTWCfiT
         8JN+IuTbRO/Bl7iB/bVxFNXfN6Ee7PLORfqVLqgwVntKxFolhPq2d89fGE8BhbuNo7Nq
         kI5zFX892RWgoM8PkOJu7SMG2EG2TMG62FFVWkAMH1+3RAW5jpJ3rSTfbSemZbJea528
         UH3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782924680; x=1783529480;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xiz5ohHlOSIvlO2N/i3IWz8Du228mi1b7RksHuMyzMA=;
        b=Mihx9vykdhNMB//EBRlcbNRSOQDoV3kNuMAZmAjR9g46XQ50n9qyASTA3pyhr6D0Hu
         4M5VwFg+N/Qyupzvm7iPcKuK2p25fyWWQBpCwFAeiNNknre1cOaL5v9bwRhE84erg2du
         K16ttXbmjPBMTdYXir5tEM9FhjExW5l7sd5RAEq5MYq+3Idna8Dsmb3C1CZw38klF8lt
         Wu5T5eb21JT+HDf3p4dA1NAC1H1ZYlgaNdFOTLjEkMSkI+dxVvOYsVFvRFMcGyBGIAUV
         sGKLTTkfoUErRpySce/nr9DVkCgfgFKY1fUDiv1VEaYOqr5SfO9kT2p6XEnCdxe4nfcg
         4EsA==
X-Forwarded-Encrypted: i=1; AHgh+Rq24q+65khF9QcfEOwqJt/w0hBD8UdIallLE+z4KI/gTshO7gkxwwXdYwnjE377FQDkDm1iM3hcI4E=@lists.infradead.org
X-Gm-Message-State: AOJu0YynpJ7mKVftFRIcxKw2jSg7MYGPTykP6+iuFNBzwXKrflVLtjo9
	zuAA9y5Bfdzu6yAHqGUIdr3P7glWaiNvfUUpdHrBdq5eOr3WyI3u97Rr2+n+CMGDJl+a+VQAmXg
	trx2nyvvZTRSHZuWIf9jSHRn0bxroKRhe/czh/8GjgwYr+Xp38SZCy2v3lA0r/xh3Pgo1
X-Gm-Gg: AfdE7cl4Ob36+p6Dqlmc5wyJMalc7CU/JU0dB8v75m7cXd/JJdR0GlBmTuTjcNdsa3p
	44Jc7v6p7uQluSSHi4k4trrs7DMtSO+anQUaYvm+Og7+gqdqTAh80gHGKjKeb/SCvHW8wL4IPFI
	XPIX9q8qarts13D5XMKoxyIl9WUE/kVrqVxFRwQPP1o5McJmw41r4gTOVmrJWzkJsHcBvL8hmLy
	i3J1roiJKXTfAnX4CVHUMMtx+9kIw+qDTN9JlxVj3jNfUKCw4poySYJDPryFnkGToISQcvrt4F3
	6Q4AMsYcbEFM+uAsV9jc9kT35OwIqiJtuQJeMQ7uVv0er0Hz9E2BUeucLnAhVQT8+xdqHFkXBV8
	ksoBT4tE0ae5PtH8LuArGjvoggPOD9H0Q/wGJysjGhdZalMtzwe1lpzx6eTxT4Cdl+b0ldzhPBQ
	6Sn+So
X-Received: by 2002:a05:6a21:4c08:b0:3bf:6e72:68f9 with SMTP id adf61e73a8af0-3bfed3e923amr2445233637.38.1782924680216;
        Wed, 01 Jul 2026 09:51:20 -0700 (PDT)
X-Received: by 2002:a05:6a21:4c08:b0:3bf:6e72:68f9 with SMTP id adf61e73a8af0-3bfed3e923amr2445193637.38.1782924679776;
        Wed, 01 Jul 2026 09:51:19 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee317095dsm33038935eec.15.2026.07.01.09.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 09:51:19 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v4 2/4] dt-bindings: phy: qcs615-qmp-usb3dp: Add support for Shikra SoC
Date: Wed,  1 Jul 2026 22:20:49 +0530
Message-Id: <20260701165051.4122259-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
References: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: DLj_sGZU0SQMB2-2_RVrJbCq2Oy7tqEU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDE3OCBTYWx0ZWRfX5MCpJIHh8ZUB
 EtoG/6vHjVupfuBaZmdCiTGWcylh1hrWx6g1Np6mFYyNCc6+vvBj6VQfoB7ORJo0nF7rPeOrucW
 xTAeAefjsWsrSvH37q5SyYWIwSgcpy3TtjfnDTdFEvD19rBh63TZjkzn/lrLSsU82dnoGfmDldW
 QJyRhjWocWKBM/iBqGUErTY6voO26gAGyiQlS0Mpf4IGdokG/fLGJ+tcV5dnAwRk1hyU2KCjmP8
 ESOkLpwLsznOXVp8VtyX2XhR2VwpekH15rlWlamszuP9zAYC9lxBQzQtZ2G2TIAtBdjWjUFBnV5
 iiWBoRCvwMyWBmxst/fXd6ODOU+VJxJKeNYQP03gD3UXrkCia1JzL/gvgBajNvu9bQ3x9TJoZeg
 dziFBWh9s1iGfimNioM0B9mk+Dk5xEhp+Q5OR0o3Mm0B5w+MMPSoott7XbiUceP/tfyIoG1YDvT
 pi90JJB3N5areG0vuUw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDE3OCBTYWx0ZWRfX09X3pTsCGpIQ
 S5Q2JHBJyRBwNt+Dwut+mMJDrC0qTn/4a6GFLvVl+v/tM/h2IFDxfMO1yLlI2pMLhd9F9N/dH3H
 oP17UieX/8xm7HCopF601e1kkAKZ1mc=
X-Authority-Analysis: v=2.4 cv=JpXBas4C c=1 sm=1 tr=0 ts=6a454588 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=ufZ60yBX7R2ALNXMlhoA:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: DLj_sGZU0SQMB2-2_RVrJbCq2Oy7tqEU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 malwarescore=0 impostorscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_095121_526606_7687C5E2 
X-CRM114-Status: GOOD (  13.60  )
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

Declare the USB-C QMP PHY present on the Qualcomm Shikra SoC. Shikra uses
3 resets to be programmed before initialising the phy. As per the hardware
documentation, the third reset is PHY_PRIM_SP0_BCR, hence naming it "phy".

Also, add remote endpoints and orientation switch support for getting
Type-C orientation information.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../phy/qcom,qcs615-qmp-usb3dp-phy.yaml       | 54 ++++++++++++++++++-
 1 file changed, 53 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
index efb465c71c1b..ae3f0dda3bca 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     enum:
       - qcom,qcs615-qmp-usb3-dp-phy
+      - qcom,shikra-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
@@ -33,12 +34,15 @@ properties:
       - const: pipe
 
   resets:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   reset-names:
+    minItems: 2
     items:
       - const: phy_phy
       - const: dp_phy
+      - const: phy
 
   vdda-phy-supply: true
 
@@ -63,6 +67,22 @@ properties:
           - description: offset of the PHY mode register
     description: Clamp and PHY mode register present in the TCSR
 
+  orientation-switch:
+    description:
+      Flag the PHY as possible handler of USB Type-C orientation switching
+    type: boolean
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output endpoint of the PHY
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Incoming endpoint from the USB controller
+
 required:
   - compatible
   - reg
@@ -78,6 +98,38 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,shikra-qmp-usb3-dp-phy
+    then:
+      properties:
+        resets:
+          maxItems: 3
+        reset-names:
+          items:
+            - const: phy_phy
+            - const: dp_phy
+            - const: phy
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcs615-qmp-usb3-dp-phy
+    then:
+      properties:
+        resets:
+          maxItems: 2
+        reset-names:
+          items:
+            - const: phy_phy
+            - const: dp_phy
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,qcs615-gcc.h>
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
