Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66B4EC3DA6F
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 09:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=An+8fdQxUbCvAliw6fAP9vsfNiWt13bEXDpCn4W1yAc=; b=Ylumfjaf/Z0hRE
	JL75RM8KOj+cf/L48+m4LIL9n31/c5Nvl1iKzKoWJVODEgBz9+ozhkRwpyHApBBN2DjJ7UNuVBPa+
	dLK4RYipIac9FPvcPNU80aWGxFaG6zQGkUxx0i5ZLJtua9JzMuVDx+lBxcUyO6h7araxG3exGwwvP
	RNxGbkyMohCpqEPF4P5Li2K28wGhVrPrmb742NrHaX7/EDjdPFRz8yq3MyXmJr+UK393CVWHIqAyB
	fKiDLnxcStmxter6YQu8FshFS9oCOUkMG91vj+LIPAsksGXTLFTjh5HWdlFLrUEE3aRF7DNfGNs+3
	uNdwlMDhH67AkbOizhdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ6cu-002hXe-0L;
	Thu, 24 Aug 2023 09:27:40 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ6cq-002hX2-2H
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 09:27:38 +0000
Received: from dggpemm500012.china.huawei.com (unknown [172.30.72.56])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RWd1l1b9szNmqS;
	Thu, 24 Aug 2023 17:23:55 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500012.china.huawei.com (7.185.36.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Thu, 24 Aug 2023 17:27:30 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Thu, 24 Aug
 2023 17:27:29 +0800
From: Yang Yingliang <yangyingliang@huawei.com>
To: <linux-phy@lists.infradead.org>, <linux-arm-msm@vger.kernel.org>
CC: <quic_varada@quicinc.com>, <andersson@kernel.org>, <vkoul@kernel.org>,
	<yangyingliang@huawei.com>
Subject: [PATCH -next] phy: qcom: phy-qcom-m31: change m31_ipq5332_regs to static
Date: Thu, 24 Aug 2023 17:23:56 +0800
Message-ID: <20230824092356.1154839-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_022737_035643_0437A5EC 
X-CRM114-Status: UNSURE (   8.49  )
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

m31_ipq5332_regs is only used in phy-qcom-m31.c now, change
it to static.

Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 drivers/phy/qualcomm/phy-qcom-m31.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
index 99d570f4142a..014278e5428c 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31.c
@@ -82,7 +82,7 @@ struct m31_priv_data {
 	unsigned int			nregs;
 };
 
-struct m31_phy_regs m31_ipq5332_regs[] = {
+static struct m31_phy_regs m31_ipq5332_regs[] = {
 	{
 		USB_PHY_CFG0,
 		UTMI_PHY_OVERRIDE_EN,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
