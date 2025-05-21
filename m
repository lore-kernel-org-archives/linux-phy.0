Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 059E8C54FB3
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtmWIEVmLfjDLbpdc28DzwsX6QSjFUeF65GLMufjraA=; b=JDGkO1FE2d6N5Y
	kkwOqHHDpGSrj/RiJioLFXLR6BcXcGEg36auOmgSV0JX7Ndg8YmSJ7qIW1XpaeSUXiLSNc3cZuAAq
	wkJL17XODp+S6sIITuhWy+4jIQVv3yySdc9ehLAbKN70Lt02ZU2LAPLlqU0+XE3VX83oo47ZczOu4
	T56VneZ+sdK3Q7oT2ZnMQSMWk0kacK7RpASrKSF1swEYyHi9y+Xz2yG5bwjRk9dG6qUEEdev3YiVc
	fQZnnjChVxxnujKPk3+Sod/35LEqSZpimCgk796GqImGZK+w8WVU++r0DtawoVIoNlTz3BU095/5K
	UbJlCgJeyziA6UJKQlNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHkNc-0000000G6VM-3EAz;
	Wed, 21 May 2025 14:25:12 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHk9Z-0000000G3ge-2kFL
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 14:10:42 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-54e7967cf67so7943147e87.0
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 07:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747836640; x=1748441440; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j2m/AQHhUKCMB2ooeH4OXmkM2QdyDkeRoTJbiJc49Qw=;
        b=Uo6HASD822fNLmYbqtpVQlQvrY2YZZSo7bYGghMWLkO5jSaNjjlWL1Oeds9PUxkPy5
         8edDNgqG1JWaWykXegzw5Qc9YHYPqzEbvzDqrFJs3+jxXqblslH/pBMQ/jRdhk83gfNT
         IJ0ZY7BvUXmTxq2ADlS726T2OQ6JRv5q0F26c4ZG+H0635C0mO4Q3S93zK87G1eqm+6f
         lWUggNbXdNenJO9wuwZhw6aF0obSZmJXKrZcfUgMcabqkH2znmUPqoXpt+s0LHAOED1N
         zSHu2Jd0UngWmLNQ5L+Cuz22kc2eAHkSXYjgdyxtzaqR8+Ozygi39EviaaK25+ZSswFX
         T5VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747836640; x=1748441440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j2m/AQHhUKCMB2ooeH4OXmkM2QdyDkeRoTJbiJc49Qw=;
        b=rdxAw0ZG76qmFvCT+RFctrIKtaDndtld7pXu51x5pze1jRnk1JN1q45X4dyo1HanFO
         VWyKNciSaj9UW2otkqN8BE4NBATt1bEoHlpmUGj9HLbd+97U3vgDeJl5vTvVbheo7y/t
         YNMgGEoHjqJE5149z7ukC1wAwDtuurrgqSMvuTIZ1rEqww/TxxaNWHefsSm0IqZ+OmAN
         gX4NXkQPKEDzaAjxlxez/XDwqGEWNq22bFemKFh4/DCDROn1PU8v64o9eLtOYn4MUgu6
         3e5+1/0974VjEyZgFD60KE2xEcxJwHxEZSkgQZcSMjGdxAiLWcpG1+FIhwT6T1jF3lwA
         wlMg==
X-Forwarded-Encrypted: i=1; AJvYcCWr0sW5fadIdmnDtZbgVxko9tJil+RkZTDsBkMsExJlG5PdjzD94vJsLnE8tHr5ycgFOEfINWF8Rck=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmclYzZdEhXF/hxWm68p8mQnXjp3Dj9RgeGTJ9tIXB2FdBg426
	8hjy5ywvKfYKgWThyo3YxdTkoB0NHAziRhLLajHcVHgMz+Qv0umasJml/Au2ovixG6G9yDGnsPw
	lE4Og
X-Gm-Gg: ASbGncs25MUpq44G1rJ8bzr5hfrLvBq+2A/aAqLL1CV0sCuFHpB7QdC18vawkvd1WrW
	5YA3ukr8GBK+vgaYB6AlbpB3qYjYErVtKQyvCmFG3H29Z8GaVB4Y/++T7MttO/oIBcAU3kGWJqL
	5YGxzAhqRMveZW7Le36QP+ARjFTw0GLHjxMm3w2plUn0KApJgvgVxbzZPdPXyKZx9yR6ysylVcB
	7PTxH1jYezdws2dfEfyMqF14/C+nFlgYv29sTu87anUy6EUp96QXqjFgqxk/TMOmSH7hxTAj9+A
	FVhEm1LU6mCUOzkjpHHB9A/s8a6bKYnBGGKF1Lj97bHxzpazhmv3lsDg3Dph2sXUZYKVGImXn0a
	PElcW
X-Google-Smtp-Source: AGHT+IGdD+yAG7ixkuPBvb5SmYpr1MB+zCBzWTmXhHcnzFLU4L4Om8QGyJVgnGJCce8K1qT9dbWwIA==
X-Received: by 2002:a17:907:968f:b0:ad2:53fc:a884 with SMTP id a640c23a62f3a-ad52d549101mr2013009566b.29.1747836628448;
        Wed, 21 May 2025 07:10:28 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d271916sm914552866b.69.2025.05.21.07.10.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 07:10:27 -0700 (PDT)
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
	kees@kernel.org,
	gustavoars@kernel.org,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	john.madieu.xa@bp.renesas.com,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 12/12] arm64: dts: renesas: rzg3s-smarc: Enable USB support
Date: Wed, 21 May 2025 17:09:43 +0300
Message-ID: <20250521140943.3830195-13-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_071041_697638_D348DDD9 
X-CRM114-Status: GOOD (  10.80  )
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
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

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
