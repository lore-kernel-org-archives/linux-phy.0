Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64364C44523
	for <linux-phy@archiver.kernel.org>; Sun, 19 Jul 2026 12:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IyoVBOwZ6N4i4WhvAsBFHXffPZS9NG445PKcth0er4w=; b=4sC0F2xQaqi/jf
	w9/hwGqLBkg+Xm6NQDNI0Etnx1/8bubThdVFfQv7uw575a1gYP+flSh8r1AkKqUlexK5yNoUeI3gG
	sPe8Nvq6XS/GraQwd5TZ7yfmjpMiZuQtooBV4ou9wejZFbpwzXJ8E1EnHy7pwMEkuKZRfZe0hNMJX
	dvoIkdc7t2je0s9kSjcoXesxp3isVloMUIXATXmx8kUN2+nbqwoh+wWxHHTRzdGQEOLjGvuxz/nuz
	4gDr+fGepBO2Gmue6obmKIY165C/WWh9y8DXpv9LJI3NBJ0mfsX7cj7CTT+PGR0N6YOQPguUIIY1A
	wfvKnGbVPcRgmGKc2CCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlQeh-00000004zdc-3yIr;
	Sun, 19 Jul 2026 12:30:03 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlQed-00000004zbs-442N
	for linux-phy@lists.infradead.org;
	Sun, 19 Jul 2026 12:30:01 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-49548e01d02so9546955e9.0
        for <linux-phy@lists.infradead.org>; Sun, 19 Jul 2026 05:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784464198; x=1785068998; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4XnV+FykkybVqG+qJ/ggN1ABFG87UERnEoUc/FfnJBw=;
        b=duRbawnz3uWfG654jfu3PxvLYke9UPh6gMSn8rmVuEMxvQHIpquiGLc4lBc9kv7zS1
         LUIUxWXKTljwwShLL67Xw9DpB3ZntRynePCsZ+Xo0el+qfNXcc8BCjpEqkD7x4jcASB6
         0O3lh7mNwAHTqTDzltBTif3QCQeio5+L8ZAirgBNP/KqAN4cH9zMi1crsteaH3fl2AQF
         ycGdmi7nZ65/UQgfwMCkHGTNddNd4qrsxnBtQnzKVeIAO17GEPILo2XTOjmwYF2gRDiI
         UE0eTFBNQHX4jxbirUXgqO2YL9fi2JgckDN3Lm6kxL3OTmeBXCuvOYofM+IS3L2AQUyV
         Gu4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784464198; x=1785068998;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4XnV+FykkybVqG+qJ/ggN1ABFG87UERnEoUc/FfnJBw=;
        b=eN8eOuyuzQ8QPeH3xMMnA9Og4/fIHFJs6CvTwlGatXhmXkU8VyhAPMoXhXX9aI1ghu
         okMtvc5n9mpSGLK900HsZiPAu9JmHxd9ll2jfMh4I910aEKtP8r4ZH7Z3ei4RL7YURUH
         xPPxwBmOXApuqyDRM3rLE++X3xUJPf9ehxUiLWLtCFFQxryRTMBdlxG2BwPhUztjqp7h
         p+AJASB+VgIvPu0unO/EGsSmyWxYYiKMN3qrx5vo+ZQE2wZPM527H3nM0nBvzUDxtZHy
         W5Li6RsT0XPW7DqYP1dtPxSrur//6CH/RVJCR+GnhVakJrmIYE0wMeg6BbP+BJ94ZVZh
         tdVw==
X-Forwarded-Encrypted: i=1; AHgh+RrAZrmEOMJuvJ7VxEbiGriIyc9fJTJnULS34uufCeqfSG/20kQi7oeLvYhdHt6uB+52oNarP8r3LLo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyzNp54JXREm8f7U4rGG0G+XzWf4eSxm7JkaVU51PUh/ngI4D60
	er6S4pED+7vibPkYXKndZ9ONio13wWNNuAh/UKZiEe5oG06CAal4C/0pKL/4Q8Jak00=
X-Gm-Gg: AfdE7clacn5xgUQBK4lM29ndI5/7iQJqnEZvY09GztO0ofP1KeJzkkv60PUWSzunVXX
	GAbp9PWng4E2kcKI0oORolPhKPC1WEDGb4aD7Ky5V/queTBNUEhUMzW55GK8+CgvrPvOHXC7mfv
	MT1ROVHvQiqHke1HQrzHNNQ+3ogzx27R7Egi0D3FmOdj0QvSkE8Lm+NuysaKSskOKCNVil1AfyO
	zwDKon30lSQ2uBpZ+lrtqIAW5L6xxhns0/bs+ZfJPI1xjG6jm2NMcL5/1XbaCjhheIH3wBEPWKI
	AJ74OJqa7RgbIECDU4U+ImnjKG+Bogx7PgmPYVvnD62LwzTqOoYmVMLY4oBVTzELPusipdKJTJ4
	oxV6KCng0SNTyadLrwNv4lxsV3fayT70VZ3N0bb0eOtRcnyWq7YYz+8QYlGyPqJLvWKkcnxobwN
	x5UVOfJu8CLYTt
X-Received: by 2002:a05:600c:45d3:b0:495:503f:cf9a with SMTP id 5b1f17b1804b1-495503fd2a0mr61098335e9.9.1784464198117;
        Sun, 19 Jul 2026 05:29:58 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.79.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-495499d1d4asm130446115e9.2.2026.07.19.05.29.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jul 2026 05:29:56 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 19 Jul 2026 13:29:48 +0100
