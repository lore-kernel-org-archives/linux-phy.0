Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9780ACCF2C6
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 23:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGiaMlv+F9tyXHk31zAFRP3dawakPO/Ju53e61w+2c8=; b=VgUbbYp1+2FHms
	DsemZOEe4XaWvpqoYRCInpcyDMnj1gDP1RGhuLEs0oPZseAKYW70gxunlcSDysx2d5b1gDzebrkBZ
	kRnxtXkn9SjUHv52g857ChxZ5Myw0EuLXWn/nTLAqXYroGDPs5HNjUnMRca8c5Hlfy3cig7UduDmg
	7KZRQNZDjxb/dd6WUfYvEAq3j7rRh73Rm1cYBRVvVLTPd+WKAajTzytcZ4Ii+qOJSwZ6gzW/3sTz8
	DbEvIOg3Z8UzsjU6/QWHo7WabEohn4L5hDQ0wlU/lmTEaOh145kDyV/t/sL2WczMmvQLiXTzgj9x0
	7GwQpjbMzyvboJ3eKE7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrli-00000004DiO-0oJ0;
	Fri, 16 Oct 2026 23:55:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrlZ-00000004DdB-3pHq
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 23:55:17 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GNFmV92785032
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=feRtm2SE11o
	kGy5uEhKVGhOratl/Q0XPxlXRlVQG4OE=; b=Kz5hpCGqyDAn4zoZIuvHi+4TzQN
	b29fxRR77vs611i/QWzcJ+cYG+zA2DWmZWeJBXbvd/lu+5M3yfVQzveTL62lzRbd
	Qwy5r2Nnvq8oDXFfFGUfbaBLviM9lIp4yWeXtFbUZa0MiRqtajn4adQ1Xv0kw30x
	maqvOej8WidxnyZvEHRvjjIAGnk55UZdgT7iyCpAb95mQAdbXqvJyKggszbwfZZY
	KB8nyUP+5Kio9vEEbhMAgrFxupt/Guyc2qNu+UlKz1WKMahOlibOjlKIzWnKKRbz
	VSBDWl0feiGeciL13yVHIU05RdS1WpLUjK/Z55VCbtGdQ8UXJ7/CmPtdjtQ==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hbk3v2j3u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:07 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-1383723dfddso882095c88.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 16:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792194907; x=1792799707; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=feRtm2SE11okGy5uEhKVGhOratl/Q0XPxlXRlVQG4OE=;
        b=PXeVy9s4lBaLmH4iQ9uOEvAS02damlZT9outv/wGj896Bo9bVCFBIwmfp4SIJ/Zcnp
         woVHMilvS61svU3Ec1p9KamN6ImD9xDVrlWLvg4Ij9+NhRU9K7YDO/jbmFGNZ4oES9t9
         pNb/iVxwXAPpYEqWr/2cneo2bPMkhyGIimmUeymFe4fTpo5gM1lE8Cxy2Vd5peT5RqrS
         fqVT2xIYV9uG7AxijeszOKHLIgL48nPFk08rnwrYfGjwzvvt1DjB48bjHVuImXUuZnN6
         xuFGIBbflllHmfInw4tG0YOXKig7StRsLB3F9yzlSH+/yPPR8wDsL8wPbtcpfcDWYQlA
         CKcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792194907; x=1792799707;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=feRtm2SE11okGy5uEhKVGhOratl/Q0XPxlXRlVQG4OE=;
        b=k2R1PkoJU2KboCsnNOfWNZ5gLOFh/zOrJyEdils0dwaK8+prOdw3/QDVIlVXTpOBfU
         hssrMyFg/v/vZSZcFO+R+zGmbMDCmz4Gi3X5G/6aI+KMI3y0zxS58WhVJowVwIv4igNj
         ih8qAcxUcj1im2m4Fres4kmfWpl8ooiFgIZoOoVJQHiiAhKWoozLjAyS3za7FEA1F+al
         7ouVZDZTxdAJ0PcxAq3zGtj/84rf4x+/MhhM1FKCAvWncYy4vEZ/SWzJYxFFUUxIwIlr
         9pteZb/8TworQHSKpWYgcU70QZlLJd98kpGSNLudJkulMjqn3fsUE+cuB05WDhjonSDX
         YcjQ==
