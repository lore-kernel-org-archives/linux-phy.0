Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1932C83F26
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 09:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LyJxuE3abl517y+PrAesAfCM1aS3NVm2Uw/U1Qu6Qkk=; b=N5ft19pgpCsln9
	TmEqB78Lh7TBYRzs+Zp6i+Fd9kVOvxeWSz52oSB+eCVJgnCeNG6T+6h145AY8dznZ6/8m9HGlttPK
	d9AqzCkzyZQI17cviUcllq13Uw4it0nPSBkxDdrkIzk3SLFYACYL/PC2hz6e8nz2PsnM40geArmXg
	8KTlKAAsNMjoSuycsF/vgFo8TqY7qMaIwdvFJoZgKQ7tpSj2CRunJXhw4fB9gLXDHofwBeWwu2QwI
	gEko96/S9icoLK8WgtNFiIGACrg65o/dic37V7ejYHLklfKZCrYpf730vkbsnsAKvN0/WmmrPKHD3
	Nh9v7ack0kHXV1xbBzzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesbS-000000077RX-22Pk;
	Thu, 24 Jul 2025 09:51:06 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uerVQ-00000006u3M-3Z6W;
	Thu, 24 Jul 2025 08:40:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753346447;
	bh=nZnHGuuYWTH1zx2DyHhgxmYu9OJdEA9xz3dWYroEllI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jcDhqYSIdrwK2mCvZxTpy4ObfcEL3WJnEph9w4Wfhdit0UfyR74/OYWdgSZZSPhoo
	 Y3kigBPXlubGLRnd2Ne/uBtsqfr3mDqkDyMFH3DG5DRfAjKNJ+tCgwo4AoBt0QykTK
	 Z7XXkqzVD/uxxlgf+EO8x2j9R6Ty6yIrPHPh+khYad8AMbjlaHrpkVZ+6+ODpAjgSa
	 nJUiA8lblEOxSOlp3cxc6y3O4cL1Uh7FMlasmyXrKyqbarLXC/PKf2Du9adIlLHd2p
	 R7/PSCWhe0QDAD5DQVHmVEgN9NjjgBJBZS0beExlCu2MMoPK1Ok41Yw6I5QmP/o1AM
	 PYLlNNaWRA+7A==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1C52717E1062;
	Thu, 24 Jul 2025 10:40:45 +0200 (CEST)
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
Subject: [PATCH 31/38] arm64: dts: mediatek: mt8183-pumpkin: Add power supply for CCI
Date: Thu, 24 Jul 2025 10:39:07 +0200
Message-ID: <20250724083914.61351-32-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_014049_037860_3FE09D77 
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

Add a power supply for the Cache Coherent Interconnect node as it
is required to perform CPU DVFS because both are scaling together.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
index dbdee604edab..d5fcb010e1ac 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
@@ -482,6 +482,10 @@ &mfg {
 	domain-supply = <&mt6358_vgpu_reg>;
 };
 
+&cci {
+	proc-supply = <&mt6358_vproc12_reg>;
+};
+
 &cpu0 {
 	proc-supply = <&mt6358_vproc12_reg>;
 };
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
