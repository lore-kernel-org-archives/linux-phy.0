Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48EDEC83F26
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 09:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWGUiEfTb7z7FzCmzc9W0c3mccz04P9PlxceZSDI9ng=; b=4oZYDRhahYcnQe
	nQy+q49Grdqw0aqsPfXDmbXUiWdb7Qzmz/iu6g6wPk/G0v8n8rzfo7SimQ7oGwonHaxzE2kguAFb0
	Qxn/vyikUNXG2B8zF21lZfnrMqYIWJ9kq15Y6KNzRVdm+4dZW7p1o7NWsnQ0o8E3zIZ3IXpUB7MDM
	xAtUotU6lKlLw8l6BH6k2DjNtZnj8bc9k4Hi0BpBt6ZLqJldxKM6HMg4UKyr1APls5HvIRI8lCP+i
	y5bJfxJOTmEqROm1pYpGJfBdiyRi2DmRBKH3fUEozpglnEdInAA0Mgfip/Vt6St75BPYLbcY2Sw5d
	bSGt/SAUuziegcU1/wdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesYk-000000076Nw-3izW;
	Thu, 24 Jul 2025 09:48:18 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uerUS-00000006tOF-163S;
	Thu, 24 Jul 2025 08:39:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753346386;
	bh=jjLUE5HdPRZzn/E9l0Gx0a05LnILHnJ7+pTe/jrPRJk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FQufsu6051wTm6fdYu0USqifJaXEeaojrxuyjpx9ESnaHdZ9dxjUDJ5fDPs7dra8H
	 Q11J84GLCUpHk1LR3Qi/ctJTsqKIVmH3Msnra34UCBMopNVkuTov9XlwhddeRiJm5U
	 eC7Wgag89tzveIoL+kUo1GL8URd+uIhC4UhMBcPMlRWMiZgy67lMgXzahxQfNCTA6T
	 hNBd2UIP6iF6/UuFMpD5th209wioY40Ly6guT99csiRQ0kv2Cl5Al81FBD2Ea9apy/
	 b7p0+hNCKpQSGxA7BQTbTIEqxTeYki6DJKYitFgbTZpTZhzK2rP13nVKw3Rnmuxrm3
	 l4VibTq/R4Big==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 399A317E0FC2;
	Thu, 24 Jul 2025 10:39:44 +0200 (CEST)
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
Subject: [PATCH 08/38] dt-bindings: pinctrl: mediatek,mt7622-pinctrl: Add missing base reg
Date: Thu, 24 Jul 2025 10:38:44 +0200
Message-ID: <20250724083914.61351-9-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_013948_481023_9A6FAA0A 
X-CRM114-Status: UNSURE (   8.18  )
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

The pin controller for both MT7622 and MT7629 need both a "base"
and an "eint" MMIO like the ones found on other MediaTek SoCs:
while devicetrees have always been correct, the binding is not,
as it only allows an "eint" reg.

Add "base" to reg-names and increment maxItems for reg to two.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml   | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml
index 57b19031925d..a6a1d321bb26 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml
@@ -19,10 +19,11 @@ properties:
       - mediatek,mt7629-pinctrl
 
   reg:
-    maxItems: 1
+    maxItems: 2
 
   reg-names:
     items:
+      - const: base
       - const: eint
 
   gpio-controller: true
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
