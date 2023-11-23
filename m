Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F06BC61DF7
	for <linux-phy@archiver.kernel.org>; Thu, 23 Nov 2023 13:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAS2zn42L5OoigaJiJlGOyM+txJbWdxzpijjUX6a+v0=; b=Xj2tQd2i7lJ/JC
	v5sG1sVOVItHCaCvGsXRn9fTEFO+5d85mB5ZEJjnB9R0+qDsa4ygJNKbnk4js87fPk6GHC6YgkOWD
	Nm09VAOkdRZDddmNSle0Cf4+OOgj+cV/4eZ+d1LaDswbsdYXteCtTloIWzDgY9jtERDsYTKJz60c8
	jh9zgenTdTHrKyJrtsPXR06E8MkJqX1lwAUxD8Q49B/h9tXSpWE4fb73gMBG/Ys4BKIgp4FjXIf91
	e9rQKvBcfW21UJ2bgvkvjgZOYZG5yBFTIkWEE7CWhqQrHR7X/0OHZytyOmxKa8hgjh2TpqVn6F6j3
	Px0Z/Ik/+utYU1zuAK9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r69uO-004uLF-0L;
	Thu, 23 Nov 2023 13:38:20 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r69uI-004uGs-0p;
	Thu, 23 Nov 2023 13:38:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8BCA3CE293B;
	Thu, 23 Nov 2023 13:38:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F268C43397;
	Thu, 23 Nov 2023 13:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700746690;
	bh=QdhdFBdAsK8Wx92sdI/Ks6p4ztR0/Ud+CG+kITMQvbY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JmxDhJQyvlddVm4R2cIoOcPWItUFFXOoHLOpGvnaAASQDiAK4S6oO7myupK7c+O1P
	 WYnhFtk+rkVDR/aGUUIlA4peIH49RzPhWbWy6GInz4mTrQK+HPqoAQ+G435yryJGjE
	 nbuOZTYLg2808WMVnMOd2ULjqWmy5MxR/Vh/k/ZqzayV9ivfwCt7XVDdPKIJpcNro2
	 cT6i6Ltuoaf/RcucftzsTzyE7woAzuUWJlybR0DCg+LdLpIGeHVm4LljTxcopS/S6Y
	 12v5NXndsVjtqmHmeUTAJKD0xwxzzg+I9v7iZzJQfDlSLRU798tkaleZMcYvVE2Uwn
	 sHlmy5bpO3dhg==
From: Michael Walle <mwalle@kernel.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Xinlei Lee <xinlei.lee@mediatek.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH 2/4] dt-bindings: phy: add compatible for Mediatek MT8195
Date: Thu, 23 Nov 2023 14:37:47 +0100
Message-Id: <20231123133749.2030661-3-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231123133749.2030661-1-mwalle@kernel.org>
References: <20231123133749.2030661-1-mwalle@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_053814_532042_2AD42F9B 
X-CRM114-Status: UNSURE (   8.92  )
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

Add the compatible string for MediaTek MT8195 SoC, using the same MIPI
D-PHY block as the MT8183.

Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
index 6703689fcdbe..f6e494d0d89b 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
@@ -31,6 +31,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt8188-mipi-tx
+              - mediatek,mt8195-mipi-tx
               - mediatek,mt8365-mipi-tx
           - const: mediatek,mt8183-mipi-tx
       - const: mediatek,mt2701-mipi-tx
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
