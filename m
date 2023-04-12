Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16B75C77B71
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 11:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZ96yy0URokIbOO3dvWRcolArXMMor2TNPrX7yURHfM=; b=tZbQV/DPQ/rXOV
	h+bXRKKZCKhlwEe7Br3PqNN3ZZbWhvTNgyyA3Jq0zfZNaWn4Z6cpv/n5HOi67kuUfBBs+TqKyMnwU
	aXMAp1D8gKmrTM9fcuuHUw8LizbDOD/sRRLAoGXbCPsbxQ3tpGlPmAGqoOlBtm5IAASllikBrq7Ua
	xaxftX3v+VuWcXNh12tgCsqANib31soPLxZ178fp9R1fq1W7VnnYoBHZ6JSz3JDM9dOw3b80ezNSy
	kHJuhRFmV61owPj6pN36Bm3gy5a2s+qf3EbXb1geLYlg2mXjfrZ9OvZAXOlBo3harZ7bFH5YZnMKk
	Mz4UcWp8uwABCzbJMzXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYfc-002pSe-2Z;
	Wed, 12 Apr 2023 11:29:48 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYdy-002nmu-13;
	Wed, 12 Apr 2023 11:28:07 +0000
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DE8CF660320D;
	Wed, 12 Apr 2023 12:28:03 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681298885;
	bh=ZP8Raf7/OsQyACM8THH6aYKXtHLCsxN2YpKA453ao5Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=c4zJbidXPm9gF95wuQCrP8ht44Qdm8je/tCGcPsDDJF+0BlKGLN8oCAr3Ac19Ji2z
	 hRP16a5E4BzmxqR2ERv23R5h7W4Cht5Y61ndzRk+N7e6aXyGSQzzaozxIHWK+PNFvX
	 QFQ/oz/lzvhj2ldJQhj48x9x0gUXwClPe9skpzJA8x9GNZTpBmwTH6X5J2ojhOUO9s
	 etlCskPn+oTSxhJCraYYCsUwZTNW+4VTbFKcXMiru7ylNXDJEDBX427QtgHSTOB9pu
	 /TgbPa+QOOtgrPWbznWQ6C2qylGpp7SPcNIofgdKpV7ddz/yQ5VTmwrmOvD7lgZ59X
	 /DPgqAGfvYOKQ==
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
Subject: [PATCH 14/27] dt-bindings: display: mediatek: od: Add compatible for MediaTek MT6795
Date: Wed, 12 Apr 2023 13:27:26 +0200
Message-Id: <20230412112739.160376-15-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_042806_496663_61321621 
X-CRM114-Status: UNSURE (   7.93  )
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

Add a compatible string for MediaTek Helio X10 MT6795's OverDrive (OD)
block: this is the same as MT8173.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,od.yaml      | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml
index 853fcb9db2be..691a3644504f 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml
@@ -25,6 +25,9 @@ properties:
           - const: mediatek,mt2712-disp-od
       - items:
           - const: mediatek,mt8173-disp-od
+      - items:
+          - const: mediatek,mt6795-disp-od
+          - const: mediatek,mt8173-disp-od
 
   reg:
     maxItems: 1
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
