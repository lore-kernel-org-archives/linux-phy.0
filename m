Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42EA7C43458
	for <linux-phy@archiver.kernel.org>; Sun, 12 Jul 2026 15:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiUEY58OzdEUJPKtecxI9B7xdFuzpKJHxBHkAKSlnHs=; b=KzFF03Nr8w6SN4
	CvvLujpUWpgvz2LcOX6r4IpJV+XU4OVzlOCI/1r7/Gc49PCm59hCAVXjzUZL8REQ11jzK8dSuz7AR
	SJqgpPNzgGCmk1RGbf/5JyEW0O0bJsuDgdi9q3N/k7ouEHmJZ4+z0e2QL3PvrtslaR82J4K497a0J
	W+rqSNTWccvYy+ZRJy3yNXFpmwPqDbytseSQmQFLh2X3dFxo3vL34hjZJRL3e8IzayNPXgAzsixjz
	fnIs45s6wBrFP0s1Uc4+CWmafCJ0EbD/7MullTPebxo7S1/9jUdCMqQWHI2JEm+PwJOvTAqFM4H/7
	dd2cXu86+P5CBPkyjjPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiw70-00000007ZU1-4BMo;
	Sun, 12 Jul 2026 15:28:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiw6y-00000007ZT1-0qAW
	for linux-phy@lists.infradead.org;
	Sun, 12 Jul 2026 15:28:57 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66CDZivX2556510
	for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 15:28:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CTLfXqR33lpyP52Ix+0HK2NQsXaqxIC8ssOzv9Yh/EA=; b=lxua+DoVZHw5hhbI
	SxC/laIajh+K2OaRYCRFrOVPgrN09M0EZ9dxAJtgmT0dq28g37lT3FJyWVGBBeLp
	C438GzKsI4sj7FV8j2e4MgWUddsCWWHTz80QVs4bp9RJTSSF0h0isMN4p8bxeBH8
	Gf8Jwn1oom8B0tRykpeg/kspDLZs+GkFa/iSQCO5UIuO0RD70dhqxkWyX6y8DTZI
	Eziff8rjeZs1BxM8OqAATAgDj0UfNXdE8lzgnRe9xhiR3kdTJOj06U+I+qKkBeOb
	RmGAKwYnIIFD3crkwofkBn30sgV1CpBgcbGEot6IY3acawds+iUTGzUVBEO2sEQD
	6j/t4Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fbee9k37m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 15:28:55 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-37fca5f21b1so3004701a91.0
        for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 08:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783870134; x=1784474934; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CTLfXqR33lpyP52Ix+0HK2NQsXaqxIC8ssOzv9Yh/EA=;
        b=aid8cePG3r+h5b2bvWlKTvzBerCeo7Y/tLcLE8ONIM3W6CGH+RNnZmbKnNRtxD7snY
         cCEpl2ViCnMWMZgrttHIdXSda1UVn/vHT61i/dpreIjjdyVTnHgOp32sBTjwvwkckqFL
         mAz1Cg/0nv/7cFwJmZmvRsB/oFdH/JIalxEuhlWS+h6TFbLmlaz36lROOXfN6jtzPT7O
         IpVzPDIar7qM+ofmHH2Jp8dqgX+flTFfZmGBv1LzMpBNjTPQzpSDsXcWLv6g24qdZT6m
         Uuhl2D9dOYsoDGv4ZGu5r3+6yWbLlhkiMmJT3iXlRqzpEZGr7RYZVGjno/44jnm1Q+SH
         VXrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783870134; x=1784474934;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CTLfXqR33lpyP52Ix+0HK2NQsXaqxIC8ssOzv9Yh/EA=;
        b=jiSMzvD6eQH9Ls5MOomjpULSPWiBXEU7x8CIZyxf+DGwRhYL9ZBWPsf+Rz1jFaW64X
         XZWWdxnrrnJBUXlXYcbCR0YW4yiVfGB/pvoSH2rQ0oK6E0cE9M2DyG6YEKkWynSqbsRS
         AQeri6+lax6i8csv2+X0XPvrleAwaOA1AZwS/ZdSsPFFMkCCYDA67VvL71/SAB/6uSkC
         vv0qOo9IGyw8SyI7b2m4mJcQbJlXQMCcWUdM0Ym/QwFUYjwvb4lwyt3Ktzt9YvlHD/I5
         2JsdbnHb3rkECgZ27OqRzU6QVTDVRCaZWQywTSXWuMqdDlUlgskeWon4GrcU679lPSWw
         YOzQ==
X-Forwarded-Encrypted: i=1; AHgh+RqmVLc8/5Fj6KPtceI1q0OCbojpl86+GUqtDBpzE8tZ7VshHCzXa2twoHCBzvDQDoWUCC0xpgZUTO4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLLWffU1bETti6qVnzI7oWyhMooq1+6sOny5Q0/4Qq71xKG1hb
	oKHX9l826MXQNbDie5HL835D3vE7OrpnmrxNC+hYKbo7lWSHnE8/Jsf0GBiT/IIuYvn1loM4lkU
	rRjG25ppeF1p6DvaJfcJU92wdoQBCL99Ytx/aOldJH6yhdX5klEOhWFmBBO+bbC2UdpGJ
