Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47B2AF3028C
	for <linux-phy@archiver.kernel.org>; Sun, 15 Mar 2026 23:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3vkXsY6hcioXghL8BRt7gcEdpa+BZafRauZ9naxa12E=; b=yrvuAh3znPb0HN
	Cx1qFWL2Mz3H8PXBxZ0qrPZvokjWxJ1f5IYzVLadhxLRn760AF5AYzBEMgamAZ5he8T/X60MkZiI5
	KXXpS5NJs6JiAFtReQhtemm3yC2GnfUe0llK8BxmAVhiQxLp0xUuNL7RDljxyh6B41A1Mdp3ueyo6
	JE5Rz7twXlCuz6KjwcNkn6BWexK4jMF4e22EBYWBxfAHFq8ayB/CnJ9eAB7nrjyRz9EqFY9L7lrRF
	GQtMjhgc49IrrcpohD2LJ+PTRUnuIc8NSeK0yHxMLEXQz+qJCEZpi2N7TRbLHhT3bJFL0AGHvqFvX
	/ukuA++1IRfW3P3ugYSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1vFg-000000031kp-3rIg;
	Sun, 15 Mar 2026 23:52:08 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1vFd-000000031je-1fFy
	for linux-phy@lists.infradead.org;
	Sun, 15 Mar 2026 23:52:07 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-43b3d9d0695so695391f8f.0
        for <linux-phy@lists.infradead.org>; Sun, 15 Mar 2026 16:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773618723; x=1774223523; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SyuDGIxScz9o+1b+2ev2e6nu0IBiytGXGEcolSic1kM=;
        b=lZnDs4aIbF1LN1QpH7DE2KfpeUnPDn2v71VVtv7olJHXgM45NYbkJn84kHa/OIp/IF
         n+Vel15X1r8z8lVzJa6Xz/Yygfk0lALlCIU475I2nLgJB1oYx/6LTwOfg2ezVKwENvQw
         QhcE93LiHBzh9ZCn/ME5PvdfTV4w0GTuHpGaujT54tVQT2wOU+VvNxXOTF6NYvE13Sjq
         zSeCer6wSXHiZ8iFFnKqZgZkTwyPwrwy/HneK2p71sHT32DZZ/1B9cYyAqPlShQAvmSi
         Ks4spK0YyCbL/D2ZbMTzhrAHH8+whLTEaX3jPGAIUb0cQE5zyjU+v+0sbbwSKgjO6IY3
         C1FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773618723; x=1774223523;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SyuDGIxScz9o+1b+2ev2e6nu0IBiytGXGEcolSic1kM=;
        b=dTNJBRBQKJAxkVRsierwWfPIg7dc3mnODJgumgOkZzWzO3WO+i325MeWwk8Bb+9bAz
         NnqZGGkvtR1/ZRVXjOVBklfs1zwEgYgN1wpf7ZXk8leXCHhmj/+UW+JINY68YBKCcL+/
         W55rMHA4b4ei/TQ9RBReoBj8rShlMmSDbfvGDDTHWI6dolKRsfVTUWCaeOhdDoSQv5ba
         UummvT59SS3LoD0IQkQaWERaZJKscaEF4vOd64OiXyepVc1nfjVW3x944vex3CAm5n9j
         I3N/LivwIu0KfRZeLIJ27kddyuQ5JgAZ31byfbS+RIDjmf/3Ryn+kBuC41WIZ/PPnvnu
         N2rw==
X-Forwarded-Encrypted: i=1; AJvYcCUra/xmWjxyPQBFWrqj8cLXbIYYj/EgdpJUqC9HcSWfBiHzPpEA6oKQC/c47etUecWbk6ac72qwqpc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwPhFO+grMFOvQ7w3BWn0wy2jHf2OcknlUWJ0xjxE9iW1JzSBLn
	QI/jBMuExHqJMMv5UiovZxZrpfKL75Z8w44+BBx3/1kXWq1VpQhZwCYv54NByOw7VMU=
X-Gm-Gg: ATEYQzz6KORriApT+S/woydCwU6yvfVPSiYebM5kDCiIexepccgtm0+4/6QbO1mcx/S
	1PVcFZ/hr5fxoSXf+fTgmQv8oRtAJ1z5nhFnnfy09Ts2CLK6wpd6M1Ia2dAIw3fJeMct8rpzdcw
	awZUZWFdJErH82NixCfiZsbhV6tc9FC7uMOcvzZ9dneQhqKoVYzNrOgbUZO3p1gFUDdKERr4OwL
	3Y/2kAKVJkrewMLft9glLU0uwBFDuJTsbMddihMwZeYWNRCUWRnENofCmvvluCGcuj93qJnCAXf
	7niJ8z9cyZRIApDGW1L2N05YwMO8hgcKxmrsUlrR7REKIUMLHNsQsnzpf7uZ6kAo8L4JjIERbRy
	REjpD8KCDg7WtxX9gxmrSPnd+s6VhMTjUVWqiQ9PJTtkuZZS+fyKB3SGGlSa0uz0Duxqg/2FKZz
	AQFDEcReIUU2GoSi/JHhmDZJlIK4kN6pDMQlk=
