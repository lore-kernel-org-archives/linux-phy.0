Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6766C48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:29:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7F30E60E08
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:29:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7F30E60E08
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GyX+EHVMDWrj5epCiQpqWX4P+e+eHXkqAXSDIkAjuzY=; b=GAxdNUNrGfRu8u
	sy+7skKgvrA3YdVIeQB98pSDA45dvlBHAYurilVX6mSc3OGaEKgZsHRqIsqULbB9MsLHjkjoU9cJY
	WQfy0foqJCcVGcFhnrQaFjNuKj9FGQLQo6iVBL1DAclYnqA+TG4wUD1V/wxxLTkQt11NCozULSGth
	XmA6Mtgxss7qXlBgJPjPa0KzBRosp1rtalNTJcb4G6yqYRLu8dvDZOplsM+qBwx/Wk8/eplkgvQ0c
	gRWurzg+UgTJ2pn5mfnGPbOp/IQh5af03UW4UCvCoyxR9FQlzI72FsW0ecF2iJVhOV88vyUbN2LnI
	eLg41vWNaqVnArcCrZrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvEMr-002Ve1-MY; Mon, 21 Jun 2021 07:29:13 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvEJF-002U2h-1q
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 07:25:30 +0000
Received: by mail-pf1-x42c.google.com with SMTP id g192so5255649pfb.6
 for <linux-phy@lists.infradead.org>; Mon, 21 Jun 2021 00:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YJ2BOKG4ZuRZzTmg7DTj1V1Pqbxgkeavbg3ssOxVb6g=;
 b=fX1ZJt96WAd4vRX3HAW5JB6IFaEpc6ds6BifeNqKd67P4GhSIaHwUwMKGYfTQubqaO
 rYNb3xKyLfMQbmIYkKZ6ZLncSewZGnbevs5wAd69cCJ/1og7oi2rD6xdDjOmjmod6RJk
 tKJXDL3Bt7X1qd46HFdU0XHLwqlgoUqlK4qD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YJ2BOKG4ZuRZzTmg7DTj1V1Pqbxgkeavbg3ssOxVb6g=;
 b=RiCZYdpy8Ou1NouPIAfu3aOuoyRJN9nuzD+O5RZQ3ybjMAbZvNlDRr5uvfR/tOSn+R
 jWmm0LuEsPW2OqGM+jGA2cV4p/3yw4/Kuodl4oZcA59L1nbt17sRp0uaaN5uj6ULO9FA
 jgCZFyCR6VBbIsgcrq0pyYVEOzGir00vcE4MwD8TyurDFyTa3wU7LZGu+zXvDRUPWwby
 2YQEPgr8sjTUAiJ5cR54HWbwyfFxpEdL9ds/pjgRwaPQvAF4rfj5A+KC7obsiUl1wd8Z
 Ols3hHzsGuQPGFSeRzzZUxlkeh68L9AhtuUlYerY2ubkqAHT8OjUbq51AzOUx892ySVw
 Va4A==
X-Gm-Message-State: AOAM5333JX2Nnf5oP0cvH+X1g8AZWoWFlsAeeo2rK8KkEYHN8Jz8umJN
 zcOhEhgdfJxBgifyMGELL5SQQrAbilJ6iA==
X-Google-Smtp-Source: ABdhPJxO5ope055OQIE0W7ZNCvoDUKS4owJmThC4DHHcVxxsn4DRsp0AP4Iw8Hajh4T0x7B8NxDxow==
X-Received: by 2002:aa7:8615:0:b029:303:4428:9dbe with SMTP id
 p21-20020aa786150000b029030344289dbemr4319621pfn.17.1624260327279; 
 Mon, 21 Jun 2021 00:25:27 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a884:139:e97f:a55d:7f66])
 by smtp.gmail.com with ESMTPSA id
 21sm13951294pfh.103.2021.06.21.00.25.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 00:25:26 -0700 (PDT)
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
Subject: [RFC PATCH 7/9] arm64: dts: imx8mm: Add eLCDIF node support
Date: Mon, 21 Jun 2021 12:54:22 +0530
Message-Id: <20210621072424.111733-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210621072424.111733-1-jagan@amarulasolutions.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_002529_172166_04D13948 
X-CRM114-Status: UNSURE (   9.39  )
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

Add eLCDIF controller node for i.MX8MM.

Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index fe5485ee9419..5f68182ed3a6 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1030,6 +1030,25 @@ aips4: bus@32c00000 {
 			#size-cells = <1>;
 			ranges = <0x32c00000 0x32c00000 0x400000>;
 
+			lcdif: lcdif@32e00000 {
+				compatible = "fsl,imx8mm-lcdif", "fsl,imx6sx-lcdif";
+				reg = <0x32e00000 0x10000>;
+				clocks = <&clk IMX8MM_CLK_LCDIF_PIXEL>,
+					 <&clk IMX8MM_CLK_DISP_AXI_ROOT>,
+					 <&clk IMX8MM_CLK_DISP_APB_ROOT>;
+				clock-names = "pix", "disp_axi", "axi";
+				assigned-clocks = <&clk IMX8MM_CLK_LCDIF_PIXEL>,
+						  <&clk IMX8MM_CLK_DISP_AXI>,
+						  <&clk IMX8MM_CLK_DISP_APB>;
+				assigned-clock-parents = <&clk IMX8MM_VIDEO_PLL1_OUT>,
+							 <&clk IMX8MM_SYS_PLL2_1000M>,
+							 <&clk IMX8MM_SYS_PLL1_800M>;
+				assigned-clock-rate = <594000000>, <500000000>, <200000000>;
+				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+				power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_LCDIF>;
+				status = "disabled";
+			};
+
 			dispmix_blk_ctl: blk-ctl@32e28000 {
 				compatible = "fsl,imx8mm-dispmix-blk-ctl", "syscon";
 				reg = <0x32e28000 0x100>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
