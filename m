Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C2E8C7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 11:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHb3VpzFfPaFm1/MAnL7m2/n3CIKaB6m8srxZkBF3zI=; b=ayWZzxjzM0fKCB
	g8QxOj3+JY567mfOKjWPOY6XPcJv1Ui6ITSNgXeGAC/bBTUl2ufMEvWWjy4SlXcxLrKpD55qV06+V
	KpDF50k5aArz7huVn6xARJ9AejZ6xBuh9tnmX9btfp6F0QGuTlAvo9xDEkpfhIxtdZUnuT0ULTBLX
	i/jV/Y5WkURJb21OE6s6RK+cvhqnpQcN0qRlm2zzbZ8UWoSLZFKdwFihqaVrNZ+ojmWLiffnl59a3
	HA9HpfE06u+NhHnN2yBZJ+QwnWaPLJc0Bq/vcCyioofQb2z20bTYrCG+0UBphHOUFs06Mb77qoDIU
	THmEpu3PcCMPZOMCd76g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYeo-002oih-0d;
	Wed, 12 Apr 2023 11:28:58 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYdp-002nfU-2b;
	Wed, 12 Apr 2023 11:27:59 +0000
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 626796603246;
	Wed, 12 Apr 2023 12:27:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681298876;
	bh=/nr515MQrSV6wPJ0nOqHA4/ts+hd9gZh930X4zNFcK0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=liKeWPdnCzkgOpOcdSoox+hQIFk3KrNnhAlYX5GaRDjE/U1nsApu8XhVgG6ZEA946
	 61WYHCLpok3pWq7lw/IEHoe8xUBC/UO6IYOEQQrxf1gixrZxoe/pmgZArwDKsOPo1b
	 CLbjjH5Sf2qpxU+zc9V5wW7vLRiLct+bey6Kh/s+IF/q0oRb8jf1oFPod+hanX1hMs
	 FgaH5hEy5I/I2vPMk1v4Xzo3O/zfVcQGSJp596c50b5GgrJKIrJKpPIvuri6u8YM/1
	 u5NW3fp1Tb+QdD0Y4p+04baBqq2k7Dq8TMZe2AgrG9+yrS9LIFDPH6/9hHs6lUm0w9
	 49u1/Jj6dfJNw==
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
Subject: [PATCH 08/27] dt-bindings: display: mediatek: wdma: Add compatible for MediaTek MT6795
Date: Wed, 12 Apr 2023 13:27:20 +0200
Message-Id: <20230412112739.160376-9-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_042758_015591_E5D373B9 
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

Add a compatible string for MediaTek Helio X10 MT6795's WDMA block: this
is the same as MT8173.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,wdma.yaml    | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
index 7d7cc1ab526b..1a19b3ef036f 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
@@ -23,6 +23,9 @@ properties:
     oneOf:
       - items:
           - const: mediatek,mt8173-disp-wdma
+      - items:
+          - const: mediatek,mt6795-disp-wdma
+          - const: mediatek,mt8173-disp-wdma
 
   reg:
     maxItems: 1
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
