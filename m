Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 337C6D74EEC
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 15:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5N4gL9TqygkWusSCwbCVukCxC6tt6Yb/OilMck01k6o=; b=0+WyeyE4R7kw8M
	zEE5cZOvkGJkUB66a3PBrADAT5Jr0rfTK5s8Hxc3pKMxL8P0zdPxAd47mxG3PABANAgGq9+Qh4omu
	6uK5IC+AhAeTgVHXpvnTrkQ6QcJrLbQkEBjmJwTn8Np/jzhGsMKGbiQv7lapeR3w+89lbq2b+7nGU
	xVc7p4YRfVny7w8D/gD9jUyn7yenDUsGx9n4arrYFqcp8tDy9t7+sJM2ihKr3T45e/GF0dlmTY1Ig
	zTZUytBi7Cr2wiWqwgvl5sc1zpJ7leOfat99FlS0VehG22UznKDVwIA1Nv9c7ooutscz7hdlQK5gn
	9fyi6zVerREjmdkfnmQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjJFy-0000000971D-3QNq;
	Fri, 23 Jan 2026 15:39:30 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjJFw-0000000970L-1qpS
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 15:39:29 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2a2ea96930cso15185655ad.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 07:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769182767; x=1769787567; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PcWylPv8TJyXsVhSrUUC23A8HhbSPg4cc6ltX4FBb+c=;
        b=dYiDslfQiWwxK2ICAaQZOeAgwMApzZ/sK51/5OVZUtBAQQaJ9G7bAdidsvhSPhNbEd
         6S/gSKgf1el1zKIDTPBJC/S+/+WGJAfsWQPv7C0Jk8/EluVKJuQ5APpo8gkxY1YL4l3O
         HLwXUFFx+JWqIcHTUhZHY1P48YcYPLiL4xPc/5tj4BUrwkeLT+Vpn+mKShF4XzvU7g0E
         zesw3raOhld1/nuW5Ft23xtka2Ii39XJ8fiTv6AFWswAkDEKTW8tuGgjTFO2LM1V6SaV
         z2vmLHh+VrrP+c65tDK4E1NcsL5yR3XasOOVEGPS5rMEBbeaVyFSo9rc3oLRe6zND0tC
         Y/kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769182767; x=1769787567;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PcWylPv8TJyXsVhSrUUC23A8HhbSPg4cc6ltX4FBb+c=;
        b=XS/ddYse798lF/lWsMxl1fEb5zhWY+/oQiGBKsObYgEWQtA7cSESv/kDf4P/RqrHDW
         SOBYGtcvwDA+v6X0lSX0VXiDXDIrGjoZVjXXY6w54Ivt0jsQz401t72pgwSsL6kIFRO9
         KwFRxOSiwzl3LXEq/EA4HFeBel/4vymOGr361TQaWOSJ4t4CrtiAu47OhIpd1VEuhQVE
         X8EZo+iK9WfDVOSSc4DS0ukMn0YvB5NTJv7o2xbSTifLPdLJrFhpWB+7SlTvBu99FRuK
         /dBODkH+gQWlzwdDC1o3mxmR3/1Mc/Ny8T2s9JZwW7CRmM9IrhhE+sEfOsPNT89kDZV3
         +Avw==
X-Gm-Message-State: AOJu0YxUxjZccfC3Cxm6T3hPahvR9rsoe1WTK/+mvuKi02cVIePEJo0E
	YRLvw3t6NjviVRtrlwk+wIg70B43C7CblclposX416Uke965i8O2RTsD
X-Gm-Gg: AZuq6aIfSc7en3/UEf3MIvucxH+oHiKXhL4hRuns7/CsaNneJAmzByPmtonpGuESLtf
	lTLG/+6yMQe7bEJDtP3YYJZNMnmXWyBwEpPt0dm0asItH6deAJxZdWLSuOg6fip96EhBnhq3aiz
	RCa5s5AB7FfvgEQqJn2VtH0/3uwfo2QmeqG7bqJWRVQlzTJoRIbHu1UUcNsJwZW2xAHiqsE92ex
	SEQC9zypA91Yu+rBoMN+r4BSmb5b9C/FaP7nDU844CqOQOJBH/j7dzuOqIFYC0U/o0VKJazplbe
	xdSeVYaSq1xd6H3NDmdP9OSd+FI2DVxODlT2uM3lSW9o/lY+QGjs337GaqP4iIosnNJwFDM6fqt
	SwpTEmQdZf0HAJv+VDWJcaRAmg4txvqvIhzMin0EaFW1CRhjVI9/YTS6Z9jM2eo67T7Wfv7A7lo
	RuvbooEnlwo6iDeLKIhtX05cAdtEtgMeyVlg==
X-Received: by 2002:a17:903:247:b0:2a7:9da7:d21d with SMTP id d9443c01a7336-2a7fe77411amr31093455ad.56.1769182767504;
        Fri, 23 Jan 2026 07:39:27 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a802f9769esm23732205ad.60.2026.01.23.07.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 07:39:27 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Fri, 23 Jan 2026 15:39:02 +0000
Subject: [PATCH v4 1/3] arm: dts: ti: omap: align node patterns with
 established convention
MIME-Version: 1.0
Message-Id: <20260123-ti-phy-v4-1-b557e2c46e6f@gmail.com>
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
In-Reply-To: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
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
X-CRM114-CacheID: sfid-20260123_073928_476548_59C5EC19 
X-CRM114-Status: UNSURE (   9.76  )
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
