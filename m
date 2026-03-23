Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 907ECFC72C5
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 07:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQq5/80bgyP1kp3lPWsfqds1LeYUJFRqgpRZPJAgOxc=; b=mQi5au5by/JTkt
	dH2BJ/v56X8eCvjIroGlGru3jqF0+Wv2+bUSbq9hzH0vEyj6axKd2EU4qDO8RLCQFdx/cinZJCa0I
	AXn3fw7e01QNN6h1MpV/qR8TZj+Wr5qHQSQstNRIA2zZrj1yyx8MTzHwtsAJF9N1blesm2eZBMA4f
	2Ixg2oKLcPMrb9PS/FNul6Ff9JD4KV2XdqTYHrDJnx6KgfhxjyTjQ8VBYjCJjIkj7B7Xkvn1DbpX8
	j342kfkN2Q2xg6HpqfA29Inop9huOwF0+pbsuQ9aHXPbvLECP9bhcGKKKl+EBlqS11iKmBncG6ugL
	sKGOiulU9JpoZRcGsKVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ZVk-0000000GAqq-3ZHG;
	Mon, 23 Mar 2026 07:15:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ZVg-0000000GAnZ-1hsw
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 07:15:37 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62N4smcv4045054
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 07:15:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+feDmpxyjcw2Gpw8JLF/SSE3a9sEyKxeVIjgMxiPBLY=; b=CAGnR+EN3TJiewZN
	OE1KnCv2HAKAwEteVPU6awedPhRyWcl8MuvNDqC6SsgvuukzEN2gybHHagN3vrJ1
	0vFzNLJUxldkJa0aJeiZ6hFFbLsGDFqwWbrq+I8umEVM7VGrsKi/vw7l1vOV8gb2
	TXYogGg+PkomzGSk6/zeocoP2YcFiSuKjbaQ0myc3YZ+n6guzKhN77EVY/HDVUOe
	9Vi/FRbJCurNxERX2+wQU7TSflmjEI3YJzRTm/SFFvSi6mNvpSieyNDYi7SgAk/J
	vHLqNXiSFGF5AHWlyocAhKPooHGmwAHcSu/JbwGnmgSBVfKIKN+AQrp3daP34R62
	lLX9wQ==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1kq5v7e2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 07:15:35 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2c0ec884bffso2532056eec.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 00:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774250134; x=1774854934; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+feDmpxyjcw2Gpw8JLF/SSE3a9sEyKxeVIjgMxiPBLY=;
        b=KFYIgfBW7IkywONSLuL2bv82vFIQCRrizVXsz9olTO5+bEY/tt4P6aAI/o/mehWb/Y
         TgfyKzEZbGLz4gazkoS3FYAlOW8timBWvSuLRSk1fIaMjb8H9HBRNV4aye/G0V5QvupM
         3ZdvtSyjyhdXABfOz8t3PstjbQPoKJ8bMPddk5C62orJZxq/3KUa/HftD48XDFhVb/8M
         DLCBSL1V43Rrq/0cbOTq9xA6hYSq/00QZEfGda9OBXSLY0SHfKZBVsgHK73jYqvexHkT
         cWPdZ3bDbmhouF848opkHVX0lVJo03gwwmcLBJcU0NoAS/gm/zT17A0cLqbKLLUqsuPo
         KZqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774250134; x=1774854934;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+feDmpxyjcw2Gpw8JLF/SSE3a9sEyKxeVIjgMxiPBLY=;
        b=IoDhtRfOoifon/BMmL4AplKyenaB8WiPxAapDEZtsgftMgF1vE25N+iSaeYYwIOj5L
         6WYifj/LPisScslL1ZS/p38tpgMTSB+FIKdi99up+BtEnLEBzkNxAZf+Rd901X49t5UN
         Yfw4kq9GoFsllac8ohi5ypNHV7dtYOVzWyCYj9QvVlGDKtlggzy0qHIOHPzwS3KgxHck
         DbKGFd0HuyGy4cETQvhh81Lyh1OxkHYomYgTEurgPLNinI/lekB7HDpt6OSB1qoV8DDH
         sJNFrdAGgswjOQhO8w1S5wGdVM3g29i8kr4I8g29RxrpcYs/ZT2uB2GcZrgeBD9mRxGT
         z0uQ==
