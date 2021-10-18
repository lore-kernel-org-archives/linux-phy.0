Return-Path: <SRS0=B4Pq=PG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 564D0C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 01:38:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2038661250
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 01:38:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2038661250
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=socionext.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1RdWtuvkryJXz+WjPZ/pEh3ikqwb0GmiL/uqIbll4U=; b=REfiUpVTvDzb1X
	ANJXx4Rolo6ePpIVbgi6L112QFzf5NC5ScbipqL3dzrq9LzoWuexpNCfxVsRkh6g86UHs0gQpHVcw
	wgL0MMj0qYol25OmRbymZZzh6RIDOSn8WoKtvLxSk7vexaldYQJcye4o2bJVoVPmSj9G76gc3mdlv
	P08YUiiYfOrqJtabFa0pnHp4/ioL5GjqyE/zC3rlXeEJ2rfmnCkaqDnRjgAj4Mc82ll+EpQL8E5Rz
	wuZdw+i5eVqufcunmMHhLh5KV6m+Xz6vIwGCTSPb/z3yqEdoF0PLv7W+E+ATiisE6D9bWvxfdovQN
	SDax8U8npDAceqpdTC4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcHc6-00Dhga-Ea; Mon, 18 Oct 2021 01:38:54 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcHan-00Dh64-GD; Mon, 18 Oct 2021 01:37:35 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 18 Oct 2021 10:37:30 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id C61B12058B40;
 Mon, 18 Oct 2021 10:37:30 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Mon, 18 Oct 2021 10:37:30 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id 11D14AB192;
 Mon, 18 Oct 2021 10:37:30 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 5/8] phy: uniphier-pcie: Set VCOPLL clamp mode in PHY register
Date: Mon, 18 Oct 2021 10:37:10 +0900
Message-Id: <1634521033-17003-6-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1634521033-17003-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1634521033-17003-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_183733_701189_056434E7 
X-CRM114-Status: GOOD (  10.35  )
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
