Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 771D1CA0FED
	for <linux-phy@archiver.kernel.org>; Wed, 10 Sep 2025 14:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+nNl8iDxk7Nl7E91gpe1ppffZYsVk22dv9HRe2kHXI=; b=wVVGJp4DzuFzdx
	+tBqyQilQJ5FK37hADfkubkTSFV1wCwDYIwHdE1qLSBHWGJIdqfU1CKW2IFb5eYqNE0gVyptZhySL
	9mnTVAaLOSNjDMcbh7PE9RqMoOfEBj4D+aXZQ9o55XG7GfQe45i/Jlpe6FmWUMZn6hhWk+2TGs3EA
	RbK1FDMu8Ek0SNR7MOwQDcpPTYgZVIYPkDQdy60MvdySy6Mywnpin/AcjhIBo9DHkcoTQvG5Jyu3G
	nj8hZe07plwFTKclaS7b1UrriNLJ4BgWBb83wckYMTKmrSB/ooItuU5uTYeL0JJ0+uR5NpM1Gt8pf
	BHYzn4eywQKPGtOkGAtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwLQB-0000000EZ4n-111c;
	Wed, 10 Sep 2025 14:03:39 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwLQ8-0000000EZ2E-3pw5
	for linux-phy@lists.infradead.org;
	Wed, 10 Sep 2025 14:03:38 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-45dec026c78so24510365e9.0
        for <linux-phy@lists.infradead.org>; Wed, 10 Sep 2025 07:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757513015; x=1758117815; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Vgkpc23fN6nK/odOpcRYynIEnb9BnHAmEaecrAACIc=;
        b=MK/zfMpX8PDuYkSWDTZKLNmHcOSu1C/LoK1WdY2zMeEdy3nK13vRnAmF12KWyePqFk
         ly1OjVaIcQM0mpjD8sNNRchHqtRaaTdAzNTXgsxvI5JM+3Nmgi3C8QqN2OzBLj683J3Y
         ugISR6kVBJcv5rcY7nY5kgIuMY35jb4z0vsPGl7H3ypv9Mh2bJrFhtzQwZj3Q3ipQLSH
         qJfZ107fF0/gywcYlhfczQs40IjpRPh+2sir5WUNsBt28VbV50QjzKLOZpDqVM7FyLrs
         ui/m13XjEBEhXRQEd/DqxukUZ71YXN5A7FJRFkAO3VJJebt3W/bkRrKa5Ix3qnIQspE1
         DWig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757513015; x=1758117815;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Vgkpc23fN6nK/odOpcRYynIEnb9BnHAmEaecrAACIc=;
        b=OUvidbzD1OdGha9lLlfuoBr7rFkcpoulLriKlhPO7U5msmajevDinOy/LFx6khz8s2
         ntYbNuN1w8F0hxa8vfVdc1UKHGIhTEwmjTQQyDTOEmuS1HCGYoutVhC2mHFby2bFTFeS
         0Jljp7H8yf06C6l4Ug3agBdBtSF+UZ3rIyJv/SFMOcrNbaaux+vAJ1ORDzHJHDHlbGOX
         dJGMS8dUY9zdd6qI/260BcqWIJhgazylXQ/+F1aEg109Mizchyt3RV9RzSHNBA6Bas/G
         8NdObAbOpoao70lm3mPaJeKlRM3214J7R+XAeSuv3K2yQ7GhnimC7nM8uDFlLdYB2XxN
         uCvg==
X-Forwarded-Encrypted: i=1; AJvYcCWTYy1ZApf/TcieYCaOEJBhpv0zIprIzK4gHwVPAcM4Vl+XW8IwWwCbNwPZoGftB5+8WNdyrd7npsw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEfWephmiqkSxSNoRukFPsFuf7lotD5ForzmguTQ7FJuE2vIVR
	RykDd/g1gjqYiI9aEwYPrX0h7ktmkdxaGM35EhKJBtfzpulmvxYb61inWNqdYtVnEN4=
X-Gm-Gg: ASbGncvUUCzo73C0D3yR5ixKPXckw74jGC+qKoWm7pgm09oZZNXyLY0xV8DOHGw3Qkc
	Cv+Bfyc3qThouDT97pJg87vIwEIOPTWXevjaftrXKUQekB/uuhb9QlF1nvg192npQhYo/Os2AnU
	uLJ2xxH/9MLLKUe6AGNqGDHHy6n5tuxYADj2W1nfDmEEhaNpgUCJd9z5u37aGF+4ClJ6cuKt91V
	SPaKItJIyzYvoBZJKfj+4Fl77m45F/Zb72iM82zqDdhtaYUt2QRMlCKKbaXOlQxkDS3WBDVG5wc
	nN+6OidEqpfEaNN1a0jOMelw5oWqkAW67rt3u1RwNou5e7emZIFhfpVrk+/g3U056VxovezC+S8
	DSUqLBzx62h80sdguCTmsdrR3VZL5dTN6aVQU9p/qBguJuFuQjBba
X-Google-Smtp-Source: AGHT+IHnE7nzywVvSHlmb2zbeRqa3AQllCmLxwfyN9Q2qj8wPtYZa4cnGeIFXnAXsV38qH1n0GUl8A==
X-Received: by 2002:a05:600c:3ba0:b0:45b:8adf:cf2b with SMTP id 5b1f17b1804b1-45dfb641d03mr9711805e9.21.1757513015047;
        Wed, 10 Sep 2025 07:03:35 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.139])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df804bce3sm29523875e9.0.2025.09.10.07.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 07:03:34 -0700 (PDT)
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
Subject: [PATCH v6 7/7] arm64: dts: renesas: rzg3s-smarc: Enable USB support
Date: Wed, 10 Sep 2025 17:03:05 +0300
Message-ID: <20250910140305.541961-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_070336_967914_93F3DAE9 
X-CRM114-Status: GOOD (  10.91  )
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
