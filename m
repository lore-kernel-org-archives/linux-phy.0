Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F020C83F1B
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 18:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pvom6NlV0MdObJA4IRl+2kODxuRS13ItTITjmks10y8=; b=IzziBRnUgUQacZ
	ZRXos75Vg6EnoTGv0MX2JwwFvd0R1KcSu+p13zvBLIAGqp+UiI9yBwM4N90dBiwL9BB1JDuKCemUI
	TLbxCpRwrKm/hDGiiGdBbb7yoh1TZYLpk/4IRZ0v+5aL+54Yw920Hl6okXHsMxPoabEVX6uQXl+/O
	XP7cqqv64zm4YQpCb1mHUk4P1+2vrkD07bOmYAbO4mw7bmO/ylQSbNLYF/2twjmJKRPxQdw5e8VEP
	bZVIjRo8b6RCz8iD/rh2/aXei4ekfJJwQRufEti0DvjsIh58bZp1PWMIjgCQJcowx9bFk4N3Zr+bk
	tGoyaoniDGZXGYI2JPwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw42-0000000CiRP-04Oy;
	Thu, 10 Jul 2025 18:32:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtx6-0000000CNLF-3fF7
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 16:16:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id ffacd0b85a97d-3ab112dea41so732312f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 09:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752164211; x=1752769011; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W98cduZ8q95/8eo1XZtn+h0kJ2XPBTmKn3mkeitD7qM=;
        b=m7uvojlqpGztCIwoD67uDdgO8D9XyxUbkzd2FIuJEknin6mOWpmF80+sxoDtL/BGkJ
         v4FRjM6h2W2U89MYCo4+VHTmCXT5fFqCLgyojgvYwFEN+bKCtgdn8MTyQE7XubwZzWGs
         d9nRZH9t9oB1yuujHVweFj7jWdGitYz5MOdeCmpvohgY9q0Zp5uBNtkV5zMFJsJYHlku
         74EQ1ABWHQqUw3PI7ft/uIp4T753OVfnnFLQSVMaJwgIRYZQBcj1upbjiWWuo5bFSSAn
         IXvhk1Jv206faPzb/lm7qTWL5UD7AnUmbmDoKfC8bOCvDXWvDOV9CdozY3rPm86FuWt+
         4egw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752164211; x=1752769011;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W98cduZ8q95/8eo1XZtn+h0kJ2XPBTmKn3mkeitD7qM=;
        b=Y2AsYFCmi87n6IHjRYODeHF0xazhft4bQs2LfQ2bQcSkAqZc5fKpBEcDzJevR6QeMt
         +JTStVvZZun8oH8V/xlMPVjYVJ5+lG57oIbqnNi7WE40NpcGdpOoFeVAIp1rNRGCWSv8
         i0smr3yx5do3t4ZlkpFgvxijKJRgp66lN4idDpytkaUBYwsh8YSg4Gk1poKOAOMOpLb3
         qTan/rMPGj0mFmQQWfMhelQJydEWOoyYQN9mrqesO8TsKRg4vbZ6lb2Tr+AC5gdWkPOM
         tAH4TpuvmuNsjYkgKB1Z0JEVslKiGVe+TI4jrtht/u+xowDv7lN18DKMmmqC8COuQzxl
         j7/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXwZyxMVWvXSWa+4bdyGkTmwWGfsTMa/WNbq9OYeDHgicAOKNM225Pvvne/DdcSBTMwTBn5pXPV4o8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0gt/kt9F5PkO4bQIVFCanogLMx8et7KfgxoboZHiqUh/LwxU2
	vx4tmqG5YxNClEBeTFtsiuwq89O7oRBl5Hm0fpMldY0bzAl39G56//JS74GX17o6Grg=
X-Gm-Gg: ASbGncughTHbReAe5M5F0uzwiNjo2JdCxV+m0bWWrYP4NBbaz8Dz1q6HDmi40Pt2BXV
	N9DhJnn1vC7YyCArmI+uQzoiQvBlURKzyXJxkCHAJ+SQpTtDRjyPesrlI7yEE+zz66NHHigfNf5
	6JG9ID1f5xpDl/hvaML+ysIXZyseN8+uJ3kqMla/T6UoVeWjNYcVYSqYzcR+dK5EVG57Fe5rQg6
	FcUA9M28bkGipka17fFM1flmV5Ta7EbXxQ0VobupNXROwLAxDKCQ1nztVr2VsOwQH9J03CIVkIA
	p3LPctdJFSmNKn5dtHQy7hOkW1+RaX3wQS/DxZFhGCHnvADYV6wQ+O6q+n/rbjF4A6zky64Wamh
	HP7RGTO/Lpq6Mg32on8VOQr4r/obV
