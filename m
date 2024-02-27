Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 458B1C54798
	for <linux-phy@archiver.kernel.org>; Tue, 27 Feb 2024 22:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJgKM5ce82ZTM9SiS9VGrSQy6Hn1AdQNuZrg1BSUeZk=; b=bPLeWNLrObg1Zd
	cbbSDQlPutZaYrxaZ+LZYY+sl0hQ399E4rBD6oqz0V8iyPz5ajOzN0b/MRpeeQk/dxxjxQjV5q6ix
	VuMOhqhnl8vOnzCIB/DkVWs4QRCMPhsfduYbD9zkxiST7NPlPzY79ImgPRJpYA0Umz37YSdX3PdrD
	Ft+JihmQ6TIG4g2JhEb9obci4iFDs5f5pdvUuWf71OrE5YvUYCwTWjC+9QbEvxrv3XgR1s1Jm3Z+A
	Zdo0I9yKHx2hhKrgYAl1MfaxsVc3Zh+6aWMYKEhaQMsqo6oY1Qipf1vKXqY1AjZqWHZ8PmYUdouI1
	+LULf8pPKTYubEgYNnBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf5Zg-000000070Zs-3WSV;
	Tue, 27 Feb 2024 22:05:20 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf5ZT-000000070Rr-3DDV;
	Tue, 27 Feb 2024 22:05:09 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-68f9e399c91so33261046d6.2;
        Tue, 27 Feb 2024 14:05:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709071506; x=1709676306; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zmbbJGMEJkVi0DIu9K/lMBZ7/vUErHSNsjKRRkfuNd4=;
        b=bEsYCuoXSGucLpSNmPIDWIkQrYuUJAd0N2YLeAn2Ee5v4we9y9Fro3SLnQKRq3TmCn
         toqBcrDSKAIyQbjB/wSO+y2VrBufvQYQ9F1rBaz3BEl1UeiBahQ5hoGwff9XbaRGXLwx
         GLly3zjgcj7RA61EqEanS1MJnZJwktBY4j35ddrwRLZKN7SjKEHmAO75VN9pqOPNLmDI
         4hkNPhDUFt8gUTcycGEd8IvVdSqU3/5UzFWPGeJ7IiGHQ+bWaB1h2/3nS+9lmJUoHac3
         blRh9dv9zwaWQgAp87ltxWd8dh3kSHis9/WrB6PXQ4htrzkZj0EcJKdflIsrHsYsfOUf
         NYAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709071506; x=1709676306;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zmbbJGMEJkVi0DIu9K/lMBZ7/vUErHSNsjKRRkfuNd4=;
        b=AOgSrNSad1S5ig0M50U7jwJtfBinr8e1+uRCbH6TyJeHuFU0+RxyA2J+wx4uVfpfN0
         ppTBf6AX607NVMt27ZV1S/Zm1CUjm0kzwlD3/sJ79u94dvE/O40EwlR/XJIDcbZ5FqfK
         fa6jPvT3F227wEomhIsAui8udt/sTJuZT5wENekDyLNpHMPZ0r7c2NDS+M+7JDb3a4kz
         VuaBD/ee51ZKrWCXGrEUbZTost/GwRgXoM09EaS38B2ts6KXHNbBx0ksij5gKuGUotZ4
         G1AhXV9iYKuzGlp5w+EAH3NzOl5toV/mZi8uCkok3Pzn+5rty+KZz8ieHKGiWKx9dWtu
         v77A==
X-Forwarded-Encrypted: i=1; AJvYcCWb8pBxvaY5MZxXFsNB0htB6mJBkw/7fR5B6TCtlKLYP3YADYQyMOua3Bk1NeUUTRLE+E2J94zLd4neXBCN2kqzYXWMOoDj8RsCo4d+jQ==
X-Gm-Message-State: AOJu0YwQnOYvNqd63X/afuKDaV729ATCWd0qwIKZ9N1WYLBlfQsF7go+
	E2QV1hoStpYwGI8KcDlA2gzynOKB0tJIVssCI1XmzFV6YFUXfc6Y7A6V9fbtWpxafYv+
X-Google-Smtp-Source: AGHT+IE6i0LWrYJlOlKNYdpd9Wfhikyo/roVvLACICkT0f6i3xk6KKObf+gk9jGM3IINovDqDgP+mg==
X-Received: by 2002:a0c:cd07:0:b0:68f:d594:52d2 with SMTP id b7-20020a0ccd07000000b0068fd59452d2mr3267671qvm.0.1709071505915;
        Tue, 27 Feb 2024 14:05:05 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:9ee3:b2ab:6ca:180d])
        by smtp.gmail.com with ESMTPSA id c12-20020a0ce14c000000b0068fc55bcf6asm4569556qvl.119.2024.02.27.14.05.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 14:05:05 -0800 (PST)
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
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH V7 3/6] arm64: dts: imx8mp: add HDMI power-domains
Date: Tue, 27 Feb 2024 16:04:37 -0600
Message-ID: <20240227220444.77566-4-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240227220444.77566-1-aford173@gmail.com>
References: <20240227220444.77566-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_140507_818947_C49848DD 
X-CRM114-Status: UNSURE (   9.47  )
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
V6:  No Change

V5:  No Change

V4:  No Change

V3:  The hdmi_blk_ctrl was in the wrong place, so move it to AIPS4.
     power-domains@ fixed to read power-domain@

V2:  Add missing power-domains hdcp and hrv
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 38 +++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index bfc5c81a5bd4..c9bcb6641de7 100644
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
