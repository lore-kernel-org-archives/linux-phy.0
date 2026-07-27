Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2759FC53209
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 19:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dm2/hPVhBd7et9CWaTbF1KQLDZh91xggGUIO4so8pq8=; b=oCiqCTMcAZCJ33
	gdEO230UAqDpfq9zMjgFSrwQSYyOsuEV5S+NU6upvOgev4gm+mFEjhw3qr7Zb+RI19ZjmQ14JL5cy
	GVY/ngJ9Mwky+Tu3pHVxdaRHBMl53B4T++WFue1FYw1sk3QcfsNeh3KfxqQLLabGf9k3709pfiFeI
	bI2CCOinYaf63vngG1ntw5A8fDC0desJ/aVBVg/j/o4f0Qj70bTqI45OnlbY9fNpbnKvsYfQUuZrd
	eadenRIPzyHN3srpl3iRLKZktZk4gZbVUCpTXfi+nPYZLUVj2w3pK1T1JQa29K1LFtk91v5bw0RNG
	ie3R+6vyMqMfPfCwrGSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQoX-00000003k3Y-3ZTP;
	Mon, 27 Jul 2026 19:16:37 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQoV-00000003k2E-0wqn
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 19:16:37 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-47f633e6058so2699555f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 12:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785179794; x=1785784594; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hUnEXYHfE21rZw1q9AJTuUDahJJZ6wDRNt2yCVGSXAY=;
        b=lHTCa2ORYgPDFOcKII4b5s2JqkDqSYmbYYmfQQBl7iyrTVFNSDQl6AWsuEdB326fM6
         vMqSDH2PsKFHHsLD8k7WJ2S2Fka0kax1sMb6HxmHkKcliPeWkqfcCA6/2IMt5VOI3rwC
         WIK5sZHaQljOy4GSIyrYIC/kSPN9SEJCi8p096qOjpwrJN21H61r9eyipYyzm/4YgS3V
         jlhoiR07/NYQKRvckbdE/fePIC2d9GSaQoN6f9b7c7En7cSaqWK4JlZD9RGlclrtPdHY
         TwAGc7Q544Nw1biDYi3FyDE+t0yI+Z0zG77hJMqMkCoW69AX6DcZZfkoARDiU5ax/nlx
         Ipiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785179794; x=1785784594;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hUnEXYHfE21rZw1q9AJTuUDahJJZ6wDRNt2yCVGSXAY=;
        b=ZN6RDPkW0RP+JpiEhNr7V5a2OmuGRqicj2QSLoHqhMQ3ilfxeRaj1bfwE8mZX0Je0U
         pH0wWG5XNFuG7t9E22kQd0B4ySp97VSO9y+c6NoX8V507z3wCCdWTYe78EK3n6jXUp55
         Y/j6ISyVrf5zZ+97K9M/xorTJGxgFq0trTPNrSg86SIXHeQb+mms+1BwiGRwcD4BKOF0
         4aHZsge1LSdtFRfcTU5odS5UJcpAvZGN2wVDLsdyjqtmZc4oxjgZ6q85B6k3hTdtA+qD
         rvyQWMqzM+VCSk9/FO69oZbzazYyvteKN3uRggXuI9q5KU/vVvoh2F2M0mu86s+8V4W8
         v6DA==
X-Forwarded-Encrypted: i=1; AHgh+Rr2AiNhLljqVYNhBikGm7oB8vibYRV3P0goHJklhshpv8CxtCLT/tqVGXfhGojyxnodoLdcY64MSsY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzICzJux3GeOSIEKueNmA786TUlauFoEdfb1EzoH35Mkp17swXC
	ZHO/jGkq+dAYVCI7YgTcgrcqJAOOjx+X7jbjGKWq9b401H8FX1JDxMybipysnbRAs+AMZC7z1PL
	/t+0quoQ=
