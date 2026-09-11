Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B086CC88E50
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvWwcak5c8A0i4xLgzEABIpsKjBPU8UwS4mYug4fDGs=; b=UaLkWoooA9fC5f
	h9Fv6sYuMxyYtlw4D/ENpudvJ1HV/oHGlFZiWRAswCHPVplgpe7J1Z2vtmynrEKzY9cqJAufRofyW
	vakJObMSfMVxAiyry2IcMBioaqwQTV2pazzRrNpXlt9mdpAyLnejyjn4fHnbsznmuXWcBDSKot1wE
	APqczstVyf6Wz4so7rklC61sfHVDPQ87P8OABtdAWcoBTpiEApC+1RHFhc7NPQXnGINE3ncyFWajV
	YRtQJqRsl0W0M2WcUvgnsgypnwwURdU4ur4/fej9zg/7x9shNcxfJKnuRr5qzFXZxw5XurAZfyk0W
	vkamqU4kPYbjQjbRlq0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Jn-0000000H4yK-1l8B;
	Fri, 11 Sep 2026 15:37:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Jk-0000000H4xu-3jy4
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:37:34 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BEm9Qq1090915
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:37:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F0/+fVvhOXF30n3qDQqRZypRi/vvshor5bgJQEsTRIo=; b=KYTnV2H/WDw8kR6X
	0fCxw0dQ0glmb3+7ZZhP4iUYGI91IcuQ7lG7wzU2pVoDrWky/SrPjfsID8E2Njay
	EZIBRzGq8FB89e1jEVhB48fhf5WPIDWh02WCzFg/8nL+GJXSyOwRuxTbk2jaQ9q1
	8VwiKKpCGAPzgv/CJjfW4gZl0dldAjfRxMMW3d+GZPgQE+T9AKNJ+cOhlgHE8dmt
	DjJU78e4Ph4AcmtprVeZo4ebIIybMealRF2wB4WWdGCTCHTRdF/6R4rQCk3d/ZK8
	3SDO6AFceYSywWSzRaiQR2LTgIb03drBLgxO8QJCo8JU1XNLqsqBHKpjftAnuR88
	quKSDQ==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmbd3ajup-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:37:32 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-45ecb9dd589so783621fac.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141051; x=1789745851; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=F0/+fVvhOXF30n3qDQqRZypRi/vvshor5bgJQEsTRIo=;
        b=gHioIAcq5kgt67hEO0/cjv/IDibAn6WNjaT3r4BQxQZiimZxY3BHtCwHPAaVVzRldr
         vXoM8Gutbijspvva6X6+N8tb324RMdx4g6x917b7nVSxX4z1/EicMtZ9QkjdKzpddDvq
         u6Ulb+6XQQGxau49teZWntGH4mNTfK/VKqlcQQZA4KlOLakwaPN57hogLlIX5cVvAPje
         faX4IvC3E3UUdzSFI5CJft76fHGqJ0ep6VZWUPGKnOPdyz0EQHuM+GktU/p0T+61nNn8
         pI9RuNB8Do+4ItnBvxK5nzi3qLrsN8rkoaS/9ZLQMlptI1FNzq3QESDBaqSKThmcNouC
         6cMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141051; x=1789745851;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=F0/+fVvhOXF30n3qDQqRZypRi/vvshor5bgJQEsTRIo=;
        b=r1tB//PEXA9bvAP+tu/mu30KyS6mBP63KEnt0s1lWC1i/yx2MoWbX0+5NbHgiajOJu
         p4IfDLru51mFwv7cZ6kNoG+H6zYSPG0B1tLGqgBL0SfazR2KG6W9ZCyTYtdjp63sA+GK
         aJKv5D7vkVohqHE62x0BxDKlyNtRb54gQ5t2cEgpUiSDrJCYsi1Q7AulzDPcrcXttnWr
         VAzfdFn+1kiXQQNKECsR8W41YFj6JSkRUDI4vCYcZ94o4MmMeB/x6hDBn/Ce+8Bzi37J
         R9y1angCNlJdaIT1Wz8lgdZc3YO2cB8xs75lnH9HahQCgtxSYcJWlLNVPlTRX4OJPXN/
         PgQA==
X-Forwarded-Encrypted: i=1; AKwUvBzYapeCTcYueddB65fUQ+fKxY2D8piCDMEW84b2apX9BNrMY93LaU7FHGPcUoQZF8wJaLYxkdvEftI=@lists.infradead.org
X-Gm-Message-State: AFuF++nBSOFKuJ2GBzdF7dnyTCb939wLBORQ4brU8ZXMJfsTcTXbyG+U
	LibYEL7pPmiLJHnIe/fofpPC7O8AZffoNH4gQKxXcA+Ee7mwYIdogeKgMNKv8fXISEnpDVp7Fui
	Otl58zyY0fYyYgHeolS5+r6MJpXej6WzBB99ewK73LrsiM2nIQ+A67/DroUfolTj1i6Xc
X-Gm-Gg: AYBFou3xMR8qk4hfKs9YzCavMofS+uH0xNpB7wxrX1/xqXc8Ix/7oA90w2FQ0VyVCHy
	9DZddQCt0YfzlsT8vAANqWz7imjlqPtY03Hiy0VlioYrE9Z57GjgdB4CI2mkqwbPiLdsW2NuiTB
	lZMHN+a1lfyYqUheetV500W9k6dRiFeAtURZj2jljHFSeDASY8s5ju6C/6zxCc1srP4QVLdtv8v
	cVOS8iFFO9McG4E+HO8Ifq6Ie/TzF1mhS/sN5yptZ9vKPNfbcXsPhWlzThKIspJQkRPhssaMG6M
	Dd7FTatQVUIuzEglGNN1h+Lxt0R5lxzKlf8sVgTYRCVUhpl2leTGlsHZ/gem+cZf43x02p0l8cL
	aPfe24Y9MAUUil6NOV6GBC8bgo0o=
