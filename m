Return-Path: <SRS0=wYXb=LB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62AB7C47082
	for <linux-phy@archiver.kernel.org>; Mon,  7 Jun 2021 03:51:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2720661209
	for <linux-phy@archiver.kernel.org>; Mon,  7 Jun 2021 03:51:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2720661209
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=socionext.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7epCkmCVq4VdQI0fPsnaayRk4yzctAoLy94gJvIoj/Q=; b=jCPkLnjIk5Awo5
	R+MD04+9XmGwnSi+V7c/VM6PG50t9ZY6DPEHbxqWn7mZ0TafqvLium/lQduFWKrZDgcDtG4GCusxd
	S03uDlY9hZwBP9hH8No2FbEg3lpACfmYbCC3n/NB3L+I65q1Eo7JirvHfc9FlOFBKzxWs1a/8SUkN
	5zoXrDRaaeW6BexmJ1uZPLBOlY8++LmSlwfnjT6y5dGL7k9l9gVUXfA5JEo7KxbkC1faYoiaapW5A
	rT/d/XrY8lkoJiDT1SgcvA2CEazQpyVjAEOfydoLiSCj8GOMW+hBGQ752KRF64ONSrEXWqSuKjRIl
	n7pLOPkX99CGZgdDNq8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lq6IG-001Pyv-N2; Mon, 07 Jun 2021 03:51:16 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lq6Hu-001PvG-0w; Mon, 07 Jun 2021 03:50:58 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 07 Jun 2021 12:50:50 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 4288E205902A;
 Mon,  7 Jun 2021 12:50:50 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Mon, 7 Jun 2021 12:50:50 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id 010CEB62AB;
 Mon,  7 Jun 2021 12:50:49 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH] phy: uniphier-pcie: Fix updating phy parameters
Date: Mon,  7 Jun 2021 12:50:42 +0900
Message-Id: <1623037842-19363-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210606_205054_204908_732A9747 
X-CRM114-Status: GOOD (  14.50  )
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

The current driver uses a value from register TEST_O as the original
value for register TEST_I, though, the value is overwritten by "param",
so there is a bug that the original value isn't no longer used.

The value of TEST_O[7:0] should be masked with "mask", replaced with
"param", and placed in the bitfield TESTI_DAT_MASK as new TEST_I value.

Fixes: c6d9b1324159 ("phy: socionext: add PCIe PHY driver support")
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/phy/socionext/phy-uniphier-pcie.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/socionext/phy-uniphier-pcie.c b/drivers/phy/socionext/phy-uniphier-pcie.c
index e4adab3..6bdbd1f 100644
--- a/drivers/phy/socionext/phy-uniphier-pcie.c
+++ b/drivers/phy/socionext/phy-uniphier-pcie.c
@@ -24,11 +24,13 @@
 #define PORT_SEL_1		FIELD_PREP(PORT_SEL_MASK, 1)
 
 #define PCL_PHY_TEST_I		0x2000
-#define PCL_PHY_TEST_O		0x2004
 #define TESTI_DAT_MASK		GENMASK(13, 6)
 #define TESTI_ADR_MASK		GENMASK(5, 1)
 #define TESTI_WR_EN		BIT(0)
 
+#define PCL_PHY_TEST_O		0x2004
+#define TESTO_DAT_MASK		GENMASK(7, 0)
+
 #define PCL_PHY_RESET		0x200c
 #define PCL_PHY_RESET_N_MNMODE	BIT(8)	/* =1:manual */
 #define PCL_PHY_RESET_N		BIT(0)	/* =1:deasssert */
@@ -77,11 +79,12 @@ static void uniphier_pciephy_set_param(struct uniphier_pciephy_priv *priv,
 	val  = FIELD_PREP(TESTI_DAT_MASK, 1);
 	val |= FIELD_PREP(TESTI_ADR_MASK, reg);
 	uniphier_pciephy_testio_write(priv, val);
-	val = readl(priv->base + PCL_PHY_TEST_O);
+	val = readl(priv->base + PCL_PHY_TEST_O) & TESTO_DAT_MASK;
 
 	/* update value */
-	val &= ~FIELD_PREP(TESTI_DAT_MASK, mask);
-	val  = FIELD_PREP(TESTI_DAT_MASK, mask & param);
+	val &= ~mask;
+	val |= mask & param;
+	val = FIELD_PREP(TESTI_DAT_MASK, val);
 	val |= FIELD_PREP(TESTI_ADR_MASK, reg);
 	uniphier_pciephy_testio_write(priv, val);
 	uniphier_pciephy_testio_write(priv, val | TESTI_WR_EN);
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
