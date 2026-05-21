Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1762CD5BAC
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 12:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojnPZxHFdggiMyx7lWchr6+/qRASqhv0p255uaJQuRc=; b=PAKO7kXVu8nRDr
	okPH/MVpi87ECkYk4RomYSM6XuYftCK/PaOJTRgvvrHfVEApB7x3aXWhNHIp93KbBnkcFVx53Z4du
	IYRou/oGq0mCry2yPhEJucfPhSCP3XskPBZIC4XUG6HyFWZs3KE5SaefNqBY/nMA0xixOgUGQszFp
	RzIEoZ4buJqHuAS69UhLMbl7S3mMWH/O2IIwoyrbScFz3hcNuvJn6STXKCtOL8bidHXNOBTdIvvCL
	Exj2DX08IDWM6z/9sN64U83zlud9tJof90ng3YUI6GldZAIeEdHOCBTaGV7hLb9WyTr7EfUnadj7p
	MblT7k2jlzawDfyMD96A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2Nw-00000007iNX-0bB3;
	Thu, 21 May 2026 12:20:20 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2Ns-00000007iLs-3BzP
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 12:20:18 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-48e8132c6d0so39632635e9.1
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 05:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779366015; x=1779970815; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JZXlcTGXFNsTfHxCUPPOhV4q7Vp+Jy7gwY1+EjxWw5A=;
        b=jVCkf9PZp1M8S/DymhYvYkO+xXZ59E7SvFcIjNVn/WbvDlP5ByrmkLSjb+gEpTqI7t
         Fgrg+2nYGlg2fSR8UbC4S+U63oaGedXd6Ub7hakjJpJmFOMzMtFmd66aCg6lblYoNNFE
         cii94RfICNoKSUI7rLa+997nZAmZBxt2t+QcKRX/KywN5RMi0AlcKCXp4PDxeAJ/c+PI
         s1FtEKIn5WXlOTzZRd8cvPaBmrFnEK+LyBsU6rGFfel76NNpmjStQjzeBI5gj70KpO3o
         Gs6dqPdemu6o5rr0tmFs8h3eM0nuHktIZg4a4EhkHaYGkF0WYOZ1AAXKV6RTGJh/If0g
         htMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779366015; x=1779970815;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JZXlcTGXFNsTfHxCUPPOhV4q7Vp+Jy7gwY1+EjxWw5A=;
        b=kKzTAltg/BMShv7DRkGzxCSvw5x0mkYueJaiCjYnPjoHqDWGp5yzUoRtdJFoWbNFOb
         BoU1X6OyoVDGfPMIDQ/SpTQo3dkqWjXT8FOj7CLwZlIip92rD99aZpt3eCmv0U+rdb1e
         GoQ+Y+gWHZ+8AIGFn+BhJoUqmLzAghdI/PkQa7cil68Zi/IPZ3B9jggjg96pa+p/kj/n
         wkr6M5dAPmF6LiKkXofZiYzW34dNc4vF3QtTcm6rpyl+wq6qJ3g85trObgBI2VX6Fnv6
         M9t6ha8RDPGsUyO0TfM8Qtx3/Fg7xkRpqmSlR03cxogw7CM0xmYc9nba/V7j001fBcKC
         dNtA==
X-Forwarded-Encrypted: i=1; AFNElJ+dCp0OO/lC+xakp5GWU4T2tyAZPLfBg8XW3xJvLhjg0bWhNwFAJMBdkhgvXRSRtv5hIIeEjCnHDwQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxsCB1IImWcMnC+OvO7sTEReXbAbLZQSLmkcxsCYh4P6y/SkkLp
	8V6qs1evQrZ/bE4UqL6HpdRtSN++YvWdjy/89NZ8XVAYrrR7cJpV8vrAHLHNWWJa8YE=
