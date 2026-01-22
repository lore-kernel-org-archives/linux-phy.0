Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 265E4D3EE9F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 17:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5N4gL9TqygkWusSCwbCVukCxC6tt6Yb/OilMck01k6o=; b=YBt8VenaVqUsTe
	mZ/1MvvHskRiC0sRQljoC96idAIM5UuBfTUC9CHkgYJHgceTwb3DyDoqi7V2Huro8SdEKHdQ1eRYV
	zfFMzLx/Egmdi7PdWbVf3KeG6aXAWAPfPaPsPvlapw4ceK8ffD+E3nRB91Gu/j0PYUmhvWbYxHXQ4
	f0GsNWrRM07dO6jciHjZcgvamRV0Fs+ap+AiQ1oEo2KCefigmlhRZy3skul97VVlhvgZNHWPj3jBx
	LxwY0Gh2sRS7N3m1TrzJD9ovbK5HxlHMtvI+Gf7+afxxdoODXv8MoAOEq3ba9G0aPAPh961skk3dP
	CaC5ub2UrQdhmutGV9kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viyt4-00000007b29-3OSF;
	Thu, 22 Jan 2026 17:54:30 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viyt2-00000007b1G-1S0Z
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 17:54:29 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2a09d981507so8809995ad.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 09:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769104467; x=1769709267; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PcWylPv8TJyXsVhSrUUC23A8HhbSPg4cc6ltX4FBb+c=;
        b=ikiLlQa3SM5Kfruf9nCFqmDXrtIceNL/Htx78VfC8R/A2r8coCbRpTQ2HvsPdm09HV
         GvqLM3ShnU7MwDxDhfdK0NtQJ8IFvGFfMCFb5tuXn8cgiWJ883YgmyD7gv8HnseaPrqZ
         aCDuA8JectlQcJsbpBrNgSTKM6dm0iEXOu9GtKmU1H5i5aKzvb9KWem3nMz7S6x91YAz
         7YVx/I1KMF9Jpb96rPm2ZjuJHAQoYA/kLn1E+Tf5SzRApurrrTlgsaSUIl8/NAUi6SeG
         jWfyPpcYxrh8sUvZVupOr1/3pQoNCpduITID4o8sC6uySRuy4aKoU2woXA8gzMQU45Ay
         RKCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769104467; x=1769709267;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PcWylPv8TJyXsVhSrUUC23A8HhbSPg4cc6ltX4FBb+c=;
        b=vz216p09vFjKrxAlCypdiaQFcBZvJOJ2g/wV8q//3TTtRHIEpxQgKPEkHaAoV+QN6+
         TSSYeN+cYA7Mp1P5ng7TPg2bklrYJ1IM3e5E1ZLs7Sk1RbXliP6UkljHCdyEfUbYd1h4
         rbb0h2G/+mC91CAPWUVRLlinQ2RmGBdmJDB9zzkJpzUVWx2Z05ODKr9SafkcPlmGMgF3
         Mo/EOVVLVu4HLdL6paA0MF6gxUIARnaSoP3XVPCz9HwTNXy/N2pnT/BjQYkdz4VHnuCw
         nmH+jatzf/BP8dRWA/NbM7/7qz0GwXbz4kTk/stH8IhcHcoRv/xYnxZiaKx7lu0pHDOK
         sY0w==
X-Gm-Message-State: AOJu0YwsR1k8QQIP8Q3s5J1b3bRl3aX/EUfXCXpD8Qx8ZEpwcOEnGMB2
	9ppT41+k3fmnoP6EkQ0UMPuy39RIL1Y6o0b2fRX8uNQFRh/SdjUd09Fq
