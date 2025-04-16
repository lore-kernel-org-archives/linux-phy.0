Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4613DC369C2
	for <linux-phy@archiver.kernel.org>; Wed, 16 Apr 2025 12:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwhymOWVhnwv8gJ/5p+I2cDwllzBGDE1oVrL7oAXz98=; b=Oz6Y5Wze3jokbC
	KocO/talrnTzDRPZ2lfKAj9Mfqvfi+bhfeusVTSE1M+AZ/lVyMVuJM9tchvWnoxQ07YmzVDtTLdKp
	tXiGKW1MXtVFqM+3J4YX9Lp3vr97ujGyujERQYWTKqGcZoQ6w4eoN8TDjo2L1v24kNxTVzboOVXZh
	d/+wwBxMDVmCL8k65jSv8LYG/ZH8M+1QTlK44TWT5VZkmFkROgegwLn4i5EhAK3RCbDzVsQx5zFJ3
	jf0Wn7ApuKwIUa2HQUEMSVOEUaTHYzxQCyVwRc8Ukijkf/hhC+bIiq2rb8y+upN0dGF5npO6N5ryN
	CVdNsiHn/nkzlk5fcZhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u51X2-00000009RPX-032M;
	Wed, 16 Apr 2025 12:06:20 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u51TG-00000009QMp-3DLo;
	Wed, 16 Apr 2025 12:02:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1744804944;
	bh=a6g2jhRqirUv8h05NZlOBx0HRIGjQJAVOh82JJL1Qg4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hgXHFWThh+GCcKfxosMPMmHs1KxZUdhd4w02g5UEGgrhfRzYu+yOHU/uBnsozMd+3
	 xJM3GmOsV4vu0P+MA8B3tU6Bs5wbuyJZhE5TUkZfAt06wRCq3Q/NaPfWOGVmZzDsCn
	 +hP/uh+Ln30e5UfU2j/nrOG2agQdfqPinMv91Kt85OWBCRJaU2O99UdtMv8ItBBUMj
	 3DLtP8DtUyHHIMALF6oCn1XeD1BrqOISrEobZutGZTBAzbcdKsVtzWXbynbWF4W23Q
	 dTvdsINDxp58GpBnpbTuxSHF7ujbr140BRr4n+y0khN632sJJMLbRB3HPmtbPhRvE3
	 mptyseJOVpWPQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 74C0717E3624;
	Wed, 16 Apr 2025 14:02:23 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunfeng.yun@mediatek.com
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 2/2] dt-bindings: phy: mediatek,tphy: Add support for MT6893
Date: Wed, 16 Apr 2025 14:02:20 +0200
Message-ID: <20250416120220.147798-2-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250416120220.147798-1-angelogioacchino.delregno@collabora.com>
References: <20250416120220.147798-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_050226_947970_074F8491 
X-CRM114-Status: UNSURE (   7.62  )
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

Add a compatible string for the MediaTek Dimensity 1200 (MT6893)
SoC: this chip integrates a MediaTek generic T-PHY version 2.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
index 6be3aa4557e5..b2218c151939 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
@@ -78,6 +78,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt2712-tphy
+              - mediatek,mt6893-tphy
               - mediatek,mt7629-tphy
               - mediatek,mt7986-tphy
               - mediatek,mt8183-tphy
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
