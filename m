Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C11BAC87FCA
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 09:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qi6HoXb/ebPHm2SuOb+jxLM6cWQLY/CZme+SqGBo4MA=; b=hr02u0JSzXEpCk
	LT1n0PBWIibgctGIDkG+JJ5yzMNfaj3xaEwdmj754vLM4r+S9oFGMz2dzdiJnaFMHS9nqUnCVgJn9
	2zbTZaI8GLA7iFegsJrVhD+Nya57wd0dXDhZe154puhwRlrmKefU3M2NFZBfPhVvc8XhchocT3eTv
	YcHWtiAvaBtwnBT93kAbhKIuWgjmQfleRts1cQLSd49XO8YjOLxM1iAFjQ7ugbxUW6+oxMwgCloWR
	8g5AcKNVIiVMojFeVojYLl87R1xzUiG8ICwxMeNUaUPNV31P/wuWxlW8zTF69VapZHIRNjn0iJaXS
	6JvVd905d2LKhEi7WKxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesYf-000000076ES-2912;
	Thu, 24 Jul 2025 09:48:13 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uerU9-00000006tAM-2vH0;
	Thu, 24 Jul 2025 08:39:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753346368;
	bh=C1+/i/ErI18ZOP+0IOrZb/kmhFbH+QoSzn1301uaDD4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PiWWw/qQ53kM3WLXlRAKjBf2BkR9Z5X/5+/9OP78d9b3B2H+qS9HDBeUZyRsiSXun
	 TlvGTve+71b2zEzW8W3RXGPmtHTLIlcHBd9VnhL/tb+kvCHb/8YA4xG89kmIWyqSpU
	 numRbZSkwVBk8s0zwBhKrdbOHXYPHrK2ERgqfrIizezf+sjtucdb9xsakpVgrZmC5n
	 XD2ZgAIZAivRK5MbdH00EBnTiCtnxYhnDi+lENbqQwf0mKbVv2kT9nbx7cNNWsXnKN
	 q58VF56KGmFrYHCPzmYUuqQJS3dQKCRYqw2l5Cyiyl4ZX71tmENhYaz/LXl8IO6awZ
	 9Oa9gSCeSEzZw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AB66117E1062;
	Thu, 24 Jul 2025 10:39:25 +0200 (CEST)
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
Subject: [PATCH 01/38] dt-bindings: display: mediatek: dpi: Allow specifying resets
Date: Thu, 24 Jul 2025 10:38:37 +0200
Message-ID: <20250724083914.61351-2-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_013929_879168_79FF7D43 
X-CRM114-Status: UNSURE (   9.67  )
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

Even though the DPI IP has a reset bit on all MediaTek SoCs, it
is optional, and has always been unused until MT8195; specifically:
on older SoCs, like MT8173, the reset bit is located in MMSYS, and
on newer SoCs, like MT8195, it is located in VDOSYS.

For this reason, allow specifying the resets and reset-names on
all MediaTek SoCs.

Those properties are optional because there are multiple ways to
reset this IP and the reset lines in MM/VDO are used only if the
IP cannot perform warm-reset.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,dpi.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index b659d79393a8..eb4f276e8dc4 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -102,6 +102,13 @@ properties:
       - port@0
       - port@1
 
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: dpi
+
 required:
   - compatible
   - reg
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
