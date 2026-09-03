Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7FEEC79F80
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 20:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7AwECKkFnFOc8HJnKaMdgbWGyJk+1XU8Ohi60RV8too=; b=obvbI4BuEOF3g3
	XxrCmRf7vHZhafNllJ0oUc6FHLer1buIU21lqQLJpqeOJoj7bx38VPQJR9pazljFvbdq0BPii447a
	lvWgU+FGPy0r5zIgm1Wu4LB2ZyyhWV14r043evQTvRP74RHn4EGKUE3BcMqEJr77Nde27Zneo3NoF
	O4SKwbWhKZoX2abaD/U7cbECYamO5RENaQHQr6a/10u++gCbKnGjwbPT2bss5pir2aie3XW2VZZCl
	YTQdevt3TJvBl4OehfEd3wAveOENBfnsr0YlF5fwQESEx3RvOSIV7GSy1KpZN/cenbtnO9d+HetMd
	ljXr+hHfP/A3RjHVp6eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2EIz-00000000ZoA-1CPU;
	Thu, 03 Sep 2026 20:45:05 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2EIw-00000000Zm1-1RKV
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 20:45:04 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-4843e397f74so349916f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 13:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788468300; x=1789073100; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zs6fzXacoZ+goKyWRAwAmBG5MIfaY+s659GryGv3AGQ=;
        b=YYnP4r7c26FXqyooJ5++5nnwiTovCOSTGDaxTob2tiykMDygWXQxxaD2L5qRmDYsQn
         xuXkxGbYvjT3IUonlE0PYEgA0HNOU7IsrkwfuVLBtdr7b4oW/fObSmUeWexfRy/Q/6Tp
         I8bP26pG/QJuk2dG+bPl3LkaVddPdl2yRg1PwrlJqCeCXyJf2Dl3XtSTtytdBg9j9t7W
         /VLNh5xe+wa7YI8uyTo2UFBL91cRshkgmtl+Fqh5YZ6MU1oO0HJfh18Pbebzhs2AbaFg
         TVLZI6F87LktkxOXkc5EXFPkvzBBskQMgBCTvPZDfK54K+YlbZushh95Lyx44s7/CNRa
         Q/EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788468300; x=1789073100;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zs6fzXacoZ+goKyWRAwAmBG5MIfaY+s659GryGv3AGQ=;
        b=L4v6DC88FDkT6EsE+QHK/5P4GYKd52MUz5b+Q/tqvIo/hbFVcNqgmpH0Ym0PJ5SxUY
         ND7LXt4nmaJBqK8cuUYNyNbilSLJYpVzW86LzzVagaqOHO7llvV8h06uZ9S4Mjg3aGie
         HBSHPDPivk24Fu++uGYji7PwFgj7SFlZTShBG6WyYqgf7MPXCNpjB+3NLZI0cwxsadXs
         vowp0Hy6UwrXjhEUTjprZNxNhPqJ93Z6I8G5UIAwWL/ZRsHtyklP9ll5yQq9fkLEAYUT
         d9eW/GSkJkF/u0JS4eAGUr2Lc01z8ABJNUMi+o/QISkKPuGNAqdM4vwrKdxwmMVzDx0s
         QgYg==
X-Forwarded-Encrypted: i=1; AKwUvBzWZLS+u23s1/4zY4OJDcIA9G8THeqGUMoIDUZNW/Z1hI0nfpoDFDEvaXeAsawubsda3Z17Gaw9p6o=@lists.infradead.org
X-Gm-Message-State: AFuF++lMWxVojgUpa1PgwBNRiY/7Ztuf9DXcpH5V5+e3YIIHxiwstzBA
	7ApS6aUqz4IagR+cc3AhNWdL9VQEsUgEVlCYMGmMqGRiP5UYlvUuWgQ6CYI0vWa7ySI=
X-Gm-Gg: AYBFou24Fn/dQr28LXi7VF/MOfDVtahwGtSaDCYeNVouhv5mvN2AjwWPSjRcW3do8gn
	jfmgWGYd5IMqEkmchONJqd+pwKHltaKjrGkkplR17pGp0ddWmqO/HTRzSokN8r1eFanjRducxjS
	7NhJJdH2fDjJuCUFqYooufx+xd32zXtaFCZf0UdGA3ZI6Fz/3YTkCuc/u+dmNRblH5SlpR6zrJ4
	HG3TVRJqtNSJRFGaXzCWabakyyCOF1Fa2tbL9b6or5di1ZGDLYLI37B1n1Az+MrM0P3rO91+AXR
	rhP8ZCPXcWRzLxbEyqMxM8dt/mqHIwirhEID/whgeI+OsrqALiZ5UVfjCu+08cXYsGPaL8laMpz
	AUrNCKAQ/O6q4RgRXYTnskGAff5uWv/gSvNuYo8MkUx8uuJ/Roi/d6DjaOOZv3aQo7cX5GE/Ova
	Wzucx5sjbDQL3NkWMhI62MsoMYT+ASjs2stVNoQFuwM9FDCvzD2fUQB94QOffrcEb+/VT5JihWw
	HTlrAI=
