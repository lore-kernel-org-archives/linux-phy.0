Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 555E5C87FCD
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 09:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozI7OW7bA+dd5xegu9HOpWo6ILCBhPr2enNK0TG3rvY=; b=H2ez3Wjan2A7fF
	bOMBVW5rnqF8ZKcIIXFJ8ykWv7hKqdUx/XMpAQOJIZ524+sxJCdoetvQrCHhb2NZLdn99EfIDfhmP
	VFHAJJnPKzp/ag6z3YaMTtNi6elu7h4iL5/2QTVE1SkGL/QRcxd41iJRlt/z7rDljxpBuzLIprdOs
	v7u0mkqiBcrnO2i1SMAm9nU8o5L593GKZrefRkEeFWkA1MI/CYpLcFQ2bBO/BlgQ9VQhnAwJ/dCDT
	b+rcZo4wh+3dIJuR/lVkbYULMXNcrvviupDc6ChgkhLRinYn+9C9LmfdrYOneiWDexJ6UbkM6WlPT
	2m/+JQ4gFSMabmMRarvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesbp-000000077Yw-0Pfx;
	Thu, 24 Jul 2025 09:51:29 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uerVb-00000006u9n-1muB;
	Thu, 24 Jul 2025 08:41:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753346458;
	bh=ujVdYOL/kD6nq4vkzbaijjYm7dNaRsIKSU9o/0er5HI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=leJi8MqpM1LFfjdNNUZhgteybFuRy2qMNZ5aNDLl7SrT8+QpHpAG1pu6r3dR4xroT
	 NaaXgJrG9tVUdrw14YtwRdLDJKoEPg0N5w0na+smo0JcnSWzV/XnrteBtQ/By5Fd2z
	 AgZ3xJ1pKafoz927DhxGJ8JsNUYCL/MY0kXOIRwCIdve0aAxOfkZdOEjEF3SAXxri7
	 tJBcl2WMX9ukok/tRPn2vIoBVJm9dtgx8R7sgEl6ogITLwG5XiEeR53+ICQU6IUJy6
	 hHPTg04wXXbLRui45XH28kbMZdNC9nFUVK9IM98TpBNA7IGusA6yf2xYyrdaYjfvS+
	 plLudM1jVUBFg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A60F617E108A;
	Thu, 24 Jul 2025 10:40:55 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org,
	robh@kernel.org
Cc: herbert@gondor.apana.org.au,
	davem@davemloft.net,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	jassisinghbrar@gmail.com,
	mchehab@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	chunfeng.yun@mediatek.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	sean.wang@kernel.org,
	linus.walleij@linaro.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	andersson@kernel.org,
	mathieu.poirier@linaro.org,
	daniel.lezcano@linaro.org,
	tglx@linutronix.de,
	atenart@kernel.org,
	jitao.shi@mediatek.com,
	ck.hu@mediatek.com,
	houlong.wei@mediatek.com,
	kyrie.wu@mediatek.corp-partner.google.com,
	andy.teng@mediatek.com,
	tinghan.shen@mediatek.com,
	jiaxin.yu@mediatek.com,
	shane.chien@mediatek.com,
	olivia.wen@mediatek.com,
	granquet@baylibre.com,
	eugen.hristev@linaro.org,
	arnd@arndb.de,
	sam.shih@mediatek.com,
	jieyy.yang@mediatek.com,
	frank-w@public-files.de,
	mwalle@kernel.org,
	fparent@baylibre.com,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	linux-sound@vger.kernel.org
Subject: [PATCH 35/38] arm64: dts: mediatek: mt8195-cherry: Move VBAT-supply to Tomato R1/R2
Date: Thu, 24 Jul 2025 10:39:11 +0200
Message-ID: <20250724083914.61351-36-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_014059_610232_36C1B1B3 
X-CRM114-Status: GOOD (  10.38  )
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

Move the VBAT supply to mt8195-cherry-tomato-{r1,r2} as this power
supply is named like that only for the Realtek RT5682i codec.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts | 1 +
 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts | 1 +
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi          | 1 -
 3 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
index a82d716f10d4..a50b4e8efaba 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
@@ -13,6 +13,7 @@ / {
 &audio_codec {
 	compatible = "realtek,rt5682i";
 	realtek,btndet-delay = <16>;
+	VBAT-supply = <&pp3300_z5>;
 };
 
 &sound {
diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
index 2d6522c144b7..a8657c0068d5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
@@ -13,6 +13,7 @@ / {
 &audio_codec {
 	compatible = "realtek,rt5682i";
 	realtek,btndet-delay = <16>;
+	VBAT-supply = <&pp3300_z5>;
 };
 
 &pio_default {
diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index e70599807bb1..d40f4c1b9766 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -535,7 +535,6 @@ audio_codec: codec@1a {
 
 		AVDD-supply = <&mt6359_vio18_ldo_reg>;
 		MICVDD-supply = <&pp3300_z2>;
-		VBAT-supply = <&pp3300_z5>;
 	};
 };
 
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
