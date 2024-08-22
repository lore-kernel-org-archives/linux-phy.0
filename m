Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC657C531DF
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 15:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+K+mvO60Y5MLeEF90gvHL1FHv6HXic51/2MLi2xy40=; b=NulkopcZOF1m6A
	MRLzPha2WHppRYRg4SbafIYN8OAMgISgHsf4NmLB3UU5GHVJN3tg+iYg7Y68ygUbUK/h/q9yVt529
	h6lVHcNUfbbMAyaIJrIjQBHqMEANYYeeQeIGwCu0D/hWdre2F8RDq6R84AznGruGuLg5BwcmZXqi9
	WpQPJvyB6ZpQctgkV3ImFQ8rvkO0me34CaJwZPeEbY/HyH6h3bACRDoDawD9D7C/CHsBPiCTrwpqt
	ZVCbX+6ZLQyeVQBml27d0D0iBbvCVNhvv8KH3nQ+bVidotTgTI4qNEX5JPNQeRo9MCdv26RuHIyDs
	MFW1si6DsHe3wC8Gl3GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shA9x-0000000DSQq-2oe0;
	Thu, 22 Aug 2024 15:55:37 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh9k1-0000000DKyj-0YIC
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 15:28:50 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-42808071810so7545445e9.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 08:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340528; x=1724945328; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dHeWW2RAWv56keT/WvGpAcv9ZdqYWF6HJpLE3tjHw58=;
        b=TP0GrLYswihg+L8Dy4A0+5I+tHUkGlrZsV3Cid4kd74L1GefOKMO4WLpZCLiIXroAR
         BG3WLrCXx5mwaPBwUyH0Uv+k5DmP11SzsSunjpbZAzF1duWcrJd5ev8yxzhtj3jCe1rA
         hITHIo3fjlLp1zKyJtDiR8YwMzdbvMDbWNWIKkWfDGdeC6bBYlKsEWdQf1dTlGtOaGPC
         18mU6iTQAvrI+URto99h6b6nLtDQWqVRZ5SfIkBdu0HkD0osx3TR6WHgd32/QpIhlk5X
         MRTFJ+Kdsl5YsP7mY6N3W+nZEvZS+B8t9BKNWJucRJqMwVWXlrDGxS4DTr2dMmy7EAU3
         OZuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340528; x=1724945328;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dHeWW2RAWv56keT/WvGpAcv9ZdqYWF6HJpLE3tjHw58=;
        b=OE/pR7UGs6HrDucbPjv6KxPcsjB30iVSod/zLK39BAs6EozmWXdYu8RsHMDnyZaIjD
         vqZuLSSva5XayukI99o++JIGhsdLgvkPwk16NXKaLavVILnxYAyl84MW0L9IBpdk/U1Y
         0OUZuMY31krPOpmQfqrk4/jx32RpBDA13mdtOV+JpxV5fo02NviMwzzztWah6IyNbTiC
         BBRQ1/bmCNpUPpgU+cXlbQjXkS3m2F5QJYXmtkhqvNhOc2U9GCe/R5LI3vGusJriqb/6
         rPWb9GQ/1b5ETFAUdz/JEH5pn1f7/UGqcwwNcajpiHgtHT7Sjpo08IVl7ymbZOv4uREx
         /tjw==
X-Gm-Message-State: AOJu0Yw+gS+TGc2BN399IH4clTjtWyWhr1Woj4rupFtjDMy7BFPIg7kY
	+mFsrxfksszBQC8ELIiRwDuIxUohpYJMeWTvShFl4NqhuNM2YN2HqaDHeCrKI8M=
X-Google-Smtp-Source: AGHT+IEpM56P+rOfWzF8q9z39ghmNLCQnzP/RLGHl+du2H4z+ac9zrTbNQqtdYtd7xDVKiZkepmRnQ==
X-Received: by 2002:a05:6000:110b:b0:371:8e50:2d08 with SMTP id ffacd0b85a97d-372fd720340mr3982596f8f.38.1724340527530;
        Thu, 22 Aug 2024 08:28:47 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:46 -0700 (PDT)
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
	gregkh@linuxfoundation.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 15/16] arm64: dts: renesas: rzg3s-smarc: Enable USB support
Date: Thu, 22 Aug 2024 18:28:00 +0300
Message-Id: <20240822152801.602318-16-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_082849_197580_6D0A2773 
X-CRM114-Status: UNSURE (   9.23  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable USB support (host, device, USB PHYs and sysc).

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 61 ++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index deb2ad37bb2e..fd9355936803 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -66,6 +66,29 @@ vccq_sdhi1: regulator-vccq-sdhi1 {
 	};
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
 	key-1-gpio-hog {
 		gpio-hog;
@@ -124,6 +147,27 @@ cd {
 			pinmux = <RZG2L_PORT_PINMUX(0, 2, 1)>; /* SD1_CD */
 		};
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
@@ -144,3 +188,20 @@ &sdhi1 {
 	max-frequency = <125000000>;
 	status = "okay";
 };
+
+&sysc {
+	status = "okay";
+};
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
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
