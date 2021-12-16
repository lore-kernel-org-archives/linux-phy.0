Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B81AFC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 16 Dec 2021 16:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oGMQExJfSayOH4qRgUEdttOanWp5DoQf6KSAqnVfSF8=; b=zJ/ZHglZc2BlFs
	l5TURmGcXIjO4+qHg306QBdSrWlqzYEeNGIVyESQda3fDwjHMHkdFTWAlF7khW9TR2ENlp6P2ahf4
	e/JVmJQl3QdCLExMOwI9MIcstgxQm2qS6ZXG7xNwPPf8piX6pvWQ6KquPj3W9JQOJ/QOjA/99LtD4
	pHlA11k0YTuWcibrq699hFhEQd10L2x1JsiYbRSFje6QuqpyraOXWL4QfdyaL8Cg82Sj7KhpbNskn
	feeIpDya3jKA52u/ZyS2x1W7f7orahbcapUUnsiTDgMBG+UBDWiJPCmVixQn06lVSUu8Smvmo2BER
	Jw7enCYTdg8ZaiJl+Ysg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxtLt-006Vvt-Vb; Thu, 16 Dec 2021 16:11:29 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxtGW-006TSg-UP; Thu, 16 Dec 2021 16:05:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1639670757; x=1671206757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cONz2nOUtRuhs7JANm+jEmUdj18wu7MXLwm+z6MjMLs=;
 b=gH+azwNn5raHvuXMhmmsW7N1CcH30JM452NxFYjNKcaPw2TLlZ4lfbSE
 mxoGW5l7AoMPEE88sWZsEpsl+HdvU7juXw35SwO+6nhU4dLla+RKBaroC
 MrpwTN8Idty23/B26BAndexhxuCZfphabDlgrzdiB+gEeEE1VGn7S55ag
 0xYgXcSjy5pK59gYCWnfr2Ndllvd7ZyFJiG4kXPLVHumWWAPB6NiCXopO
 azgUDMgTMQ9FDCtEXaFCGDiXtSSR9cHPJKiov5pSyrwrA3UHVcuxjJrDK
 WmFwGeMbDXsieL4SjW3CeS49Gavp+s3OL1lF7JjeonaTkMFsHDo4hp45B A==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; d="scan'208";a="21103123"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 16 Dec 2021 17:05:50 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Thu, 16 Dec 2021 17:05:50 +0100
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Thu, 16 Dec 2021 17:05:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1639670750; x=1671206750;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cONz2nOUtRuhs7JANm+jEmUdj18wu7MXLwm+z6MjMLs=;
 b=kEkoPAaiwWtLDz7ayQKA6MTMY4Pjy2JaQu6WAj1GMCvTwZamvQqEFn8q
 zO7DmdYVdzWsbb7kAOfeGnUECmDDfDuaGEpxWxia+qEyGtYLoD1d5NVnb
 n0blui9/RnXB/C6ZgoXN/4Qim8J5bj4WCpl3iluvBEgGOfRZajfzdvOck
 53Yb85qqe4uyG1XgyoWpustYxjQZ9qEreDo4IuD1nvopddSCJ26lx7t54
 PW5mfFax3IyyR3eXzswersF+WO7kehwXuGrELG2okFbVrdUe8F8SCSXDm
 HHqTVk6PE3RtauordAQdMjIcqV9zaB62jEBmU4m/1Vn/oQIF+uAjX9v0F w==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; d="scan'208";a="21103122"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 16 Dec 2021 17:05:50 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 3F909280075;
 Thu, 16 Dec 2021 17:05:50 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/3] arm64: dts: imx8mp: Add memory for USB3 glue layer to
 usb3_phy nodes
Date: Thu, 16 Dec 2021 17:05:41 +0100
Message-Id: <20211216160541.544974-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
References: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_080557_401649_A9254436 
X-CRM114-Status: GOOD (  12.18  )
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

The USB3 glue layer has 2 areas in the register set, see RM Rev.1
section 11.2.5.2.1 GLUE_usb3 memory map:
* USB3 control/status
* PHY control/status

Provide the memory area to the usb3_phy nodes for accessing the features
in the USB3 control area.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 6b840c05dd77..4958142da1e4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -910,7 +910,8 @@ ddr-pmu@3d800000 {
 
 		usb3_phy0: usb-phy@381f0040 {
 			compatible = "fsl,imx8mp-usb-phy";
-			reg = <0x381f0040 0x40>;
+			reg = <0x381f0040 0x40>,
+			      <0x381f0000 0x20>;
 			clocks = <&clk IMX8MP_CLK_USB_PHY_ROOT>;
 			clock-names = "phy";
 			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
@@ -952,7 +953,8 @@ usb_dwc3_0: usb@38100000 {
 
 		usb3_phy1: usb-phy@382f0040 {
 			compatible = "fsl,imx8mp-usb-phy";
-			reg = <0x382f0040 0x40>;
+			reg = <0x382f0040 0x40>,
+			      <0x382f0000 0x20>;
 			clocks = <&clk IMX8MP_CLK_USB_PHY_ROOT>;
 			clock-names = "phy";
 			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
