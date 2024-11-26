Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74754D59D8A
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxbTL9zaK4TsLwJibE8Zd5m1D5Fm31eWVjs/o9Su1vE=; b=mAivsjc35kvPTx
	UMeSM7jpPTF6mnPtoBx0u7liwsz6zNulTyG9qxaDyiFYQ607gynhDwv09dPfDY636RxArQdFHY9Yh
	b6EzWUmRYZpbaraIqLYHU3Pzrkc43owIdijEgMeYc2fkhOUNdORNHlxIgrum55A5pHTf5Xv4SfflG
	SQSUF0zKwEwFT//LsWKy17DPL3OOXGAyvFRDqTWx2hy/Xa4mnC7g2+OQ0ltx11FOsmlRUVxkKLaob
	SRmZvYZPUUKhmQAsbQpHm+ZEls68g5iJ5cGkIFJIYQiZQ670vaQNie4suDr/BlSV9md6Q3q81Medm
	svC03wKE8PaHlQGPI6fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlL-0000000A7Rp-0STI;
	Tue, 26 Nov 2024 09:21:39 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlF-0000000A7Hn-0XuQ
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:35 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-382411ea5eeso3001490f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612891; x=1733217691; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WCzqc2TaOMYXuzsxltqgd9yUEqr7UmmqRYfJJbdxixs=;
        b=pMyXrOXgNfwtxe8XQFcOdvigVBpXc/jCiIkiVHlyupQ/jHoO2mHAMnxFZwiu8S+BUy
         SiiIEcDuPjrOdD6zSFOUTwyDzeX2A+RfNhJDCYGbqzzO4EXIWqWpsuI8Aj32h6fBq/gY
         +ASgC3hxetltEKJoQ0v7MJrhWUYT00ec9HRl0kf8b1WH8mcQwOQ60biet2vFU57AV+bt
         JkRQrKLVHPsZ+Fjzqa9fRWmkcbsQXK7IJovY0FHQeWrw2ZC+Q75Aj5jp9G7RPNvnRkH7
         98g/lXdKwN5K2eHSid1n2JklrmbNmAS1eBlaliAJ5pQJTrjETvSRKThs9c0PFfEgC6QX
         cgHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612891; x=1733217691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WCzqc2TaOMYXuzsxltqgd9yUEqr7UmmqRYfJJbdxixs=;
        b=mOOEBdZruNn3bsNeFSDyt3TqnHrMSuJA+oQMjBF45H5k8iEAhBiMv6FBRSH//gnSv9
         8PF8QaDSmk8hs+eIs7n2ZpVmuqnuOkHp/+EDDJzmWqUPhQAZXJvqD+4nPTok1duE+zPl
         ZshwvNnj9rBauffkq9gploXyyAL9nyi4jT0HdmECF7tjkacde4EpnhwlxZrIhwM9Sbdf
         gp6VVPeB/Rh95FLJ8MYRrka73JHXbT08BsDQHBAME40BHhOh3JbusWfKW3cojARgMOJd
         xD7CnkuE7kU/RLJ2FIwmElKwc11HuO0P4q+qQZwkySeOHe2J0KSJjRavwbWYaCWXLl+h
         lH7Q==
X-Gm-Message-State: AOJu0YzYOp7VLNqhW9kE6LAq+lVUh/stzRrYuR3mDruUhc+KggOTCcY+
	Dffc9hg4/Uq+1/2/Jhg4eB1p7aoLYvWmIBt2NN2CQ41e8EkvkBBFWO4IyIwVcJE=
X-Gm-Gg: ASbGnctDLuC5mXXrjE2pz9JiSsiNG8Mhu+PneLDDtRFzL7ABb88cQVDHRfWMIbQn/QY
	mAnGROLn0pcBpCdVGkhkSp66FMxC8DjbOMO2SoYeXR7EFFbHomeHONMubqCY3gJVKcwBT2Ilokc
	94DmeuyNYVMqyMVPvrHK3Ds0+WXQUEUYokhdPbobZuauVtIbdlOANrTfd7DvMPbIiZuF30unKUA
	0sffHc3tNNTtegmiX2D1nxvwuKwf15hfQ/9JUwxvw/S9YmrjBIXkr5mIlnLxcoQJXuMaxDBmnpu
	R60=
X-Google-Smtp-Source: AGHT+IGt16Gf28ygqBUeg7Z1sI/QNXodT7+mOuBvkflJeOYMzIEcDxZQSC743PyULKBWHu6xn+lhzw==
X-Received: by 2002:a5d:47c5:0:b0:382:3cb8:bd4c with SMTP id ffacd0b85a97d-385bfaea942mr2316685f8f.12.1732612891193;
        Tue, 26 Nov 2024 01:21:31 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:30 -0800 (PST)
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
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 15/15] arm64: dts: renesas: rzg3s-smarc: Enable USB support
Date: Tue, 26 Nov 2024 11:20:50 +0200
Message-Id: <20241126092050.1825607-16-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012133_273098_C74BAE9F 
X-CRM114-Status: GOOD (  10.73  )
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- this was patch 15/16 in v1:
- dropped sysc enablement as it is now done in SoC dtsi file

 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 57 ++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 4509151344c4..84523e771ebf 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -64,12 +64,35 @@ vccq_sdhi1: regulator-vccq-sdhi1 {
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
 &i2c0 {
 	status = "okay";
 
 	clock-frequency = <1000000>;
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
 	key-1-gpio-hog {
 		gpio-hog;
@@ -128,6 +151,27 @@ cd {
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
@@ -148,3 +192,16 @@ &sdhi1 {
 	max-frequency = <125000000>;
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
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