X-Gm-Gg: AZuq6aLe5CvwXofF/+ZHu6k0tKsO6R4DOnnK6yd26fMR23XRLJ57b3ynu5Mo8tFHvHd
	1MT1aLSVblB7MWEU4hhpAOkFuenZCFiW4WdQGOHfIV0Pxq642w7a/d+tfW5PLck23tMqV2Ell4I
	vZEYR3s9J3WqymlFkp+yLzqp0P26qVUmlDUVSRw1Fb9nsGkOISgD/j1tPab1am3YFpFclLOnUjg
	VjKxxUcuT2kpIw1Bzcb8NUC75EjeQGwyhi4krF95eRstjGKuXjIrz3OOI93voZky9kt5Sa94/1p
	B/Ibxd/9xKxGIWY7lQDsMk5m5I96kQISnmhLpAAp5FyVi6bswqop7pKXpqe7O0qOQkqONmRDhD9
	6a/ohAvVPaEukgT/HLvL5AnIdTDTFlMegA1V1rlNXcFUMnKJs7luvn6Uy6iigZkP++A8n60gHcv
	XPEi7cb24J0gMUkQv1++94oWdTRoIscthdDA==
X-Received: by 2002:a17:902:f641:b0:295:28a4:f0c6 with SMTP id d9443c01a7336-2a7fe41e16emr2855545ad.0.1769104467221;
        Thu, 22 Jan 2026 09:54:27 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a7190eee4fsm187745195ad.42.2026.01.22.09.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 09:54:26 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Thu, 22 Jan 2026 17:52:57 +0000
Subject: [PATCH v3 1/3] arm: dts: ti: omap: align node patterns with
 established convention
MIME-Version: 1.0
Message-Id: <20260122-ti-phy-v3-1-751619729433@gmail.com>
References: <20260122-ti-phy-v3-0-751619729433@gmail.com>
In-Reply-To: <20260122-ti-phy-v3-0-751619729433@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Roger Quadros <rogerq@ti.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_095428_392018_9FDCA2D4 
X-CRM114-Status: GOOD (  10.19  )
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

Update OMAP DTS node patterns to match established conventions.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 arch/arm/boot/dts/ti/omap/dra7-l4.dtsi  | 4 ++--
 arch/arm/boot/dts/ti/omap/omap4-l4.dtsi | 4 ++--
 arch/arm/boot/dts/ti/omap/omap5-l4.dtsi | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
index c9282f57ffa5..ed206eb84d02 100644
--- a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
@@ -328,7 +328,7 @@ ocp2scp@0 {
 				ranges = <0 0 0x8000>;
 				reg = <0x0 0x20>;
 
-				pcie1_phy: pciephy@4000 {
+				pcie1_phy: pcie-phy@4000 {
 					compatible = "ti,phy-pipe3-pcie";
 					reg = <0x4000 0x80>, /* phy_rx */
 					      <0x4400 0x64>; /* phy_tx */
@@ -348,7 +348,7 @@ pcie1_phy: pciephy@4000 {
 					#phy-cells = <0>;
 				};
 
-				pcie2_phy: pciephy@5000 {
+				pcie2_phy: pcie-phy@5000 {
 					compatible = "ti,phy-pipe3-pcie";
 					reg = <0x5000 0x80>, /* phy_rx */
 					      <0x5400 0x64>; /* phy_tx */
diff --git a/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi b/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
index 4ee53dfb71b4..d8b16cbe6c35 100644
--- a/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/omap4-l4.dtsi
@@ -72,13 +72,13 @@ scm_conf: scm_conf@0 {
 					#size-cells = <1>;
 				};
 
-				omap_control_usb2phy: control-phy@300 {
+				omap_control_usb2phy: phy@300 {
 					compatible = "ti,control-phy-usb2";
 					reg = <0x300 0x4>;
 					reg-names = "power";
 				};
 
-				omap_control_usbotg: control-phy@33c {
+				omap_control_usbotg: phy@33c {
 					compatible = "ti,control-phy-otghs";
 					reg = <0x33c 0x4>;
 					reg-names = "otghs_control";
diff --git a/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi b/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
index 9f6100c7c34d..5c94db589dd1 100644
--- a/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/omap5-l4.dtsi
@@ -472,7 +472,7 @@ usb2_phy: usb2phy@4000 {
 				#phy-cells = <0>;
 			};
 
-			usb3_phy: usb3phy@4400 {
+			usb3_phy: usb3-phy@4400 {
 				compatible = "ti,omap-usb3";
 				reg = <0x4400 0x80>,
 				<0x4800 0x64>,

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
