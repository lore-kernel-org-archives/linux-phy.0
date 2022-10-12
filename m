Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BF04C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mRweGSFwjTnb+HxPkjU4VVt5Gm8uEoDIZOayCeQZ7vk=; b=Siiz8ORQgYWxzb
	MMCCwrZfQyDKT/jR3mRjo46S/qpmypJALTLbvL1pabd6HlQZIY4fYM4epaToHVd8rnHeI9HSl4Jgl
	6X58JMbLdiiMptKtzAi/twn/0wWu+Wp8RjlhgUayuIr/y/0Ydhi0D0GR6wHFlnaqmgeODLDy/Hca3
	kHglr/oMFrEa9uggey60h0YJbwfNAVo7TpLssmZEqonfpDgNNTKjPN8B4u2FUfOuz3xrOLUiZn+in
	8gcAS0lsX6lHo3UoVTCCWTdOJg0WEJlfH4arMnvMYxLS3OQX/Zjf8oiAEruMJHInEHu5DjRhpiqIX
	Qp6Xq/WOI19VHc044Z5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiUlE-006vaX-K2; Wed, 12 Oct 2022 05:58:32 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiUk5-006uv8-1Z; Wed, 12 Oct 2022 05:57:22 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1665554236; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=fHZjzfmamhzrEnIDA9zpP0ppKM0+OaQXHewct/+lOmhAHZoZ79l7hEpaEboNs1bezjqa0dB7Axx/ImS+mXq8XXIWo9UWk2tAW0kAqxx4yOOtZplU56aKZCTGxbq21J9iQRXHXjEAmGOX69Fhx4xLzzGhFNOy1R2XXE/ITLY+kSI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1665554236; h=Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=4dCk0OX6Iak7UTI77SNseqMA7iIhg+6t2NIsg5fBNN0=; 
	b=GyLE0D7xHAgrE3JS/2oHy4cQyPjIOmEPxb3fXASraWTkq1C8BLDm6HtJE814JVjeQfLr5ttL5byUIPUo3c1UpI+HZdD++ydEcv1PKBv/7ANGj/LhIkBERcVE66xRIWGAbwjHT/ZcIciUBL1j7uEv8iZHGnSQmuiqOoU4/WJyL2I=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1665554236;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Reply-To;
	bh=4dCk0OX6Iak7UTI77SNseqMA7iIhg+6t2NIsg5fBNN0=;
	b=RHmjJBkN/G1HYnAdzGWni3NlRgmZvZVMXXMjqESaQy+Jau64ZRRilUpptM6+DCqE
	ry97za2dB7xE1mXgi60wHhwECyWM6YRfmT5m2apRwpBMjSWGfsH2kFJaWHSi77GP/dU
	+0Ta4PNDUwq2CRoA3GSJYMtmLKd2VomgdHGX/rJw=
Received: from edelgard.fodlan.icenowy.me (112.94.102.144 [112.94.102.144]) by mx.zohomail.com
	with SMTPS id 1665554235117218.30983413595652; Tue, 11 Oct 2022 22:57:15 -0700 (PDT)
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
Subject: [PATCH v2 07/10] ARM: suniv: f1c100s: enable USB on Lichee Pi Nano
Date: Wed, 12 Oct 2022 13:55:59 +0800
Message-Id: <20221012055602.1544944-8-uwu@icenowy.me>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221012055602.1544944-1-uwu@icenowy.me>
References: <20221012055602.1544944-1-uwu@icenowy.me>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_225721_163710_2C29BE98 
X-CRM114-Status: UNSURE (   9.04  )
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

Lichee Pi Nano has a Micro-USB connector, with its D+, D- pins connected
to the USB pins of the SoC and ID pin connected to PE2 GPIO.

Enable the USB functionality.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
---
No changes since v1.

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
2.37.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
