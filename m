Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2DADC4829D
	for <linux-phy@archiver.kernel.org>; Sat, 10 Feb 2024 20:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2xr5Ito46SAfIsC8hc1OeukkxOl2LaY2amAV/04orw=; b=O65aAZj+kJjIr6
	PWH/4AXqWOnsjr6pEpZixJmLWDRTRDBtZoIPph5tM4Sl0bg5MBiZv5LfLAHL6U2uer1lURpkESpGe
	erV/8JXDNTh1S51on2pPZtbzUSdexCcnUyoKv5gmkRpODXJ67f6PfQfPriXokMacqg2YFvkuVcuVT
	zLaS7bikyMMVs657+kpi/yrmFpuq75MB7X+ZUeztV/2BeidoZ2yBxMsottRQnIoJKYZ6LHTVSQmKY
	NC72lfYAF41MfpGgDtfa4kI5DmYjX51XFzO0Z3qPtSguCO5x2/mTDrwV6D4Qt+Kpu5FnMb/lPUf9Z
	1odzYAZ1n9jg8SZaQrFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYuF3-0000000205B-2EOJ;
	Sat, 10 Feb 2024 20:46:29 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYuEz-0000000202h-1Oia;
	Sat, 10 Feb 2024 20:46:26 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-206689895bfso1451459fac.1;
        Sat, 10 Feb 2024 12:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707597983; x=1708202783; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V1sqss5k7/14SKgqnTfmbe/yknHcrWFOpPFDxDP9yBY=;
        b=MuXboAfj0MsGeEgULzfLmEIxd+0qjxMTIzIoOgxGwoMY1EaL9EZtXL6wXT3FF9lZm2
         /WZZnSDquZMsW60xS9pIDrwxvndLOHKDsw6NTbTWRDN85htQfzwYN/79r5gIBCduCCqS
         Wxm5MXDByGgyyFyCGTPlLrcwJdRDnLkxq4jaYXXvI5+SlRuIHWzvvYFn6caTi8up7YWn
         +4Ttt64CvJxURn4hgmqpPkwzYoX2wc4rGaCEVNDaBrYuf7ykQ6T6gUgVDmId7vEGf8lZ
         8N7zJLP5kGMO88jeS4wKnOHhbAU/wJL0hkcYHvHL/5nLfomGHhhRJteI4uaqyoK70hVT
         994w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707597983; x=1708202783;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V1sqss5k7/14SKgqnTfmbe/yknHcrWFOpPFDxDP9yBY=;
        b=IS1uRJQRRZq7w85vnlQOa9d3hFbpwUaRvrPM1S28mmVvef2rOpaQ3NKKKkPWMqYaRy
         tMTkZmDKpoYzfktaqDcR8tUIc+iOLpIj6F+4sNxjP1g5BV6KrbwSWKRwQsJjjX2Kjjnj
         SlY+RCW2ZEWorjDUeaNd+xtiSJ0vysB79djoW6jE4YaFfN/cXeei2gEgHyl45pkR2YpR
         SH2UfSmhNHtf6o0onoh5EE5nuCnuNiQfOmPRnPdLzvlqhn72Q747tqiU6k8t+bc4aI5n
         puxD6Xk+78hW3GdZEHN6wIO3m/nztt26/EqiZk3uuAWFqPpV5jTuAWHMVUrNcRjx4NZD
         pPLA==
X-Gm-Message-State: AOJu0YzuRKC2V2CD2mEPTEZ+PTwa+pb2mNkLXUsjZ9G93sUQsecqrbX5
	AjhiZEdy0Z/nCYBS/QWuOF8BnIqdh4EldFuLy1s3QTMDaqJRgxrZ9lL6h7pX
X-Google-Smtp-Source: AGHT+IGtzGY1r/Ey6eDWiFV4anbDVmrioD8tnnWliCkcJhnnp7ieNqchj1cxlnfA4BmipPtwyVROUA==
X-Received: by 2002:a05:6870:a68b:b0:219:8bb1:dbe0 with SMTP id i11-20020a056870a68b00b002198bb1dbe0mr2701988oam.23.1707597983515;
        Sat, 10 Feb 2024 12:46:23 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUyMJ/CooF1QNuyXGTObFWMvuvkFEmuT//Kug+lC0gcKpihQmxaVZht2CMxcEHCpsOiF5guQFaasdcNG674yFTAYhweQoskYZFRS3Tl62Jk8sdffneBLibhAbqkI6MXFFP2RH/40rPDQ19iBRpZ6//pUGLk44/4InI0FWKmbUDfZMJprVgnw0hci6O35jDUOG1KE8HcUpq9hdRCaJqt4YqMc7Fqsfrt7JEPRNrz0dfpNyLIjIHis5+46b1gH3wqWw2+HP0IkMBTDSUDDg3ZCOYgciZXmRTB8emI50Mnm0QUSM5nOtT0H2l6GBVCmJSu+3dupL9iGOW+8pSqfrPxIOrOFvs586OH0Y7RnaqtbVT+U2ki2qcGmbs+q/v3em7lpGTas5cRM0vrkWHTVu8cQ6JAc1qVGJW7VbJuOyWVVIaOi/Mcm/4N6VUrczhEdH9fkl8+abypCDebn2Ov9b3rT41mYV1XVARDefkAJGORsJaWZFv5c2a2myi2eTLXNve8c7nQgZ20+m2ivRnQAgEk6u1Xg73lBghraDXUp3pOxMfJoicuzKOOI35VDnVrm31QO6SBezpUEmE2mvDDtwLLUz4rEFPw9v+F5J6pBjIlTLyPCA==
Received: from aford-System-Version.lan ([2601:447:d002:5be:27d7:3989:2897:88a7])
        by smtp.gmail.com with ESMTPSA id m20-20020a0cdb94000000b0068c9db26ae1sm2079526qvk.41.2024.02.10.12.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Feb 2024 12:46:22 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	aford@beaconembedded.com,
	Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
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
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V4 3/6] arm64: dts: imx8mp: add HDMI power-domains
Date: Sat, 10 Feb 2024 14:45:59 -0600
Message-ID: <20240210204606.11944-4-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240210204606.11944-1-aford173@gmail.com>
References: <20240210204606.11944-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240210_124625_459634_D3EAC3D0 
X-CRM114-Status: UNSURE (   9.24  )
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
---
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
