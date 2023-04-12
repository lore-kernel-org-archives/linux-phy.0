Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B158FC77B72
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 11:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qhl2fmzgHLgTtZgqUYMe+s/e7I+T3YPs0fqlQjIr5Zs=; b=jgSAl+Nxn+A4tR
	3yV/Em0KzG22kd0iFSKrm0cDzewnHnqaVWFwpf+h1PVWFl3Kd4pNhWidyj2cMgWghcJX3igdSrmVA
	3B7Rzjs1kQsOuz6jbMiyIMzwUm7PKAv7h30FVNe0mc3ZymZywz6YA7j9lDG//Hs6C8UvdU78aSIcw
	cMm98BUxP/+1R8DFVERnoH+BG+kJX+ShyipgYiAPeguC0xg34D10NBQ49AGH0TYza8+uCvj7qkGX+
	knw+6jwesUdcg3WFNZ8WEC9cDd0cah1hDDeDQYhZjudX1RLhmZbncolXflYBjJIDmYz30/5kw/hdP
	B2NIQCnAoKnZDhkmPW1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYgb-002qRM-2E;
	Wed, 12 Apr 2023 11:30:49 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYe6-002nxX-2m;
	Wed, 12 Apr 2023 11:28:16 +0000
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 65634660322C;
	Wed, 12 Apr 2023 12:28:12 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681298893;
	bh=FBEtOJ4WIs2BY9QNkotVKZUvt7CQzM53jFa4FvLuaOU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DoAp7wTIj1oqZn671PpiSDWzBbaVQ4ovQGo02MLSH9jh2QhQzCG/mpRMzm0xRzhrr
	 v9+b7inz9dkg+vX6tWhbS93utWRW+io95SFdVmlDy/JZ1Oypsn7EF3Zo9KxnWrqQN5
	 Ih9qxPG5xZ6/xcjq+KpEWcpHf5SRXFI7GTDfCuKthurFADfPnKBEyLjEV/794Ui4fB
	 FFxpuexeNlO4cpeYi+AsEGgPtSGgsrGJ97cHLaOVhv73lN9BStPj/13Tju1jXh/NMr
	 ehMlB9AcJcIqYo0loEHD9jY9AOOK9/NgAh41AsuP5iYysfQWtfB3kaz3PffcnP9a9E
	 zYnotGletuYNA==
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
Subject: [PATCH 20/27] arm64: dts: mediatek: mt6795: Add tertiary PWM node
Date: Wed, 12 Apr 2023 13:27:32 +0200
Message-Id: <20230412112739.160376-21-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_042815_048883_FDD90F7A 
X-CRM114-Status: UNSURE (   8.46  )
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

The PWM at 0x11006000 is the tertiary PWM; unlike PWM0, PWM1, this is
not display specific and can be used as a generic PWM controller.

This node is left disabled as usage is board-specific.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt6795.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt6795.dtsi b/arch/arm64/boot/dts/mediatek/mt6795.dtsi
index cf45cb4ad3d2..50d9276d18c6 100644
--- a/arch/arm64/boot/dts/mediatek/mt6795.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6795.dtsi
@@ -583,6 +583,25 @@ uart3: serial@11005000 {
 			status = "disabled";
 		};
 
+		pwm2: pwm@11006000 {
+			compatible = "mediatek,mt6795-pwm";
+			reg = <0 0x11006000 0 0x1000>;
+			#pwm-cells = <2>;
+			interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_PWM_SEL>,
+				 <&pericfg CLK_PERI_PWM>,
+				 <&pericfg CLK_PERI_PWM1>,
+				 <&pericfg CLK_PERI_PWM2>,
+				 <&pericfg CLK_PERI_PWM3>,
+				 <&pericfg CLK_PERI_PWM4>,
+				 <&pericfg CLK_PERI_PWM5>,
+				 <&pericfg CLK_PERI_PWM6>,
+				 <&pericfg CLK_PERI_PWM7>;
+			clock-names = "top", "main", "pwm1", "pwm2", "pwm3",
+				      "pwm4", "pwm5", "pwm6", "pwm7";
+			status = "disabled";
+		};
+
 		i2c0: i2c@11007000 {
 			compatible = "mediatek,mt6795-i2c", "mediatek,mt8173-i2c";
 			reg = <0 0x11007000 0 0x70>, <0 0x11000100 0 0x80>;
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