X-Received: by 2002:a05:6000:4618:b0:484:410d:c9fe with SMTP id ffacd0b85a97d-48589216f43mr387435f8f.11.1788468300335;
        Thu, 03 Sep 2026 13:45:00 -0700 (PDT)
Received: from [192.168.0.35] ([93.107.91.8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48588394fa1sm1040684f8f.8.2026.09.03.13.44.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 13:44:59 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 03 Sep 2026 21:44:33 +0100
Subject: [PATCH v17 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260903-x1e-csi2-phy-v17-1-26606fa9a039@linaro.org>
References: <20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org>
In-Reply-To: <20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7202;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=+uIW161wF1MrN9KVJPQ8cjWepKKfZMVD45r+Q6sOPus=;
 b=kA0DAAoBInE7s6GNyDoByyZiAGqZ3EjIeQIRRzrJGwPSzCXl7WO2pkw6GSdBkLzmPJj/yJQjS
 4kCMwQAAQoAHRYhBOaT+yqro23hF6tvtCJxO7Ohjcg6BQJqmdxIAAoJECJxO7Ohjcg62MsP/18E
 JQ29yvMw4pozcmBnuW8qdIPuKRsTDUdli1VlepLBZLJC9gltWaNiTQr62M4Ov8KLsQ20ATgBkDk
 Ley9TkIpf44MFSpNCnx99I3U4M5zyLaiz/838ZGcIxo6KU4SPQHEcppp4H2LRaVNmczYQM9vKKP
 bPjx6n/MF/dr23pUPRypzJb8F6pmTxXEZpPpgJ2cZ+R5T5GeA6wQdsFc3pOznY9A+7dOMedKoJt
 c7/0MCRUqKJw9TOENhDUwFii4cxlUi+zNSrdyIFRilKRZXKy+Thv6SXHY69nmv8k2ZBhR8re4zb
 Ttc1ZouHFfqDo0NT6daCqsCSWmItCvKqORKxmUdiebV3OGNS48BoLv0Tyu9AV0upe+25XvEN7Gg
 90Ww7KOcepdd3DmYp9eMPRDLywTsZzlgAWl8v9WbuMXcsztZo1s9vM8rAcxU/ddJ0eorQZDtGPQ
 eYi7t3uqg9P7GJnUV8WIoJeR2IsXf3zq7gL4Wk+hqcGJQCJhcGCeeGV7V1zOFDd2/eUxubRP36J
 gFEzWKJssmcI5/VKcmSwiZB3hJdj0KVxcva/Wugum0vsVCIUPJwkitNxGWvYSVKJe8Immz+ENiI
 K0uWqX8zynB6QJ11SXCHvyURxwkt2TRXCYfljjvOwz04kq899FzC1IdbPVyRsqejiFDszi4SLTP
 NUM5V
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_134502_436886_E0D4A514 
X-CRM114-Status: GOOD (  12.80  )
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

The schema supports both the D-PHY and C-PHY bus types.

Suggested-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 221 +++++++++++++++++++++
 1 file changed, 221 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..993271c42fa06
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,221 @@
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
+          single endpoint with the D-PHY clock lane at position 0 and one to
+          four data lanes.
+
+          DPHY split mode, where two independent sensors share the same PHY,
+          is described by two endpoints, each with its own clock lane position;
+          endpoint@0 with clock-lanes = <0> and one or two data-lanes and
+          endpoint@1 with clock-lanes = <3> and one data lane.
+
+        unevaluatedProperties: false
+
+        patternProperties:
+          "^endpoint(@[01])?$":
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            properties:
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+                default: 4
+
+              clock-lanes:
+                maxItems: 1
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
+        allOf:
+          - if:
+              required:
+                - endpoint@1
+            then:
+              properties:
+                endpoint@0:
+                  properties:
+                    clock-lanes:
+                      const: 0
+                    data-lanes:
+                      maxItems: 2
+                endpoint@1:
+                  properties:
+                    clock-lanes:
+                      const: 3
+                    data-lanes:
+                      items:
+                        - const: 4
+              required:
+                - endpoint@0
+            else:
+              patternProperties:
+                "^endpoint(@0)?$":
+                  properties:
+                    clock-lanes:
+                      const: 0
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
+  - vdda-0p9-supply
+  - vdda-1p2-supply
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
+    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/media/video-interfaces.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    phy@ace4000 {
+        compatible = "qcom,x1e80100-csi2-phy";
+        reg = <0x0ace4000 0x2000>;
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
+                    bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
+                    clock-lanes = <0>;
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
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
