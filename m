Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE6F3C87FD5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 09:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lsdAI8RBbntWh7GRlyfVgq9gVXuaYppelYlpc5ywDt4=; b=cpOyC0qq1jGnXb
	iSX5624HHzTzwoIP6WQJQ2S6vlmE2/PFuP6MVHdDaqNovwHRSePEewieIcPGverxWipyntwCAfHml
	uk6AV42RtTKp/Ym0Fw4sG8xWUR9u480PMSXTzuS3LWhwLqpUIQyjM8oVpp2VcmDoQwBx7tRa6Dk9Q
	nRyC+3VnCi+vQzr9kBZn1dBYRMZ4GyZnw//ZcvCTYJ0uVwmh8ho62AoQVt/c56HIyO+Y/2gGsuc/R
	mAnjDnZSzUOYavJhkcchLS4DerG5GIPa22shHuB0uPejxps5n1xjiPrTetDW4v7cRy0+wwyuR2gGg
	UESMGwTZwOBBdQ+JGC7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesYm-000000076Qe-1pKO;
	Thu, 24 Jul 2025 09:48:20 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uerUX-00000006tSk-2Fkk;
	Thu, 24 Jul 2025 08:39:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753346392;
	bh=HaevetnnFKHRcc+1X06S28eq0CnYSBndrM5Inix6OWk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=A0xSFSrwXmhFdEpFiRIOiNyey3TgbknRE5XDUw1F5tUVQsL5f3WK/l2eKQoWsNmRo
	 yH8XaCq0zkGZRPW0Qgi9g5jVNN3j1g7JR6PJlOCxt4ruz0mWBJHOnyRy6d4XxDyqf0
	 UQobqYC9ol5z4zOej529l1Qe/7xQbkJrMikUfRAXGUlnIM3wcHdbWcfzzjCPLEF50z
	 CGAwS4lSyM6+9V3UFJKb0Utew0gYeNpbHXhNhTQIEuPEJ6c/uCBh8SehctDl/Faqy5
	 OcQu8iPCfO1jKE/q7cjVlaxxRtDcPl8qvYVc67mm4HXEsdsNdl8WYHzRWlYtMBnqX/
	 9TwJmccLNoygw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8073D17E1298;
	Thu, 24 Jul 2025 10:39:49 +0200 (CEST)
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
Subject: [PATCH 10/38] dt-bindings: regulator: mediatek,mt6332-regulator: Add missing compatible
Date: Thu, 24 Jul 2025 10:38:46 +0200
Message-ID: <20250724083914.61351-11-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_013953_762121_E344627A 
X-CRM114-Status: UNSURE (   6.96  )
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

This binding had no compatible and for this reason would not be
applied to anything: add the missing "mediatek,mt6332-regulator"
compatible.

Fixes: e22943e32e1f regulator: ("Add bindings for MT6332 regulator")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../bindings/regulator/mediatek,mt6332-regulator.yaml      | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/mediatek,mt6332-regulator.yaml b/Documentation/devicetree/bindings/regulator/mediatek,mt6332-regulator.yaml
index 2eb512c29a0d..475f18d4f261 100644
--- a/Documentation/devicetree/bindings/regulator/mediatek,mt6332-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/mediatek,mt6332-regulator.yaml
@@ -15,6 +15,10 @@ description: |
   buck-<name> and ldo-<name>.
   MT6332 regulators node should be sub node of the MT6397 MFD node.
 
+properties:
+  compatible:
+    const: mediatek,mt6332-regulator
+
 patternProperties:
   "^buck-v(dram|dvfs2|pa|rf18a|rf18b|sbst)$":
     type: object
@@ -36,6 +40,9 @@ patternProperties:
 
     unevaluatedProperties: false
 
+required:
+  - compatible
+
 additionalProperties: false
 
 examples:
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
