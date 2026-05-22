Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECD50CD5BB3
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 14:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jKis5Pwv6SzF5/bP4Vwh5CPWNU/ocSjRLBKr6yNggA=; b=DTztH7YRASMzT8
	z/4JDVGlQo7zueCi4PmopmOCtkLRUdvWdkenpU6AMb6ukVfoKmu0egrGxi3Pq3eQNVw39jgcCSdYa
	HLhfG/xjlga+asm2yh06STZjYsCqns6ZaQvZR9rRLhRtUHDtTaqZa1Yh3moDC+ZDGZ2aeXFwWuRQY
	lNh+Ehpo84RU79sOnXlsQFRPMgBM/xcAddpTVBW94ji8P2ChQCYbHg58babF2vrdupggAQ4A8njQ8
	lnapJ/iQFZJVEQJGUay/LAOUFF4QbeJoIXKYbpR3IvEXCOVQ/1NN/G/WaBVpcldiybVsiqdMS8Ksm
	FTZGgMUolBV+42qGKD5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQR7n-0000000BAHd-2IOL;
	Fri, 22 May 2026 14:45:19 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQR7l-0000000BAGH-1KMC
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 14:45:18 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4903d730b1fso15847935e9.2
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 07:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779461115; x=1780065915; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k2gvxuovNu+AY1L3n53aamPpT24oQM4VlgVPffxR+hw=;
        b=KSGQx2mUDt+lKkUuSF88A1bV1jLXzzbTeijs6RiFoSv/WMtijboNs3MctL6lS1pUmY
         31QG9MLj4R600+CCyUYz7z+zmP3ij+Vb7kM5hk6IzjBGrJ2od+kDAPf5GuZv7x4zTQPF
         KMCfGyZ1lK2akRz538sRADy1Ch+YlJT0OHaB3OMLNygCpzjKBhUORgAOjGqmzb26Vl9F
         8XGWLFIDOPLTQp4Lx50t4ksNpoffixBHyci4QhELxk3uLtg4aj33oyXFSSPegzwd0X+t
         DVukFkKF+cJcHVVO448YjOis7AXcIxqQcir7x2VE/sWZXzGeuWosXJKeEisoR5mEI4su
         F9XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779461115; x=1780065915;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=k2gvxuovNu+AY1L3n53aamPpT24oQM4VlgVPffxR+hw=;
        b=Vg+2/v0eS6rl9F6NIQjrAk/sXW8Rk57D7LXtlh7oc/Xych05rbRtdHp+dEQfIIan9p
         at1rnRdU9z/MyRR8UEpdjceHLFV/bxUeibxnQLJ9BdjMDqme3CIkWoTxqwxvayI8gRZS
         E/DbD164X4m0ZNPxjh/d4JjKQ/vNw8XV3Y179KoHxCUArbaW12cwmsEPxbw54ocrHTqo
         sGSMBcHlIR1Phl9HXQQWRsTqr2sm8y31TFlk38U2xubrf+W6d15QbpYRfVnKT+2Vc0Vt
         VTPL6ahjrjDqQjCA9liNHoeLyoaS5P6fgGnx227SmEUigIgUHMcC+ydVSZ5ZLfsbkzyP
         a9Mw==
X-Forwarded-Encrypted: i=1; AFNElJ970iOEk1oHBvkKAfP5PkZLEX8ZUGEDPtcRfwRQ6BkWM5JE6Ab/P6vsbVyB33AK1xAYXxZy6VEY4w4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJH2KFJPrjDpQbZ22SBQXoNnIJI+x8XyViPkrG9QtxyRcqPadT
	JBjB0+LL9rM/Wf8GwCKz/M+rkPYXztgAJxSjtT+Ydg0u4QsBoHv6FYdtfse6K+Hn7mY=
