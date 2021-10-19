Return-Path: <SRS0=JtrO=PH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9189FC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 23:59:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C2626101A
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 23:59:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4C2626101A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=socionext.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1RdWtuvkryJXz+WjPZ/pEh3ikqwb0GmiL/uqIbll4U=; b=twoW+k9la0xdsx
	euXYKmTqS+S8kxYk2QZdmLiypUO2cO+tp9Nwl/zDk99m9ysRM7gs8cxAj9hqaBp24jUN6587S5DA6
	ynXyqZU08x+NAyz5u5kcSk4McRJxW1pu0o6xkvt5kcz1zS1i5KSx/gnK6Wf7hTR56FKWXJe7kozmf
	J6Q27lovLKL30QVrtHBQOOSzcuWLsy3x5oSyLnNoTxT/dPngW5TsevCBY8GqG4yRdfpOHaqHQM+O1
	Yb28uzK2+lpTW7Q2oWD1yYREgPMND+yjS6+YYQ5qpiCfDpiuSijsd6+q9kqgzTzqmEIl8NU559s9o
	5JXMtOq2qGpp2YR+nMUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcz1B-0030G6-Py; Tue, 19 Oct 2021 23:59:41 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcz08-002zoZ-Sl; Tue, 19 Oct 2021 23:58:38 +0000
Received: from unknown (HELO kinkan2-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 20 Oct 2021 08:58:32 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan2-ex.css.socionext.com (Postfix) with ESMTP id 7A43B206E701;
 Wed, 20 Oct 2021 08:58:32 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 20 Oct 2021 08:58:32 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id 23D7BB62E0;
 Wed, 20 Oct 2021 08:58:32 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v2 5/8] phy: uniphier-pcie: Set VCOPLL clamp mode in PHY
 register
Date: Wed, 20 Oct 2021 08:58:05 +0900
Message-Id: <1634687888-23900-6-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1634687888-23900-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1634687888-23900-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_165837_090858_D3B4583B 
X-CRM114-Status: GOOD (  12.26  )
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

Set VCOPLL clamp mode to mode 0 to avoid hardware unstable issue.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/phy/socionext/phy-uniphier-pcie.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/socionext/phy-uniphier-pcie.c b/drivers/phy/socionext/phy-uniphier-pcie.c
index fde8aac5f4b6..2bd8df619712 100644
--- a/drivers/phy/socionext/phy-uniphier-pcie.c
+++ b/drivers/phy/socionext/phy-uniphier-pcie.c
@@ -51,6 +51,9 @@
 #define PCL_PHY_R26		26
 #define   VCO_CTRL		GENMASK(7, 4)	/* Tx VCO adjustment value */
 #define   VCO_CTRL_INIT_VAL	5
+#define PCL_PHY_R28		28
+#define   VCOPLL_CLMP		GENMASK(3, 2)	/* Tx VCOPLL clamp mode */
+#define   VCOPLL_CLMP_VAL	0
 
 struct uniphier_pciephy_priv {
 	void __iomem *base;
@@ -158,6 +161,8 @@ static int uniphier_pciephy_init(struct phy *phy)
 				   FIELD_PREP(RX_EQ_ADJ, RX_EQ_ADJ_VAL));
 	uniphier_pciephy_set_param(priv, PCL_PHY_R26, VCO_CTRL,
 				   FIELD_PREP(VCO_CTRL, VCO_CTRL_INIT_VAL));
+	uniphier_pciephy_set_param(priv, PCL_PHY_R28, VCOPLL_CLMP,
+				   FIELD_PREP(VCOPLL_CLMP, VCOPLL_CLMP_VAL));
 	usleep_range(1, 10);
 
 	uniphier_pciephy_deassert(priv);
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
