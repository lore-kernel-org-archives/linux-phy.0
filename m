Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 654C7C87FD3
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 06:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3AhZoeja1TgkXljGXLuRZiry9sODy3jqQLM0LMbYjVs=; b=sxuOkMIdIOqThM
	feFsfaNyCY/zFp86s/fmf5g9jloP7CT5VZiYhqx9jcxC3kFeCnETX0IuO8d9r2Mrzw+AMg+AwBFWH
	1D0Z/bTBHDFiF7xoCxIsUWBBBgX8aWxDqnho8w0sbcIn53kIZejzhwXXfx0gUrYVOuVo8df6+JrGa
	RMMIYkuFVTYd+AAcqL5mDS6eXvhJjQUk6oW0S+fl26AwsfU8UrTCGHtgxbpXLxrULQnQwCpplfLb3
	roCtHYeQ9Zc06F8GGd6OmhJnx/VOEK4BXRNpIIRCEE47S271H6ykpWdQSRyI6Jkgp5bm4cflN8vtE
	m3unJ5O5JIW5sxsKJh4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGR7-000000025dY-0eMD;
	Fri, 08 Aug 2025 06:18:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGR5-000000025cg-2Ej6
	for linux-phy@bombadil.infradead.org;
	Fri, 08 Aug 2025 06:18:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2pwCItUf8lochLUJYKKJUMt5Wr88pHOpjuGrG4FTd+I=; b=nBs+sJt+0rrjfvyQme8KzjGLef
	SDJCHEPUeG+3JvZJqcbzQVSLNWgaEWbXbhs0tm111GxLNw5jUD5q6RgRrlPQFwlW9Rb/aYEdy2DZd
	Y4DVk6pB96ttUJWCYi6a/u9A3+xfJjULDf95WOh28m8akUK+p9150kP/0wIbBeoCVmUb6WqnD6vzk
	COceTKx4KoIPqHOY/nODwGHaTdexEWJdY3EQkS6FShwBvemSknDsavBT4gIFWmn8H7MewlmRBaSBf
	84RkkXvVY/qX01+TwNgDoUOcCBT/scUiXXA/qQNUQHndK9IgI9aDbv5XtCx9mQP2sjifukgs5SWjT
	opmKH+xg==;
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGR2-0000000EmDa-26Nt
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 06:18:38 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-604bff84741so3275365a12.2
        for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 23:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754633915; x=1755238715; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2pwCItUf8lochLUJYKKJUMt5Wr88pHOpjuGrG4FTd+I=;
        b=p2vy0uWbKtpz9uZYzOO/j814Qv1aJDTgk0jJXXcQyYCeGMd7kXtHlLV3vuMWWp7ZS0
         vuSk3sBQPwjZzgC5tmZCS19OVeMFdBlnIU+lRB7t3aFZHdsZFxLQDk4jhDNZJi5dtg32
         JZfTw9vuVTjCnZbyFTx07gdO7tExwgNVq8TxPc4Vh/m0gYndc6qAkhTGqBJ4bHLBZuYp
         azG88NjUtvkDNPlj9HtgzCWxHcC1Ehbhx7RB4MlfIxMUAe7bu3+ZIqSQu4UOBtqIHhJO
         OjwLPkF7ksDjKUQnBYIK74BcAqelyUnh6plArRCz31cHj0MkIfvhhiuoE7nnCa2LHgRN
         HaVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754633915; x=1755238715;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2pwCItUf8lochLUJYKKJUMt5Wr88pHOpjuGrG4FTd+I=;
        b=mZ4YmUZVQrPLXa63+X4cfKU9i7rbR7MDHWKNifFh8DG9l+ZVGTdIO0Yv14FkeCDgB8
         5kQ8KCp49O7scBSwjLl2WXYo5X6nTRKnDG/mo7LqAexPvlfRzbAUid+xx0lFsXxRMazL
         W5bEQNMQOyXGmHXMv6q/lH0ine2o8FdkpYXmiXUBjfD3PartB0+ppEsTqS/GTIm1OL4w
         TD329NpTFwxdq6h1NX74uzUQRHqjxcD8ySPmDLpcfli0f38mLEjRLP/wqlXt5Uy4vi8w
         WULJ31L8kN+ITYDqsWP3W5C+W57x1cBIeUfLYzirJeUdS9s1mv3gk2a0tG9MEiKCr+As
         LfKA==
X-Forwarded-Encrypted: i=1; AJvYcCXv1uJt+SYf9hKYwbaypVca3kXwsgMFAXJeo6iGY5SlxRQuBGzpojeVx7riW3RL9R25TAzTFUZ67uw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKXwA9YPWwu724kBWY8tsK/zq4PDoIBZgthGE5eUNvdkvJdSz+
	qm/M9tDNvlSbi5AKIsS5i7jNPZtFcGf1eKeTk0UtUpe0Q65qpu4t/GmDGRuvhV3OYnU=
X-Gm-Gg: ASbGncv/G/7sWFQM6C7OU67Tyf2o9bHOyOP2Yyk37GQbrhlEmOmAHa+7HtFUZV+ZL4G
	kz1u35p4rYq7NTjysYT2Ch0QY8XTHgIB/PoSIZ3PYFTp+LCrnYwI0+mnLviVpbfKqjyURFU2VpA
	57abNN7xhw4JS+TgpUkPmScio73ZBKlQKYQAs6Tg7FbTaELVOlFAxZKrMORtkKiAkFz2tm4x2pO
	+RCuVBAqfwe0+AT4qN90RBXKOeSBl/IFSMIUjjz0crm23GByUm7ZZjtjoMigI9uJ/yZctCQqWK8
	spvUYgpGNv+BkBzZxKh/go1xDR1+g7emLrzDGfLIci+prpmEP4xyi7nRDKNILgLWiV6l73Nz5ad
	mQJbn7kBSC04hMEumBQAiNWYdFINFE+kJKrZKWQrBc8Id7kwZd9ro
X-Google-Smtp-Source: AGHT+IEmiE/zbR2dVxwuOYRcd6Is9fffLfNLfVXgzHM7b0VqeTBk1rAyyw8ui+JOUCtHEfB6xw3DqQ==
X-Received: by 2002:a17:907:7f90:b0:af1:8be4:768 with SMTP id a640c23a62f3a-af9c6342033mr152769866b.5.1754633914828;
        Thu, 07 Aug 2025 23:18:34 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a218ab4sm1440488566b.92.2025.08.07.23.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 23:18:34 -0700 (PDT)
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
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 8/8] arm64: dts: renesas: rzg3s-smarc: Enable USB support
Date: Fri,  8 Aug 2025 09:18:06 +0300
Message-ID: <20250808061806.2729274-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_071836_737633_949FDF98 
X-CRM114-Status: GOOD (  10.84  )
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
