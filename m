Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86FE7C87FD2
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 09:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v5qZzX/+GCJBpxzHaOewCKIZ24Z731NiD26hnXWU2Wk=; b=ob2S5uusny8y0x
	+8iKAz1dozf7yYuG1PC/o/UMb5EpnryFBA8pXbxrT31zlLOJl65nE2Cc3HILESA8/NY1I2PFU3Gux
	2vxV+aSZ4H45tnD5bCrxohZT8SpXL51FlVoo0ZQ21jdhAf52R4afzhJvMjR7qpkxA5dJ8J6wcfd0k
	d02V04hmtjMtFvDFH2lZwIL0sBlN4SG4Opm/3E4ujn4aISVVXn2AyulqFnsc8z3N9BJCh36KjKEDq
	uFQJFgEkFItO9G1dfd1os+D1hUUY6+WsB8f8hzkKp9YLtRNgdK2Z6GCNAf+FIxefdJIDY8bfbj31p
	khj/vTQGWHkHao0P5gvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesYn-000000076Ru-0sxB;
	Thu, 24 Jul 2025 09:48:21 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uerUa-00000006tUd-052w;
	Thu, 24 Jul 2025 08:39:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753346394;
	bh=v0flDi7EoltDZidtFDgX25K3EX5eZ39OLHBODZmt3jI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EOQHw5dWvWRsLrb/IHJ+axQp+71IdF4KUnDviAaWdBxnRKpGGEbDOCcCrSSG1eeZ8
	 gZrYo8iwKvcJvRqGDKk/YQrXncNCKyvnUARhbZg19p4bcISm8EN/sDC7a1ouPyH9QZ
	 KROUGsCGr7HS/s5k8pALlHVoQTFAbDCoHCJQcnxZA6Fx4reWBwXxh35M6eQWOImh7W
	 hUAvXDMOszay6N5G2TNGEbrXStV/Xvn4RpuzNo1AdhXMGGruHKLlJ9s4jS6IaBlKbS
	 Uo+creRPiKwGClnw+2u6A5BWd6fP98m4u+j3JWnhLPL8egE3MK85L+AIGLT/pWURKg
	 OW6B6zxpyaWlw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2A20917E128C;
	Thu, 24 Jul 2025 10:39:52 +0200 (CEST)
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
Subject: [PATCH 11/38] dt-bindings: regulator: mediatek,mt6331: Fix various regulator names
Date: Thu, 24 Jul 2025 10:38:47 +0200
Message-ID: <20250724083914.61351-12-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_013956_205554_FA26A634 
X-CRM114-Status: UNSURE (   8.16  )
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

This binding was never applied to anything because it misses the
compatible, hence any mistake in it got unnoticed.

Before adding the compatible to let it apply, fix the names and
the node names of various regulators.

Fixes: 6385e21692bb ("regulator: Add bindings for MT6331 regulator")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../regulator/mediatek,mt6331-regulator.yaml         | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/mediatek,mt6331-regulator.yaml b/Documentation/devicetree/bindings/regulator/mediatek,mt6331-regulator.yaml
index 79e5198e1c73..6006a973b865 100644
--- a/Documentation/devicetree/bindings/regulator/mediatek,mt6331-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/mediatek,mt6331-regulator.yaml
@@ -26,23 +26,23 @@ patternProperties:
 
     unevaluatedProperties: false
 
-  "^ldo-v(avdd32aud|auxa32)$":
+  "^ldo-(avdd32aud|vauxa32)$":
     type: object
     $ref: regulator.yaml#
 
     properties:
       regulator-name:
-        pattern: "^v(avdd32aud|auxa32)$"
+        pattern: "^(avdd32_aud|vauxa32)$"
 
     unevaluatedProperties: false
 
-  "^ldo-v(dig18|emc33|ibr|mc|mch|mipi|rtc|sram|usb10)$":
+  "^ldo-v(dig18|emc33|ibr|mc|mch|mipi|rtc|sim1|sim2|sram|usb10)$":
     type: object
     $ref: regulator.yaml#
 
     properties:
       regulator-name:
-        pattern: "^v(dig18|emc33|ibr|mc|mch|mipi|rtc|sram|usb10)$"
+        pattern: "^v(dig18|emc33|ibr|mc|mch|mipi|rtc|sim1|sim2|sram|usb)$"
 
     unevaluatedProperties: false
 
@@ -52,7 +52,7 @@ patternProperties:
 
     properties:
       regulator-name:
-        pattern: "^vcam(a|af|d|io)$"
+        pattern: "^vcam(a|_af|d|io)$"
 
     unevaluatedProperties: false
 
@@ -75,7 +75,7 @@ patternProperties:
 
     properties:
       regulator-name:
-        pattern: "^vgp[12]$"
+        pattern: "^vgp[1234]$"
 
     required:
       - regulator-name
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