X-Gm-Gg: Acq92OGkE0UP+jQuZ/uDcJ8jr6yDjn79r9cdBMS/dSnV2/WU3JG4pnvf1tPn0PEfVvL
	1KSQAxtcXthKaNMjwwSbnY2J0/x4Bzbd0G3KcJvKaoJbNx9k2r0a4mxv6lhuJR1ZRag7xWq47mU
	xdutngbbZGWM755bp+PczQYCOb8dRO4IPcM4paNQa5x+7UUOGyRcJAvWWHYYjANRAIozbc5Z4ew
	9znWCYIDILLjW7oSLgftEb0f2/n1WRd1pe+6odBjgYM9qn0o4iaPOGAhfaWK5Ow3sQs042Lx9at
	a+pWKn4LUW32Qg6zMXJquNvuz7JxkZvRVwmxOQYIhxWJ+PeJLcn2EWb1T4xdH1O3hz6qR5AiZsD
	FIv82O8QbLBa5bzpIUSco/Q0XygwJmLYxsI3WHCzNZCVeuuK5hRlTPN2NgsSASMRdDQuQ6eooEh
	wuiX0MkXZL56dDm5M/ui7Or5CFvkPnJhpvgRQ=
X-Received: by 2002:a05:600c:4ecc:b0:490:3c15:7146 with SMTP id 5b1f17b1804b1-490426cd872mr54962835e9.19.1779461115243;
        Fri, 22 May 2026 07:45:15 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.110.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490469f61b0sm12216385e9.5.2026.05.22.07.45.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 07:45:14 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 22 May 2026 15:45:09 +0100
