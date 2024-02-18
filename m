Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC81CC48BC4
	for <linux-phy@archiver.kernel.org>; Sun, 18 Feb 2024 04:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEsf45+8UgB+D26WL+qnenHkCDawf1/XsySxNOwtBS4=; b=EVdKXHNM0MXF5u
	7qbwg1/RRfABuEsJhVGVPRDw5xlN9+VdVznUK9JAR/v0kE4jKyEJk3APBbvlet/yAfqXShQ49Bc1q
	eedLoYzTuyNILQ5M+jFu73x5eoctdzZKRcZQJDwHrURWHswmCABm8UDioq4WMExPGwEYFkVl8oHW4
	1EPfDTzzEZ76JU5Zg56MluajLmyUS9qpyNcanN2BnZl2HVB/7nQNOJE60APB8hkWN3o5B34UbwwJa
	s+mVT0szl5lZ5/YmXRGNhMDJPxpD+i++USeobuFySEaWNa6Aio7Mym5FhjlkILBqFLtH/q7IcrdKy
	kx9mFDGzlvDuB9z8e8Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbYcB-00000006xKI-28JU;
	Sun, 18 Feb 2024 04:17:19 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbYc0-00000006xEA-302h;
	Sun, 18 Feb 2024 04:17:10 +0000
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-68f01133850so16678236d6.3;
        Sat, 17 Feb 2024 20:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708229827; x=1708834627; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7kmAGwgibsE40CKblzU9xPszVIKszLetJVWs39LtLs4=;
        b=UT7Y3SU9bBSQMlK+qm0BPQLs/FXJvW2pXtcxOWrEp2cMHOw9j/HFeuYCoo7mL4uMUY
         5X7bwBeZiWyBtAt39Wcnrg7FmkMjD828bxo776nuZ3Yw9R0th95H99f3meCgUKHU9Jrn
         j2104AqkTxAZxugM+M4gt0NfyhMDGo+sgKbksaDmqwie2US/yxj+0Zs6vLAhGnrX40Hj
         5MddnXcxHw9g1tUA8XpMSGY9aqEoOI6q48fDrXa84diO7U1dHt87zIXu7fFEP5YZcz8C
         BoKA7pgiXxETvy9N2CEFiL+14+aVsoy9D7wXgkNcMvuCt1Jmy17SAzaKRYSCy6SYi0LF
         FYgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708229827; x=1708834627;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7kmAGwgibsE40CKblzU9xPszVIKszLetJVWs39LtLs4=;
        b=XH4VIFXh1+UTOFx7y8D5XxG1wg6vNDA7Zgw2yzgyzYsSfRZNpp0R9uWFJ4/EFuKxlH
         U7xLwyQKIC6wqbk6W1SP6ABFoNqtZ7zssIIGPWrLA5j0OkEzxSz6o4vkYofR6XfEDYJ7
         fDQTZtv6DggBt6vmFHPrYxNuKN2i9Jcs57LGV76u1eO1lw3rLQUZ9aq6BbKVIuhDy6wB
         F3NbnyCGTLNWB3gxqQMZQcWiwuYCXmInTn83mwBjtOrSUEKEiGUIwf5xAm07YSUDS6Sh
         tgg+ceZyS7Fs0Ntn9A2LGKBlY8q/gmP9no3ZZUoVWv8MtNspj9KdTxWH4j5YVDVzUdtB
         arPg==
X-Forwarded-Encrypted: i=1; AJvYcCWWCqthyb3RC+2vwBfPeqZoakh0hSTidYjMsO42F8alw0Bx4pIWqxSHzP8zyUCxkKU0myDh+hR5dco4hTNXwy7Ynh/uW+LSMUokpUeSdQ==
X-Gm-Message-State: AOJu0YyJebuBmwBpednAxwZ0Ds6qKllsKvnwgXMybPKD7VGV+AYU7d7w
	X1a6+RC5Oc53jl0yWHmWkYd/PyCQDCR7TakRKbM623XdvTMLXhKnkLZD98FZT7RAyg==
