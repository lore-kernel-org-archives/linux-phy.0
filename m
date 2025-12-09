Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D38E1D3B7F8
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 16:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqYL+3rV9YwBAMx2eekU2XJN1l4d0N15L9IK/RwPvG0=; b=xGtzbL/G1GvlA9
	X2+x18PUSIzsT+8/t/6tYbAF/7C8O2R9OJcn18U/8TTxZ2d/bfBHwGjpMW6ikyUlXGgUZaw/psn9o
	F0IRTuyog1qmue852D75atZWzwPS1kyEsGk70AGG3ORvstWWUpfjRNBkew6mNEVyUw/Z2RDKlSYv6
	cPBjonRaVCgp70QQdxeJi+mBhz5aAY+JtociqEgRIAhzmLaTaMtHvqVi8dbdCB8bCDbQCGZD2aYnG
	wPaVxSjPzBXxRMKohIXIFNy/Z6GY8oEsc/xHMniDKJ3yhoIB9mF7BvIK8zaSFzRYWB3lTopH6K0lF
	+cjj3UD1h4MtmQJFCtDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT0g7-0000000EWwy-26C0;
	Tue, 09 Dec 2025 16:35:07 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT0ft-0000000EWaw-1a5E;
	Tue, 09 Dec 2025 16:34:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765298090;
	bh=2xZJiA/e2yEWce3nDQEQ2ahixaohi3k6n/fEjJnLDVQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=FNQkK5JVfjbDKuuDUDmwrigb5umhxUp4cK3+97EmpGiBNb3FGtVJENgPRoAucgWRL
	 GvVjyyDZoMo8QMO+f8yo7PpOYKu0XiyMuBYjr+TXGdlKPCwX+bIQ5GUYKMqbvpqtPS
	 1y4RZjp/Y/qstYdasHNe3VLN3CIf+tNwmrQrutyXxrqV0lxNUscBwUoJXmFPvvDusL
	 z71+bRZuwCjmNVcWB9kv/eWB1859oDQlIqeYxL0b9ndgXQEcFyL/iMC9gfpcRYWTj1
	 M98Nw42BUrhi1aTBFK4TOKHF4Gr+ztuoqHOnmsJZGpRn9G5dZgupqB7RD+/Aisn81v
	 AwoJm40br0JNQ==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3121517E1292;
	Tue,  9 Dec 2025 17:34:50 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 09 Dec 2025 17:34:37 +0100
Subject: [PATCH 07/12] arm64: dts: mediatek: mt8390-genio-common: Add HDMI
 sound output support
MIME-Version: 1.0
Message-Id: <20251209-mtk-genio-evk-hdmi-support-v1-7-9a6106effba6@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765298083; l=863;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=2xZJiA/e2yEWce3nDQEQ2ahixaohi3k6n/fEjJnLDVQ=;
 b=B/vd+BV6mW9Z2UhdZ6YdvNXQ0M2YNt2sTttnYu0uwGqXosZ9x+RZr7l2+kqFQmncyRJqCRkAO
 226KoPMcYH6C94u3tyNOMYKL3WM2GzROn4wsTwRMF3IpTjcdj2ZzsED
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_083453_702989_AB8BFB10 
X-CRM114-Status: UNSURE (   8.24  )
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

Add in the sound node a new dai-link for ETDM3_OUT_BE to add the sound
output support through the HDMI connector.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi b/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi
index 5fa1f5fbad18f2bf9b153ae9a029829641e43023..2062506f6cc523d7797adc8b7e74732be9320201 100644
--- a/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi
@@ -1344,6 +1344,15 @@ codec {
 			sound-dai = <&dmic_codec>;
 		};
 	};
+
+	dai-link-2 {
+		link-name = "ETDM3_OUT_BE";
+
+		codec {
+			sound-dai = <&hdmi 0>;
+		};
+	};
+
 };
 
 &spi2 {

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
