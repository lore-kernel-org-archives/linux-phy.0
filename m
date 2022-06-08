Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 089D1C43334
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 07:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9/EkGbKJGAzON09xrrOP7lPOwhwdF54TQz2ye3wLJ4=; b=gLAzIYd+ZC+9fe
	hI8mMfdBouDsrw1Ok7O1qJVfAKBK5TiFPITrCrMErF4gpP6efnozoYfJa/lB34sdjOpcl0ZLQDUyj
	KLMdIKUvX7QDSW+TG0fdy5j9TuBknj6kw35yviILP5E/+/87ZQI0OJ4Fypzabz6sAUzTEhbI6vpjv
	8daiKAU5QH+DqiYcv0O3QbfSHVZym0tOVMkFRWO7jeVoftL7/LNSJwLn0UB85mlGaSa9Eq5/bK3fU
	2whU60HZXwazLnDCSrC5/EH7IYw/qMLsVEvufDEqjRKx4Yxh1kefYc0Oesyc4SiLzyS7YF4L/97Vb
	dIn+EmsC0vRyrwcClsyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nypmN-00BQLr-9f; Wed, 08 Jun 2022 07:06:59 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyplP-00BPfQ-MM; Wed, 08 Jun 2022 07:06:01 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1654671954; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=QBYaXVSrh0KHPaoowHgjYi0kdMbKz9bfxBVEjUFYqcf8Bv+wgjTHbquhmw5vHzoqSXf+TGUJ5f3ItBmiD96AfyryitQ46fUgfLwIe0HvZzqL0DboR9ys6+5VBJ9TNKRv/4nmg3UJ8YDgkwEPUTc2m/JTFvUdb0Igrz8Xv5gu7Yw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1654671954; h=Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=bK+qygT/W8e7IdMMhLssT6sOTIHj4DjaVCfrAGmo3wY=; 
	b=GqG8SBbImRgbseNAloTdvbc0H4UilPdE75MRoH1taHqrXPebJTd26jXsgf50nnhfRvVbWzGWQVdkHePb7KSyq8nFBqg6eLASVY2dNg1EQIQLCk44SF1FmWMhGNRJw2SgXGCH6javF4pXkpgXOUGevPmC+Ps9AhcmEvaTpEJn0Rg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1654671954;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Reply-To;
	bh=bK+qygT/W8e7IdMMhLssT6sOTIHj4DjaVCfrAGmo3wY=;
	b=EIQ6oOQk03dtkmAYYWCnH09Ex0X5yuigfdvdPWL53oPg5rAxSm0GGIVXAsWEesAG
	qNIz4lceQ9oXGQiDS0Fecr5q+3SioH4bTppeCuL4yfYPQTQx/kZcPS+5XWoFteGNflu
	vsfBNqT6Yx12CXQYIg72dZ6d7U4Ne71w7IFeHyuY=
Received: from edelgard.icenowy.me (59.41.163.66 [59.41.163.66]) by mx.zohomail.com
	with SMTPS id 1654671953211498.9764845551447; Wed, 8 Jun 2022 00:05:53 -0700 (PDT)
From: Icenowy Zheng <uwu@icenowy.me>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bin Liu <b-liu@ti.com>
Cc: linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-usb@vger.kernel.org,
	Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH 6/7] ARM: suniv: add USB-related device nodes
Date: Wed,  8 Jun 2022 15:04:51 +0800
Message-Id: <20220608070452.338006-7-uwu@icenowy.me>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220608070452.338006-1-uwu@icenowy.me>
References: <20220608070452.338006-1-uwu@icenowy.me>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_000559_808916_88781A40 
X-CRM114-Status: UNSURE (   9.03  )
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

From: Icenowy Zheng <icenowy@aosc.io>

The suniv SoC has a USB OTG controller and a USB PHY like other
Allwinner SoCs.

Add their device tree node.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 arch/arm/boot/dts/suniv-f1c100s.dtsi | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/boot/dts/suniv-f1c100s.dtsi b/arch/arm/boot/dts/suniv-f1c100s.dtsi
index 0edc1724407b..a01541ba42c5 100644
--- a/arch/arm/boot/dts/suniv-f1c100s.dtsi
+++ b/arch/arm/boot/dts/suniv-f1c100s.dtsi
@@ -133,6 +133,32 @@ mmc1: mmc@1c10000 {
 			#size-cells = <0>;
 		};
 
+		usb_otg: usb@1c13000 {
+			compatible = "allwinner,suniv-f1c100s-musb";
+			reg = <0x01c13000 0x0400>;
+			clocks = <&ccu CLK_BUS_OTG>;
+			resets = <&ccu RST_BUS_OTG>;
+			interrupts = <26>;
+			interrupt-names = "mc";
+			phys = <&usbphy 0>;
+			phy-names = "usb";
+			extcon = <&usbphy 0>;
+			allwinner,sram = <&otg_sram 1>;
+			status = "disabled";
+		};
+
+		usbphy: phy@1c13400 {
+			compatible = "allwinner,suniv-f1c100s-usb-phy";
+			reg = <0x01c13400 0x10>;
+			reg-names = "phy_ctrl";
+			clocks = <&ccu CLK_USB_PHY0>;
+			clock-names = "usb0_phy";
+			resets = <&ccu RST_USB_PHY0>;
+			reset-names = "usb0_reset";
+			#phy-cells = <1>;
+			status = "disabled";
+		};
+
 		ccu: clock@1c20000 {
 			compatible = "allwinner,suniv-f1c100s-ccu";
 			reg = <0x01c20000 0x400>;
-- 
2.36.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
