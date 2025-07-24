Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD2FCC87FCD
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 09:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tRpvDE2oX2zBSIYf0N/q0eJlVUuiALP/NZbrQ9bZ2U=; b=Qae/fkYUdTb7m3
	fhXdlX4PKFTvjbUQ2nzDCiZ7HBSHwhBp7nfVBqhKCcPxisa0hDWPVISm/j8szIW4/eRlTKuUNmbxP
	YcKH0PBzf7EYizgAY+Pl+Jn1d6DFxg/Zi/YtUmHQMOTN0hdQS5VZ/oSWJtCib0bSADkmR+5Nywmzb
	BLevXCHDcaSvbcupvviMSmb14G+pj4sS2A+qj2lr3+YKzvpv7TF/AxeUm8EzGMPX68B7jg6qPUd18
	eq4vea/2CDz6rY4gQ6qwmA3kL82ftKA+cn09FnxQ5tRpxNvPFCWUtqTr+DMdYD2rPV8Fb0jekAxpA
	zThB6TOL7XB+G1Vt6aKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesYj-000000076LJ-20Bs;
	Thu, 24 Jul 2025 09:48:17 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uerUM-00000006tJ4-38dT;
	Thu, 24 Jul 2025 08:39:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753346381;
	bh=ipw6xj/zBv9ATtscbBPbWZRp9dpDTL2eyHmZwXPQkgY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=e7nOO/tjS/HjLjEJvQEKRUNk1SLmzde7qmZiDGiCfP1iwxOfYX5lP/Qkr3ayd1Qk+
	 XTIcZ2o7b3lFVOcGqAfxH01Fs/EYAyVS0TVUJOEutIW5uLXcmn7nRvLuxSdScA4Mjs
	 /kKyzoYapKap3J9qbBpWJ3JSbyfMtLTcapxYvQJL/AcULvkXLcUhtYKIxW4M5+KtYU
	 56meXtTCMd7pzDcYhkHLbtnvjrYbZHUueHiXcI7qtvPHb5BObZeEN80p3aZkAuvguW
	 VrYhGzSXlZX/kkF8TmJXcG4JHGIX3kSMkGj1nucf0VDewKhQdzmH1qDylnpVvc6F0g
	 50NBhWV+72MRA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E5E9117E1301;
	Thu, 24 Jul 2025 10:39:38 +0200 (CEST)
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
Subject: [PATCH 06/38] dt-bindings: timer: mediatek: Add compatible for MT6795 GP Timer
Date: Thu, 24 Jul 2025 10:38:42 +0200
Message-ID: <20250724083914.61351-7-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_013942_938776_637FBD69 
X-CRM114-Status: UNSURE (   7.58  )
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

Add a compatible for the General Purpose Timer (GPT) found on the
MediaTek Helio X10 MT6795 SoC which is fully compatible with the
one found in MT6577.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 Documentation/devicetree/bindings/timer/mediatek,timer.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/mediatek,timer.yaml b/Documentation/devicetree/bindings/timer/mediatek,timer.yaml
index e3e38066c2cb..337580dc77d8 100644
--- a/Documentation/devicetree/bindings/timer/mediatek,timer.yaml
+++ b/Documentation/devicetree/bindings/timer/mediatek,timer.yaml
@@ -30,6 +30,7 @@ properties:
               - mediatek,mt6580-timer
               - mediatek,mt6582-timer
               - mediatek,mt6589-timer
+              - mediatek,mt6795-timer
               - mediatek,mt7623-timer
               - mediatek,mt8127-timer
               - mediatek,mt8135-timer
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