X-Gm-Gg: AfdE7clPboTaqKJjcZHoFHvf5ydLZsh9EU/IXAq2SK4R8hFJjadpMUEWpeFFZhKSOjD
	o+tINyXZaFIopk8RVE15+iB38OIpMriA84pdPApBZ+gmXIfzC7T7IkpcjCS5MLLp1eWZqZfGUfb
	l8uwdqeeJ8OER4nh2eK/059whdFIJgIJS09CazEiHTiZisfrcaz37PDNchhXnE5IzR2LxuTdU/w
	9GyQKcQdqWuuMq/rJyFnK2lnqcN7+Ee7WNZgYJmEz+r9aVwKreV2Iw1wJx4A2OZFzKznRk1+K05
	B/0Vi+RQnuKA/PvspZC74WUsEX0GqPGfTl/g8E1Cc9MbcPUgUPj9f25spMGA+erWVRQG2DDTDKN
	I4r5fB9dkbFyRCPnZDVOHAUiCzgBLD98uJ9aEYc2+1NXYkuE5FBq3EnG/pmX7fN2+Uf10BS6cZt
	GbYh1H
X-Received: by 2002:a17:90b:5903:b0:37f:9e21:91d8 with SMTP id 98e67ed59e1d1-38dc834de8fmr4853276a91.15.1783870134290;
        Sun, 12 Jul 2026 08:28:54 -0700 (PDT)
X-Received: by 2002:a17:90b:5903:b0:37f:9e21:91d8 with SMTP id 98e67ed59e1d1-38dc834de8fmr4853257a91.15.1783870133855;
        Sun, 12 Jul 2026 08:28:53 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-311935fd091sm41458776eec.24.2026.07.12.08.28.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 08:28:53 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sun, 12 Jul 2026 20:58:35 +0530
Subject: [PATCH v6 2/4] dt-bindings: phy: qcs615-qmp-usb3dp: Add support
 for Shikra SoC
MIME-Version: 1.0
Message-Id: <20260712-usb-shikra-phy-v6-v6-2-1b3e51bf1541@oss.qualcomm.com>
References: <20260712-usb-shikra-phy-v6-v6-0-1b3e51bf1541@oss.qualcomm.com>
In-Reply-To: <20260712-usb-shikra-phy-v6-v6-0-1b3e51bf1541@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783870119; l=2707;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=pa1uBKrJaaxo4mIls2wPcMnmCJPRxvh1/dRvY121X/4=;
 b=jFQRmxwZFpX6DQoCl4CLus+aF7XaIltggdJxmaYCfTHV8GOZORXSipc6EXyDGh9UDr+F7P2u/
 SqghEsIgir8B6hnqwwuv8E9ZQ1A+LIyEMv6s/oN7Xr022gvVmucF2WQ
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEyMDE2NSBTYWx0ZWRfX4gtJ/DzFzMWj
 7uzatkzYB9douoJ8LyAnmGUOSJJYlSb3Uhfk5HEBpk+bSWDs9BJG0AgTajXnZKrxwRgo+pEC6qD
 vSw2Udl58e+1LtN3z5dyFPU/fDxljOw=
X-Proofpoint-GUID: U4Hph0oqpwoD-m_BDPlevYZs4HKE-HQx
X-Authority-Analysis: v=2.4 cv=a7UAM0SF c=1 sm=1 tr=0 ts=6a53b2b7 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=ufZ60yBX7R2ALNXMlhoA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEyMDE2NSBTYWx0ZWRfX3KCv0NSRcR0P
 W73I9c9liAbuOXQTi6HSpYKVm6hOKdGY2qWc4XAgPY9sPY18Pv2VOJmJdsyIStY1P63/haTTAMZ
 iSs5oQQDwWJfGKaFsGQ45RUVcG7tiLBw7f8LKXYu0+98FOWFRN3HAh7lYwnLZyClhMLaarIaC6J
 XlaBgh8jCLYBtDdCZSOdcy4sFQWcXiVd/P6CPLdroO/M9BvmXDIkcRusfqVmniaK+Cp7OmHyqIi
 QGuJNaunQkKVyldqo9L0YT6vovc86cD9OjyYOnFKuBvV/Iyz9fK6K/rSpAChQDbiCU4dARG8m+6
 0ZHAKUbwQ8oPSLMEKSn7XyIo2jZKZHMnliRNTU3pAKS8wPojgQoO+3GqxkhfAoKaOUhjxDU62zn
 BLrbdw9b4zMlkEFfcMSrO8IvQzHf1F0HAiiHb6AfIjb7W+fmook69jNIUUg/09IthX7pOfEdhgF
 CyPNCcOnN3hX47Blxbw==
X-Proofpoint-ORIG-GUID: U4Hph0oqpwoD-m_BDPlevYZs4HKE-HQx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-12_05,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 clxscore=1015 spamscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607120165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_082856_360262_87D523C7 
X-CRM114-Status: GOOD (  12.53  )
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
 .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 49 +++++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
index efb465c71c1b..98397006fa62 100644
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
@@ -78,6 +98,33 @@ required:
 
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
+          minItems: 3
+        reset-names:
+          minItems: 3
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
+          maxItems: 2
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
