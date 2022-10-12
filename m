Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95AC9C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 05:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qm4zyBBHxzQTFFJUM040ItaQiT5ZHAnNZGQUMXnq0Bk=; b=TJY4VvgaNGMbUN
	NklQiZRNKYYii9AGzwdcdO7jz+u/zRccN5z9lrJ0jSVCBI72C5L1+nF0h9ErmkAIkc+087SPL3Cbd
	kL1FSGE3w3jjRZAoT7iY6kYslzUKiXFjSwwoB2K1sVlqRgzDwm+UiS66Eis1xzZFusqPuyP2Xp104
	NagSkLTAjuHcAcOUWv8Smh1cPkp+hS4F8BXRMMBaJRzVHWI8ck8EveDy/woj3TXfglhKDHivVuStF
	E4+xFJPnAmz8eBdK2ao259ddgciE6zGT6Qf1B/dY+2NNjpBmdknV96udrF6dtyLBjEnU8+TjhvAHj
	rZOyer6Nij+w7Fi7jGGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiUks-006vN6-CK; Wed, 12 Oct 2022 05:58:10 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiUjv-006uqD-Tz; Wed, 12 Oct 2022 05:57:13 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1665554228; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Sh0fN5seShmABWmmPhLfq6HOJSM1Jbgjj9JIy+dUiN2MEFJw7jG9CQVV9yVo9HnB6JbVW6K/w3ciBvRtGUVVTIoLapCmemcMmEbzqVel4HYpDIBI9BNHVirdW2iVIQvDGQsNrBRx6uXquk+AcOHUcVcLx/JBGl8NH/AI2bJFOR0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1665554228; h=Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=ViIK05Q+GfR4lkwmGAJ30lw+1V3VdsMiq3fDv32+df0=; 
	b=B9K71C7R5hKmW8ybqfb+0e1oVjNEYPAJ2kiYt6Dg+rzH6+j0bXa34Y9E04usjSNMgIybnC8rlW26Jpmmb3D6MdtQ4xkaiTZfMk342ZIT+jAtGT+MocXHGoEifXQTO0q9GXwwPwiawjRLvUcXefTQBwpOEMk8mFFrL/PUF595HJs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1665554228;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Reply-To;
	bh=ViIK05Q+GfR4lkwmGAJ30lw+1V3VdsMiq3fDv32+df0=;
	b=PF0YG3n+Ilr0rEfoGwZl5t9ipBb0b+GYB/dv6guINw3aknqFOySWzPImgD8FuK8b
	o9DxMdygBwsiI4RYNHMTFaSXqQaL3SnjB2Yg/Vdbp9k5BE4Ooa+anX5G7aTLlQKocD7
	zXgzRkeQYW8ofzYZzQ6+UFeD/2rnuuNqNZja1Ivw=
Received: from edelgard.fodlan.icenowy.me (112.94.102.144 [112.94.102.144]) by mx.zohomail.com
	with SMTPS id 1665554226549388.7219000626267; Tue, 11 Oct 2022 22:57:06 -0700 (PDT)
From: Icenowy Zheng <uwu@icenowy.me>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v2 06/10] ARM: suniv: add USB-related device nodes
Date: Wed, 12 Oct 2022 13:55:58 +0800
Message-Id: <20221012055602.1544944-7-uwu@icenowy.me>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221012055602.1544944-1-uwu@icenowy.me>
References: <20221012055602.1544944-1-uwu@icenowy.me>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_225712_082445_21ECB025 
X-CRM114-Status: UNSURE (   8.73  )
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

The suniv SoC has a USB OTG controller and a USB PHY like other
Allwinner SoCs.

Add their device tree node.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
---
No changes since v1.

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
2.37.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
