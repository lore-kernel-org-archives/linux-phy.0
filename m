Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22F47C48BC4
	for <linux-phy@archiver.kernel.org>; Sun, 18 Feb 2024 04:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SW3SXI3wLSg4n8tSfH3AZEflJCdHuhuTZ8L++2+dP+k=; b=H/p5OiogCF4BqQ
	rGzbAoGD3M8GuCYfl/KBsybVIa1Ys7dDE69LZ9U60Jtkz50QinY/Ols6NZmd5cWCFmmTK+cff5uxh
	1s3qwfUrAOZ+Y4ESu+jc301hO3e1oCZzk94RRokjgdaXPut9X8/oZRAU+NhbPI5ZrbAGmh/wHnCcY
	T/8W7aeoiW806ztM9ERYMcOxoSwsu8JU+DXhkPjpMn+yQ4O0SmmdVWcvLut3xVEpvv3lacxBEq/Zf
	DdQwTY+B2OVSr3viwUcf0EstxyXgBVhZfKcahNTJuH3LumVGCW5pguETkFkdxIVkj5xWb6LUrf0zx
	rUAasVQC/d6S3AQuaW+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbYc4-00000006xFj-2sPE;
	Sun, 18 Feb 2024 04:17:12 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbYbu-00000006xCr-416w;
	Sun, 18 Feb 2024 04:17:04 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-68f571be9ddso4311246d6.0;
        Sat, 17 Feb 2024 20:17:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708229821; x=1708834621; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Fq4bA2B7Uab8ElK+yYy6D/1DzFXoNcJhp7LrG8FrCM=;
        b=mzjuLFcIVcJJFXDNerpComH0yS4O5jBqMlp4XjURdtKjIQUf6NkKy77JOoO2Zb3jOB
         eFmPWUGgvcPmCpfhfSvbI2Th41lN3ejw9aBVAUQHRJ1PV9Ud4/d/t60/GlKLO4QU86TE
         9dftTYezBIcce7Twd9et6VAPoumL8GQoCGkO8tcVTl5q9Ms9KJOQCyrTJEyQyvcolMLb
         EzjhtfoEJUBQBYq5w8FuZsEdiCq/YrvP7ciguUDLlC70l/yJJoxOIJ02/ovHsez1Yrqh
         x5Km+1ysPdL0clyfIX8sjKq1jdwrP5ZD/KLwfjf30iG6cfNvo3jw7qyGKPBpxNTzgeAn
         gEYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708229821; x=1708834621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Fq4bA2B7Uab8ElK+yYy6D/1DzFXoNcJhp7LrG8FrCM=;
        b=lK+NO/pS/5njhETNlrCXoIq8mnI3H8GFaBP4tQ7aFHOVvQHp6vK+BKRjXNqWNTtWQi
         dfhGmDFCHO3o6oPoLMHdD/6SJ7y1EW874+lTZZvJkEQnoQio1aGoxTMM9EzWNhg8EVNL
         7mLUFRtXWty3CamDCG3FcBj24Kt4o1Qo+EF6OyqOzqCKc3V5Ac9urMgb4IwzCIeKotqC
         xmrVhzrar77q6hZkn6VY3NLPSaWWlvT5t0MH5WuH0BbITw1aAXhbSrDskN+soiqUJWfw
         ioVZerRuRBHHvkzVaEFlnGGAgZK5H/KeDHvkHHin5M9qSzQLhIaTcRrS4sQ42+p0OEfl
         dF3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUGUDRSfqqH+5DhSLuAGOtZYlY21k3T9olKszGsekABT4CdaihD6xqzFnkC039BJhz7+yUYUYHZxkjijxexS+hGSV0mVFMM+2He9i0lAQ==
X-Gm-Message-State: AOJu0YzRPfpNGE712rKRqUzIq2yyjtqadlgU4axztQfh6hZ9uDz3R6dp
	6wzjOksXPiLOgAoHwDvgIt5f4d4Q18QPq+HbD3supnLSADYLZoLwN4trohyM/uBJgg==
X-Google-Smtp-Source: AGHT+IGritm84ppKVGSlKy4xkX4YLdWt7O63XdwK0HFToXgFfZ8nmKSmcea6yUr4GkBeb5ION6xPXA==
X-Received: by 2002:a05:6214:21e8:b0:68f:60fd:d328 with SMTP id p8-20020a05621421e800b0068f60fdd328mr353063qvj.43.1708229821553;
        Sat, 17 Feb 2024 20:17:01 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:dde9:2f2d:61e4:7364])
        by smtp.gmail.com with ESMTPSA id or31-20020a056214469f00b0068eeebc4656sm1713621qvb.139.2024.02.17.20.16.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Feb 2024 20:17:01 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com,
	Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V5 1/6] dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
Date: Sat, 17 Feb 2024 22:16:39 -0600
Message-ID: <20240218041649.1209173-2-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240218041649.1209173-1-aford173@gmail.com>
References: <20240218041649.1209173-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_201703_029964_AD49A93C 
X-CRM114-Status: GOOD (  15.27  )
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

Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
V5:  No Change

V4:  No Change

V3:  Removed mintems at the request of Krzysztof and add his
     reviewed-by

V2:  I (Adam) tried to help move this along, so I took Lucas' patch
     and attempted to apply fixes based on feedback.  I don't have
     all the history, so apologies for that.

     Added phy-cells to the required list and fixed an error due
     to the word 'binding' being in the title.
---
 .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
new file mode 100644
index 000000000000..c43e86a8c2e0
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/fsl,imx8mp-hdmi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8MP HDMI PHY
+
+maintainers:
+  - Lucas Stach <l.stach@pengutronix.de>
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mp-hdmi-phy
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 0
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: apb
+      - const: ref
+
+  "#phy-cells":
+    const: 0
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - clocks
+  - clock-names
+  - "#phy-cells"
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/power/imx8mp-power.h>
+
+    phy@32fdff00 {
+        compatible = "fsl,imx8mp-hdmi-phy";
+        reg = <0x32fdff00 0x100>;
+        clocks = <&clk IMX8MP_CLK_HDMI_APB>,
+                 <&clk IMX8MP_CLK_HDMI_24M>;
+        clock-names = "apb", "ref";
+        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX_PHY>;
+        #clock-cells = <0>;
+        #phy-cells = <0>;
+    };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