X-Received: by 2002:a05:6000:310c:b0:43b:40f6:36fb with SMTP id ffacd0b85a97d-43b40f63922mr4908583f8f.31.1773618723446;
        Sun, 15 Mar 2026 16:52:03 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.190.215])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20b544sm38233082f8f.20.2026.03.15.16.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 16:52:02 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 15 Mar 2026 23:52:06 +0000
Subject: [PATCH v4 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
In-Reply-To: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
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
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4842;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=5HEh4Jzmjb+xpe1JeCJgfmz80o4mkPxB++PCRD7AH68=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpt0Yozg80iLZBMId4uWiwO/4+zJHWS38AW7mCj
 f97Md+Xpn+JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCabdGKAAKCRAicTuzoY3I
 OoxyD/9FXYcDjbqrKaXDMVRY1cBoYm8VneQCsmty3ndAdPjHHT4SRWGCWGQYveFPkEgieDP6QcZ
 6iXPmPk5aR1mRlLqPgyBYSildKnAjHzAkqaPtpIHVr/clXqsR/teR2Gj1M+owfX/d/cjgfzihEM
 cmnGwPZMDur0IWEttW03F9QdCEcBLE8UZbDs7NxQaQnQq9Iry51HlcnGA3i2QdffVZM+6kIPB6k
 CxiZiH5de0oy8/fI1X0hb4lXfWRhJ/ilqk1BHSTU7XaqgY/D9u+ctq7AO0KQqirwtBeqycMjPDA
 SmhKEus80jntMbibWloqGtDl3V/07jXacNdzvRtT2Te65OCRDUEFsCpvFl22ttTL+oyNz6De+XS
 /3PPJz9hx6WgFbYmkJ4jjivx7HBMHAxJse9YtjGmoiUMrPiGxeytAHT4kjfwH791xZbp3Co1qMx
 chHgI6X8wdhxy2yQdCoFCn6xdrBtLWwO2blmODXUWdDs7JDu7O9cpxIDHhT5x3ez8DoXQ08b2My
 xccLUf+83eQj9rW0l79S63kjA/K8N17jf5DVn7o38gKCu2h/LwODYYuwalE/2yL9tWW7XYehBaD
 uOFzZSJ8fDWiqHyYyEHDs+WvtrVf+GT/kyifJr7qO0qXug7hD+vLfQ165zE4ngNpGtaLjze9PJT
 1iwiF9hK9jJtpEw==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260315_165205_480913_6543DA52 
X-CRM114-Status: GOOD (  11.37  )
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

The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
have their own pinouts on the SoC as well as their own individual voltage
rails.

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
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 133 +++++++++++++++++++++
 1 file changed, 133 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..b83c2d65ebc6e
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,133 @@
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
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: csiphy
+      - const: csiphy_timer
+      - const: camnoc_axi
+      - const: cpas_ahb
+
+  interrupts:
+    maxItems: 1
+
+  operating-points-v2:
+    maxItems: 1
+
+  power-domains:
+    items:
+      - description: TITAN TOP GDSC
+      - description: MXC or MXA voltage rail
+      - description: MMCX voltage rail
+
+  power-domain-names:
+    items:
+      - const: top
+      - const: mx
+      - const: mmcx
+
+  vdda-0p8-supply:
+    description: Phandle to a 0.8V regulator supply to a PHY.
+
+  vdda-1p2-supply:
+    description: Phandle to 1.2V regulator supply to a PHY.
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
+  - vdda-0p8-supply
+  - vdda-1p2-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
+    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
+    #include <dt-bindings/phy/phy.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    csiphy@ace4000 {
+        compatible = "qcom,x1e80100-csi2-phy";
+        reg = <0x0ace4000 0x2000>;
+        #phy-cells = <1>;
+
+        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+                 <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+                 <&camcc CAM_CC_CPAS_AHB_CLK>;
+        clock-names = "csiphy",
+                      "csiphy_timer",
+                      "camnoc_axi",
+                      "cpas_ahb";
+
+        operating-points-v2 = <&csiphy_opp_table>;
+
+        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+                        <&rpmhpd RPMHPD_MX>,
+                        <&rpmhpd RPMHPD_MMCX>;
+        power-domain-names = "top",
+                             "mx",
+                             "mmcx";
+
+        vdda-0p8-supply = <&vreg_l2c_0p8>;
+        vdda-1p2-supply = <&vreg_l1c_1p2>;
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
+                            <&rpmhpd_opp_low_svs>;
+        };
+
+        opp-480000000 {
+            opp-hz = /bits/ 64 <480000000>;
+            required-opps = <&rpmhpd_opp_low_svs>,
+                            <&rpmhpd_opp_low_svs>;
+        };
+    };

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
