Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB9AFD3B981
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 16:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzESGfEqi0OkbrlzTsIGTubm++NxNPNKH/YIwSJKpGY=; b=kOsaWpkUfJeqvC
	duz1ravtOBRMR/vyOj8EFfzK7p7Pmg0ztoJFqkFaUro3yuCtRhNEWSOEGkJbmHzelKG7/LjroDD78
	DlF828zG8tWf238emGr3SztUdd6dMQl3+N6JcBaqOo+el5ZAv6rwYWFdPdrKe7CtylaGIpjfMaTrG
	d+XJBLX4E8GzmqJZ2hHO3KL+dbRqjEvrW+NFgadKlQ1b0tg+6Pre41/jZATjLE+wOPOIKv7KeLe0S
	LEjj3QN5C+ezXaHnq4qNrDUZOOIv+ZD8NcoDXrhHeGzji0NNkv11Z3vjf8bZAfQ5tKLZ4/TgusCUR
	ZSO35wXnLj0WunKgn/Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT0fu-0000000EWdl-2AlP;
	Tue, 09 Dec 2025 16:34:54 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT0fp-0000000EWYM-2QVv;
	Tue, 09 Dec 2025 16:34:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765298086;
	bh=gqLoSDWv4cr26CDJ+gJOR8MLYYb12/Sg3eKXidGaIU0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hoiYuOoyLqL6xAKb/eGloUZW0rgaXDOWn9naijZzU9wxN4zfy3TezY8kQu0GM/ZJi
	 eCsdCpGachIr043l0y1VVY1owNPDcd3D+5IQrn6r67nLi3MRbEWWwioM6BlqkNRt6l
	 VnLFrQWQqSWEs991rgEWHD8Yf2ov8vQMNiycPb6ZtF3L1XLmxsNODNV2GJiCzNq3wm
	 GiZsR1JcISmCifTubXG9f/q67gUdPprDrKyO3uP/xGj9lQO7Ws9RREeym82HsVdNy+
	 SsXKyztcWU37bwuIxkRX+Vyf376g4My4SretPVUGia11xmuzteCBsF4SXpgRH+gYxk
	 pUZeND86TJQ7g==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C0E6317E1423;
	Tue,  9 Dec 2025 17:34:45 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 09 Dec 2025 17:34:32 +0100
Subject: [PATCH 02/12] dt-bindings: phy: mediatek,hdmi-phy: Add support for
 MT8188 SoC
MIME-Version: 1.0
Message-Id: <20251209-mtk-genio-evk-hdmi-support-v1-2-9a6106effba6@collabora.com>
References: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
In-Reply-To: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Guillaume Ranquet <granquet@baylibre.com>
Cc: kernel@collabora.com, Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765298083; l=1077;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=gqLoSDWv4cr26CDJ+gJOR8MLYYb12/Sg3eKXidGaIU0=;
 b=fer9FkO+XrowLR4YEuqt7iBG+3fk7ZyZYU96wXwqlJ2UxJvixW7A+x4m4NQpNvUegaSk+b4ou
 agp6+jrhneHCBe3tc4ViofZNjzsCpl+Dk9oa4DkUdewr27teW6cABGR
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_083449_786372_865E5C4E 
X-CRM114-Status: UNSURE (   8.52  )
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

Add compatible string for the HDMI PHY IP on MT8188 SoC, that is
compatible with the one found on MT8195 SoC.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
index 10f1d9326f18dba85b92b4c88f4c0f6cdddc4c25..cd4ac42ee45e4648ed512f68f6f28d1f3f2e1116 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
@@ -26,6 +26,10 @@ properties:
           - enum:
               - mediatek,mt7623-hdmi-phy
           - const: mediatek,mt2701-hdmi-phy
+      - items:
+          - enum:
+              - mediatek,mt8188-hdmi-phy
+          - const: mediatek,mt8195-hdmi-phy
       - const: mediatek,mt2701-hdmi-phy
       - const: mediatek,mt8173-hdmi-phy
       - const: mediatek,mt8195-hdmi-phy

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
