Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27B3EC49361
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:25:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE75E60240
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:25:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EE75E60240
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzD2Pw96zQk0XTq6W3cDdMfoXo6p0JP6kUmz9B2ClKs=; b=NhxrsC1wMjJwBd
	u2WUdPWoSLzaOLEZBVtcCwXYRNk6riInziYD/A0OwuSUJHDKzsZcOGBjsr0PnAQThG9vqxgL+RXxu
	MAdMXLA/+ScPZyxVVR7f7Al2AAtCcspklAWhiDH0x/YeYjqDs9ZpApGUovDiSI5eDPsiZ2jJ2Z7M4
	BUIUnBwrcIXrEJZZIC0C2Wd2IV3IYJpETtegew02896LLwAvKJOfnGw56mFzRK9van2hvpxlD0szH
	sf96Tk6XHMZH/DLIEsstn/o4Ghja0AOGXofEdfMQRRbtqO71c7vt54/I9Tj3DbXUAFz/WiwXimjOD
	ndM3V2/ASA+bqcNXWLbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvEJi-002UGD-4T; Mon, 21 Jun 2021 07:25:58 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvEIn-002TpD-T6
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 07:25:04 +0000
Received: by mail-pg1-x52f.google.com with SMTP id m2so13420828pgk.7
 for <linux-phy@lists.infradead.org>; Mon, 21 Jun 2021 00:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+FXbFtToGuPHtOxGpIr0dvHdivz/Q1z9OEfRP1dWFro=;
 b=ownqbAde7ibUTXmaomPwWhKWAEcCtoFyPt61G9Xb2vNCBoM++ysOgTju/3C/+CFCOn
 wf+51wtlD0MKRS1pOFsy+y9UTYr9YYc6ZSrONuFx1q+St/UYyD8LaAu1u6oEGj6rarHZ
 kJ8TGz5wvPUXxuLJIa0VLSryCqeWeu8KFJVC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+FXbFtToGuPHtOxGpIr0dvHdivz/Q1z9OEfRP1dWFro=;
 b=J+e5DYvDssIP0l1Db/+lbIX995yPD5Y9W4YVHzRMimvF4Efg/RpkIz1822/FywX4q/
 kSrLiEH2xEXe/ohW1oEXbIyxejnCUoEltrpq1Kn+OEkCJYWFcqip6BrenD1zSqO18pq+
 CyvDKkHZW7dkQD6mIGbaSPG1usOB+A4IZH/r3QDg8gy2+LIAo5RRbrZ1hZu89dTrRq0x
 8vkxvE21wxy6VNRKbDc554ODmSPH0Br8DWIabc5wWfQRDEYu/XCdzl4wMwZxIER/wGgc
 jbs/Ryxp7LY0A4Ie3Nmm4LLn6Vi2fGCjTu0Baq6mQyY1Y7kybIr+kkvzc4ikXfIwVGqJ
 +FBA==
X-Gm-Message-State: AOAM532NDSdBEGZPdtwZxWoGhHT6hvhzPUo7Bf6dFdXcXl5FI57VZR0g
 WDDWzvzg+C1wRe8NMAf3fYVy9Q==
X-Google-Smtp-Source: ABdhPJyR1XX4kE8GVc5LSmw4hAodEITo1Dr1v/NraHJ76cJclVLPD+cShV85kMW3fABma1FQT+PvkQ==
X-Received: by 2002:a63:ef44:: with SMTP id c4mr22275167pgk.162.1624260301131; 
 Mon, 21 Jun 2021 00:25:01 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a884:139:e97f:a55d:7f66])
 by smtp.gmail.com with ESMTPSA id
 21sm13951294pfh.103.2021.06.21.00.24.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 00:25:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Tomasz Figa <t.figa@samsung.com>,
 Fancy Fang <chen.fang@nxp.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 linux-amarula@amarulasolutions.com,
 Anthony Brandon <anthony@amarulasolutions.com>,
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>,
 Milco Pratesi <milco.pratesi@engicam.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [RFC PATCH 3/9] dt-bindings: phy: Add SEC DSIM DPHY bindings
Date: Mon, 21 Jun 2021 12:54:18 +0530
Message-Id: <20210621072424.111733-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210621072424.111733-1-jagan@amarulasolutions.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_002502_026866_787EC682 
X-CRM114-Status: GOOD (  13.12  )
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

Samsung SEC MIPI DSIM DPHY controller is part of registers
available in SEC MIPI DSIM bridge for NXP's i.MX8M Mini and
Nano Processors.

Add dt-bingings for it.

Cc: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../bindings/phy/samsung,sec-dsim-dphy.yaml   | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.yaml b/Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.yaml
new file mode 100644
index 000000000000..c5770c8035e1
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/samsung,sec-dsim-dphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung SEC MIPI DSIM DPHY controller on i.MX8M Mini and Nano SoCs
+
+maintainers:
+  - Jagan Teki <jagan@amarulasolutions.com>
+
+properties:
+  "#phy-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - fsl,imx8mm-sec-dsim-dphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Phy Ref Clock
+
+  clock-names:
+    items:
+      - const: phy_ref
+
+  power-domains:
+    maxItems: 1
+    description: phandle to the associated power domain
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mm-clock.h>
+    #include <dt-bindings/power/imx8mm-power.h>
+
+    dphy: dphy@32e100a4 {
+      compatible = "fsl,imx8mm-sec-dsim-dphy";
+      reg = <0x32e100a4 0xbc>;
+      clocks = <&clk IMX8MM_CLK_DSI_PHY_REF>;
+      clock-names = "phy_ref";
+      power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DPHY>;
+      #phy-cells = <0>;
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
