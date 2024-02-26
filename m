Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4CF9C5478C
	for <linux-phy@archiver.kernel.org>; Mon, 26 Feb 2024 23:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJgKM5ce82ZTM9SiS9VGrSQy6Hn1AdQNuZrg1BSUeZk=; b=IHcCioyXUBFvSg
	EWpZ94M1cPt85P5NniDU/SH6T2sG/wa+54cB35se8WfQx3zPqLWX1Mo8swppKhLbbrXBjAJR0o1rs
	wjTG6MWnE2YVh7xnq1rU9jAC99T8sPL7XVKJd1SiTu0sOl5lJ6I6BrbqE4TrbRNrrwy8sIuUgWhEr
	VG87yhU4Kji5iLTzgSUoV/dftn0mLyZF6ljJrXa0jD+Ww4NAsq4zMkNh9kXby24NeDFangLRdg6Kr
	FO43UdMclwAFdlQGGKfDEzeZoJhJsjSc9KJ72hXNQTEzFCZKM1Xk89MPHDVmIdq8FlM6l2FU7p3eC
	hcncBBublsPlUrGPqYKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rekfr-000000030PC-1ubQ;
	Mon, 26 Feb 2024 23:46:19 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rekfJ-000000030A6-00pM;
	Mon, 26 Feb 2024 23:45:46 +0000
Received: by mail-io1-xd2a.google.com with SMTP id ca18e2360f4ac-7c48e13e0d7so214255739f.1;
        Mon, 26 Feb 2024 15:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708991143; x=1709595943; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zmbbJGMEJkVi0DIu9K/lMBZ7/vUErHSNsjKRRkfuNd4=;
        b=VeV6qRCdKlP+JNhqCllOss8BhFqTQfhCAjwrJBMAUp+41Qa0R3u3Y2ZxITvlzQdnh4
         WvdIHG7hjcUL0wpDQJWHpxHI3Ow3ayOqQcnyIeDtim/LIefv+v+Hd7kEt6dqtZ7aAFY3
         HwrHU/FzbVtHmTnyAW5t+ZQkJk+hJkqDpvqIekgQD3hvBDOHQQepvhaWFH8w0AqG3IBk
         0DEdA7dHxzeARqCvkGWe+PT5UoZdcDEf5q4Eon2UgXBFbMoDkZzxrBRHgVjGWXO7mcfd
         jcIK9FMjmeU7oHMHKfVtV+AxOpLGct8vk4e34ijOFIKyKlWl8eathI8RTnMaykKUgXaX
         dTJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708991143; x=1709595943;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zmbbJGMEJkVi0DIu9K/lMBZ7/vUErHSNsjKRRkfuNd4=;
        b=a9AN+fs4HZ9ovEEmt0G+bKZXpy5ufL/EcTfjahZkJD3fm88qegMKfIkhLZbjZ/cNg0
         5yDaZWzEuC3Pmf8wsIpeuXtigXX8IuIs0dhp1gsOlIPqjVc0GQ54I2VVnvWXVKOzANxt
         tjg3wBy1SOoXMNeCNQEPYbS4BQY0gGaG/v0B3zPiMuqN0CTHNm3mIDnxKSdU8SmVY6VJ
         y/6NA7/0ztxwevJeGKhUvTpT7E7MFU7ZaKvjiG1nP6ANDWlaVhSwJJ3yYl1+qW55ATEo
         gy5P3Yzi79QiB7KjoakMMH43L+S6QwljFeBZdNWUQpAJRcm64Y1ea/vrAPHMLOCJfwc3
         PqYA==
X-Forwarded-Encrypted: i=1; AJvYcCXKlD816zCGdxdKFIOOC/MHLGzEGx9Xh0HJsTmICG6iu+YYYvN98DBqZ/mpUjjHHC9BCcQtSvPS+VNDhshWdZsyE4t2s7K+RRsGUR3Wsw==
X-Gm-Message-State: AOJu0YwNpdr1jiafI1IsydE2PXkTO0hRO/Cf3MUnJhAk3HN1IBiqBqNF
	OoUcQy6PxXNoj4SH960u7cFGV0bXPleBrO0JTVDtf6a0m9OUPSWBcmFX3OdosCV9kw==
X-Google-Smtp-Source: AGHT+IF/D27yCsFHmcnDOIj2v/3qnuFfvdwald7NsSXdAw9JoGcg8pGnM7Hg/+MU8soiTVaTtq1Tig==
X-Received: by 2002:a5e:8f4d:0:b0:7c7:cd56:f17 with SMTP id x13-20020a5e8f4d000000b007c7cd560f17mr4399717iop.19.1708991143316;
        Mon, 26 Feb 2024 15:45:43 -0800 (PST)
Received: from aford-System-Version.lan ([2601:447:d002:5be:9c95:d061:819a:2ab2])
        by smtp.gmail.com with ESMTPSA id c25-20020a023319000000b004741cf1e95esm1545317jae.11.2024.02.26.15.45.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 15:45:42 -0800 (PST)
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
Subject: [PATCH V6 3/6] arm64: dts: imx8mp: add HDMI power-domains
Date: Mon, 26 Feb 2024 17:45:14 -0600
Message-ID: <20240226234532.80114-4-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240226234532.80114-1-aford173@gmail.com>
References: <20240226234532.80114-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_154545_096851_3A0DFBE4 
X-CRM114-Status: UNSURE (   9.19  )
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
