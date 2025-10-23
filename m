Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0178CCD1BC
	for <linux-phy@archiver.kernel.org>; Thu, 23 Oct 2025 13:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J1FgZDysK5bZc+Fp9uANjc7tqz6gm57a1n087XxtG2M=; b=VB9NvsLTJlcXgg
	bCCn557Cqd6NTde8PNagrMv8g/phKQmlrFM/X6QPMoH3xvaWtaVBhQ5H6z45ZLCjxNK0GTI8FjnLb
	NIgdL/xWpiDXN9X+B54IcbllfgWxUrHwz8trXYERBEusJf/CrMjwD1WF6waE79LDnT8NCXmW7nWdZ
	a1vAdEX4UeAXGQkC3sXEyi9tODMSVUaAO3f6rP/f3Vc6pFlQo+/dsO7R+lPcgFBBUziLYpSxy+XEk
	i4NQtWXAx/W/gPFlihY+Okku1jjMZxZrfNK27724nTd4zm3REeNf00F0IFEa8sR+Gg2G8x6nN6sGU
	kULaIjgxMvioHTlwXTkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBvpy-00000006V4D-38Rg;
	Thu, 23 Oct 2025 13:58:42 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBvpw-00000006V2S-3ZNI
	for linux-phy@lists.infradead.org;
	Thu, 23 Oct 2025 13:58:42 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-afcb7ae6ed0so197311166b.3
        for <linux-phy@lists.infradead.org>; Thu, 23 Oct 2025 06:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761227919; x=1761832719; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EDOk3wzJ/Csdlnb+sDEwzVll8zo5EaNbS49j4wNtazc=;
        b=Q8VMuKIfpJ+GgkietsEk+gsIDwHbvtoljZPTqItC9N0SxOV+DuSuNoL8toeUJuYs4b
         hZ0LzFdzf9bPw/JGeF6I524aXxyYG0YM1B7CedIt/2UWY35HaU1ihJL8AIwqaH5dhU1T
         KUUeffnK8Ml+fMPG2S50LiV3oBjJKUspEVbkGfVMB9EqqjZ1lSGYCkOUT5U13Ng0UrF3
         FBkgc7bxfoTXL+vF3q4jlo0n0VEoDtSEtXu8llAGREvVkuvNw70ynHUiPn0bSotti2ch
         b47Vl/kxz4ZlzDJbB9/XOgNM7UFeCT9bT3bWvgcJN/oWp5uTn81qW2ZIPV5nhzBjakmO
         1GvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761227919; x=1761832719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EDOk3wzJ/Csdlnb+sDEwzVll8zo5EaNbS49j4wNtazc=;
        b=tvnRe7FTXrOF8NhVZ8mELXl+Ca+j5IHwQ2ozUP1ScejNAcyhVnw5oKLx647Ndqf3hl
         spAjNB5mFvvp76cr0hILrlAbJHUU8YBBbSPpZ/aJ+uJ7lyis9z43azaAaeTI4czUwcUd
         BS9aBNUCKcD2SQH7ge2D+aRX/9fnfqq/uXMvhBvT3KQUy617zvQ5PIFxBGE/pfcp8z+4
         oFB1bFC+tK8Fku5uh9wAnp9/Pi9zel8q3ulti7d2wRp2SrUGFmRlALyG41vjbvV1/ZsQ
         raS0b/gjfovyMTj4epiZ04HIzj57Rrqf1PV7uFh7b/6d4PYCB+hb/4VOe1FD1lQOlsNz
         UtiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwdqMvTooFNycx781nk6UzT74ogze34QysZsIo4GbRcavuxVPGfRjVgr3qaZFnIk1pwtfOC6hvODk=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywq8d5ClYouenkMEYtBnVfOZYvuYZ37fN9DgBxMf/xGJUDpU+MG
	S4sNBiQHc6xOpBtY04yg2BfhWzUjTq19GXWYz9hvYA53RkrYGAmxzdEdR3lHCyCJlsE=
