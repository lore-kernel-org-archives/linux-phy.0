Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BA9CC83F26
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 09:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfqcD8rZyJw9KrXs3mV3xMMze1XmTEgm/yZk+txTQn8=; b=1DGF1yP/h3aK5z
	b9/GBzp/KCySXP5MH7oypqjBCdNEnBrcfiaOxRIEIs5bFMf6kxf3o7A6xRAXbMkBAmBnF48gvGbzm
	po7jdxechu7PH0fvWilxnXVRrWNHPWKhOnPJKP95bSX09w56qfp97epr5bcAv0yW1pSTmmeNv4VDx
	HeAJQKLE3bXYcp3HzkENIt/OpBIPeRCtDmNZZxsODe0Y8A3vhfasC94y5oSh0slcywdYjR1gOqoUK
	kMAazQLz8+GxOL/nsScUGhoibCXsmI6NEyRlmyZO1u+G/PyehxGNczXT4EADeC0EZsziI43qqtU2L
	CoLFMm5o5veLaFr8lwSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesZD-000000076lK-1diI;
	Thu, 24 Jul 2025 09:48:47 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uerUs-00000006tj4-279E;
	Thu, 24 Jul 2025 08:40:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753346413;
	bh=U0NhcerLHh1oCate+eEdvddToxEmvxRAGAsruPXeFfk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=M1PkibsZJVm4lfM/B30w/FE1YR1hdRpr+dgUH6D+9x3tT6+5tdd+5ekkdsFw5YFOt
	 iVmsu1Tib12DcEhckh+r1cx+EIJ9NTC97S1zvhgxFBoV1O+gCGqmRbPnoJgtLN6yN5
	 gK0Tnt8NLLW4CNplefG8yj7yws83ZT5puhFYR/DT5akTyq0UwPkxS1ia4segWdk1IT
	 HNZEIc5PPMCeBU0gAVMLO/5s4UdDcTxbltNXIdjxdM3W4dxib6xUXmKyl9sG6uUKMq
	 VeK5bRPgOxovc9+NtBJUZ8QqBj8VLsw2or3cw6rn45q+UuRUNH6MsUvLL6h4t77Zus
	 EebcnjLnf4a1Q==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id ADD6217E0FC2;
	Thu, 24 Jul 2025 10:40:10 +0200 (CEST)
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
Subject: [PATCH 18/38] arm64: dts: mediatek: mt6797: Remove bogus id property in i2c nodes
Date: Thu, 24 Jul 2025 10:38:54 +0200
Message-ID: <20250724083914.61351-19-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_014014_705552_D64BFBE1 
X-CRM114-Status: UNSURE (   8.15  )
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

All of the I2C nodes in this devicetree has a bogus "id" property,
which was probably specifying the I2C bus number.

This property was never parsed and never used - and besides, it
also gives dtbs_check warnings: remove it from all i2c nodes.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt6797.dtsi | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt6797.dtsi b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
index be401617dfd8..f2d93bf6a055 100644
--- a/arch/arm64/boot/dts/mediatek/mt6797.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
@@ -285,7 +285,6 @@ uart3: serial@11005000 {
 	i2c0: i2c@11007000 {
 		compatible = "mediatek,mt6797-i2c",
 			     "mediatek,mt6577-i2c";
-		id = <0>;
 		reg = <0 0x11007000 0 0x1000>,
 		      <0 0x11000100 0 0x80>;
 		interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_LOW>;
@@ -301,7 +300,6 @@ i2c0: i2c@11007000 {
 	i2c1: i2c@11008000 {
 		compatible = "mediatek,mt6797-i2c",
 			     "mediatek,mt6577-i2c";
-		id = <1>;
 		reg = <0 0x11008000 0 0x1000>,
 		      <0 0x11000180 0 0x80>;
 		interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_LOW>;
@@ -317,7 +315,6 @@ i2c1: i2c@11008000 {
 	i2c8: i2c@11009000 {
 		compatible = "mediatek,mt6797-i2c",
 			     "mediatek,mt6577-i2c";
-		id = <8>;
 		reg = <0 0x11009000 0 0x1000>,
 		      <0 0x11000200 0 0x80>;
 		interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_LOW>;
@@ -334,7 +331,6 @@ i2c8: i2c@11009000 {
 	i2c9: i2c@1100d000 {
 		compatible = "mediatek,mt6797-i2c",
 			     "mediatek,mt6577-i2c";
-		id = <9>;
 		reg = <0 0x1100d000 0 0x1000>,
 		      <0 0x11000280 0 0x80>;
 		interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_LOW>;
@@ -351,7 +347,6 @@ i2c9: i2c@1100d000 {
 	i2c6: i2c@1100e000 {
 		compatible = "mediatek,mt6797-i2c",
 			     "mediatek,mt6577-i2c";
-		id = <6>;
 		reg = <0 0x1100e000 0 0x1000>,
 		      <0 0x11000500 0 0x80>;
 		interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_LOW>;
@@ -367,7 +362,6 @@ i2c6: i2c@1100e000 {
 	i2c7: i2c@11010000 {
 		compatible = "mediatek,mt6797-i2c",
 			     "mediatek,mt6577-i2c";
-		id = <7>;
 		reg = <0 0x11010000 0 0x1000>,
 		      <0 0x11000580 0 0x80>;
 		interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_LOW>;
@@ -383,7 +377,6 @@ i2c7: i2c@11010000 {
 	i2c4: i2c@11011000 {
 		compatible = "mediatek,mt6797-i2c",
 			     "mediatek,mt6577-i2c";
-		id = <4>;
 		reg = <0 0x11011000 0 0x1000>,
 		      <0 0x11000300 0 0x80>;
 		interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_LOW>;
@@ -399,7 +392,6 @@ i2c4: i2c@11011000 {
 	i2c2: i2c@11013000 {
 		compatible = "mediatek,mt6797-i2c",
 			     "mediatek,mt6577-i2c";
-		id = <2>;
 		reg = <0 0x11013000 0 0x1000>,
 		      <0 0x11000400 0 0x80>;
 		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_LOW>;
@@ -416,7 +408,6 @@ i2c2: i2c@11013000 {
 	i2c3: i2c@11014000 {
 		compatible = "mediatek,mt6797-i2c",
 			     "mediatek,mt6577-i2c";
-		id = <3>;
 		reg = <0 0x11014000 0 0x1000>,
 		      <0 0x11000480 0 0x80>;
 		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_LOW>;
@@ -433,7 +424,6 @@ i2c3: i2c@11014000 {
 	i2c5: i2c@1101c000 {
 		compatible = "mediatek,mt6797-i2c",
 			     "mediatek,mt6577-i2c";
-		id = <5>;
 		reg = <0 0x1101c000 0 0x1000>,
 		      <0 0x11000380 0 0x80>;
 		interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_LOW>;
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
