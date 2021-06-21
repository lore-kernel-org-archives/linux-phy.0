Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1776C48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:30:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 99FCC60FDC
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:30:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 99FCC60FDC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tu0ZCXVSjBMDq3IfrSzH0SOjozPf5ktCWnkN1bdoEwI=; b=W98HZRswZGMX8T
	dU8ZM397zR+YGHrVEkfvV5vtRKAz6QBeF7y+ZlmTA9tZXnwJl6hNsa4BXTQY8M/pH0L3CgYnjrxjQ
	Q09UDzWqDWhLCvTdpNOoK/uuqrxv2f6SZmoYduaXTVp836G2wYf+bfHLNCXTm7t+ylX4HO/7aKH61
	M056uc5eh+YG9lAkAGYlrv2tAjSE8YULSGB/utq8x48x/8XFJsm+mRtm1SwFAoaiqPhwy69Nsulwq
	bj6cKda4CX/S+GBMBpeNmp2Iq6k5+mbnR/s2ep0NQqzUOg77U1G7uEks0FCHejL0TLScrfOPm1Y9j
	/2T9QEcBsY2ZQdDaONLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvENe-002W0x-Vn; Mon, 21 Jun 2021 07:30:02 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvEJK-002U5z-Pv
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 07:25:37 +0000
Received: by mail-pf1-x434.google.com with SMTP id q192so6374678pfc.7
 for <linux-phy@lists.infradead.org>; Mon, 21 Jun 2021 00:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CDm4Fe12mdxq5DdIPspRuN5iFshZ9EbPE5vdu5Oxm04=;
 b=YZOmFhde+7WJEAJJcHhiE2RoCfiZ5+Xre9HWv6er8mZGYPFwx86A5pI5HvqQ2aIYJa
 mGQl507iONMiu2Njyt//5ToHzpgInx4NxnruZObcvkMMVEwmlvPwD1V4WVl+A4Mn9tpU
 Es22Hpp1Cbf2desjyFjngKNPKVp4vgR3lYPsE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CDm4Fe12mdxq5DdIPspRuN5iFshZ9EbPE5vdu5Oxm04=;
 b=IS/a/ivq7g4cwKP0D0sKrst8gx+tJL0EI1Jtulxqas620r9eFgzCnrxuHto3HUcUqQ
 jmmNHcS6W/Kcfm1DPpEHuX8L6txaWXz7GniccpDYVtseh+ROzsNIvA/WrAF3twJeJgIM
 8YfVfMo+9AvEOSKAWR8MKIAKP2/HNeBtCE9Yht2c5RmKm3O1ayxmEIwIVWkR5vOVDKyx
 8NkO0T3H5g/eQCX7V0u4viNriTvAlkpXs0xdXC1C8LlY3AUZol9tKrWc3zJexzUl0sY1
 bZOGJTfgw6CiIY7GRKPz46eRUt/ZuADDR6LaqOyFXq325v+ZPAJrDz7pi1DQrldgGwi8
 1FzA==
X-Gm-Message-State: AOAM530SPTBzuOAeUxwVWEqgo4+L23glr098oYHvYmgS9P7ZHzgprUOQ
 uD2dUWWYnRRNhsj02oHgpIOfLQ==
X-Google-Smtp-Source: ABdhPJxxKWIiejU1Buqyxc/58klL8XS905Uz5TdWMrAYfu8+TVmMNfyDjpogOLqWfZadZDexODr4cQ==
X-Received: by 2002:a65:63d2:: with SMTP id n18mr22683982pgv.447.1624260333918; 
 Mon, 21 Jun 2021 00:25:33 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a884:139:e97f:a55d:7f66])
 by smtp.gmail.com with ESMTPSA id
 21sm13951294pfh.103.2021.06.21.00.25.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 00:25:33 -0700 (PDT)
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
 Jagan Teki <jagan@amarulasolutions.com>, Rob Herring <robh+dt@kernel.org>
Subject: [RFC PATCH 8/9] arm64: dts: imx8mm: Add MIPI DSI pipeline
Date: Mon, 21 Jun 2021 12:54:23 +0530
Message-Id: <20210621072424.111733-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210621072424.111733-1-jagan@amarulasolutions.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_002534_908079_850E3424 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
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

Add MIPI DSI pipeline for i.MX8MM.

Video pipeline start from eLCDIF to MIPI DSI and respective
Panel or Bridge on the backend side.

Add support for it.

Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 59 +++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 5f68182ed3a6..bc09fce0f6a9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1047,6 +1047,65 @@ lcdif: lcdif@32e00000 {
 				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
 				power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_LCDIF>;
 				status = "disabled";
+
+				port {
+					lcdif_out_dsi: endpoint {
+						remote-endpoint = <&dsi_in_lcdif>;
+					};
+				};
+			};
+
+			dsi: dsi@32e10000 {
+				compatible = "fsl,imx8mm-sec-dsim";
+				reg = <0x32e10000 0xa0>;
+				clocks = <&clk IMX8MM_CLK_DSI_CORE>,
+					 <&clk IMX8MM_CLK_DSI_PHY_REF>;
+				clock-names = "bus", "phy_ref";
+				assigned-clocks = <&clk IMX8MM_CLK_DSI_CORE>,
+						  <&clk IMX8MM_VIDEO_PLL1_OUT>,
+						  <&clk IMX8MM_CLK_DSI_PHY_REF>;
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_266M>,
+							 <&clk IMX8MM_VIDEO_PLL1_BYPASS>,
+							 <&clk IMX8MM_VIDEO_PLL1_OUT>;
+				assigned-clock-rates = <266000000>, <594000000>, <27000000>;
+				interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&dphy>;
+				phy-names = "dphy";
+				power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DSI>;
+				samsung,burst-clock-frequency = <891000000>;
+				samsung,esc-clock-frequency = <54000000>;
+				samsung,pll-clock-frequency = <27000000>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						#address-cells = <1>;
+						#size-cells = <0>;
+
+						dsi_in_lcdif: endpoint@0 {
+							reg = <0>;
+							remote-endpoint = <&lcdif_out_dsi>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+					};
+				};
+			};
+
+			dphy: dphy@32e100a4 {
+				compatible = "fsl,imx8mm-sec-dsim-dphy";
+				reg = <0x32e100a4 0xbc>;
+				clocks = <&clk IMX8MM_CLK_DSI_PHY_REF>;
+				clock-names = "phy_ref";
+				#phy-cells = <0>;
+				power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DPHY>;
+				status = "disabled";
 			};
 
 			dispmix_blk_ctl: blk-ctl@32e28000 {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