Subject: [PATCH v7 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260522-x1e-csi2-phy-v7-1-79cb1280fad6@linaro.org>
References: <20260522-x1e-csi2-phy-v7-0-79cb1280fad6@linaro.org>
In-Reply-To: <20260522-x1e-csi2-phy-v7-0-79cb1280fad6@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7181;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=6FQSjzpZ85H0H8/KZhvDbUD3HpBQdLWzOHK9E8PPfk4=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqEGv3DnjlUxOxA6VAlJjkdTuzr5//ImpXwdsRD
 Q+xWibDrriJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCahBr9wAKCRAicTuzoY3I
 OkZwD/9f7D8OK7lD7tRhv+TyIHmS9OvOP1jcm1VQFAD022uUt8ioZFC3SVJd1XoH16TtxNJUM2a
 CrFe2mW9wFtzo1VdP1N7wCr0AFbtzPWpwwi0mHkZxJuDk5Bp1yUzIWm4++GNbYYBmzy4GfDbfDd
 7zJjmrVO7nMvyzaQH6BgsxNTU65f7P5Zo5obeoexpq1RAW1DX5S3mJC9nPDY3FtgSMhyech20TU
 iPh0qZop4u9DjpOv2camdVgcQqb6GnOOtQeVMLVHAn++5bpTTVuegrBbSPqKUZSEL2bp8uoif48
 Cd/zhMbwCY/78oqtwSYB7rmUWTQTpEZe45cTNGB6E+w7eqpLn+h5O2BKeE9RwW4AxfS6oaHLIZg
 z/kwh160Wqw1s1a6YgITws7qNi7yXW3SjRpVTYwv12oon0eI8eL1H2pf0p47+fhTYhMtn9KpduY
 mxAPMTB5isOR2qS2WmX2Go1J4XudxoOUPSAmLCcEA5gBDlIFeDQyyt8hGdoFcLmf5Y1wqpbrdeY
 whw1EqoCOOu6CVZErN1zhSG7WERNiWj5Lp2lkb1dNOKHQiQDLKq7/2+SQ6nqRp16W4DLB+oxde6
 rRXAk1akMSsgtpT0DUqSC8WFQ4y+Hz7lLKyw+TxfY2RNCWrW5W/UCbRDernNATdckVnBdGdgzs8
 QgKSvOrggao+TiQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_074517_409619_5D850CE5 
X-CRM114-Status: GOOD (  11.63  )
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

Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
PHY devices.

The hardware can support both CPHY, DPHY and a special split-mode DPHY.

The schema here defines three ports:

port@0:
    The first input port where a sensor is always required.

port@1:
    A second optional input port which if present implies DPHY split-mode.

port@2:
    A third always required output port which connects to the controller.

The CSIPHY devices have their own pinouts on the SoC as well as their own
individual voltage rails.

The need to model voltage rails on a per-PHY basis leads us to define
CSIPHY devices as individual nodes.

Two nice outcomes in terms of schema and DT arise from this change.

1. The ability to define on a per-PHY basis voltage rails.
2. The ability to require those voltage.

We have had a complete bodge upstream for this where a single set of
voltage rail for all CSIPHYs has been buried inside of CAMSS.

Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
CAMSS parlance, the CSIPHY devices should be individually modelled.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 208 +++++++++++++++++++++
 1 file changed, 208 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..f434fb04447f6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,208 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm CSI2 PHY
+
+maintainers:
+  - Bryan O'Donoghue <bod@kernel.org>
+
+description:
+  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
+  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
+  modes.
+
+properties:
+  compatible:
+    const: qcom,x1e80100-csi2-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 1
+    description:
+      The single cell specifies the PHY operating mode.
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
+  operating-points-v2:
+    maxItems: 1
+
+  power-domains:
+    items:
+      - description: MMCX voltage rail
+      - description: MXC or MXA voltage rail
+
+  power-domain-names:
+    items:
+      - const: mmcx
+      - const: mx
+
+  vdda-0p9-supply:
+    description: Phandle to a 0.9V regulator supply to a PHY.
+
+  vdda-1p2-supply:
+    description: Phandle to 1.2V regulator supply to a PHY.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description: Sensor input. Always present.
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+              clock-lanes:
+                maxItems: 1
+              remote-endpoint: true
+            required:
+              - data-lanes
+              - remote-endpoint
+
+      port@1:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description:
+          Second sensor input. When present, indicates DPHY split mode.
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            properties:
+              data-lanes:
+                maxItems: 1
+              clock-lanes:
+                maxItems: 1
+              remote-endpoint: true
+            required:
+              - data-lanes
+              - clock-lanes
+              - remote-endpoint
+
+      port@2:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description: Output to CAMSS controller.
+
+        properties:
+          endpoint:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            unevaluatedProperties: false
+            properties:
+              remote-endpoint: true
+            required:
+              - remote-endpoint
+
+    required:
+      - port@0
+      - port@2
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - interrupts
+  - operating-points-v2
+  - power-domains
+  - power-domain-names
+  - vdda-0p9-supply
+  - vdda-1p2-supply
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
+    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    csiphy4: csiphy@ace4000 {
+        compatible = "qcom,x1e80100-csi2-phy";
+        reg = <0x0ace4000 0x2000>;
+        #phy-cells = <1>;
+
+        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
+        clock-names = "core",
+                      "timer";
+
+        operating-points-v2 = <&csiphy_opp_table>;
+
+        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+        power-domains = <&rpmhpd RPMHPD_MMCX>,
+                        <&rpmhpd RPMHPD_MX>;
+        power-domain-names = "mmcx",
+                             "mx";
+
+        vdda-0p9-supply = <&vreg_l2c_0p8>;
+        vdda-1p2-supply = <&vreg_l1c_1p2>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                csiphy0_in_ep: endpoint {
+                    data-lanes = <0 1>;
+                    clock-lanes = <2>;
+                    remote-endpoint = <&sensor_out>;
+                };
+            };
+
+            port@2 {
+                reg = <2>;
+                csiphy0_out_ep: endpoint {
+                    data-lanes = <3>;
+                    clock-lanes = <4>;
+                    remote-endpoint = <&controller_in>;
+                };
+            };
+        };
+    };
+
+    csiphy_opp_table: opp-table {
+        compatible = "operating-points-v2";
+
+        opp-300000000 {
+            opp-hz = /bits/ 64 <300000000>;
+            required-opps = <&rpmhpd_opp_low_svs_d1>,
+                            <&rpmhpd_opp_low_svs_d1>;
+        };
+
+        opp-400000000 {
+            opp-hz = /bits/ 64 <400000000>;
+            required-opps = <&rpmhpd_opp_low_svs>,
+                            <&rpmhpd_opp_low_svs_d1>;
+        };
+
+        opp-480000000 {
+            opp-hz = /bits/ 64 <480000000>;
+            required-opps = <&rpmhpd_opp_low_svs>,
+                            <&rpmhpd_opp_low_svs_d1>;
+        };
+    };

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
