Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69660CAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 10:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCf9WFzt1uYmtZmcE8AbqCbTBG9gJLz7/mit5RSm8MM=; b=dndRP43s2Zm8fi
	IH5DtVS7NXYjyXZ0VrPLE1hFFDyoA2/vkoZLtrryHWBVZRz83qKcO6TD6swOJ1pWo/Upj4rXfcmhE
	Vd7Q/SrZGWmaTMNbFvVd4I50eWle+HQ+FYqhQLrh6RNCDIqb+Y1cd1IS2EJqlrcpOocUHU+0v05VW
	TOdvMIJ6AehGmoMm5Stg26ld7FLTXKTUFNP26K0KSdmDxTkbMoRgABcQONIKATWm8355FS+h8nKfM
	w5GsisFT/JRsrfB6yA5fUBK/fp0rmn0SKiWa5YM16v0j6XOhpH5QsOVOFJjC6gzRE10mo0kIfwPq3
	08AdUWC0vYHmUVy3Cg/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1ipk-00000007u5H-0p3o;
	Thu, 25 Sep 2025 10:04:16 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iph-00000007u18-1vKe
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 10:04:14 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3ece0e4c5faso794567f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 03:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758794651; x=1759399451; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w6PpEMiRGTWSEM77dtjFizoMhXPMleLOSmUBWuk2Lec=;
        b=dm0q0xaOu+QpGdi3SpCu6jyWR7wCdWb2bqfUFll3THxPL5peq/O9GhNm/IITgqqLOt
         4DFjy3uR6upqYKTIIz1+OEZwaS4goTSQvM0/abYLwTiO+zopYForiaaLnUoeCTkFoZCI
         X1udWokFddhFwdIvxV/Wd8Haa1x0tFxm/DVb30x69z8Bd7M2Rzd7NP/81VpPYOyMaez+
         awlNnk5fwjyQuOQaBbZU0U0u9rqXMkrWvaxAQMd4VgpU1X4DMemMXylQ0P8oEvsLkzxP
         9Ggy2LkwjgHUe/Syur/dHRb9DBrhv0EQxZc15aOIz82zuXReCmmvBuibTWQtU2X9ECq5
         QG5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758794651; x=1759399451;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w6PpEMiRGTWSEM77dtjFizoMhXPMleLOSmUBWuk2Lec=;
        b=mZ3Mqk8mAhWXO78wLjU9f0otaDEhcfgHIM4WZQC2ojEksT6rZ/gMvn3llwKwlJVvdD
         manm026bPoItcibIH1lox9lFSAQMptty1hVrlopDBJB9bhZ8fveOViSapU1kWvr9ctr7
         IfVZlTuxGe5eXBHQE8VMxPa022vt3GdjBFCKC2euc6JGi45SApN7t7rxI45msqkM0Dy7
         pslW1rcS9RCSQTgJpc6ROzP0CB2jSSSeU4exHGs7kxTkt6Fw4Zk8oI/+9lbgcxdouZ89
         Ij9joJplb8RBvFVwuuuwuU6sqAIAoHSFgD6jSgHYyJki8/NL1rN0qyzwB7ggOyu1nukT
         K4Yg==
X-Forwarded-Encrypted: i=1; AJvYcCX+/5pI7ZuIdYARDtk3DYD455mqr0B0uxetHMgsBF/1FsNPtLYh6QlvS7aRHEiXruJWZxCsu3Wu/SU=@lists.infradead.org
X-Gm-Message-State: AOJu0YznM+G145VKF7kBQkoYMwI18yB7T1i8g0DmYeDyTv2ykZhEFgF1
	At0nIF3Xkpm/yPSdAbnr3g3cy66pLvEEYE7aKhJxqEsx/EMwNGIc5+5yga3rGZlr384=
X-Gm-Gg: ASbGncvj/4wYyau8PTSSu3B7UtCWRFlmcebiemNeBhuXF2d+whBqnt3WW8oVszDI5Ti
	Xnr3VSEJQWOjX9o3lAyUnXwU0Ugk/sAgSQPdU8gdW+F6yV5L1u2gzxrrJGGgae8qDCdijlm0jSS
	504Xh+Y4j3rPPzrexcXEHxj/Wn9ScoJmIwtLVlpXEWREHNjq+KotvIM1BzgowOz08n/Cv5rVNZv
	qbA96nXvHHUO1ww1LTSy4nwDZ5EH/+pRr1hMyw2lqQzTkCuvuBJ9wDl1XKnllqbRyx7ZA06S5OC
	rjBkR1Bez3KVBF9wlrfEkgs2eZn/IHqPf9m7jfu/TNyxlcf+Xris7eEJMAnMf5WzSV0wFkwImaj
	7/8wB2PxMPZOG2qLyb4y6/9iiK6OpUjLYiRwRRqs+RDAcAXJXQVRl
X-Google-Smtp-Source: AGHT+IFuvYevjM7vQzCnTge/GrcBdvmEa0etUZbryGQtO8C2Khk/jcVZo4763k4ceZ8z+zJy80YYMw==
X-Received: by 2002:a05:6000:2dc9:b0:3e0:2a95:dc90 with SMTP id ffacd0b85a97d-40e47ee195dmr2667700f8f.35.1758794651152;
        Thu, 25 Sep 2025 03:04:11 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb72fb6b7sm2501122f8f.2.2025.09.25.03.04.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 03:04:10 -0700 (PDT)
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
Subject: [PATCH v7 7/7] arm64: dts: renesas: rzg3s-smarc: Enable USB support
Date: Thu, 25 Sep 2025 13:03:02 +0300
Message-ID: <20250925100302.3508038-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_030413_514298_E3824AC1 
X-CRM114-Status: GOOD (  10.94  )
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