X-Gm-Gg: Acq92OEv0nrG+0wuA6pgkHmn7s0KG2Pjm+KIdJdZdW+wZrY7BlmgoZdXdCnu3KBMDn1
	SKdaROr8/8T5+iw4kf6IkRi1HQ/B9UIrY7kN52qHa7bVeSn0VwB2LhnYSPyXV0fq3JQhlPiQAnj
	ej8iM6nGJLFR3DcMDNrTvTaKyT+N7Iu8gAcfGwYH72kjSsHXH/PO2yL+br7gmXAUWmr+H6nAKck
	+Qcd4eijQ+SMI5yyYu/soc9b1OHVWhTqMesU9Eau3yBndw7dhVTtr5L0gj5fT4hnLx48jWo6ebg
	sgWn4iNgL0KlAqMFCpLd6RYSGeen2xhtKv64CyrW0bALbc/tStwDnK95BuoyhuljlulnkeHG6Fw
	d4VMECZ+x5hGTK9ss4DRl3cBjy1g4fe0VX7g5l5CLSngwS2VDd6W6NpgumMpPnPgTnZelgjM68r
	oQ9zCS2GYzbJTsvLNdAxDPNwlpY8sqfDKSYw==
X-Received: by 2002:a05:600c:49a2:b0:48f:d5b8:5b07 with SMTP id 5b1f17b1804b1-4903608937bmr23532865e9.20.1779366014612;
        Thu, 21 May 2026 05:20:14 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.55.220])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4903caf0967sm21981685e9.15.2026.05.21.05.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 05:20:14 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 21 May 2026 13:20:08 +0100
Subject: [PATCH v6 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260521-x1e-csi2-phy-v6-1-9d73d9bd7d20@linaro.org>
References: <20260521-x1e-csi2-phy-v6-0-9d73d9bd7d20@linaro.org>
In-Reply-To: <20260521-x1e-csi2-phy-v6-0-9d73d9bd7d20@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7047;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=6JZZJIb3jqCfGevSt00nfaH0Kx6CuW3Rx2PHOEjx2HU=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqDvh7fJ41ROvU72ZtXZysBNB6KvceJ5NAInwwt
 CNwvl6mvUCJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCag74ewAKCRAicTuzoY3I
 OqjFD/95fqEvI1YszjhlusNuXQ/lsteD4O7SUsuzb+tgIGFCQZ9TU0nKD5Nv3jIwdmgx5Dn77VF
 HfD9VEg9x8Fv425ZZuTkUusihJaxGfKNcM+wh7OeMl5EQKfdjBaSrrZS7uk46pFAXO9lAtKiLS6
 U1lSeIoLNlkoa5DYJPxMred02hvMlGk4Quxpm5zrVqVH6Nb2vYMg6Wji7aikHWWvCAOoT7NPvL8
 EzlX4XHBNNemLtcmLPts2+dy1H8PJmMZA2ulLxF2JFO42PASJjjTp/NgKS8m6N3Sp8mdErFLsO0
 wUbqP/JkSnX/AjA1t8E5zQ0U12ERpOAT3EFzQ/eTO5WAyjoyah7DiGr/tY+fA2B4X7SgursLKq8
 lu0Lbbd7NyFD2K/CQNP++nQk/eo8rK/gN1ZUjdhZzDiQ5qk2zHkO4gpEYllWqYZwct4R4YoFMIY
 K62OMZ2E0j0MwA/oit6HeW2ASiK8NY+ayC7J8R1x28q+/5c+DsviJ4oX3X5SyXa1jR1ZSpZ6vE3
 ftcCAzkQnLXKlLkIBBtAH9U0ovL9heNzQsgO195nANnhD/ooIxkXyxkb5hjWSy0eWR/ytDLPh0N
 e3Pbl+nDlMbq1te62+PO4EXBiTY86wJtOmmeaCdk0be6tIlGNPQD5yfgmqUq3Ro+3BJquyh6Ss9
 b9z6e/KIY3MTDJg==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_052016_859208_EABF340D 
X-CRM114-Status: GOOD (  11.91  )
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
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 205 +++++++++++++++++++++
 1 file changed, 205 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..c9116246c1e9e
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,205 @@
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
+              - clock-lanes
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
+                    remote-endpoint = <&sensor_out>;
+                };
+            };
+
+            port@2 {
+                reg = <2>;
+                csiphy0_out_ep: endpoint {
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
