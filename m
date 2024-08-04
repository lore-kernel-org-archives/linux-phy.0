Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68EC0C3DA64
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 22:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjdYwxBSnalxB4DhTDfHI8zbcvwPIVIf7PeBSatAjLA=; b=Z4uTdlOcZ4xJiz
	6qeCnDUqydeBQGaAZ/6BxbaQqeWuQQvDn9Z8WuTeYG71OTosRj+VgC4lXyvxH5tnrEbV0GObr0tB9
	AgcP1yXe8MaXwvEa8BdPOC7OLTH7os2ojL5dXufBCnu3yafZzfgNLxO8m/9saBjAZydXpC85Y6KVN
	3kpTASsX+4UPHmLcnWDfo65dIDk3QUnTi47gX9lOOwMa538FnVQMbOX7P5IoWQ1L25DA2K9x1JstC
	N8aVldGFS5CuAiOVZUzPUUVTm0qcHfcTSiF2JU44dcAxA0oe4Cank2zboSzpE8Ulv6/GSmMdvu0Ri
	kRms8GA/YV1NSz8/Etag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajIH-0000000E1AB-0WRe;
	Sun, 04 Aug 2024 22:01:37 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajD2-0000000DzaV-0yFk;
	Sun, 04 Aug 2024 21:56:13 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5a1337cfbb5so15113139a12.3;
        Sun, 04 Aug 2024 14:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722808570; x=1723413370; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2+/p7MgZYWM5kh+9ECMA6cWE3o9ZU9hqg6eDjlHC2ns=;
        b=NQ9/ut7N15C4zPpAezfiUmjpBYQqFOB5TzFEJsVD4hFcpFmpV4eznixhno5E7x7XBv
         KF5GKmoYl8eos2KxsE1/CLAScaBTdGfZFUJ96tOnasAl0fslKoY9Ewbtvoqt/Pyy/hMJ
         xlN8W6Hk1vMlHjSyDrz4VkNktiP7UPiqZzB5rrLlhjjrHjNK9WrhvROJFQDjde71RIVj
         EwXr87WIQ68CUajIUUQD487puVGmR6ZZplXq1J5HcD3vF5YqwBg/W8dg4jxlUMPnmhF2
         Ln16sUVUNT0PgUR3nVRHeFims0gFvtm0lZufy5HyHtDF29bV49npV6VsjSFrlMP1+zFs
         d35A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722808570; x=1723413370;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2+/p7MgZYWM5kh+9ECMA6cWE3o9ZU9hqg6eDjlHC2ns=;
        b=v3GXDTMeXvacGk3fdCkrrwWTV4CSywaxYgLYp8LQv4tZJGg364C+2faxs+X/Qnsx81
         DbEmC8PVp17jUjZNxudW0ZK3Fxv8LScCi6cgiZohDPXmuLEFRHgXsK5VU+hFOdvfytIU
         g/0L3nvG1bxTmFN3qV4tn/e3w2y7hnFkwZlwto3bsnrBr/THnffDFi8MGaYETaAPr1QS
         wRtoaPGXH22oygiBjVWVFuC5bTvL6zjpJhGs8m/xAyU8EP/yBNn9zvhzhuoxplfeuegc
         ERExvYfuoAoX+YCW15L+BNhJQb9uVxCSpTrr4q/V03JsVDk6OHuTDg8CXvKV+rcKm8C7
         7AmA==
X-Forwarded-Encrypted: i=1; AJvYcCVTFJkx69FPkvTljRcQjNcdWfFeNrDSJ0XFHwUDkFezfK9FrPiJvJx5tOJhPVK+1kBEN9Vr9DOiJokyoOxraf1BFrKOUIWorraOj/MIA5reFr3rtuo=
X-Gm-Message-State: AOJu0YxsbIkMew+05NWM1bNyO8AoEVdLQsExMX+Bzl3qRHtrqQcYS12M
	FJspwI9fNB2xl0a1Te1pECidQRuHSqaiNOxESKTPsUDqRNtCe61Y
X-Google-Smtp-Source: AGHT+IH8zoNedZrAXYOj7WYBa3ZkPcxPBBxBMYkykvUuk74jILXSIRAvBgxRPdz930MQzYMKOYCdgA==
X-Received: by 2002:a17:907:3f13:b0:a77:cc6f:e791 with SMTP id a640c23a62f3a-a7dc4ff1addmr811525166b.38.1722808570071;
        Sun, 04 Aug 2024 14:56:10 -0700 (PDT)
Received: from localhost.localdomain ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a7dc9d45452sm370485066b.111.2024.08.04.14.56.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 14:56:09 -0700 (PDT)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	David Virag <virag.david003@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 13/13] arm64: dts: exynos: exynos7885-jackpotlte: Enable USB support
Date: Sun,  4 Aug 2024 23:53:58 +0200
Message-ID: <20240804215458.404085-14-virag.david003@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240804215458.404085-1-virag.david003@gmail.com>
References: <20240804215458.404085-1-virag.david003@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_145612_296287_8520C4C8 
X-CRM114-Status: GOOD (  14.08  )
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

The Samsung Galaxy A8 (2018) has an USB-C port capable of USB 2.0
speeds, used both as host and device, and is used for charging the
phone.

The physical port is directly connected to an S2MU004 IC, but until we
have support for it, we can still use the USB device funtionality.

Signed-off-by: David Virag <virag.david003@gmail.com>
---
 .../boot/dts/exynos/exynos7885-jackpotlte.dts | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos7885-jackpotlte.dts b/arch/arm64/boot/dts/exynos/exynos7885-jackpotlte.dts
index 47a389d9ff7d..c1902d2f57cf 100644
--- a/arch/arm64/boot/dts/exynos/exynos7885-jackpotlte.dts
+++ b/arch/arm64/boot/dts/exynos/exynos7885-jackpotlte.dts
@@ -59,6 +59,12 @@ power-key {
 			wakeup-source;
 		};
 	};
+
+	/* TODO: Remove this once PMIC is implemented  */
+	reg_dummy: regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "dummy_reg";
+	};
 };
 
 &mmc_0 {
@@ -111,3 +117,17 @@ key_power: key-power-pins {
 &serial_2 {
 	status = "okay";
 };
+
+&usbdrd {
+	status = "okay";
+	vdd10-supply = <&reg_dummy>;
+	vdd33-supply = <&reg_dummy>;
+};
+
+&usbdrd_dwc3 {
+	dr_mode = "peripheral"; /* Force to peripheral until we have Type-C working */
+};
+
+&usbdrd_phy {
+	status = "okay";
+};
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