X-Google-Smtp-Source: AGHT+IFnrwx5VtuT8iHuPsHxEkalQ5fZHKLoiBAE1Q6F/5Gk3QOaI1+P86OhIKYr1hegftM8ANRKpA==
X-Received: by 2002:a05:6000:2a82:b0:3a0:7d27:f076 with SMTP id ffacd0b85a97d-3b5f18568damr121464f8f.2.1752164211409;
        Thu, 10 Jul 2025 09:16:51 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc22a8sm2314207f8f.34.2025.07.10.09.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:16:50 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 10 Jul 2025 17:16:47 +0100
Subject: [PATCH 1/2] dt-bindings: phy: qcom: Add MIPI CSI2 C-PHY/DPHY Combo
 schema
MIME-Version: 1.0
Message-Id: <20250710-x1e-csi2-phy-v1-1-74acbb5b162b@linaro.org>
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
In-Reply-To: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3812;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=HOT48a7/uT4n+IMuvJCTkT0/9nEsUgWiQfrXy/kbu4o=;
 b=owEBbQKS/ZANAwAIASJxO7Ohjcg6AcsmYgBob+dwMUP9jabCc+Hi4S+OrOIOQLiXUzUSZKiPt
 zGXVYjadDiJAjMEAAEIAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaG/ncAAKCRAicTuzoY3I
 OrUQD/9BpeLDdZEriwxjmYz9Y69EsGqSwv6ViA3pz213jfQqX/OvrbV2Cu8Jz4l3mSlmFNVzK5k
 OQAuJG/3tsApwgszwugretk4N0MX/P3vgRlojTEmzMUFmcHDCqEbKZA4+vRL+wEfLq41QaiKoGw
 1lO7C/717Clf8UyqsH742tWuJzXXF2ZMM19VhqqgKQf711BTBn07M44AJfWLAbltNMvVRCSn4eC
 rApYw1J2y16+WndJLZxpG4H59gmzdk0YpopBUxCJhgyBrIm67y0jaDhCVc8bksovdYvP7qkgOnu
 bksak61CQBtgDltQOZEpMWXxYgPfxbPducI8o9uBS++tV7+p8LAmBk2HgwYx5QRQIXgW9EZl8NJ
 6/0er6fiut+qV58YB1Sc9prNR+v2ATYOEqkTskXAafNWB/DwZYGUW3dJqlPkMSZkMbYJ17atylX
 IInN5EnBhjbvB6CnreslENpjt2OBDi9rfA6nixmsHpZZ262bL+SDVHGxk7YUJysov+7JHeBT/n/
 jkDhwQtlnF8LCNP6Z6NVWvwrNJpnd/qnKCQRZN1oWPRdLzq47mCKdK+Vabaon1AA8N4nZzaRqgL
 GtCp3lvtye8welxgqQLl725rOtlrGettsQ1PTOBgXmiqAjOBOmO2l5eJj9Q6JosGLOIMemjRyvL
 s1xK9DcyW7YduvA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_091652_925859_695251FE 
X-CRM114-Status: GOOD (  11.90  )
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
 .../phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml     | 95 ++++++++++++++++++++++
 1 file changed, 95 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..e0976f012516452ae3632ff4732620b5c5402d3b
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm MIPI CSI2 Combo PHY
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
+    const: qcom,x1e80100-mipi-csi2-combo-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: camnoc_axi
+      - const: cpas_ahb
+      - const: csiphy
+      - const: csiphy_timer
+
+  interrupts:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  vdda-0p8-supply:
+    description: Phandle to a 0.8V regulator supply to a PHY.
+
+  vdda-1p2-supply:
+    description: Phandle to 1.2V regulator supply to a PHY.
+
+  phy-type:
+    description: D-PHY or C-PHY mode
+    enum: [ 10, 11 ]
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - vdda-0p8-supply
+  - vdda-1p2-supply
+  - phy-type
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
+    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
+    #include <dt-bindings/phy/phy.h>
+
+    csiphy0: csiphy@ace4000 {
+        compatible = "qcom,x1e80100-mipi-csi2-combo-phy";
+        reg = <0x0ace4000 0x2000>;
+        #phy-cells = <0>;
+
+        clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+                 <&camcc CAM_CC_CPAS_AHB_CLK>,
+                 <&camcc CAM_CC_CSIPHY0_CLK>,
+                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
+        clock-names = "camnoc_axi",
+                      "cpas_ahb",
+                      "csiphy",
+                      "csiphy_timer";
+
+        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+        vdda-0p8-supply = <&vreg_l2c_0p8>;
+        vdda-1p2-supply = <&vreg_l1c_1p2>;
+
+        phy-type = <PHY_TYPE_DPHY>;
+    };

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
