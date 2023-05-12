Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27622C77B7F
	for <linux-phy@archiver.kernel.org>; Fri, 12 May 2023 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G5U7vRPm0Hxb10h/QRvMGYUo+667WD38f2choBN6kIo=; b=Jnn5iitrz8fo5O
	2/TYp3AAQubokS+WcZ6NFGrRG1FcqF/d2TzAKLZFJ9aVzlcCOBQrEgzPzVEc21B9CAgRt6lrm6YYZ
	/ulPmTrpGyudlY835RxN45PPr/gri9Wpdaycz8LIkVVgHHcgMxmz+1Aa0zCVLGFM0/RQLJsGrvHou
	wA0Vfye2eouRi76ilzbEHZviiI6S8hnc4VFdzJN+OygnZyVvA9TNX1zgzRswIPb5jyTJ6syNVwYAI
	7PmXo3Ol6iftnAUA+jZM5Wlv4Pumo1AGCVSTX8Wt4gRcwgJ/y+vupiGfM9MmZoRSEy+Z6nE5fBPHi
	0a54zmXJ/zDuY7VCAYDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxTZI-00C8jB-2W;
	Fri, 12 May 2023 14:16:24 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxSYz-00Bza8-0G
	for linux-phy@lists.infradead.org;
	Fri, 12 May 2023 13:12:03 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-30771c68a9eso9142700f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 12 May 2023 06:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683897117; x=1686489117;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h5CBW3kP2kGkkwXUgvUKDH94eutksEhBTi5lS/gp2Ag=;
        b=jI8+vLf6WkwRF5A+lUQc3hQYHJpGSDd0RbULbiPdoqTLQCpbUF5su9FAbPerXdwNhm
         3IBj0Ie3gPaS402gPDR2Or+tPsLjmeI5NOCHjjADzZdX7lEvDDEkXjKYmu1IeHYdKYJm
         SpV8SmzPUVIzQJjDfuK8Bmk++vLDfQNt0cHvblI/492ea6zRid0MA5k322NeKeZ5NdR1
         820dNd+XMHm8+WK4RoOvhRYao9v9b7DyMaEulz2pmL24P/0YkVmLNfTN1JXFmEcLGWGg
         SzS21ZmEjLbNfUbTmLC+PgJ8CmMuEJWhv1npeqFClr9xvkrtWmopb6mfyCmtZOv7t4Xn
         PL1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683897117; x=1686489117;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h5CBW3kP2kGkkwXUgvUKDH94eutksEhBTi5lS/gp2Ag=;
        b=M2dBxUYX3z9ZV9QcVA/Rjc3yrjWO+HPfXWs6hgm2q/f4NuQx3yfWf92I+KtUq8a0EO
         T1US8hT5pEauElXlbpA8JZNeCPC8yjzGUVNcxRfGG/nVTXogC2PLhCQVeWRBCyVv1LnG
         xcPm1UvyhNbDlGGoM18mm5i6IRLqyadIZ1YXmNXoL6O1wyQwxWacRShkY354WMh68Cla
         001e4MveqboaZnhZhrzVwcsFRPwSpaZBXDVKQ+tGfvp7agnqa4bBk0aPUe/dYs8OSbVu
         DgsqQKP5zerq8Jd9lsZBZ74Xzx5lxR5Io7jbT0kXg9AQ2VsiWbOQvwF0xPRJkGWKPwzN
         2JbQ==
X-Gm-Message-State: AC+VfDznBNKOz47D5uSyTdFc6n1mxPNkLVJ7CAXKm2JHNgfuITLUxS5J
	1oi/wOSVFnew3Kjjvp192U3wIg==
X-Google-Smtp-Source: ACHHUZ454f/mVXxdSFVxLKRDWzBkb6FmtRDQxY0O+rBeRDrU16trHg6OjIT1+y3iOvZSWRnUQ/EluA==
X-Received: by 2002:a5d:510c:0:b0:306:41d3:fcb9 with SMTP id s12-20020a5d510c000000b0030641d3fcb9mr17050014wrt.27.1683897117307;
        Fri, 12 May 2023 06:11:57 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v10-20020a5d610a000000b0030647449730sm23461965wrt.74.2023.05.12.06.11.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 06:11:57 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 12 May 2023 15:11:35 +0200
Subject: [PATCH v4 04/13] dt-bindings: display: add Amlogic MIPI DSI Host
 Controller bindings
