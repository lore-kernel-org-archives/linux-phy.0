Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81C86CCF2C4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 23:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMDU6NXdZXnmmbbHQ6EWZSeJ7BW9M5acvmUf4E3hAM4=; b=jjvx3cfUwMI5LL
	GAo7m9T0xHATveoy7uKQ71IBZUffGaas9P6rY6DDb9igMxv0Lfe0EfSp0L6XMVoevxyVBQVmj1Cir
	ouQDD68S5ZO0OFlWRbw1ANCXWwbq0TmElUH59amn9144B3FdFk3Ra1F1HwpXoDGnqQrSHwKehfdl5
	Hv+Q/66szkEPLodZcvjouAs4DydOhb1GhpHZGHBvs9/OTLDdAl4DYFm3IlKA2RycHyVSwJxQQu3d3
	0qCfYZd31e1tpmTiVTGJ9la0XShjB476aibH/sdLpWdVUidYuvXGWKTGOjrjnVvBCxiT8HpV38URe
	VFfPsevw4dwukQaGzxug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrlh-00000004Di0-2x6P;
	Fri, 16 Oct 2026 23:55:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrla-00000004DdO-0d4E
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 23:55:16 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GNF7Q23663349
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cjS8ryYJG/C4i0vy+7eXHoEPBMol/N+iKsFe5/ap56E=; b=mvkmGbsoeosE9NPQ
	xPZW8/Uknl5HJf8svzfdAEY7TLnOJbVaWGxHm3qlnUJpiHIpoeNO/DslfyVr51I8
	CLo8TRoBKpMvx1abEkm1CYCt/0e+4GjXpXLHxXhmrjI+WK/d/I71LnAKlD1oK6ph
	5xpzQbh0r5m3DzUdodKbNmkFl1xQ0fkbwxcCdQs7+niWdOtyknneXWz0MMcDpzkA
	GG4g8ouYV8+MOAw4CjPfwhCFlSDLV5PQDVhsjdCEIeBI+kmBHpyc9qexh0fylsSr
	+2yYXq5L7ClYgnebcxf7gu9ZYjuvaLAnzr0cC6Ft2/GOGWOdsuA5YRQq1QlKkHYC
	iabuvg==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hbrwms19q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:13 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-139b62317d0so1333369c88.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 16:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792194913; x=1792799713; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=cjS8ryYJG/C4i0vy+7eXHoEPBMol/N+iKsFe5/ap56E=;
        b=EpYZNwdOektr/HfBgeRWzVDIF++6wWz2uj3OoMo47FIUWHbadV7w+NaEmmEya/2+T9
         DtANxbJvQuHQjAfvmpqP9Is3ee4De1pjY50N6slR475ciDpoVOCa8zsdYlyNjm6OQC1a
         gJWqzOhdo1AacgX2ss3mtPBebL6Z3uOzXoCr06FQD/aH/r3AnXfKkJZpYJlRog4D8yVg
         ma1OQmscd1FTDRotyMeB3Mh22FK3UmqhCVtOcBnhZ0M+8gqSzRJoqyPTv2dQ7D1M6Jvj
         d3znhPxA+wXR5O/Y8hRMeWI1IlaVV7r2D1RGJTtMx7asil1VF3zpmh8QP8VcAD/zCdbz
         72yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792194913; x=1792799713;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cjS8ryYJG/C4i0vy+7eXHoEPBMol/N+iKsFe5/ap56E=;
        b=S23bk+DR61cIvzW6iBMoP2mWNEdspx2AdQ9MtV9VF8roR+fyDgHojTWDB+zxRfpLRZ
         rIktS0+X4LHyhd7Dv+uBD6QAhlkijray3ZfV74l4iWgwvvh0VWjCF78GHlK9xNe0VCiL
         +rMdbB2xkymFbPvqMpDRq4FK6JyqKkIodUfNDh6xzGPl/qScNnVjYR8jrbnS8Or0siev
         ierpVVWitHmYhegFa8ukW22st443xZaTGKRrO+otCs58ZM57JXgBAo7pPOlbWceu0R1+
         0Q80m7ThV8CMZxPXGqXRPIAivVgFAOjgzrqLy0tstodoWrS9E0T3ZpXBa++MV/ZuHMOS
         4GXQ==
X-Forwarded-Encrypted: i=1; AKwUvByFFnScGLb+M1J/UMl7OUieWz4ykA5ePuVfbBnLC1wB5Gc6HtFlpgOhzVUYMYueN4sVT5iIv2e4tRk=@lists.infradead.org
X-Gm-Message-State: AFq9FYLqVaFg9EjafY5rElOodDfAaHVdLjpO3/CnHH0syFYdZ2lqZXhb
	wSyKX9+aHsZyy0qZZlFmaBovzG1SL3fTnl65AnUd9JRL619NVVukNikJpYTlrLR3mIQlG3Nn7ZA
	nmPL9oycM0y65LFCYTnsVpssrYG/XrkNe5KmCa6V0opfA8v+PPE7GXzLuVoaP+P98A/hA
