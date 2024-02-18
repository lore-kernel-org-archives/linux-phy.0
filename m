Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B80FC54764
	for <linux-phy@archiver.kernel.org>; Sun, 18 Feb 2024 04:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZhl4esZqbOcN/zA6dUbMPwZ1Bx4m6yeAmzvoGVQ1mc=; b=UW4r7rppHMdVnm
	vT5cmHgLPS4mibndtRzu1hbOxapQvqyVHq7buzArualUUpmhUWijqJxVGQSr7CRSnEhuo0uSesDDt
	cotxNhFaYiJEKDtVZsoVFWKjaifIXq64NA7iGBQ/nZRwJNhy4Aa9S2WIlbCZdag0SlWHOu1HhMAD2
	LkIsWzb3pIAAMAgZi0xwnncEAJ2gKDCxU0KBDjAmLdOz3SPohDxHHX3Rhd0TRDlhlg/JGrV9fVYfE
	gR/mOnfpLyjoK/FVvu50jwRSPRKCuJDNBYMDldxM/MWSHGxG5R76LdIEXJEZGm8wlf+zXKlU9tSOp
	20PRNNLdgYBAA1TuaACw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbYcI-00000006xNb-0lOE;
	Sun, 18 Feb 2024 04:17:26 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbYc3-00000006xEu-0m0k;
	Sun, 18 Feb 2024 04:17:12 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-783045e88a6so167373385a.0;
        Sat, 17 Feb 2024 20:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708229829; x=1708834629; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7TgNxlY3gvRRH7nZvWiloXYULfJ7EBapssXw7kKBQCg=;
        b=FDE7b33Om9UqviebpsS2bzzdeO611DjST6MrrX6HAowBlFiyP1iwyH04gQsJWnyOoC
         i6ceAFsABsCaS2mwLxYZkgPUUkICnjMIYe1ENPbWVdNsTLSiyl6yUagQeBhjXeqSLscd
         9KEc8yqg1MhRS+5wVRwZbFpd1pdFsryh7t1p6kUj7aHhJ5nPiqtEvqrz3QHRLJoa7/J1
         bz3KQq3nwy5dfOssi0RuFYGI1Kn/xpPt8/DVMfsNfKgiu3EN0FeFdSwg+Sy8QSXVsRc0
         cyh6Jss5GdNnJLSY3rpOCx9lZjvUtY4c5Anx/HYGXH+UB3NO13dCaNr+GC3MkAfld1jy
         GkeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708229829; x=1708834629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7TgNxlY3gvRRH7nZvWiloXYULfJ7EBapssXw7kKBQCg=;
        b=evwqSt4HXllv0Dqs1ruiwLL5v7zLPdUR+p5vq/GHMZeeveroNhnymbbLpAdKbKw60Z
         BrPHdPZkY1tu0c5Q0AlP4cbeyL9EyWGWX+eE/Mx8kJvFhFGir6ESktF3eqkZVDghhJNf
         1nvfhqKyuqMvpNabSXlvO3e+K31JoXhAoteOJV/pzaYYTzcsCWKCoeOtXQuINByKVN8l
         ad2rjZ5lEXxZarTj3beM2gY8m1fMoxwiBlVNZ5VDbvcBRgA5LJdGGmbL73IJuM83vRAg
         ibmcEJadk8Yku0q59NvzFWKDocXAG5y4fGemWr82kPxWYl4JnzScZg4yi10lgB7NZnQE
         gDAA==
X-Forwarded-Encrypted: i=1; AJvYcCUrLn0zwDylcx9DvONLjN44Fh/6SGlmPPjS0vBn2BRZS7XY0w+aQXMCZCJoiTpcJgZxiQ20u4kS7qnHs6fBI80prmI131Q0dLDjDxdJ1A==
X-Gm-Message-State: AOJu0YzhZftg/7jbnf36aKM9mhA8AzHGfUENj+qhs/3E3wNm9gXjfAnb
	2b4AuKPWQ9witmZWnJcb8CgCb8JSikLui3XJKffXjp5qNJo4DR9i+z4lwCy0DFUwOg==
X-Google-Smtp-Source: AGHT+IE3LTX6FdxcmywHLwce1/DIOjULt90UZD1jHNFOrPnlFwig8FEHTUySRtMSIIUiW/Ulb/hCig==
X-Received: by 2002:a0c:ca12:0:b0:68f:6be:9f94 with SMTP id c18-20020a0cca12000000b0068f06be9f94mr2698300qvk.12.1708229829221;
        Sat, 17 Feb 2024 20:17:09 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:dde9:2f2d:61e4:7364])
        by smtp.gmail.com with ESMTPSA id or31-20020a056214469f00b0068eeebc4656sm1713621qvb.139.2024.02.17.20.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Feb 2024 20:17:08 -0800 (PST)
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
Subject: [PATCH V5 4/6] arm64: dts: imx8mp: add HDMI irqsteer
Date: Sat, 17 Feb 2024 22:16:42 -0600
Message-ID: <20240218041649.1209173-5-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240218041649.1209173-1-aford173@gmail.com>
References: <20240218041649.1209173-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_201711_264761_A649610C 
X-CRM114-Status: UNSURE (   9.43  )
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

The HDMI irqsteer is a secondary interrupt controller within the HDMI
subsystem that maps all HDMI peripheral IRQs into a single upstream
IRQ line.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Adam Ford <aford173@gmail.com>
Tested-by: Marek Vasut <marex@denx.de>
Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
V5:  Increase size to 4KB to match the ref manual

V2:  Add my (Adam) s-o-b and re-order position under AIPS4
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 0730d4cf9bc4..cbb15ded4a74 100644
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
