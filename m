Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5566C83F1A
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 09:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEGKjwEiugaZOjMtnZ/Wki01vHhewnuGW96+/CTjT9Y=; b=3QRM4c14KPI1oo
	8UOosOJL1V4h6YKzrC7jW/Ks+ywo/wwCp45tri9olC/HtwyBWH5RA4m91wF0is0pRJmjEF330MDDp
	ur67QtHo3MsHpi8hnrw4z4Uc1Y3qBHFZFh+2hB7QQKyuhGjDR3EuadmnE3torrHRrJdZ6bIjbOfN3
	CdRyMTn1TnhRVuG6ln/gFG0eLME6pwc/I9MwrmjY5I0NKyOuB1u6mjFx/NlnyBSV2M0u9buSOR7Dm
	N8q7itx/beBCGutt/FaTWS21oJ9EQo6hPTRU61dPYp5yL4q5ilL4eWKNOLFQQ0cpIuJi0wsX+HV8E
	UOCo9gaMlHdzafp3XVaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesab-0000000778u-2Nbg;
	Thu, 24 Jul 2025 09:50:13 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uerVD-00000006tv3-2afk;
	Thu, 24 Jul 2025 08:40:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753346434;
	bh=3oy2CuNT3RTCa4KJqXicuZA1frxgjUVo175718v251A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=D/KhJ0/N2soyqJ3ZqOmYVhqqZHCT9Vy60VEwKawrwaCLhukaDik/XOzjo0vB5/XT5
	 MjPxIylpmTLWW73wtWzZ/rJxJD0Dx0DpF5AZgiv+Il/GWyYJMagVHlWpoLBNZmaUSt
	 DjBWvKTNjGXOAip0wd4hI+2xq0MGR8FYECbpVHvuQY2k5TG130KGDeFx17ULUohZAz
	 eH06sgnA6wUay+F11VKsiucFHqK9dCjxFxREydWDDHFg/kUgFqeeSJ6oDOi5OBQhN+
	 G7tAK47wOATjwxsbSOSQQkaQ+bOCVNvTeoATur9dTfSsp9tKB3e3LwwgTQtwAINfkC
	 cCveuzw+8zmEw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D6D6317E1062;
	Thu, 24 Jul 2025 10:40:31 +0200 (CEST)
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
Subject: [PATCH 26/38] arm64: dts: mediatek: acelink-ew-7886cax: Remove unnecessary cells in spi-nand
Date: Thu, 24 Jul 2025 10:39:02 +0200
Message-ID: <20250724083914.61351-27-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_014035_816989_3181565A 
X-CRM114-Status: UNSURE (   8.13  )
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

There is no need to specify #address-cells and #size-cells in a
node that has only one non-addressable subnode, and this is the
case of the flash@0 node in this devicetree, as it has only one
"partitions" subnode.

Remove those to suppress an avoid_unnecessary_addr_size warning.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts b/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
index 08b3b0827436..30805a610262 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
@@ -98,8 +98,6 @@ &spi0 {
 	flash@0 {
 		compatible = "spi-nand";
 		reg = <0>;
-		#address-cells = <1>;
-		#size-cells = <1>;
 		spi-max-frequency = <52000000>;
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <4>;
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