X-Forwarded-Encrypted: i=1; AJvYcCUr3QnObZM897As2thD1LzG7tKFa5xFDisJTKn95TqWJ+8I+EsgT6yDrhIrrnm31tZ3teaeyHCznA0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLH0pEBp54s/PLUckTcHPjfVOUe1n2T/tPn7p84k6KJmDKKbGE
	YQC+SmCK2o8QEmHMP7PkFe8vc6zMe9yFIwfd62DDmZjIpAoKxKB19Pzmxf4E/8THhQLt/56LvL6
	SbIAFO73+B7StZ4SX7GysRlusaqP1+wCBr1Knf2CRbWf6Y7ZvFS/h0+t/HzNiWEWvKNENboCBbD
	L7WxA=
X-Gm-Gg: ATEYQzzmC8Nv45ee2YNWqA7csBObkwVCMoPC3i6K7Jp1CSn1GiSSmSgQSCpmqFyku2d
	y5C9YblsAJsrV0FH6eK6T8cyoe00S/dkRvU4dX84ajzdZ2CpzKVMCigwDbtRZ3vjjNCXI7mIDlK
	D0HOth5Xt6u8LifFJgmFYws2Ckehbbt2yv4e6k6GtKmUbSeQnDLkjy63nT5Sxy4FWbBIvZwbB9h
	AXnv4EeJbDYj17M2zpIvMuXqjXU7fAn9rRDFx0ko+Wl6BM4/XpB+T+deMJ2iBaLfmfkB6xmquKJ
	PUXzerFyHUZwvu3rZ1SjwrUl5qpXKg2msBzziBjNeGLWnHicCF4tzEnQ6HU5HUg1p7WbRi+qg8f
	3gK66tDBFh2zHsnrifv43rOWmZUiaefOCvRBUu1UVsG8n9z0SQHvYZinrCHIX2tO2Ou7s
X-Received: by 2002:a05:7300:2382:b0:2ba:6aef:6959 with SMTP id 5a478bee46e88-2c1097c0938mr4561062eec.27.1774250134165;
        Mon, 23 Mar 2026 00:15:34 -0700 (PDT)
X-Received: by 2002:a05:7300:2382:b0:2ba:6aef:6959 with SMTP id 5a478bee46e88-2c1097c0938mr4561049eec.27.1774250133647;
        Mon, 23 Mar 2026 00:15:33 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b14cadbsm13997886eec.3.2026.03.23.00.15.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 00:15:32 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 23 Mar 2026 00:15:28 -0700
