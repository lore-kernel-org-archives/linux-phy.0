Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DA35C4828F
	for <linux-phy@archiver.kernel.org>; Sat,  3 Feb 2024 16:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHPliRuapnb7cU9Ou8HsvHQTPJRNSWSYbaX8mkr3DzE=; b=1v9zyyrWH3bjvg
	QmjG20Khnyttar0bHObA93oMHnTx5EvmZuRmkspgvixVaOmzAPu72x+DJZsLxgyITaiu8NLUFUi3h
	gQm/uM0DOGQSHTgEYAmnZDiQ2K15c2p+VM2wpuHhWuFjHDFeL24yegW3rYXOHPUrj0SMpNVmJsUYl
	e5xMp94UbDsdVGyoBk62dg1x/SSzAn81onByDjQWF7QP+O16pJ2fPmNM67iT/AttWCsVL2z4ADKZ8
	kX5pXkvuEaZq3ttlsNEG1z8ZaHiJoLayqSjpBRT97J3uioHiDgMMAdt1LJ3hBA7PHgwGFHwmf7yX5
	u8D2rVqoPu5J8g/gTejQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHY-0000000GqaQ-3J3e;
	Sat, 03 Feb 2024 16:54:20 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHM-0000000GqPa-33tX;
	Sat, 03 Feb 2024 16:54:11 +0000
Received: by mail-io1-xd35.google.com with SMTP id ca18e2360f4ac-7bff28b2937so127406839f.1;
        Sat, 03 Feb 2024 08:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706979247; x=1707584047; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iN7CHiElDXoarw0CBzFnW/ft9HNctCbMZzIXIZ/bUo8=;
        b=gp1vDJJ4Rt4M4HBwaSjFrSKNAJHsEsfzIo0sMWdSOmfvWjbB2HMwCCQiXy3vuDNTqD
         6YLZ3jR7+fQh7bCqU0yXbBN6637mIaA7WIJVpD9ymnfwXz0YirWN2JOIFFH+5dox9+KM
         blle4ORudlJw5M/SpI8vzroVEd0E8nZvtf+ElITbb5+t5qEs3LNP0CON6V2eoN16NsWO
         CA3JGFLW1iqsinr7mlEZ2k46Jn2aKj0la+eVSv4sVOOUyQPnCkvyBdfgJn0WrI3DdjEr
         NXiS1jB+bfLRHZWgYIpYLzmVFDNVTtkspWZWmC5VG5BGB8AyK7zAFD+izaVNJI/Xj86X
         sYRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706979247; x=1707584047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iN7CHiElDXoarw0CBzFnW/ft9HNctCbMZzIXIZ/bUo8=;
        b=EvTziqijA4tjIH3//MeaW+dQ1Ajsf+ZeoH0TAj6e9xuseSodwKuGy1R3j69yisOlz6
         r3MO3hghl4h+v+6n5PRFXz2TuMrl7uK4oo3RMGtfTDNsX6P77Woa2P2SSoFtK+YlZFZe
         o1Y6Wps8NgC8qAmcuCLu/fyGG+hxMMx5taoYdxSzOzhUIJImTo3EHrFOx8ZmHnrZMnUE
         QvDNknbejoRwgo05HcfAyrpEJ2Z1FeYa69OQnt4ttG+qQhcbKKGo8DbfZkKdAr4inADD
         dAS96MV4G0bmds6FUZujpqyBYnzLqSQIuZW10iG5f50sFp2oHlk5phH9TDa7rqLlGm+w
         Kwzw==
X-Gm-Message-State: AOJu0YzcnDLf1dKWvZzaS506WF1vfAMC0XqpUElYkkEZ12IpSJXFg6d/
	29Htt79Q/RK3VcblZTCeKXRK4kg7n0hxVWOtqIcT6JOwUSZX6u5NpBYxtJirQ/E=
