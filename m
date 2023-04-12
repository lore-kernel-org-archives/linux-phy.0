Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BD32C77B6E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 11:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25t1i0lN9x9Gi4NM1T71iOvlk/Z5u5wV0DNYjUp65Po=; b=xMGKyfjJ72ZpdA
	0jLsVxm7JxSf8h8ES32QDGYWMtERwSGCwebckIswgVZule1wqiUesziXFuZopBnMagl66Rmta6M0v
	QLICOW+sBkzaIlT/D0nA8rVfibLGtHJgMt0icarGM4TM+rPYg2TqMLjhh08LbMzT9dwGOJTUa6E4G
	+a8s+QVOb5cf7tqtzLZnJCwNaJXkZHyMIz7/gLheFHQEuJMkJDDViKaR8NlnXsllX+EFYFoc7iPnn
	JbENpydpeCm5s/cenTiM1ECEsBAyv63KS7LxTOTAU5z8J9YpQEQ7HmDjKS+62GLke3Z5Y56eCDqKH
	6HySZJmauS4cVTMVh51w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYdq-002ngc-0P;
	Wed, 12 Apr 2023 11:27:58 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYdj-002ncF-1L;
	Wed, 12 Apr 2023 11:27:52 +0000
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D08DA660320D;
	Wed, 12 Apr 2023 12:27:46 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681298868;
	bh=NzUsNWSsVvvmJv02n7djBLkN0Zq4SqWAI0O2gjnIL7g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TaSKHO3sqFHwQzFrGRDBpls+rHV/AP954ERZJw6yABDWUD5PIT4SKcKRFKQDqKDqF
	 Cx57kdOJOjloHkvOGcyxZjFZa/CdgAJ9H8BYQ4L6FBhm7kjkcYJj4ToOTQQX/yxLag
	 vc51ZMhp7l2xesHnA98ycICf28mCxFwhY02T9Qx/c4guG59O7y63UxwJ5B2Tc7XTr5
	 K9BdKBAVQujJ6o/z6dFYkN8P4arc0kpaB3BowYxcjqOiJ5ZbHmVf05YG38M06NytC3
	 /I9+60MfGHs92i3dGaXq3PgkHgi+hGUExGMNiNtDQwzHJft4thyWZE6LNM9VjPK4lQ
	 zzCWvsYIj8CDw==
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
Subject: [PATCH 02/27] dt-bindings: phy: mediatek,dsi-phy: Add compatible for MT6795 Helio X10
Date: Wed, 12 Apr 2023 13:27:14 +0200
Message-Id: <20230412112739.160376-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_042751_666310_A8753457 
X-CRM114-Status: UNSURE (   7.55  )
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

Add a compatible string for MediaTek Helio X10 MT6795: this SoC uses
the same DSI PHY as MT8173.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
index 26f2b887cfc1..a9f78344efdb 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
@@ -24,6 +24,10 @@ properties:
           - enum:
               - mediatek,mt7623-mipi-tx
           - const: mediatek,mt2701-mipi-tx
+      - items:
+          - enum:
+              - mediatek,mt6795-mipi-tx
+          - const: mediatek,mt8173-mipi-tx
       - items:
           - enum:
               - mediatek,mt8365-mipi-tx
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
