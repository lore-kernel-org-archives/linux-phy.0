Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EF57C7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 11:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bcD7p+NEqovT9jQwvxJMitq0PjLzgobC0JCPo5B4B1s=; b=wzs3dOZkEdH3Er
	33Y9wc5Sb2xrI1c99Cehs1wq2BJlEi9kQiSK48PAFhbIHBE5URRr+6u3NeGICEycQs+w44rLW55um
	9AZo8D+rDXW6MocTzg4yCBYyESUaBx1MBdpf4sFrXkSEWmSw4FnoHAMzxIahXZgF7ldeF71u0FYIP
	SJm4xcKtIK7Qbxuo44QSBq21hTkqlRz68OtiV3z/mMm+ZMQQkcgc2usQNs6eYD9rSfFJTKMsgjeRc
	mauDOe7ptJaTPUEnwzR6rOLZFqq25D9h5PMJBWHcLHRhtrIack/IXxg9GgqNrx3CVpzy0rso4ZYqb
	mM9c7ni7ZpETwbfrr4fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYeu-002oq4-2U;
	Wed, 12 Apr 2023 11:29:04 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYdr-002nh1-0x;
	Wed, 12 Apr 2023 11:28:01 +0000
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BD5396603222;
	Wed, 12 Apr 2023 12:27:56 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681298878;
	bh=xWx6EegFN/Cbl8Z4PW24l4hQjXItZf81rLKoJwUO+Qo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=en1fQNlpo7h26/3IGRfMpiL0JCdY+sdr34CvR3a22Mg5ATikZObWikLJOC5tP/Zq8
	 yeNSzjV2lluyQoldlcc351dLO/sfJIWdfEtvAmFU/daLTEr18dweZIbLx0uyyEBD0d
	 VI9oB28mqgxMHs6Erw1BBiXpgRJjHV7j0WrfaGcaGhalGxcCqtEseHI4F/XQpcq9Oc
	 zyAh6aIfUVyaaTH2A8HCzS8Kyt9Kx3Yxx0LMqZ2Hb1X+lD1tOJRnF79Z4zdEOGxV3r
	 4BP5lZkpcjNQcHoSt2Cj0D5weFNsgCx7Q8y4+lRBRubKn3Y2Q21jHLcQVWe/sCt7nZ
	 b2pQWmeXfT2AA==
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
Subject: [PATCH 09/27] dt-bindings: display: mediatek: color: Add compatible for MediaTek MT6795
Date: Wed, 12 Apr 2023 13:27:21 +0200
Message-Id: <20230412112739.160376-10-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_042759_493161_3200DBC4 
X-CRM114-Status: UNSURE (   7.80  )
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

Add a compatible string for MediaTek Helio X10 MT6795's COLOR block: this
is the same as MT8173.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,color.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
index 62306c88f485..449b37c7560f 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
@@ -35,6 +35,7 @@ properties:
           - const: mediatek,mt2701-disp-color
       - items:
           - enum:
+              - mediatek,mt6795-disp-color
               - mediatek,mt8183-disp-color
               - mediatek,mt8186-disp-color
               - mediatek,mt8188-disp-color
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
