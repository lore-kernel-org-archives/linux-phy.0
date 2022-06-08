Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F40FC43334
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 07:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/pgsAf3tbcjJYJgKZEgWSliE2O0vWEfw3JLlm+RaJw=; b=Bcduw9GPYdc+iB
	D1b4SgIxIkedifXA+TS+H0iJaApEXB76g+ASoxr8TaC6Tn8CT2PnfvQ+tsymQm9WV/GOnT/ovSA09
	sv+namM96Nf00lJnoK1rjBjyLGLApiFGpvkHXzeJ0CdqcMyhQbHYwplytNvRcMS49QW2DVUZCPt9y
	+68HewpH+WsEhjvhnedog9Y4ZvMv4/Chq01GszpdYBHzglue5+C4a8+0mG60y9h0X2AKeYHHxzBuM
	hto0E4kxEc1FdR3y5HbvMJpv+MjQH49ciC069nVO0mpU0PBOu3YfTNUWJqSp96cqFrqnqoFS3aKU9
	9dSYRjaF0VsdPwjbwgbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nypmi-00BQc3-Kc; Wed, 08 Jun 2022 07:07:20 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyplX-00BPj3-Pc; Wed, 08 Jun 2022 07:06:09 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1654671960; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=bvBVBp311UrrA3YEXD3M4S9ESkLApb49rsbhfGG8twXJaPM5FGXZEuIkyjKV/qliv4jDa9vpL2y3P8sWLD3CTijGlUjH0N9FLel+k0IdcwWZ/mS1oauxGgIr/5MA62+ilVBZVPReB88NbzKPmtaBQrwTOpDwNa+qlhmCKH3MeVw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1654671960; h=Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=bwLNTfaNNmXUu3sy1HadN8NYZVEx7VSfxP8UHGZMLLA=; 
	b=fmnIHZUjzhMAZTajRK/wUl5YYDW4NxfsHfCceBaEcGVQWhduF4H+9MHWuQcA8EbYm3qHiJy7WQjAMCoiau68k3TCFQdm1zOwpsRhm5TYDTgsBeoKKpv0CVvCXsqGNeDB3jatLlI7trDtrWR2YDQ4OCEhtgP3WwsjXVFzF70x4D0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1654671960;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Reply-To;
	bh=bwLNTfaNNmXUu3sy1HadN8NYZVEx7VSfxP8UHGZMLLA=;
	b=GXTl4vKL53A4jWqTuURNFn9gezZrfZok8N+u7O9RFmYEcm8rNb8uSOP6nof9hn39
	8qx6fm11SglYz3ThP5ObLBlFhH8O16B76O29CmNhVwrcN3qrLzbL+G5NJ2z0qnACGsg
	8kxyu7p/svDe3nUba14D6n9jW11+Wj6JVuecp0jo=
Received: from edelgard.icenowy.me (59.41.163.66 [59.41.163.66]) by mx.zohomail.com
	with SMTPS id 1654671958834763.4225983678638; Wed, 8 Jun 2022 00:05:58 -0700 (PDT)
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
Subject: [PATCH 7/7] ARM: suniv: f1c100s: enable USB on Lichee Pi Nano
Date: Wed,  8 Jun 2022 15:04:52 +0800
Message-Id: <20220608070452.338006-8-uwu@icenowy.me>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220608070452.338006-1-uwu@icenowy.me>
References: <20220608070452.338006-1-uwu@icenowy.me>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_000607_963541_3CE954BD 
X-CRM114-Status: UNSURE (   9.08  )
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

Lichee Pi Nano has a Micro-USB connector, with its D+, D- pins connected
to the USB pins of the SoC and ID pin connected to PE2 GPIO.

Enable the USB functionality.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 .../arm/boot/dts/suniv-f1c100s-licheepi-nano.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts b/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts
index 04e59b8381cb..1935d8c8855b 100644
--- a/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts
+++ b/arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dts
@@ -6,6 +6,8 @@
 /dts-v1/;
 #include "suniv-f1c100s.dtsi"
 
+#include <dt-bindings/gpio/gpio.h>
+
 / {
 	model = "Lichee Pi Nano";
 	compatible = "licheepi,licheepi-nano", "allwinner,suniv-f1c100s";
@@ -50,8 +52,22 @@ flash@0 {
 	};
 };
 
+&otg_sram {
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pe_pins>;
 	status = "okay";
 };
+
+&usb_otg {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&usbphy {
+	usb0_id_det-gpio = <&pio 4 2 GPIO_ACTIVE_HIGH>; /* PE2 */
+	status = "okay";
+};
-- 
2.36.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
