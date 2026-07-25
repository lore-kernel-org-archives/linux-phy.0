Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02089C531D0
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 03:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xHtuZjJfwJlsLpZtR0uxFXXe9HN/cxrsdIc9+B/kYg=; b=BgaKINMZ1KU4NR
	G2TdsIJdXpBcrMfjznAGHrA64I0veBJCFaGo4S6Rk1PKWWhnfo2xbJ5aBzt6coib9IvJ+WK8CEGCQ
	OQgzw/aJaOaagEhhHgpGLQRD+AC+RzT18EhceQ9Gcl9aOKm5F2sdvci5DTiOVFmOmv0BhPnHODbit
	opFu1BTjwDbGLs9aYd2P/q9I5WlU4Sk7Ka3EuIgNaVzGp/hWDvHGLpkbuUS/nU94n56tKAJV1q8es
	BPykxGMFrS6SQI1SPRyW+Jgu08QiwFv40BG16G8araBQmtbOsVWOnyRMPlePLYlxwjtRU+wPDX/th
	eVFzvPTramRrZ+nzf2Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnSvC-0000000HXyT-2jGn;
	Sat, 25 Jul 2026 03:19:30 +0000
Received: from mail-pz2-x00.google.com ([2607:f8b0:4864:3b::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnSv8-0000000HXvm-3fEa
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 03:19:29 +0000
Received: by mail-pz2-x00.google.com with SMTP id 41be03b00d2f7-c96739a46acso596843a12.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 20:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784949566; x=1785554366; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VnOgmyFyaaGmxr13glRiK2+qIyg9Qu4CO8mOwq+CLUM=;
        b=RaOF5sC6tWcw3mufiIdB8XZwp2T/BAyJGnFM0zfyMGr08pyIwyZeiXf25aijSu6OKC
         Mcv1i95LSPSMewJdskrJFIfJLAXTccoCQ5mIJ9kBITwvnl/3hFqyCoR5XmW7x8oueYXg
         bhs2W18GSP+T2onNwuShJkqxiVupe8x0+FlzIZtrPHbgvTnVD13maW3fkL+0rAWN5WGg
         wZojgnMF8LiDvHxec/2IF8GG7OjEY+T+7+omI4z/5kemP+QUQS28wHLtSchyoe4cljF2
         uZMb0z6Izq0Q0n4FaBsAFewntPPmZo+IbSh9Tm0xmg37QBTCzYE7xfdZLz4EVmQfcNf0
         IJPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784949566; x=1785554366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VnOgmyFyaaGmxr13glRiK2+qIyg9Qu4CO8mOwq+CLUM=;
        b=ZzPxWrFjryQdAZGxyrxt2z1SNJQmJgyDXR7ppvqZirGH9H/yCkxJvmFepkjjVb60D7
         6IXVIg6Mzzd0PB/fyGAWHKuol97He1RNY0y3X/zRgpPPdkP/1omHdnJ47Tm/UKXfWcG4
         8IrpJAJQzj12GaJ5WYbpH+8K/9tRsMsH5PGol4Fvq5X/sOhiYV7SrlLDHoxnxtJGE9nN
         YXLC66+6F694kRwu2P1rsCZewcrSTs1WEMB0Fadqp0LNFS0HKaEYti4h++rqgi3JneqD
         3cRusjFuyDMTmbqD14EgAH6AJvlmNLJMqIecgaekIQTFYW8k7S7qWImlvqEHvRePmLbm
         /xjg==
X-Forwarded-Encrypted: i=1; AHgh+RrtZuFqN2Qte72Gc91nRragZfR0sP2siHhAdX22sykjYq/+OBeAKW8mEGnSfOWeVS14R4FdyB8+rgc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzYhy/OJHcL9ZCKKLqx63znCco7wMAQpHnB3qjELhJ1mLPyR5o+
	vbKD3m3nXpOCC7cCIBHUeCu5RChSmMLNUSfSy99mxtj8JdRNRPqZtopV
X-Gm-Gg: AR+sD12DoL3GWcCid4yMK2zRDOqxp2BMoTHY+sHT2ngyyLZ+XNws1la0U5CsuK1E9mf
	CtdcVYJl0kgdmW3pKBvAsQykHsSPPsBKzKMeVVikP4pIvpy8DAsmkbiauX5LXkqZqUP7slJZ0iK
	atqFidAj26S9IduulorB2BFoLvJqstMDj4RVD3onykGhrmf4RBI338dx1gm1zTl5ilZxL8WCXOz
	nkAfAnCwYzHeZ/HVnlvSA7FZw4/izZL/mVMudCsoRKrCrQKXvZcD5rH5CpjWdhqhlcrOZFZtYkz
	dUKyp1WGHnYCbFqTxn0sQI6SVuRhNsp2JNwnoSDRetjaaJq2otwkTId5DGGud3HNBN3Tg9MXIjD
	vekL8+KjYlYa/hH6ThX+eBy41ANKp/kzaV4KyJ5i1PHyMwHRnnIlR1fc=
X-Received: by 2002:a05:6a00:2d9b:b0:848:2a71:a48a with SMTP id d2e1a72fcca58-84e593ff0ccmr648871b3a.13.1784949566154;
        Fri, 24 Jul 2026 20:19:26 -0700 (PDT)
Received: from [127.0.1.1] ([2a12:a305:4::403c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e53432834sm640542b3a.50.2026.07.24.20.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 20:19:24 -0700 (PDT)
From: Cody Kang <codykang.hk@gmail.com>
Date: Fri, 24 Jul 2026 23:16:47 -0400
Subject: [PATCH 15/17] riscv: dts: spacemit: k3-pico-itx: enable the
 DisplayPort output
MIME-Version: 1.0
Message-Id: <20260724-k3-display-v1-15-f22a10a52867@gmail.com>
References: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
In-Reply-To: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, Cody Kang <codykang.hk@gmail.com>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_201926_936667_96372016 
X-CRM114-Status: UNSURE (   9.61  )
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

Pico-ITX brings the second DPU's output to an external DisplayPort
connector. Enable that DPU and the DisplayPort controller it feeds.

Signed-off-by: Cody Kang <codykang.hk@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 11 +++++++++++
 arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi | 11 +++++++++++
 2 files changed, 22 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
index b89c1521e664..6c31460990a7 100644
--- a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
+++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
@@ -6,6 +6,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 #include "k3.dtsi"
+#include "k3-display.dtsi"
 #include "k3-pinctrl.dtsi"
 
 / {
@@ -221,3 +222,13 @@ hub@1 {
 &usb2_phy {
 	status = "okay";
 };
+
+&dpu1_crtc0 {
+	status = "okay";
+};
+
+&dp1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&dp1_1_cfg>;
+	status = "okay";
+};
diff --git a/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi
index 3ee1471f3798..2f36eba20f1e 100644
--- a/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi
@@ -11,6 +11,17 @@
 #define K3_GPIO(x)	(x / 32) (x % 32)
 
 &pinctrl {
+	/omit-if-no-ref/
+	dp1_1_cfg: dp1-1-cfg {
+		dp1-pins {
+			pinmux = <K3_PADCONF(24, 6)>;	/* dp1 hpd */
+
+			bias-disable;
+			drive-strength = <25>;
+			power-source = <3300>;
+		};
+	};
+
 	gmac0_rgmii_0_cfg: gmac0-rgmii-0-cfg {
 		gmac0-rgmii-0-pins {
 			pinmux = <K3_PADCONF(0, 1)>,	/* gmac0_rxdv */

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
