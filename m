Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBE08C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgPNy6YFW6RBg/rhXJ+81ieQNgSASKuEsR/Hi+j6ZMk=; b=dwUczFjyULC4Jd
	hJ0WLI0R9yeeqYNAt0DeX/qPrGX46TjYGffRiSAllfnfZYh1TkXA4hwmgrZPDAo93RqGW3PiBCHg1
	h0njzvytOBXkhQRSovsiJYxxMqUIwjFXSpp4q0XdZGyfenK2veucZfedQRqJyJZ+hOoZJanxO/ceq
	BWBd26CumPyTuuvXs/54yQO8vhovBsLzgcAZzoAZ3TCb+sYgOOQdF01wnt2KOYGWubmI8Sr39+9v2
	Mx1H3KwuO6XXrdn+41jqfgkjCFH3F1hChgB/7hfFlRAfv0+6QiDEENWQ4IVU8ktvKZW5n9pu/wXrU
	NZGrfbpkcY/RWpyRmUwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqW-001QcR-84; Tue, 20 Sep 2022 07:39:08 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqQ-001QTo-BN
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id EACEEB82556;
	Tue, 20 Sep 2022 07:39:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14B3FC433D7;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=R+4ni1Bjgjo5PtcTztH9oA6jovlxazbNXvwamnT/0zQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uzhooAjOykMbwyuPefdU4XnZuCyG6xvxN0aaI1T816+bVUoXKoXoudqoa3eaRwudC
	 UfjQffDhJohn0p5yDcepd14BemKw/yu81vvnjFDbb4TMJ6Y3UMKVDyzV9OSc+d7x1v
	 2mxyFqzfB/l3hLAD3SLijC0OVTzJblBtYFYCSY1pj01bsLXXP5YmezNXLHbPj6YGsq
	 lNqh1VEgojS4oJ9rBEkOPGX83FO38pvjdUTywgX41e83BJilbdY/UJ+3t8I8STLhp0
	 mG6zYf3vJFdxigeIS7IqzhGF7mQWWxbKyddThTYFiref/dkbIhRd4JYYVwf+ayTsxa
	 3t4P3VIrgq/Dg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqP-0005Qg-Di; Tue, 20 Sep 2022 09:39:01 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 02/17] phy: qcom-qmp-pcie-msm8996: drop unused type from config
Date: Tue, 20 Sep 2022 09:38:11 +0200
Message-Id: <20220920073826.20811-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003902_554947_F02EDABA 
X-CRM114-Status: GOOD (  11.74  )
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

The configuration PHY type is no longer used since the QMP driver split
so drop it from the configuration.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 245f6dc1710e..20a76b1b23a2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -188,8 +188,6 @@ struct qmp_phy;
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
-	/* phy-type - PCIE/UFS/USB */
-	unsigned int type;
 	/* number of lanes provided by phy */
 	int nlanes;
 
@@ -323,7 +321,6 @@ static const char * const qmp_phy_vreg_l[] = {
 };
 
 static const struct qmp_phy_cfg msm8996_pciephy_cfg = {
-	.type			= PHY_TYPE_PCIE,
 	.nlanes			= 3,
 
 	.serdes_tbl		= msm8996_pcie_serdes_tbl,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