X-Gm-Gg: AR+sD11leudrbQNJRxeSOGGWpupQACZgUjlnAekcBvH14Cizw6wNX+prEC8jlQzvx7b
	YKVBxwfN/wZq0YJsOhc1K4CQdqqyjTkQlUuP7DqST756nzNSSyaZW26PUyqbpQxdQTGamvsQSlz
	Abrta2k9B7WdEkEQQ+Z8l4YTW2fgTH6d8T0rCPTqVLL4lk5Vfd/VHdyrh6yIseT4vgYHQQTYvzZ
	eAuRhNriJdbYvg7dwrHH4TFCaekq/YUW7Sv+rVjNY3ECvrNiFq+u8cPHd/odsnlvnVnGxAxg48B
	eWBDqLHKTpwwnrpD0CoDYci3oQN2eRGZLnY0seJypI/uQMot3WolIrEwQzoJ3zVGaT87UN37kaG
	GZkmCZGedUVS6aUxnUWMPXhhDjlqGKnWzl3CF+5JHV8gDhh7K1ZLuM8GwiK3oFYcbRoCtvdWFDb
	CPPoFPDq32ux3HQL78rSnvHHqigHit2ILGOhw=
X-Received: by 2002:a05:6000:603:b0:47f:8f8f:e494 with SMTP id ffacd0b85a97d-47f9fc8c3f2mr12091014f8f.2.1785179793590;
        Mon, 27 Jul 2026 12:16:33 -0700 (PDT)
Received: from [192.168.0.35] ([109.77.105.162])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f85b9a6d7sm50749607f8f.2.2026.07.27.12.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 12:16:32 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 27 Jul 2026 20:16:23 +0100
Subject: [PATCH v14 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260727-x1e-csi2-phy-v14-1-27d1bf477593@linaro.org>
References: <20260727-x1e-csi2-phy-v14-0-27d1bf477593@linaro.org>
In-Reply-To: <20260727-x1e-csi2-phy-v14-0-27d1bf477593@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6404;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=a79mpsBGOjBG04lPkNMqGEl+g+V/3IKRDyM8eJWkROU=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqZ66Jn5OlDyo6vhpgCBin+L7h0YqWxbGjstZVP
 C66uQ4oTc+JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCameuiQAKCRAicTuzoY3I
 OjgLD/9B+NyWa4Vrj9hwA4hOIP4+MnDvWvT4lU0FeJStXf+PS5UL/DJDI9kn+zRvpVNH4UiFm5K
 nD3FfNcC4yGiMPheIeSS7C3lgRgGW9FRt04CTiSkkYQ1OooIFY7IObhF0Mny/t5JmPSCDdU/9cy
 XmW5csB1WjHEIfGLGGYZae+ubqazIjj83VD4e07U5nH6U/UIMZajAeE3C+FH2q4btUUOz/5Pty3
 9iE21Tzbnm+GfdP+kvgBRRzZWLtfSfRj6jmfXA/pWi/Ygb8S25/rtG0N1oivKts3hLqA8vVE/hv
 qgke0/e/lH5i096Mm0DfYHoAPLjrviJ3nh+ILOwdEFO5zd3w+qPVtGfZ45cl+10TKUAE8lrxONh
 fy290+FWYkjv0oY5cTcgs8z4gSDENtX+cwZQjai/7HzCs7W/DkTEkAeOPXeekpjoBjXmJy9EmKG
 EmFKAo1Kpf870hWcbFtvCT4B8XSakoo3VArwVZTYnA0ERccDyPHhE5iIS4JVDpe1SepJWdiE/IB
 1G+J0EEC0T3w2aGfFi5LIObt9oRaEKaclxMf/h5r+OR4s8LTH+s+sTF2VTAaBoB4m4oFd4DbxTb
 Oab+Gi2Ry7gJ9qeiPe89bLwfEmtY/NLF8Wg6E6NIHItI/xjO2INo3soJ0ZONnJFtKae9n9J/Fyi
 ZgtEtc2KRY2obKg==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_121635_317137_A94A8D94 
X-CRM114-Status: GOOD (  12.44  )
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

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 198 +++++++++++++++++++++
 1 file changed, 198 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..7d0363812aa89
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,198 @@
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
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+                description:
+                  Logical lane indices 0-3, not physical pad positions.
+
+            required:
+              - bus-type
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
