Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B8F9CA0EE9
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 05:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pww6Q+Tv2pM2t8LrwqWkKi5Vqh7PEvezRjUJRJt2Ktc=; b=T5RaghIsTFxKVO
	/KV/FwUbH/DnGVMRVycRS7n1pF8jpgEc92aTvQT7eX1wDM7wLhSSAe5RO1r4PAfDONtjfHOuBXWjl
	tygOxmkwuZSs/tDDchw+x1Gqiy/X6gcx7ZPdjKsKIOZGRs3WVCqyra7CUB31eLFM34m6q9e/72a61
	z31bXm44d1A30rCPKBbk+znXdcgPvpVLUYl/GZBAohhbTuieeSaU3slCKH1Fbf4MwqCQ2rvQFuCvn
	BuAkss9K90YTm1UUIZH2VpMkZc8LT+rPv8qLZzvt1EK6xkOA+IFvQebjcyZ2TCN5QpxMwl7nc0yty
	fnkNWrPwflJFDHKK34ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoF7C-00000009SDj-3vhA;
	Tue, 19 Aug 2025 05:42:34 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoF7B-00000009SCZ-0JyD
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 05:42:34 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3b9edf504e6so2298736f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 18 Aug 2025 22:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755582151; x=1756186951; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HtAQijMNmiJzhR3iqNiWjZGtdKFV/63GEvGceN77QSk=;
        b=BfUgywxtQ1xq4711a7KeIkpHNdHqxI+eYYXfpjH4VLFyhbc1jHOfjP9jD3X8H7La4f
         DjVPIAPLq80lQ1K8S773thcAdZFjqHae4mLLKhw3Fc5SPyBsvohmTA5lF1usOU0gl7KH
         gBLE8sSCSYo0deFxF9LD/Q6Pq0mM0tQlXq/mNkWbEaZQH65n6iDsLn1usOljj8HgayJH
         1juTOFl4PNbfQ7wuPv284zqXg6z62XpSXN8x2RGBisa8F2nQLNTOkNCzhsDLVhBdemAf
         OUl2u3PsSndibywFh3Xg8qeoxkeWRcaw7QFac43DsmJE4+8wYivj/k937eGuoGeV9FCE
         APnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755582151; x=1756186951;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HtAQijMNmiJzhR3iqNiWjZGtdKFV/63GEvGceN77QSk=;
        b=amaiEEDfLXKOCDlrBG+pOa8ReaMm4nZV88IbVsZgJaSJ5ucx2FAWtN5CqO6jbQHPdT
         4kuBjE4F6RkeH7fWhBkcInk8x4++qf6GwaZ5gpbOEbUOWbtXHIn+/Ubu9lfhD3j2Nj68
         1BDSuajUUIZLj4PE6u1zKc5fVy+p0U989sKUSGnkCa+1i4mNKoUTB0rVGR3vFquEg+cg
         a7jewd6f2RnaCErqi7kyhZYv80OCUembpUvFJ3GgDOqbZCt8c1Kfszv2yc3PaWAtzM1w
         8CovNO9LtEpdB3S/QQ5HcTNckGiLfuS+PZqg7chGO2vv1+oSfevFwq2Dhz3DXNfsgMk7
         H06A==
X-Gm-Message-State: AOJu0YzrsAI/kFdQl9F5tFT4n1YZi8FDUe9uGQzl8gX2imKVILTCv8I5
	gYaEJoe9fXwQ16+OLX2zP4dLA8xNd7n9t2bzKvuy/H1Kdf4LP81D48ze3xw/yW0IZhI=
X-Gm-Gg: ASbGncvRCVpp0pewaRfIuGuEGlbFijTC9BHi3rwFKYk0EHdRrXmIjASscWW+eGufp28
	3zxEM5If7Lb3WLEoPYZY9Y4o4bzFwwBaoVL7ZRmTtdHGM8nUVVzcLTFVruGC6csPVyOZqALjrqW
	uwa5wdgWGU4A7E9k0RH9BGS1ux2ySJlFVLU4Ie1HmtE34hyfPsE+NC1tvxF905GbbD7YoZW0kNj
	EqS9USpO8ZiWJy1Qa/Bke7xzXtEo1M2qAyFGOmAHzPwmVCPY/kmacSWtvEMmeWR5SlR2dY3Q5eG
	wGl+RmWp7/7U7VJIc02Cq/lPYEJ4co0GyyGLW87awDR9JOuJqbhIqQCfKV8w3AwS4niS812QbkR
	SLSYzRHvmo9fS2lv3X1j+bHKDOg61e2IZ97MsmmYcFcvV3gdfZhkmjGfeSUp1sE2bjvmvwMgrxZ
	vjFJpEnHs=
X-Google-Smtp-Source: AGHT+IE5u/Ji4OtEHAFWDMwa8ifQPzNcFhg8RELcPq72j0sZQDTpHXAZjXky2s6jwXoajRxZMsRWhQ==
X-Received: by 2002:a05:6000:2085:b0:3b7:90db:aaba with SMTP id ffacd0b85a97d-3c0e8beb485mr952895f8f.24.1755582151506;
        Mon, 18 Aug 2025 22:42:31 -0700 (PDT)
Received: from claudiu-TUXEDO-InfinityBook-Pro-AMD-Gen9.. ([2a02:2f04:620a:8b00:4343:2ee6:dba1:7917])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b42a9847fsm25097345e9.26.2025.08.18.22.42.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 22:42:30 -0700 (PDT)
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
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v5 7/7] arm64: dts: renesas: rzg3s-smarc: Enable USB support
Date: Tue, 19 Aug 2025 08:42:12 +0300
Message-ID: <20250819054212.486426-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_224233_118479_3908C698 
X-CRM114-Status: GOOD (  11.25  )
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