Subject: [PATCH v11 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260719-x1e-csi2-phy-v11-1-9d0a1ed0632d@linaro.org>
References: <20260719-x1e-csi2-phy-v11-0-9d0a1ed0632d@linaro.org>
In-Reply-To: <20260719-x1e-csi2-phy-v11-0-9d0a1ed0632d@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6235;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=AC1MUPJeho28pBdVYrHItIRHxia1fJXAF7Xy5HQMoms=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqXMNBITdQ3fpVqw95Hpzrd9pGlaJlza8gFmvsk
 fvnxJ+JBZaJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCalzDQQAKCRAicTuzoY3I
 Oj3YD/95Gdlkx/ttWuNHH1Zm4pjPyY2CGlclwJvbu0XTyuRaeKP6gXnP75QHjVc1p1m3pzrOa9Q
 VHGTm20ddXiyxc2M7XrgN79DDqzBQi3vNx/ALXTIJpps/Bgs8QqvCxWuL+0iMtZgXBXopCGn99u
 RMeMwsrAy2Y7J3vZZKWITz6XFns89zEnpxWqEO/TG0rWqxmjteCwW7jv2aYoJkNdjOxuw5Hmgvw
 WStaHTZ/k5tzn6fkYKcC4rRc353yNqguJ3HCKR4tJ3ahS104tI5omwkZc0AKZsaW2c7XwyXR6zv
 L1Phfx25RgC7FNHX9w6ZM289IVxCEjm39EXsd8SkXXNSeZzr210jryZ8ABoZ4SJCP7Wr1rk/mJi
 0kFRrbAbHkESFUi00q+QiZV4rHQ6s/VidFNjO5XA/hZ1bQAZytZdpIiRPsQgwMolWqilcE6QLY/
 137sgbyFETYK6RIRqXhZ6u7eDOqmqX7SCexeLqAdaMQmffOH0qsW9RXE9V2s5050ITNHDgnaEFN
 BAexDFNpEiZJzTB81sWrlcg3EeDdRhdy7l/D4FTOBy5AtX78PxvLzuUtaoqY/Ip+ogncBw14/cl
 V6B8zuNnO2HTPZ+amEHsZ9Ua3w0U3D+1av5ZrwCVHHLSYMj0mzf5/KE+GaprgxlX1qSYOQnV+VW
 3mcT4osOIeqd8hA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_053000_064274_857A18FA 
X-CRM114-Status: GOOD (  12.22  )
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

Add a base schema for the MIPI CSI2 PHYs on Qualcomm SoCs. This PHY
supports both DPHY and CPHY operation. A special mode of DPHY operation -
called variously split-mode or combo-mode also allows for two sensors to be
connected to one PHY.

The submitted binding here describes the DPHY modes of operation only. CPHY
is left to future work.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 195 +++++++++++++++++++++
 1 file changed, 195 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..880fe602945cb
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,195 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm X1E80100 SoC CSI2 PHY
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
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: core
+      - const: timer
+      - const: ahb
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
+      - description: MMCX voltage rail
+      - description: MXC or MXA voltage rail
+
+  power-domain-names:
+    items:
+      - const: top
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
+        description:
+          Sensor input. Always present. A single sensor is described by a
+          single endpoint with one to four data lanes. DPHY split mode,
+          where two independent sensors share the same PHY, is described
+          by two endpoints; endpoint@0 with exactly two data-lanes and
+          endpoint@1 with exactly one data-lane.
+        unevaluatedProperties: false
+
+        patternProperties:
+          "^endpoint(@[0-9a-f]+)?$":
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+            required:
+              - data-lanes
+              - remote-endpoint
+
+        allOf:
+          - if:
+              required:
+                - endpoint@1
+            then:
+              properties:
+                endpoint@0:
+                  properties:
+                    data-lanes:
+                      minItems: 2
+                      maxItems: 2
+                endpoint@1:
+                  properties:
+                    data-lanes:
+                      maxItems: 1
+              required:
+                - endpoint@0
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
+    phy@ace4000 {
+        compatible = "qcom,x1e80100-csi2-phy";
+        reg = <0x0ace4000 0x2000>;
+        #phy-cells = <1>;
+
+        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+                 <&camcc CAM_CC_CORE_AHB_CLK>;
+        clock-names = "core",
+                      "timer",
+                      "ahb";
+
+        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+        operating-points-v2 = <&csiphy_opp_table>;
+
+        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+                        <&rpmhpd RPMHPD_MMCX>,
+                        <&rpmhpd RPMHPD_MX>;
+        power-domain-names = "top",
+                             "mmcx",
+                             "mx";
+
+        vdda-0p9-supply = <&vreg_l2c_0p9>;
+        vdda-1p2-supply = <&vreg_l1c_1p2>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                csiphy0_in: endpoint {
+                    data-lanes = <0 1 2 3>;
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
+        csiphy_opp_table: opp-table {
+            compatible = "operating-points-v2";
+
+            opp-300000000 {
+                opp-hz = /bits/ 64 <300000000>;
+                required-opps = <&rpmhpd_opp_low_svs_d1>,
+                                <&rpmhpd_opp_low_svs_d1>;
+            };
+        };
+    };

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
