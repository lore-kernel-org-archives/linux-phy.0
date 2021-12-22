Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04A55C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 22 Dec 2021 05:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UyODp/0Uv2ZS/qlbCMGGkcPtHhScsEkNoc6DoczweCs=; b=wjR3pg09crEx2e
	H0CTJCr68j1WcUD6r9O1x98K+XlGbuPCFKj7P3YsQJzsCPbSzq6Iv+E/vdx3/OAMR7eW2vwfa+Ij4
	J6Vkbn0l6IRxwHoxQPgXLLfXWFxx416XSR9587q4OMrmQ0iQ5Qu9HfHeQCgZq6K/B98w7uFS3esar
	C20VU19PVOAFL4KSI1YjOpSWjKeyFGtGEeubq6ZRsiSLJhzubIyOCu7gC9BrGm+vduZzyBytiH0wh
	Sd8etgW7mjMB1yagUvW7d6qIDIFaItTP5Ru8l0UP5Vi08SDPi6iXuauGbzdhPVv+z78iPYVejXqH/
	Yh1dsLR2IOrxxg18VQbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzu2c-009Fjb-F1; Wed, 22 Dec 2021 05:19:54 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzu2Q-009FiT-Te; Wed, 22 Dec 2021 05:19:44 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 22 Dec 2021 14:19:42 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 1843320584CE;
 Wed, 22 Dec 2021 14:19:42 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 22 Dec 2021 14:19:42 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id C13AFB568B;
 Wed, 22 Dec 2021 14:19:41 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>,
 Ryuta NAKANISHI <nakanishi.ryuta@socionext.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH] phy: uniphier-usb3ss: fix unintended writing zeros to PHY
 register
Date: Wed, 22 Dec 2021 14:19:29 +0900
Message-Id: <1640150369-4134-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211221_211943_093627_391C885F 
X-CRM114-Status: GOOD (  12.78  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Ryuta NAKANISHI <nakanishi.ryuta@socionext.com>

Similar to commit 4a90bbb478db ("phy: uniphier-pcie: Fix updating phy
parameters"), in function uniphier_u3ssphy_set_param(), unintentionally
write zeros to other fields when writing PHY registers.

Fixes: 5ab43d0f8697 ("phy: socionext: add USB3 PHY driver for UniPhier SoC")
Signed-off-by: Ryuta NAKANISHI <nakanishi.ryuta@socionext.com>
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/phy/socionext/phy-uniphier-usb3ss.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/socionext/phy-uniphier-usb3ss.c b/drivers/phy/socionext/phy-uniphier-usb3ss.c
index 7ce611c2088b..f402ed8732fd 100644
--- a/drivers/phy/socionext/phy-uniphier-usb3ss.c
+++ b/drivers/phy/socionext/phy-uniphier-usb3ss.c
@@ -22,11 +22,13 @@
 #include <linux/reset.h>
 
 #define SSPHY_TESTI		0x0
-#define SSPHY_TESTO		0x4
 #define TESTI_DAT_MASK		GENMASK(13, 6)
 #define TESTI_ADR_MASK		GENMASK(5, 1)
 #define TESTI_WR_EN		BIT(0)
 
+#define SSPHY_TESTO		0x4
+#define TESTO_DAT_MASK		GENMASK(7, 0)
+
 #define PHY_F(regno, msb, lsb) { (regno), (msb), (lsb) }
 
 #define CDR_CPD_TRIM	PHY_F(7, 3, 0)	/* RxPLL charge pump current */
@@ -84,12 +86,12 @@ static void uniphier_u3ssphy_set_param(struct uniphier_u3ssphy_priv *priv,
 	val  = FIELD_PREP(TESTI_DAT_MASK, 1);
 	val |= FIELD_PREP(TESTI_ADR_MASK, p->field.reg_no);
 	uniphier_u3ssphy_testio_write(priv, val);
-	val = readl(priv->base + SSPHY_TESTO);
+	val = readl(priv->base + SSPHY_TESTO) & TESTO_DAT_MASK;
 
 	/* update value */
-	val &= ~FIELD_PREP(TESTI_DAT_MASK, field_mask);
+	val &= ~field_mask;
 	data = field_mask & (p->value << p->field.lsb);
-	val  = FIELD_PREP(TESTI_DAT_MASK, data);
+	val  = FIELD_PREP(TESTI_DAT_MASK, data | val);
 	val |= FIELD_PREP(TESTI_ADR_MASK, p->field.reg_no);
 	uniphier_u3ssphy_testio_write(priv, val);
 	uniphier_u3ssphy_testio_write(priv, val | TESTI_WR_EN);
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