X-Received: by 2002:a05:6870:a0b5:b0:475:e0a7:9f34 with SMTP id 586e51a60fabf-47de9967df3mr3841109fac.34.1789141051478;
        Fri, 11 Sep 2026 08:37:31 -0700 (PDT)
X-Received: by 2002:a05:6870:a0b5:b0:475:e0a7:9f34 with SMTP id 586e51a60fabf-47de9967df3mr3841081fac.34.1789141051072;
        Fri, 11 Sep 2026 08:37:31 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:37:29 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:34 +0530
Subject: [PATCH 03/17] dt-bindings: display/msm: Document Nord MDSS
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-3-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
In-Reply-To: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=3375;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=v6qbb59cSCOFYZp+/jT5/t4KEEFywV4AJkLRBZh12sg=;
 b=VthrLSgYFzt0GpHboC0CLVbmH++is8PI/ePpXkxK0R4IJmY1Nk3ZPzxHZowpzVvWqG0/fFN9B
 AtF5j8uVhD5BJvc8A5vnxBD/fKNGfqlsvf7DTpwIBlhQnVqil92MGQb
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=Bv8IUoX5 c=1 sm=1 tr=0 ts=6aa4203c cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=DZBPq5aedYDaYU3_3SAA:9 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: GtDljFvsDfvVLDy3AAMaEDKkLKQojs7B
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX6h0J3xSSvXFN
 DPKA249frDEzrAXPQiSe8EIXBM6ZaKtWhxfdxf/PEcDvCCt22GKm6Qid6OdFaeuduLSD5nk0RAk
 eeBfzdUjC+ta7CwbO71KHbLGpqPpqsM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX645yNCB3klrc
 84Tq7DaMFzE9SKbr5C51z7WZsxEmMIyHS2wIm9mhaXdf665BlOxrwsufFeIr/ObJG5bXpCX+brl
 hpgmHc/VLD4gnIcAZU8rzEFAWs3YCF2fkGHTke0requx0zinIY0ut01661pa+M/OpMkYL0991rN
 ZBprA+pFmxNPdmZCBef8p5u8eJzmbdOb7qJ2dx1C7RlLcdsIMmo7XrOHfvDN8pKJ0npKF27wqkt
 YlsEPoJbkdkCRmLetObJCqe7sn50ZkOfupafd4JQxEag5rDVcKJ1tBf3rca7TsGG3zvfW+mLKHB
 ugPDHpaYtwQLi0EDyG/I+bn9G28+lNAaOoZwUP3QN1AdG2/ozYzrxP93sU2olio8+5jRxIFnvsP
 oTwFIb8Vat0QlXYh7ny4sVE7TjKkufRSTCn6G9FWc7KYNVpzs4I19H383WJT0G4F03ZbWMkCC+M
 hOByXZnqYQmCW2x5mqQ==
X-Proofpoint-ORIG-GUID: GtDljFvsDfvVLDy3AAMaEDKkLKQojs7B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 adultscore=0 clxscore=1015 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083732_944284_318F668C 
X-CRM114-Status: GOOD (  14.99  )
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

From: Mahadevan P <mahadevan.p@oss.qualcomm.com>

Add the binding for the display subsystem (MDSS) found on the Qualcomm
Nord SoC. Nord is MDSS 12.1, DP-only (no DSI), with two independent DP
controllers.

Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 .../bindings/display/msm/qcom,nord-mdss.yaml       | 98 ++++++++++++++++++++++
 1 file changed, 98 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.yaml
new file mode 100644
index 000000000000..0b0cacdca9db
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/msm/qcom,nord-mdss.yaml
@@ -0,0 +1,98 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/msm/qcom,nord-mdss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Nord display subsystem (MDSS)
+
+maintainers:
+  - Mahadevan P <mahadevan.p@oss.qualcomm.com>
+
+description:
+  Nord display subsystem consists of MDSS (display controller), DPU 1499A
+  (display processing unit), and display interface controllers (DP only, no DSI).
+  This is MDSS 12.1, DP-only, with 2 independent DP controllers.
+
+$ref: /schemas/display/msm/mdss-common.yaml#
+
+properties:
+  compatible:
+    const: qcom,nord-mdss
+
+  clocks:
+    items:
+      - description: Display AHB
+      - description: Display hf AXI
+      - description: Display core
+
+  clock-names:
+    items:
+      - const: iface
+      - const: bus
+      - const: core
+
+  iommus:
+    maxItems: 1
+
+  interconnects:
+    items:
+      - description: Interconnect path from mdp0 port to the data bus
+      - description: Interconnect path from CPU to the reg bus
+
+  interconnect-names:
+    items:
+      - const: mdp0-mem
+      - const: cpu-cfg
+
+patternProperties:
+  "^display-controller@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        const: qcom,nord-dpu
+
+  "^displayport-controller@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        const: qcom,nord-dp
+
+  "^phy@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        const: qcom,nord-dp-phy
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,dispcc-nord.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    display-subsystem@ae00000 {
+        compatible = "qcom,nord-mdss";
+        reg = <0x0ae00000 0x1000>;
+        reg-names = "mdss";
+        power-domains = <&dispcc_gdsc>;
+        clocks = <&dispcc DISPCC_MDSS_AHB_CLK>,
+                 <&gcc GCC_DISP_HF_AXI_CLK>,
+                 <&dispcc DISPCC_MDSS_MDP_CLK>;
+        clock-names = "iface", "bus", "core";
+        resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
+        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-controller;
+        #interrupt-cells = <1>;
+        iommus = <&apps_smmu 0x800 0x420>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+    };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