X-Gm-Gg: ASbGncvvJEqFszVUoa2SNB6umlGOjKknZIMwwCGWytzQMOsiMYmbYuaSIgGtf6kSNxH
	+KHPNxdz4/kIrz+rJ8kcm2EwekDTPLfjO/PyCQVIeAAgqIGAvbeKfzTfqEWgarcJH57AlFVqHfv
	NwII7pOVCHKPXWCbpc9Wpfy7zdjUBfEkVrBKmAG+ZDvzsFDDCCBe9Q3qQrXQWXF6ccUHDhVET48
	VumodFVlyxLlgntN/CpffXq9Ifhtl4+0tL4XhRAkVC+HL22EMepGf0T6QBRkfn7TlMDWQJVcPLM
	Sa9aW4si+i7Xtb2GYj4wmXnMIlsh5iBPnd2v2KhHz57klMMw6cmZrUV7Ao1sQHF4+8x3mcLPTqh
	ZBJJuRyWmkOkSUR1YPBgw12A7sOWzCijWz/07p6tzDROsIprtTUdX079L58yD2zwpZbcSis6oeq
	P8S5/sxGRwADU/JVhrhleXMgW6+Ao2bbaC5pmsWHzk
X-Google-Smtp-Source: AGHT+IFBx3dgJXH4lEpxnlJJFwOwoH+u/MOZe+M6OK+FLRB/x3UWGEvHv5qUZS/pYvr0WhrpOqUmSg==
X-Received: by 2002:a17:907:3d9e:b0:b3e:3c1c:d301 with SMTP id a640c23a62f3a-b64769cb8cfmr2888032566b.61.1761227918932;
        Thu, 23 Oct 2025 06:58:38 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d511f8634sm226114066b.29.2025.10.23.06.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 06:58:38 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v8 7/7] arm64: dts: renesas: rzg3s-smarc: Enable USB support
Date: Thu, 23 Oct 2025 16:58:10 +0300
Message-ID: <20251023135810.1688415-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_065840_905524_D34725DB 
X-CRM114-Status: GOOD (  10.21  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable USB support (host, device, USB PHYs).

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v8:
- none

Changes in v7:
- none

Changes in v6:
- collected tags

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- collected tags

Changes in v2:
- this was patch 15/16 in v1:
- dropped sysc enablement as it is now done in SoC dtsi file

 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 57 ++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 5e044a4d0234..5586dd43c4d5 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -92,6 +92,20 @@ &audio_clk2 {
 	clock-frequency = <12288000>;
 };
 
+&ehci0 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&hsusb {
+	dr_mode = "otg";
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -132,6 +146,15 @@ power-monitor@44 {
 	};
 };
 
+&ohci0 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&ohci1 {
+	status = "okay";
+};
+
 &pinctrl {
 	audio_clock_pins: audio-clock {
 		pins = "AUDIO_CLK1", "AUDIO_CLK2";
@@ -207,6 +230,27 @@ ssi3_pins: ssi3 {
 			 <RZG2L_PORT_PINMUX(18, 4, 8)>, /* TXD */
 			 <RZG2L_PORT_PINMUX(18, 5, 8)>; /* RXD */
 	};
+
+	usb0_pins: usb0 {
+		peri {
+			pinmux = <RZG2L_PORT_PINMUX(5, 0, 1)>, /* VBUS */
+				 <RZG2L_PORT_PINMUX(5, 2, 1)>; /* OVC */
+		};
+
+		otg {
+			pinmux = <RZG2L_PORT_PINMUX(5, 3, 1)>; /* OTG_ID */
+			bias-pull-up;
+		};
+	};
+
+	usb1_pins: usb1 {
+		pinmux = <RZG2L_PORT_PINMUX(5, 4, 5)>, /* OVC */
+			 <RZG2L_PORT_PINMUX(6, 0, 1)>; /* VBUS */
+	};
+};
+
+&phyrst {
+	status = "okay";
 };
 
 &scif0 {
@@ -242,3 +286,16 @@ &ssi3 {
 	pinctrl-0 = <&ssi3_pins>, <&audio_clock_pins>;
 	status = "okay";
 };
+
+&usb2_phy0 {
+	pinctrl-0 = <&usb0_pins>;
+	pinctrl-names = "default";
+	vbus-supply = <&usb0_vbus_otg>;
+	status = "okay";
+};
+
+&usb2_phy1 {
+	pinctrl-0 = <&usb1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
