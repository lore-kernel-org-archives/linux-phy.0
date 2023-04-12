Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84D53C7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 11:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GTXzyCEZpu3qWY4bzBccbLUWNf9Z2E5bqQ13hCKcCww=; b=eVS1MuBq87vRJl
	VS4pp0BM5XAm84FmM/Jr7RKCHEECsmHow7bxyKLrOzKSSBIc/aBLIdojTR1Z50j9O1j4fyQ/WAddD
	8hFYNR7rHLnHjvuMJZKo5mEDmnc7xqg4QF6lITPFKWmfHiR60vgNJUKLhg5brnduNFuzMg5ekHIAg
	nlK/lFFrP08n6/tE6bRIJo9HXd+5+AM2ZpqXWTfIqWBp6+LMokeom/Ru9SxN/A5doX6g/njBTUSA1
	QTNg/nouZg2z3p8lenoGMxXkk3yLcM1noxhjfhQpSKnXffaJoSwBn1HMOcpd4M9iZvd1LvH5Yl8jg
	a3+avM/iXtebNU0PZJUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYgv-002qnF-0Z;
	Wed, 12 Apr 2023 11:31:09 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYe9-002o13-2L;
	Wed, 12 Apr 2023 11:28:19 +0000
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 35F2A6605907;
	Wed, 12 Apr 2023 12:28:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681298896;
	bh=6+ku0t7QQ3o8I45kDBxQ7CK/wmywqWuikBCJBzXicFU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BC9wOXXS2Wg5UQX3J6QI+t+adSMFAcp7CuNoqqQfLnC2NuPCgwD6QJ5FmrjQoU0Vn
	 KTA38i8ICb8QbAB354DKtQDxziHS1EiDtkJZnX41MUKovQASq90b6DNPWI67E1+vuH
	 oQ+6IMw/LTXrMsOR1DQHFjHvHWhat7WTQTtMgP4saQIB2Ym/wFDurmEOmjijRUTy7+
	 qpKZNGaAcFmZea5JMTpyVRFea/TX5oLkS8BBZsjKHIdFQVZ6WhTkoVzj9N8PwEgLtj
	 IaBK6mQXFlB387ZzCRDuHUL4xikZGzpgXjFB3x6CLH1+PM1GdDAbZysZ1XzoCZ39Xb
	 qytCte42DlMOQ==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	jassisinghbrar@gmail.com,
	chunfeng.yun@mediatek.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	thierry.reding@gmail.com,
	u.kleine-koenig@pengutronix.de,
	chunkuang.hu@kernel.org,
	angelogioacchino.delregno@collabora.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com,
	xinlei.lee@mediatek.com,
	houlong.wei@mediatek.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	kernel@collabora.com,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: [PATCH 22/27] arm64: dts: mediatek: mt6795: Copyright header additions
Date: Wed, 12 Apr 2023 13:27:34 +0200
Message-Id: <20230412112739.160376-23-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_042817_930984_46513174 
X-CRM114-Status: UNSURE (   9.09  )
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

I have added more than 800 lines to this devicetree: adding myself to
the copyright header.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt6795.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt6795.dtsi b/arch/arm64/boot/dts/mediatek/mt6795.dtsi
index 29ca9a7bf0b3..a4c950b65006 100644
--- a/arch/arm64/boot/dts/mediatek/mt6795.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6795.dtsi
@@ -2,6 +2,9 @@
 /*
  * Copyright (c) 2015 MediaTek Inc.
  * Author: Mars.C <mars.cheng@mediatek.com>
+ *
+ * Copyright (C) 2023 Collabora Ltd.
+ *                    AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
  */
 
 #include <dt-bindings/interrupt-controller/irq.h>
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
