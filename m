Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BA97C54E4A
	for <linux-phy@archiver.kernel.org>; Tue, 27 Feb 2024 22:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0hu+JTvONtqYYLnpVRRrMQIjWq3inuXgWgP/5xs7JQ=; b=QW+7c+9ibVW1Dl
	PQjCXCZclx36RYPLT6dS0jm0jPyTx/6dTxp+nf12uONp4tXUJ/ez+EC4cvvj5/RdOIBsw6JZOlV4v
	SrTxWOduCx+BgKL/ABxy4QAaubPQ48GjM/CQK3xUgCOLQGUC6ulgxtxIMNboxPAft2WH7Oh/oVL4i
	/B8a5Om7EVJ43cYIGIpViiuuADzocKo8dqM2q5kdv5bi82pIF37YsNip2j7YcA9khPVgBakRSVyXu
	dNnZJw8vyPmwz/SeJjmHBJaIzrJEsZydIrgV6iNw86L8Hmft6aBperltSm6lKbESumqNhbyk9BxaL
	fpM67i+xLVKqLQHHElNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf5Zj-000000070bg-2yey;
	Tue, 27 Feb 2024 22:05:23 +0000
Received: from mail-oo1-xc32.google.com ([2607:f8b0:4864:20::c32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf5ZW-000000070T0-0TgI;
	Tue, 27 Feb 2024 22:05:11 +0000
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-5a0a9736535so743236eaf.3;
        Tue, 27 Feb 2024 14:05:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709071508; x=1709676308; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aFej3XRK1im9Jtb1YXeIJeL5LA98qLbzr4AabBMlz7o=;
        b=jthMvYG5OA2Zsd5cwUsRlYoiFkv8viEuuuTXaHrqi9aGWb9hftHbyKYBB+KP3s9Tzw
         IApAZBc9OwviAqX7DAzszpy//zs05vqg1lZyGyuwDeeKDIpk7JiOZJDsIIkY85GxLAiM
         lnjKP3agTyiAhQX33R7/5SFY0GJGInaVnfns1payYpukrOLGVT3Ii/Gak3OMMMKCrGFS
         O8G8TSUghyXD25u3HR/J9BOsGcfNve3DVxW2pUTYsAv4RAULIXh4wD76c64aMYzpeVPY
         pplEctZz5AearG10tS3HUdmK6U1raYVDR3mQp5UI47RK+YZGKSRHE6FIlMalDZHs7VxC
         YO/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709071508; x=1709676308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aFej3XRK1im9Jtb1YXeIJeL5LA98qLbzr4AabBMlz7o=;
        b=hhUAift5RCNxqFZ8drBRKQqHVUix2kR2B3YNYkZCFmZ9E0SZNeVzmbi4UoH8oT4AjM
         j7CFxDiUCCaVz13wELzcsSsBr9tWkoUJHZ0csb8N0EeHZjP6ZF4izuigcyrdsPJxHU7a
         330ERoR1+vRN5osr31DZhf+bHslQrbKNqh7xTmpPQsZ+JfNVvv1Uc0MONlSgAAKPFjAl
         VNXW+hqZgBDTbptPuS6rISf+M9aI6v8gzN2SfU+KmS77pwqzCY1HwNtN/bpMSoiuN15D
         EwKYVlt9+7OhdypprBbaPUqjp21PMhHSiJ7bat6/M756Nk1/gXBQ2snjTooij3C7NNwJ
         V16g==
X-Forwarded-Encrypted: i=1; AJvYcCWxyNtD8tJwoZrRSkh3Qt/RM2zhKY/P+9Lk17YmgRzOUDKNuBGkggvIuK7lHjQqucFyWMXSTSX3zct2zRZIY7yj+YmF1v/o33AcGuPhZw==
X-Gm-Message-State: AOJu0YwlJS/uVAG/Fo9ETQV6xm2/Vutns9IsPeoxCwCE0wgG9fN6mOW7
	hFLs/T88e5Auz6JTUukhE/rYSgDPZhIH1QzayrnpNq5d89d06KhavbzshJI5P3X8ECkS
X-Google-Smtp-Source: AGHT+IGWgaFRlZ2IfQsw+GCY/j+lRL8LaS2tBzQxUKTZJT76SVV2NR6kEFyuRlrSS1jgmD6sVOd+Rw==
X-Received: by 2002:a05:6358:94a2:b0:17b:521f:b2ae with SMTP id i34-20020a05635894a200b0017b521fb2aemr15918125rwb.14.1709071508117;
        Tue, 27 Feb 2024 14:05:08 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:9ee3:b2ab:6ca:180d])
        by smtp.gmail.com with ESMTPSA id c12-20020a0ce14c000000b0068fc55bcf6asm4569556qvl.119.2024.02.27.14.05.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 14:05:07 -0800 (PST)
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
Subject: [PATCH V7 4/6] arm64: dts: imx8mp: add HDMI irqsteer
Date: Tue, 27 Feb 2024 16:04:38 -0600
Message-ID: <20240227220444.77566-5-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240227220444.77566-1-aford173@gmail.com>
References: <20240227220444.77566-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_140510_190096_D5E0A918 
X-CRM114-Status: GOOD (  10.01  )
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

The HDMI irqsteer is a secondary interrupt controller within the HDMI
subsystem that maps all HDMI peripheral IRQs into a single upstream
IRQ line.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Adam Ford <aford173@gmail.com>
Tested-by: Marek Vasut <marex@denx.de>
Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
V6:  No Change

V5:  Increase size to 4KB to match the ref manual

V2:  Add my (Adam) s-o-b and re-order position under AIPS4
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index c9bcb6641de7..18bfa7d9aa7f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1927,6 +1927,19 @@ hdmi_blk_ctrl: blk-ctrl@32fc0000 {
 						     "hdcp", "hrv";
 				#power-domain-cells = <1>;
 			};
+
+			irqsteer_hdmi: interrupt-controller@32fc2000 {
+				compatible = "fsl,imx-irqsteer";
+				reg = <0x32fc2000 0x1000>;
+				interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				fsl,channel = <1>;
+				fsl,num-irqs = <64>;
+				clocks = <&clk IMX8MP_CLK_HDMI_APB>;
+				clock-names = "ipg";
+				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_IRQSTEER>;
+			};
 		};
 
 		pcie: pcie@33800000 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