X-Google-Smtp-Source: AGHT+IHf6ee0rDa6Ed2eZUrQnMvT93H3rJzSArxd7p1/1rUC8eiZBBrZK63LdjUZwJ1bDg1j0GFceg==
X-Received: by 2002:ad4:5bc7:0:b0:68f:390c:270e with SMTP id t7-20020ad45bc7000000b0068f390c270emr7016310qvt.22.1708229826877;
        Sat, 17 Feb 2024 20:17:06 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:dde9:2f2d:61e4:7364])
        by smtp.gmail.com with ESMTPSA id or31-20020a056214469f00b0068eeebc4656sm1713621qvb.139.2024.02.17.20.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Feb 2024 20:17:06 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com,
	Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Marek Vasut <marex@denx.de>,
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
Subject: [PATCH V5 3/6] arm64: dts: imx8mp: add HDMI power-domains
Date: Sat, 17 Feb 2024 22:16:41 -0600
Message-ID: <20240218041649.1209173-4-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240218041649.1209173-1-aford173@gmail.com>
References: <20240218041649.1209173-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_201708_844625_13561361 
X-CRM114-Status: UNSURE (   8.89  )
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

From: Lucas Stach <l.stach@pengutronix.de>

This adds the PGC and HDMI blk-ctrl nodes providing power control for
HDMI subsystem peripherals.

Signed-off-by: Adam Ford <aford173@gmail.com>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Marek Vasut <marex@denx.de>
Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
V5:  No Change

V4:  No Change

V3:  The hdmi_blk_ctrl was in the wrong place, so move it to AIPS4.
     power-domains@ fixed to read power-domain@

V2:  Add missing power-domains hdcp and hrv
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 38 +++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9ab9c057f41e..0730d4cf9bc4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -836,6 +836,23 @@ pgc_mediamix: power-domain@10 {
 							 <&clk IMX8MP_CLK_MEDIA_APB_ROOT>;
 					};
 
+					pgc_hdmimix: power-domain@14 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_HDMIMIX>;
+						clocks = <&clk IMX8MP_CLK_HDMI_ROOT>,
+							 <&clk IMX8MP_CLK_HDMI_APB>;
+						assigned-clocks = <&clk IMX8MP_CLK_HDMI_AXI>,
+								  <&clk IMX8MP_CLK_HDMI_APB>;
+						assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>,
+									 <&clk IMX8MP_SYS_PLL1_133M>;
+						assigned-clock-rates = <500000000>, <133000000>;
+					};
+
+					pgc_hdmi_phy: power-domain@15 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MP_POWER_DOMAIN_HDMI_PHY>;
+					};
+
 					pgc_mipi_phy2: power-domain@16 {
 						#power-domain-cells = <0>;
 						reg = <IMX8MP_POWER_DOMAIN_MIPI_PHY2>;
@@ -1889,6 +1906,27 @@ hsio_blk_ctrl: blk-ctrl@32f10000 {
 				#power-domain-cells = <1>;
 				#clock-cells = <0>;
 			};
+
+			hdmi_blk_ctrl: blk-ctrl@32fc0000 {
+				compatible = "fsl,imx8mp-hdmi-blk-ctrl", "syscon";
+				reg = <0x32fc0000 0x1000>;
+				clocks = <&clk IMX8MP_CLK_HDMI_APB>,
+					 <&clk IMX8MP_CLK_HDMI_ROOT>,
+					 <&clk IMX8MP_CLK_HDMI_REF_266M>,
+					 <&clk IMX8MP_CLK_HDMI_24M>,
+					 <&clk IMX8MP_CLK_HDMI_FDCC_TST>;
+				clock-names = "apb", "axi", "ref_266m", "ref_24m", "fdcc";
+				power-domains = <&pgc_hdmimix>, <&pgc_hdmimix>,
+						<&pgc_hdmimix>, <&pgc_hdmimix>,
+						<&pgc_hdmimix>, <&pgc_hdmimix>,
+						<&pgc_hdmimix>, <&pgc_hdmi_phy>,
+						<&pgc_hdmimix>, <&pgc_hdmimix>;
+				power-domain-names = "bus", "irqsteer", "lcdif",
+						     "pai", "pvi", "trng",
+						     "hdmi-tx", "hdmi-tx-phy",
+						     "hdcp", "hrv";
+				#power-domain-cells = <1>;
+			};
 		};
 
 		pcie: pcie@33800000 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