X-Google-Smtp-Source: AGHT+IHF9zh6CYjYVL5XR4aOsuCz2JWMZKXEuAxJLr9Xj8pwzfzLUwChQP/CnjWMh7hRgUYvMP22WA==
X-Received: by 2002:a5e:d915:0:b0:7bc:3cb7:b68b with SMTP id n21-20020a5ed915000000b007bc3cb7b68bmr9293261iop.17.1706979247353;
        Sat, 03 Feb 2024 08:54:07 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVWZ3cE3qI9Oj54mFr3sAnVJXSwCFl8jEzpL9ucr/wb7wJtIiD8UuODjyzAMUp0ByTuWPWRCY3gFUaj6Tl1QSSEoFmjcqHnSIJm/CcYV2fBCR2TzZs6oMwGgz5yIoAFA319P7Cu/VvHvowXSFkPvrNG9Nk/p1zhIlaMWQVBz3OSXWpNjQTYmfW/BQolQDULLpBgKPdzTdQSV0JBqGa3HHFXp7F4tkWXzXv1y6RIxVcEbZ3kiXP0iTHuyLXiXyDE4oE+kWbIvORuO/pbkidoXGyPiHMTqHlcHCP6RyLAHu+WtrTwo+g1+tIBsqmnd3WPmnxcuegvPP95EWGHrYIdQSQ5Idbi4CwazuUWx2XpS24CfIaw8kbQLVFgOMCHdlhz9Pvz9XROrEFXVxzlJ1bvLegZgn8gzI1xXH9W9HOzuq1PMFioWzwvJdcCATyJeg2qPCZ0qZmHTBpt4mrW4zoAK/0TSwlUiG4XVET3T0cSJu0+3pOg4A8dzMvmlv9bwJT/FzSWVlGCyECr0tPGwNLcgv5hJ6a0E9vBLE0gA+Zuo671skr3tDr+otnlIdQfBv84iJVTiq/BagoTPx5fjx91RezHWRZi4PLpR88/htGeuFRZKJmoFIW9O+A0i1CMkwW+tpboQCIaRk8nL/tEsGc5GwTjAYBBAYnxrTMIYXQe6J1iCDjMHb50yy0ys1CsDDDN9O/57CQQ4yNiXYw57qtRvh6wglVsdEk2/o9OSlbUtzmv5X+RKM6+Jo5v6ACtTp/2R3Kb5XJX8DBNHt8MLEpAE6H0oiw7YZMxPMfrqUrsQx0rM+vHkHSPYfqbFKv6kSt+4S7NC61JYbp/haR+aVmsLSl9dfvWtwtdXMop/gIejD9oK83qBw6/OQfe3Qd2eZvpRGa7q+KETghsHfoNPq9ANbXAHYAP1lzUKelCh9KJtcEdUT0G9eyxTOPnnWm++V0vH82B46
 Op9yK3+Tazd+mB0eyGk7bUQiVbqEL1o+LnXA3pkY2OhBG/HNhjdGW/YhvFGDeSNAwHjh81LUNI122dg4+sDdF5D0ZfPnEwslU0jnCcOQ0rvvfxkXCjqSo0ypjOan2P0+R1Xtrho+l5/mS7NurD/WMxlLi/NHZGM3zN7RAGATKJEfT+oXCbdVquZgIBh5CsV6bN3/B7/E+jpc2JhNIVIy0qd4W//NRD7kGqGSt3b/48KAOc5HsaYPhWjAAPDDbPhE9SKMsAJIWwu5h+hYv8VkCh9cO6E/9aUkv7S+j0YQdt1N2R21dDVg==
Received: from aford-System-Version.lan ([2601:447:d002:5be:d9b2:bb4f:5531:6aa9])
        by smtp.gmail.com with ESMTPSA id t30-20020a05663836de00b00470b29b82b1sm1086256jau.154.2024.02.03.08.54.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 08:54:06 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	alexander.stein@ew.tq-group.com,
	frieder.schrempf@kontron.de,
	Lucas Stach <l.stach@pengutronix.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Adam Ford <aford173@gmail.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Liu Ying <victor.liu@nxp.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH V8 07/12] dt-bindings: display: imx: add binding for i.MX8MP HDMI PVI
Date: Sat,  3 Feb 2024 10:52:47 -0600
Message-ID: <20240203165307.7806-8-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240203_085409_041064_5BE798D7 
X-CRM114-Status: GOOD (  14.42  )
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

From: Lucas Stach <l.stach@pengutronix.de>

Add binding for the i.MX8MP HDMI parallel video interface block.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Adam Ford <aford173@gmail.com>
---
V8:  Add interrupt-parent

V7:  No Change

V6:  Add s-o-b message for myself (Adam)

V5:  I tried to help move this along, so I took Lucas' patch and
     attempted to apply fixes based on feedback.  I don't have
     all the history, so apologies for that.
     Removed the pipe character from the Description.
     Increased the register size from 0x40 to 0x44.
---
 .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml

diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
new file mode 100644
index 000000000000..56da1636014c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/imx/fsl,imx8mp-hdmi-pvi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8MP HDMI Parallel Video Interface
+
+maintainers:
+  - Lucas Stach <l.stach@pengutronix.de>
+
+description:
+  The HDMI parallel video interface is a timing and sync generator block in the
+  i.MX8MP SoC, that sits between the video source and the HDMI TX controller.
+
+properties:
+  compatible:
+    const: fsl,imx8mp-hdmi-pvi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Input from the LCDIF controller.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output to the HDMI TX controller.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - power-domains
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/imx8mp-power.h>
+
+    display-bridge@32fc4000 {
+        compatible = "fsl,imx8mp-hdmi-pvi";
+        reg = <0x32fc4000 0x44>;
+        interrupt-parent = <&irqsteer_hdmi>;
+        interrupts = <12 IRQ_TYPE_LEVEL_HIGH>;
+        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_PVI>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                pvi_from_lcdif3: endpoint {
+                    remote-endpoint = <&lcdif3_to_pvi>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+                pvi_to_hdmi_tx: endpoint {
+                    remote-endpoint = <&hdmi_tx_from_pvi>;
+                };
+            };
+        };
+    };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