MIME-Version: 1.0
Message-Id: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-4-2592c29ea263@linaro.org>
References: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-0-2592c29ea263@linaro.org>
In-Reply-To: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-0-2592c29ea263@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Sam Ravnborg <sam@ravnborg.org>
Cc: Nicolas Belin <nbelin@baylibre.com>, linux-amlogic@lists.infradead.org, 
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3529;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=3MDhT7q/WcievpQjDDNOoPwupOVRmxDglFnaq0Qxji0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBkXjsTc+2KWxxsNC+gphTBNqaqjfizuK6hMljA2xoE
 Z/aoWqyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZF47EwAKCRB33NvayMhJ0ZUUD/
 wNt+EVWvoMIIiD/p/Rv+tgsc/WgfOc/z75FQsHR+5VQ589t+rFNjeDyTKlJ5O5aJobCrdacSqnLpEq
 bzyLjlq3HKfA4YjnrOLeFmXa25+jsk/ST4Mfndym3UMtGBbUI1vParUsklWyZTxgFBFCfE5ttuPxcL
 EsehJagcpU/hORi76dRYwWnuYlk6ATXtedL41GVddLwOSz91l9jtne12ASBD96UeqvZn1Ef5IqMECO
 tbYbFy+Ce9jaP2w9NmGw+JoFfLwFvsiwcMCcoI9IhdtrIgtS+2lkN9yQdC4C/iWK19nag1IEtaIjiV
 Jlfe3o1ARZGG9IPOQkNNPL6U122YKZ4qQbmwDPjmo5nH0k/AIRIdZo6DkOHF/z1jTeC+Wu7C9LmLAY
 ZMXLtxilBdPpvHug3lk3XFd34OQlQNGtsmc5b8PhMy15O2J4U/UcChcnmie9AoraeI9P62QFu8ObFc
 Jvz7VL7dw84edBMAWac+wIJiXYnOHGwolkhXC5E3qzzkVR6fntQRiwoqYrtrCPDKGWjSq62k53t+vp
 HwQZ33cXpi9r2kTZn+XtUIpYYNpClXcKkbl/k28BJ95ATnA+JXcMSbWnvJZnuhyTc7RM7B2W0+3FMD
 zr9J6GwqEaWyZGSZEqOP1L2HTz797qI/OBWw7hVJDn6OTtPZNd1LIGa4f5FQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_061201_146871_7B4A56C2 
X-CRM114-Status: GOOD (  12.87  )
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

The Amlogic G12A, G12B & SM1 SoCs embeds a Synopsys DW-MIPI-DSI transceiver (ver 1.21a),
with a custom glue managing the IP resets, clock and data input similar to the DW-HDMI Glue
on the same Amlogic SoCs.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../display/amlogic,meson-g12a-dw-mipi-dsi.yaml    | 117 +++++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-g12a-dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-g12a-dw-mipi-dsi.yaml
new file mode 100644
index 000000000000..8169c7e93ff5
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/amlogic,meson-g12a-dw-mipi-dsi.yaml
@@ -0,0 +1,117 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2020 BayLibre, SAS
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/amlogic,meson-g12a-dw-mipi-dsi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic specific extensions to the Synopsys Designware MIPI DSI Host Controller
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+description: |
+  The Amlogic Meson Synopsys Designware Integration is composed of
+  - A Synopsys DesignWare MIPI DSI Host Controller IP
+  - A TOP control block controlling the Clocks & Resets of the IP
+
+allOf:
+  - $ref: dsi-controller.yaml#
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-g12a-dw-mipi-dsi
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 3
+
+  clock-names:
+    minItems: 3
+    items:
+      - const: pclk
+      - const: bit_clk
+      - const: px_clk
+      - const: meas_clk
+
+  resets:
+    minItems: 1
+
+  reset-names:
+    items:
+      - const: top
+
+  phys:
+    minItems: 1
+
+  phy-names:
+    items:
+      - const: dphy
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Input node to receive pixel data.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: DSI output node to panel.
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
+  - resets
+  - reset-names
+  - phys
+  - phy-names
+  - ports
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    dsi@7000 {
+          compatible = "amlogic,meson-g12a-dw-mipi-dsi";
+          reg = <0x6000 0x400>;
+          resets = <&reset_top>;
+          reset-names = "top";
+          clocks = <&clk_pclk>, <&bit_clk>, <&clk_px>;
+          clock-names = "pclk", "bit_clk", "px_clk";
+          phys = <&mipi_dphy>;
+          phy-names = "dphy";
+
+          ports {
+              #address-cells = <1>;
+              #size-cells = <0>;
+
+              /* VPU VENC Input */
+              mipi_dsi_venc_port: port@0 {
+                  reg = <0>;
+
+                  mipi_dsi_in: endpoint {
+                       remote-endpoint = <&dpi_out>;
+                  };
+              };
+
+              /* DSI Output */
+              mipi_dsi_panel_port: port@1 {
+                  reg = <1>;
+
+                  mipi_out_panel: endpoint {
+                      remote-endpoint = <&mipi_in_panel>;
+                  };
+              };
+          };
+    };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