X-Forwarded-Encrypted: i=1; AKwUvBwxS5cfv2c8MC5U8eWsmQyvkgLGzxhwlMC9CB4ABDH3BSit1OI+icuzBtHNsGXQcYSh7Go8GL21k/s=@lists.infradead.org
X-Gm-Message-State: AFq9FYJUQHN23gfK/U7Jd4v9JMAaxBNWq4pBMgp+uBJGaf1/rtX1Mdim
	V/zoXrM7B5dcBFMN6C9YM9or082N+nngKIGCaH6bJqmOqFuY5YPb0OD5Hej2JUP7h5W4Lthgspu
	A8taUTAB8md84fUBtDNa4Wv+NGFU4uQynr1YDH3JOrRX8oT+09m0zPSg5G3aJS7p5nq0/
X-Gm-Gg: AYBFou3oPo4pKIyBy5aH/tqOB4IEpZqQy6uu/9/koxEYrxet27HB9UK4UAIzzApORfd
	RiJ5w8U0Kx2CNgE3Wxr3i7EASUnoTMJFzSFQDO3FFRKdcNQoZxjJLIiy3AeJTF8p6nV7ZeSv0Iz
	MQOW2zcPz6Dof503bTVxN6r3mYOJ5v6MyqxRDrh1RLuBKZVFWoV/eMqRsYt1gAJRzfX6TgHs9On
	WuIOZb7qYGqVR/+qKPJu+kLSYit0Zr50R4/+EjrnG8P8Rwdu8ThzxMfiFPMEykUSc9/zzt81U5K
	SJ7T6v1+YP0HFEDH4XC/9eKNzxXxxgjGslTXC+e7AgmMQByynu5PhJv2vxus9OWwjfUYskDH7R/
	e4IAHtGpbUSVd8Um0y/o+RoGjfTmsMvT73Lfgj80Zm50vjeDtzSXNXg==
X-Received: by 2002:a05:701b:2807:b0:14d:baf5:c411 with SMTP id a92af1059eb24-185118edb00mr1677834c88.14.1792194906974;
        Fri, 16 Oct 2026 16:55:06 -0700 (PDT)
X-Received: by 2002:a05:701b:2807:b0:14d:baf5:c411 with SMTP id a92af1059eb24-185118edb00mr1677786c88.14.1792194906193;
        Fri, 16 Oct 2026 16:55:06 -0700 (PDT)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-183190aa7bbsm8556183c88.5.2026.10.16.16.55.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 16:55:05 -0700 (PDT)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: bod@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        mani@kernel.org
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/7] dt-bindings: phy: qcom: Add qcom,sa8775p-csi2-phy schema
Date: Fri, 16 Oct 2026 16:54:57 -0700
Message-Id: <20261016235502.2274268-3-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: WX24N1PViRa9eJ_wloWgDP22FfbXHUUw
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfXyDE3vzIioFg5
 VzaIk4J/Vs5lswwBgcJAt7zpLObRCwmZhBiwQb68e08zJqyIU98+wUTWVe4nKJVDIJ776fsz3jB
 iSKKC8Bh6rGwkHsMuxPmgP5/Io+2Mbc=
X-Authority-Analysis: v=2.4 cv=BZdNQbt2 c=1 sm=1 tr=0 ts=6ad2b95b cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=o-k08rXiG_sRaRb_8WoA:9 a=vr4QvYf-bLy2KjpDp97w:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfXwW/Ab5H/qqvT
 To28pD4A5zhAzbxD3A3GA3BRtXHSnu/IzBTj1sU5ewEeuk4bvG4f6oWdyIUR0QGa+ilbskcPeaq
 BhZX/9OGA6joSOnTPpfDYjQT2MbI0R8+ib/KDFfWchrDId6T56Yh4BGItgQyTx9MNtbp7+jg1xI
 NUZjCFVg0zq2pYoeBOn1zpX4jPAKzvRn0v4nQbuhF23/sfQV9CBF0wItkj6FKJpOZh499WNhWTA
 dG2qKnPDkCU07D9kfg15JE5l8/fxhTks8w2m80aJlnEbfUAg0zIz+mX9gETi2OXvzZ9jdvgXiWS
 E5ogxwn/jvEgLmLF3aEkOUzccHmW2IuE6VimEVLaIRn/QTOw7b7pN7c+MgVCZj5dzNyTcstql0U
 liNqf8u9AHsbJF34qPl2TsGUfYHytwSu3xwaj3o/ymm0iQDpuQzaXOJ3pDuZ+WutASN6/PFkA1D
 GldHOrPGklzwB9OaVbg==
