Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3548AC77B77
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 11:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Qql7zXzepGKkJ0ytEZ3IbTMEikrRzIWGUo5qHHJyYI=; b=P+kXo+J+irtc1V
	huy0RrHflTSfKSmrI+3EgJek88fNr/x009Cnq+aMoSCUpJXPRwQuyHmmw48abZWv5tH7td/LNYfsN
	zZCsv2Klot7Sd54Z67b8fkgcvEtIqSlo+dn7HxpQg5EcvCDbTH/3e6Dam+gclSih1etVOjIzIDX3H
	APXKaxfKSQlwLhuyu6frpPZSVnqU8Smo+aIrrHwwEp2GHmZ5IZZYrQJhdSWPLVeKF562psl+h5/CX
	9+5vK3apVolvlHYGmlfkqgefukZnOWXNF8OoSGx0u65H1VwiEXcaYmuIwHCzjCs6SypVx7aoYe5+b
	Jyj7xfi3Ep0LVcYt+i5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYhR-002rLP-27;
	Wed, 12 Apr 2023 11:31:41 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYeG-002o9z-2p;
	Wed, 12 Apr 2023 11:28:35 +0000
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3B916660324D;
	Wed, 12 Apr 2023 12:28:22 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681298903;
	bh=FrZ0bhYSUc3f/6EFDPkgRvN3ofxA9mQ25dTr2lufmAQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=H8J6WREJiSELQuQdZAUz06U2x3wIhPE+Q73DAEJDcHAcSc9VSJDn3cW93Gr96UhOP
	 cDi5DV6unFsMDzilzcl3hZLFPCTwx3Pukl2mFwU71JHaBzJ2yyXe3Z7KA+s/JC7jho
	 y4DZuZ/BblFZ2xonu/ZK+OUKSyeyZPQdRQHXyq87SORhUaosLkUSNPmhb/gnmvwnY/
	 2di2KwWct0SxcrpIrPd9Bc6FCCLRBHerlNBBM84qKxMEIk+ZlJJhWcrxJJqhEtNGl+
	 1tiwyeWlhwQkAdiHk8G+xC5NTgFQd86wKoDDajqup5ztiKjP/29yuHs9/1tB6gIyp3
	 3SJCSlOfuWxBg==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	jassisinghbrar@gmail.com,
	chunfeng.yun@mediatek.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	thierry.reding@gmail.com,
	u.kleine-koenig@pengutronix.de,
	chunkuang.hu@kernel.org,
	angelogioacchino.delregno@collabora.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com,
	xinlei.lee@mediatek.com,
	houlong.wei@mediatek.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	kernel@collabora.com,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: [PATCH 27/27] arm64: dts: mediatek: mt6795-xperia-m5: Add Bosch BMM050 Magnetometer
Date: Wed, 12 Apr 2023 13:27:39 +0200
Message-Id: <20230412112739.160376-28-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_042825_096151_AB7CF600 
X-CRM114-Status: UNSURE (   8.63  )
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

This smartphone features a Bosch BMM050 Magnetometer on I2C3: enable
it with the BMM150 binding, as that driver supports BMM050 as well.
For this sensor, there is no interrupt pin;
readings were validated in sysfs.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts b/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
index 0b0519f6b2f1..b5746e6d0b15 100644
--- a/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
+++ b/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
@@ -75,6 +75,11 @@ accelerometer@10 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&accel_pins>;
 	};
+
+	magnetometer@12 {
+		compatible = "bosch,bmm150";
+		reg = <0x12>;
+	};
 };
 
 &i2c2 {
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
