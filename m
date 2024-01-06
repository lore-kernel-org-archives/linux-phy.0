Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5129C46CD2
	for <linux-phy@archiver.kernel.org>; Sat,  6 Jan 2024 22:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WvYqMkRgjCInxHamQtq9kxkzAtVjAK+pCowKquBtgjA=; b=eYtdrMH7JdZE56
	wS3CPIdVSYWGLURYoXznNSIn5OK3/jH+lneEPvQaD1Z57xETLlYU9VHYCxOSTMt9t+kLf1l8pmzvt
	IaigcsDijLUhA3+bsxbwqBxajSUyZwGcHkoKXeB9Vt2X9KZutgwY9zXWkHn/lAHxj11GHk0Wk0miC
	idjlo0/xjl+p8/lCh6Kch4m77AjLA+5lE2SJ0G+T/hNWQbvCg7XaClXVkpNjNjxEkA2c92YevEVkq
	bxksWsoPyKbK8f/4fOTM9dtFlQ04ierBJDwSitzhj7lO6j7YsnjmvHAMheVHlYu4DWn7iqXUwqQVQ
	0/yyz7SOax7bey22TAEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMF0e-001x9o-13;
	Sat, 06 Jan 2024 22:19:16 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMF0c-001x9L-0V;
	Sat, 06 Jan 2024 22:19:15 +0000
Received: by mail-io1-xd34.google.com with SMTP id ca18e2360f4ac-7ba8e33dd0cso39908039f.0;
        Sat, 06 Jan 2024 14:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704579553; x=1705184353; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TYXO0TXmrPEwqq+/MbuU+qZou0rkBxurEPhJUKxALbc=;
        b=UmWPCf8d7VW8+v7spBKeflZL9QIlcFIS5sX9wRG28RFJ0EgizRNFdEIOqPoqJVwv8X
         YRFqOaLn6tnkpUz5nzOLw3hn9q8XWMSQzJ6HvFmFbj9YFLLdWrKlr7dK+j8Odq7x3/2i
         Idfm2eU343OPJItWvxlP0qukpaNJByjkxjJBJb8N5Z5flL3x5xQq8BSY2VKaDp87iwUY
         fHuenyx5egSjkae2uj1t7I5iR5r4DWnKt7f8b2WCVAiZ7bam4YTtraw0R8KwGyk/mUE6
         YPbVtoCM/5RZavj2fcTD3a9vWOtQIg5CfyDHwmnP4+5MCnhghtVuzgL2aYi+kczpmn0n
         uW5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704579553; x=1705184353;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TYXO0TXmrPEwqq+/MbuU+qZou0rkBxurEPhJUKxALbc=;
        b=ReeQX9m6sFDL4bidO+GjmhP50DMpEO5bTsRqBFQpwVHFdSd5SlLJyt+UasNGFPlQED
         /3pvK0f0hGYkraCISHJ4oOE59VcoPGtwpjEeiGUJZUMJiF3VwxoOpE+gb2n+44ymsPTU
         gkaAPOc4qZ3m0KNoluRaVZhWf0jPJIgFtByfdIODKae2yd0ODDDEj3+fuVPYv4fgbrOa
         oZny4ZMi9lRlY/KS8gY16VuOFs4wltePKwj69qIfHNVitQvev/CRZMWKpMdGbMrCDFuc
         aCIXiTS3zi1ffe9uflIqNs/aTOqwZIb98YVHKI/yBB1bmc8/shpce6vd8YNFS1feMZNU
         sAMg==
X-Gm-Message-State: AOJu0YwdW2I/Nacb95DnHToLJENLzN6W747OUG8ZS1DGuhXRfHwlfl3a
	KZlJUTJmK3gckxN7QrXJbaX8HkucjgMj+A==
X-Google-Smtp-Source: AGHT+IGIt5Rt7HY/t7nCMCZDgRKKmmyUrOXO7GhHrgaSGRvAS7zb2V9Gd2Gt5+TSM/tEeODoTGFjeA==
X-Received: by 2002:a92:cd8c:0:b0:35f:e0a7:8892 with SMTP id r12-20020a92cd8c000000b0035fe0a78892mr2198542ilb.8.1704579552892;
        Sat, 06 Jan 2024 14:19:12 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:af2f:17f0:33a3:d6fe])
        by smtp.gmail.com with ESMTPSA id i13-20020a92c94d000000b003607ff64574sm679751ilq.64.2024.01.06.14.19.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jan 2024 14:19:12 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/2] dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
Date: Sat,  6 Jan 2024 16:19:04 -0600
Message-ID: <20240106221907.325127-1-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240106_141914_213471_95AB7D71 
X-CRM114-Status: GOOD (  11.70  )
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

---
V2:  Rebase on Linux-Next
     Fix bot error due to the word 'binding' being in the description
     Add phy-cells to the required list

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
new file mode 100644
index 000000000000..d1b941b48151
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
@@ -0,0 +1,63 @@
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
+    minItems: 2
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
