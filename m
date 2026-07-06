Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B598C43602
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 22:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8RjotNb56j05JAkkyYlbc5Qjh6t8EWqyv4/6VCgjZU=; b=GzX81VeUg5osyO
	QQqOYdJtjuGLK07fFHRUQTlBUz28Ff6CbLovnGzwvvroUQ7exm6JKKa1mIp12JHSLT7c1YI+lkZm3
	WgTy3U/uElyQzHqtVuIlycZWnjQnsV/CYjZjiaohpy524VIscQUeYpj9LDITKLRMNaJFdjWLuFend
	VsTgf//mTHEdm6tKt0Sfe9EC2dfyw205W64e0sahETxNw2C3CdvcSlo/PCSVVbzkjthIs05QipQ7e
	+zbaQ8aaCXQj8sWVmAaUA4e+hftg7cJ9oBdcAIQ7J2/uM9iv/nfDtH8HNvAbaJQo03+81ntvft4Js
	wFi0VZ5W/q2RMxKL5XjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgrvg-0000000Dj85-1RnP;
	Mon, 06 Jul 2026 22:36:44 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgrvc-0000000Dj2g-1uMK
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 22:36:42 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-47dc6e04367so469218f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 15:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783377398; x=1783982198; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xqBkhvyelySc3loJx/J76CZgVdNYoTTPG8StLA3hSFU=;
        b=g6N1aKTlEbTeV2cihkx40ECxnyZP/crLC3Pw5LEd1ucw2VjkMe+GboqQLjvfSGpZjt
         93dPVfo/3ROOetbKthwvl2C4+tIUJjHU1YzsYwK4rTHzkjrMmOiInG6cMqGunncSShKv
         wTbfFWKFXD0mcXU4e5q7TyWcMAFBV9opu96gGh9TWy9lZIh0qiC6Iomjb0rkfRm9ZVu3
         IW4xjq38hFJVfnPivM2WbdiuDR7b9322VBJMat0+e6fp66NaYS6VqHtaUWfLzEh/f3gG
         7U+oY1BNYg9dz3AhmtqT+k5xH4OPcDBn89/dEB2rZpy0+c+fpcoTUhu3WJVMtJs+s3U9
         pj2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783377398; x=1783982198;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xqBkhvyelySc3loJx/J76CZgVdNYoTTPG8StLA3hSFU=;
        b=SbR7FItflgTc5NpwDDz1XgYc0w4/1s+4F4lS6lOmxYCu7WDyj/GLE9+ldBo+mBLzmB
         lpY2/cJ3XzLtTE/w2L3NEPe2q7g6rx/NorGM0H6VfkJa6kzWCbACKzpzKiN4UYSvWaws
         WuSK67yMBs9JSqx/NCeVp2zOiMQDsF/OXyvV7hA/Lrac+SKZqRwoKGKYj4Uni4JTkl8z
         OXnEsqsaIbsO+oQ2WICZsAygf4ld7DO13GU7n6UWMJ89cc+FEzuLETz/0+5wi6T5l1Hg
         zLoc0YbgGDyM3wWPgJoR/0yb9eu9s04fZfKXRUypfHptdzzNfliqf9BxZa9gofQdk3DV
         HKoA==
X-Forwarded-Encrypted: i=1; AHgh+RpA1l6INBC+lRzrKSEJR5rNEQU7hL7K1615nhBUu2Ajl6w2JT3zWrxb2IX/RbdSpjtmEUF3eosd07Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YwhUtA4vXvOL3tqp8qp743yodvaRvIlUEcYILMV5SQfu/0tFCdA
	zE4lQoWVyoWvlsZNlmSbIKuiCsSo3Sw0vzUBHThwasxVm04Lz52emr06
X-Gm-Gg: AfdE7cleLJoj7BK4n2YHe1fPhdQc4WPvq7D1t1RwVS8cSjm7+ZDaKzeJE4Rb5tofPv/
	ZE7jz4cYTG27edh3VUOrG58p6YWzW+aweocI7EAYeUfuYjRdASNxltwEDlImK/ywVf1d7IfeZz7
	JfJX59kLaOQscYOu+kldN0/uLWehcfd8p1XakatpYmp7/bS3V3t+KwziH8w4ICSsMbo1BheV5LP
	IG9tFvnpxQedDIdm9A9qhAkSBTpWMA4QRsZZ4LxLNINCtSvgZOev77Ls2lBl71ILpGlQWTVGpNa
	Yx0zMkdgdJ+sp0nyPjxJMmhksc+0z9gvpSKcT5ROdlJSzbt5WLX3PydOkuQySgzHs5Fydz+WFeB
	ZH2CIn48/vkQmnqVagxbtV+C7AdVZgy3yUadrfDAt4OJ0QixZfxaIEZljdrngtvWm2QN5u0q04T
	kzFTFkXGIJM1P31DK9wH5kdsL+q17aba32aIuDcqMk85lQ+v8UasJHGtmTKh9ikg==
X-Received: by 2002:a5d:6382:0:b0:462:fdf2:3a50 with SMTP id ffacd0b85a97d-47de66a309emr1878338f8f.32.1783377398441;
        Mon, 06 Jul 2026 15:36:38 -0700 (PDT)
Received: from turbine.fritz.box (p5785b224.dip0.t-ipconnect.de. [87.133.178.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9e4d6da9sm27491387f8f.12.2026.07.06.15.36.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 15:36:37 -0700 (PDT)
From: Andreas Zdziarstek <andreas.zdziarstek@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Frank Wang <frank.wang@rock-chips.com>,
	Louis Chauvet <louis.chauvet@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Andreas Zdziarstek <andreas.zdziarstek@gmail.com>
Subject: [RFC PATCH v1 2/2] arm64: dts: rockchip: fix gadget hot-plug on ODROID-M1S micro-USB
Date: Tue,  7 Jul 2026 00:36:27 +0200
Message-ID: <20260706223627.113814-3-andreas.zdziarstek@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260706223627.113814-1-andreas.zdziarstek@gmail.com>
References: <20260706223627.113814-1-andreas.zdziarstek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_153640_556982_199FBE36 
X-CRM114-Status: GOOD (  13.32  )
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

Referencing the vcc5v0_usb2_otg switch as phy-supply of the OTG port
makes the phy core enable it as soon as the USB controller powers the
PHY, so the board permanently drives its own 5 V onto the micro-USB
connector's VBUS pin. That blinds the PHY's session detection: VBUSDET
(fed from connector VBUS through the on-board 10k/15k divider) is
always high, no bvalid edge can ever occur on plug or unplug, and the
OTG state machine never wakes from its initial state. A USB gadget
only enumerates if the cable is already attached at power-on. It also
back-drives 5 V against the host port.

The inno-usb2 driver has no role-managed VBUS supply support, and the
practical use of this port is as the board's USB device/download port.
Separate Type-A ports are available for host functions.

Drop the phy-supply so the port never sources VBUS and pin the
controller to dr_mode="peripheral" to match that.

Fixes: 10dc64fe0f98 ("arm64: dts: rockchip: Add Hardkernel ODROID-M1S")
Signed-off-by: Andreas Zdziarstek <andreas.zdziarstek@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts b/arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts
index 33bc5249d729..d9d4a31373a0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts
@@ -602,6 +602,7 @@ &usb_host0_ohci {
 };
 
 &usb_host0_xhci {
+	dr_mode = "peripheral";
 	status = "okay";
 };
 
@@ -627,7 +628,6 @@ &usb2phy0_host {
 };
 
 &usb2phy0_otg {
-	phy-supply = <&vcc5v0_usb2_otg>;
 	status = "okay";
 };
 
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