X-Proofpoint-ORIG-GUID: WX24N1PViRa9eJ_wloWgDP22FfbXHUUw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_04,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 adultscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610160095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_165513_978705_456AB6B5 
X-CRM114-Status: GOOD (  16.30  )
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

Add a device-tree binding for the Qualcomm SA8775P MIPI CSI2
PHY, modelled as a standalone generic-PHY provider like the existing
qcom,x1e80100-csi2-phy, so CAMSS can consume the CSIPHY through the
common PHY framework instead of driving it in-line.

Follows the qcom,x1e80100-csi2-phy schema's shape: a ports/port@0
sensor-input endpoint carrying data-lanes/bus-type (D-PHY only for
now, C-PHY bus-type value is accepted by the schema but wired up by a
companion series), a port@1 CSID output, and a mandatory
operating-points-v2 table plus power-domains/power-domain-names.

Unlike x1e80100, SA8775P's CSIPHY has a single power-domain: the
Titan Top GDSC, matching the legacy in-tree CAMSS driver's
sa8775p_resources.pd_name = "top" (drivers/media/platform/qcom/camss/
camss.c) and the existing lemans.dtsi camss node's power-domains =
<&camcc CAM_CC_TITAN_TOP_GDSC>. It is not OPP-scaled, only kept
enabled, the same way x1e80100's own "top" domain is.

The PHY takes three clocks (core, timer and the shared CSID CSIPHY RX
clock) and the vdda-phy/vdda-pll supplies. The core/timer naming
matches x1e80100's clock-names convention for the same pair of
clocks.

Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sa8775p-csi2-phy.yaml   | 172 ++++++++++++++++++
 1 file changed, 172 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
new file mode 100644
index 000000000000..b66ec2f14189
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
@@ -0,0 +1,172 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2026 Qualcomm Innovation Center, Inc. All rights reserved.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sa8775p-csi2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SA8775P CSI2 PHY
+
+maintainers:
+  - Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
+
+description:
+  Qualcomm MIPI CSI2 D-PHY. Connects MIPI CSI2 sensors to Qualcomm's Camera
+  CSI Decoder on the SA8775P SoC.
+
+properties:
+  compatible:
+    const: qcom,sa8775p-csi2-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: core
+      - const: timer
+      - const: csiphy_rx
+
+  interrupts:
+    maxItems: 1
+
+  operating-points-v2: true
+
+  opp-table:
+    type: object
+
+  power-domains:
+    items:
+      - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
+
+  power-domain-names:
+    items:
+      - const: top
+
+  vdda-phy-supply:
+    description: Phandle to PHY supply.
+
+  vdda-pll-supply:
+    description: Phandle to PLL supply.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description:
+          Sensor input. A single sensor is described by a single endpoint
+          with one to four data lanes, numbered 1-4. The clock lane is
+          position 0.
+
+        unevaluatedProperties: false
+
+        patternProperties:
+          "^endpoint(@0)?$":
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            properties:
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+                default: 4
+
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+                items:
+                  minimum: 1
+                  maximum: 4
+                description:
+                  Data lane positions following this endpoint's clock
+                  lane. Positions are a per-port logical numbering, not
+                  package pad or ball positions.
+
+            required:
+              - data-lanes
+              - remote-endpoint
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output to the CAMSS CSID controller.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - operating-points-v2
+  - power-domains
+  - power-domain-names
+  - vdda-phy-supply
+  - vdda-pll-supply
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,sa8775p-camcc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/media/video-interfaces.h>
+
+    csiphy0: csiphy@ac9c000 {
+        compatible = "qcom,sa8775p-csi2-phy";
+        reg = <0x0ac9c000 0x2000>;
+
+        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+                 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>;
+        clock-names = "core",
+                      "timer",
+                      "csiphy_rx";
+
+        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+        operating-points-v2 = <&csiphy0_opp_table>;
+
+        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+        power-domain-names = "top";
+
+        vdda-phy-supply = <&vreg_l4a>;
+        vdda-pll-supply = <&vreg_l1c>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                csiphy0_in: endpoint {
+                    bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
+                    data-lanes = <1 2 3 4>;
+                    remote-endpoint = <&sensor_out>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+                csiphy0_out: endpoint {
+                    remote-endpoint = <&csid_in>;
+                };
+            };
+        };
+
+        csiphy0_opp_table: opp-table {
+            compatible = "operating-points-v2";
+
+            opp-300000000 {
+                opp-hz = /bits/ 64 <300000000>;
+            };
+        };
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