X-Gm-Gg: AYBFou03+2ncV1Y4NoK0ySD32N+x7L0BJ2kMAXGeX52n/UPIY96V+4UBiY1QhV0qc6X
	qIAhZp6Tn6C3lKdSfdDM/b93MfE1kofoNyuZ2vRKBz3YC6uQnYmi36vIrVHvTJV7MeIYFHeNTZ9
	or0zepTB8DnlQTwMIFgD+cHQ+5ld70L+rxXWqV28uBBuG4zUGu1Xc8epge1StkWWjXfrxGnF7b9
	ppUl67VP47t1rpnm5TUcncYsKrD+MnQt9SqWvWJcmBlnAZH9dTcCceXEraghZUFBovdawHPfJuJ
	ouRSLIgO4RUCnysDEkwIfdpGcTI0NAWVdLU9wq0BWjQUCt+4YjfxcjlI2TLGE9/j+HP8l5iFGzE
	tYFccaJEp2LGfYSsnMBR9xjAWEJGntr2km04NwcFfZLR1KZxRNVFhSg==
X-Received: by 2002:a05:7022:b88b:b0:144:fd7c:84f4 with SMTP id a92af1059eb24-1850ce9b563mr1810848c88.5.1792194912564;
        Fri, 16 Oct 2026 16:55:12 -0700 (PDT)
X-Received: by 2002:a05:7022:b88b:b0:144:fd7c:84f4 with SMTP id a92af1059eb24-1850ce9b563mr1810803c88.5.1792194911763;
        Fri, 16 Oct 2026 16:55:11 -0700 (PDT)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-183190aa7bbsm8556183c88.5.2026.10.16.16.55.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 16:55:11 -0700 (PDT)
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
Subject: [PATCH 6/7] dt-bindings: phy: qcom: Add qcom,sc7280-csi2-phy schema
Date: Fri, 16 Oct 2026 16:55:01 -0700
Message-Id: <20261016235502.2274268-7-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=B4osQ+tM c=1 sm=1 tr=0 ts=6ad2b961 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=dfoMB3O58h9xp8Lkk0AA:9 a=QEXdDO2ut3YA:10
 a=vBUdepa8ALXHeOFLBtFW:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfX5DPICXiY0SeS
 majO9/qt8EYa2vnRwj73EglJEATnemhPgnd7+WN00LPl43PecoyhXRY/FIYCHe6wbaZUrw0S4fW
 xTkhFPGWYqOxwP0DjpxVF0ScBslqUNbOIgLhNiW1aeIOaE2Se103zrhnlBbfRHHBG5iz9x+5WOg
 7AbgfjvlXjphsvWXyhGsKeIqeaiRng/hjA5uEyudLLk2MG3qFHg8Vs9xiRGVQ4JfRbxZrRDCWjH
 LT0VZxCcU8k1s3lGIwOEjlhzpNGtQtPSNvL1DhW+ZwZ4r2nQxpA103NTowJkUhncvRaF4y5aZPt
 NM+0ZJy+n8Onb64O0hthc+/sH1MHoEbA1CjjOs6rKSu14ptWGpMGEgxPKbcYJx9oUJ0qq7cH71c
 o+8yUXi4lFk9/v4hQjLfpC9J0BeYQbrH6VmTypM9RZGPBOnnJLbRQngJTrHD3Ll1/YCmSKjeO0P
 nzllyjonwXhKHGnNDAw==
X-Proofpoint-ORIG-GUID: Ru1dgtA1l0FDEdUKOjH92dcq0p0o9mlL
X-Proofpoint-GUID: Ru1dgtA1l0FDEdUKOjH92dcq0p0o9mlL
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfX1Qwfdty/EMHa
 ZJCngkWLqo9Qa6E+64A5xohifhBtj57EzmWA0XupWDQ+VXqd8Nohbvyg5h42M6AzdC0Jofz42pT
 EPIEPUbmfO2jdlvAOrdoPTpVDlLVAkE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_04,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 adultscore=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610160095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_165514_226210_2C5F3374 
X-CRM114-Status: GOOD (  15.75  )
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

Add a device-tree binding for the Qualcomm SC7280 
MIPI CSI2 D-PHY, modelled as a standalone generic-PHY
provider like the existing qcom,x1e80100-csi2-phy and
qcom,sa8775p-csi2-phy schemas.

Follows the same ports/port@0 data-lanes shape and mandatory
operating-points-v2/power-domains as qcom,sa8775p-csi2-phy. SC7280's
CSIPHY has a single power-domain, the Titan Top GDSC, matching
camss.c's sc7280_resources.pd_name = "top" and kodiak.dtsi's existing
camss node. Two clocks only (core, timer) -- SC7280 has no shared
CSID-RX clock in the legacy driver's clock table. The core/timer
naming matches x1e80100's and sa8775p's clock-names convention for
this pair of clocks.

Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc7280-csi2-phy.yaml    | 169 ++++++++++++++++++
 1 file changed, 169 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc7280-csi2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc7280-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7280-csi2-phy.yaml
new file mode 100644
index 000000000000..3b73a9933f03
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sc7280-csi2-phy.yaml
@@ -0,0 +1,169 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2026 Qualcomm Innovation Center, Inc. All rights reserved.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sc7280-csi2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SC7280 CSI2 PHY
+
+maintainers:
+  - Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
+
+description:
+  Qualcomm MIPI CSI2 D-PHY. Connects MIPI CSI2 sensors to Qualcomm's Camera
+  CSI Decoder on the SC7280.
+
+properties:
+  compatible:
+    const: qcom,sc7280-csi2-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: core
+      - const: timer
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
+    #include <dt-bindings/clock/qcom,camcc-sc7280.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/media/video-interfaces.h>
+
+    csiphy0: csiphy@ac9c000 {
+        compatible = "qcom,sc7280-csi2-phy";
+        reg = <0x0ac9c000 0x2000>;
+
+        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
+        clock-names = "core",
+                      "timer";
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