Subject: [PATCH v2 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 support for glymur Gen5 x8 bifurcation mode
MIME-Version: 1.0
Message-Id: <20260323-glymur_gen5x8_phy_0323-v2-1-ce0fc07f0e52@oss.qualcomm.com>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
In-Reply-To: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774250130; l=3719;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=0cxDH4J+ogpnd/2Sh8T/+lD9ulgjspAUfkAYG3Mt/CY=;
 b=TKbSq0yuYb3Fe94qzlQGwjzQIQDc/sbsearhsGusfuWkOeh/nnkijAoxAlAijPB8IxtkofTtu
 H56m2yBdqZzC5saTMQ+XMFW2aQ8VEqrKsgWZqw/WsESp2wEuYK0xurU
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=GNoF0+NK c=1 sm=1 tr=0 ts=69c0e897 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=RFdnLZz7-LqoW1cxMWEA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDA1NCBTYWx0ZWRfX2E8KcOrNF7j1
 UIdFDjOe+3MRR9dj1wtljGCCCRQ0fmRs1g345P2J+D8xudnjAfC8tPiEoZhVS1xC3HnNVrlBDoa
 p9GCI1SxWbsvZ4mL623z89+vywZ9GmTOakhITcyTIycjs5RufErUe+HR210kRfrP2AGewQk/mU6
 jCn+3k1fUpaju4XhWX9RObrjapeqLB178QNXoyyX/vO7h9SV3O1pq0TtTkeiIoWorbE1QIXeD51
 X7Q0esuiWkigaOk86vJkhK0V2Blgd6WtHggBNNf5lrD6MvD+F+FA+VxVmusPoXIPk9XZkp/qoO2
 FGVu7gTcGPQit56lfRpHekpe5UMDyuWnyg8tpPNayoGi3KN6yrr5DVglYxWFoK8AtBs7OKHCzPd
 o0xvPdFB1oKAK1tP/6CbibcljrorjuAF15UoiQhVlsPQKvqeHB83TkCe9Gjd3hqxXmIzc+AAmkZ
 qbEUGV/iPuprQPBtysA==
X-Proofpoint-ORIG-GUID: ibcu2i6AK3QA-eWVJrSgPAHNoEg2oV3V
X-Proofpoint-GUID: ibcu2i6AK3QA-eWVJrSgPAHNoEg2oV3V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_02,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 suspectscore=0
 spamscore=0 adultscore=0 bulkscore=0 phishscore=0 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603230054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_001536_572772_88558AA8 
X-CRM114-Status: GOOD (  12.36  )
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

The Glymur SoC has pcie3a and pcie3b PHYs that can operate in two modes:

1. Independent 4-lane mode: Each PHY operates as a separate PCIe Gen5
   4-lane interface, compatible with qcom,glymur-qmp-gen5x4-pcie-phy
2. Bifurcation mode (8-lane): pcie3a phy acts as leader and pcie3b phy as
   follower to form a single 8-lane PCIe Gen5 interface

In bifurcation mode, the hardware design requires controlling additional
resources beyond the standard pcie3a PHY configuration:

- pcie3b's aux_clk (phy_b_aux)
- pcie3b's phy_gdsc power domain
- pcie3b's bcr/nocsr reset

Add qcom,glymur-qmp-gen5x8-pcie-phy compatible string to document this
8-lane bifurcation configuration.

The phy_b_aux clock is used as the 6th clock instead of pipediv2,
requiring the clock-names enum to be extended to support both
[phy_b_aux, pipediv2] options at index 5. This follows the existing
pattern used for [rchng, refgen] clocks at index 3.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 45 ++++++++++++++++++----
 1 file changed, 37 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3a35120a77ec0ceb814a1cdcacff32fef32b4f7b..25717bc9be98824e38f3c27c3299fbd1f2e7e299 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
+      - qcom,glymur-qmp-gen5x8-pcie-phy
       - qcom,kaanapali-qmp-gen3x2-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -68,20 +69,23 @@ properties:
       - const: ref
       - enum: [rchng, refgen]
       - const: pipe
-      - const: pipediv2
+      - enum: [phy_b_aux, pipediv2]
 
   power-domains:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   resets:
     minItems: 1
-    maxItems: 2
+    maxItems: 4
 
   reset-names:
     minItems: 1
     items:
       - const: phy
       - const: phy_nocsr
+      - const: phy_b
+      - const: phy_b_nocsr
 
   vdda-phy-supply: true
 
@@ -183,6 +187,7 @@ allOf:
             enum:
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
+              - qcom,glymur-qmp-gen5x8-pcie-phy
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -201,6 +206,17 @@ allOf:
         clock-names:
           minItems: 6
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-gen5x8-pcie-phy
+    then:
+      properties:
+        power-domains:
+          minItems: 2
+
   - if:
       properties:
         compatible:
@@ -223,11 +239,24 @@ allOf:
         reset-names:
           minItems: 2
     else:
-      properties:
-        resets:
-          maxItems: 1
-        reset-names:
-          maxItems: 1
+      if:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,glymur-qmp-gen5x8-pcie-phy
+      then:
+        properties:
+          resets:
+            minItems: 4
+          reset-names:
+            minItems: 4
+      else:
+        properties:
+          resets:
+            maxItems: 1
+          reset-names:
+            maxItems: 1
 
   - if:
       properties:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
