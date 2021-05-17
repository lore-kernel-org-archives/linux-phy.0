Return-Path: <SRS0=G5Ry=KM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59649C433B4
	for <linux-phy@archiver.kernel.org>; Mon, 17 May 2021 05:39:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E93BF61076
	for <linux-phy@archiver.kernel.org>; Mon, 17 May 2021 05:39:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E93BF61076
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=mediatek.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=O/j9WwlII1zjymScv8948bwyo5e26wU3cdRtiL3h2pQ=; b=dfPFNJ5GuGIPDpgVFBl6D0/nZM
	5to+s4lozsPV++kNlzedw7zza7aseDDyo0kbEFHLb/8OhFKMbYq7Qwliq1E0QZ0oeHTovsL4fJf1a
	0mmwzziWleEkZBr2WGfG8XlAkdLNescSaciW83QPiPS1wRn17phoWUxvNKu3j/VOO1s4dDKZV/WF1
	X4Z79YsKm4dmLUbFveMZLKf2uQk7hFzWgshIEeBkrjTI9YxrFoDjeuEJbQmn3jdHA57h2QIyB/n+E
	n/9a4XbevbZ4LYgNyJcoLG8uwyQmRL67dp0+Ghp7N4EbKuD/iGJ/mzyozDAioNhkHWwPeHIfA1bO4
	lBDQ5ZcA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liVyD-00Dmox-U4; Mon, 17 May 2021 05:39:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liVwj-00Dmgf-3P; Mon, 17 May 2021 05:37:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=VL+LNJ3/fhoxD/7bP0UUgHGZrNkJIAv3CKs4hRSTyl0=; b=Zg9DUapz2Y2tJZnItCSPi2raH/
 tkmqtGNo6bGgH7OH2WEe5ZUOa5qIVz6u/Wy9+nmxUf3NYAy+Z7yES9+ed61WexA69PrWFBAEOJqOe
 UG8SNMs+58qy89AvCEGgOPw3p5VejcwsdifJrgIxVKJqSqrBuxzTaO6c1+vGbnY5I9PAMC+g2tJqn
 8JC7Bo+Pm6fcdnA4k3oWkBpNpcml1Q321Jk9i8syUnEBFpRTzTJAVB2AMCp2HIRCXnBVe70C1uFfT
 UTVRASZPwRl9AR9HLmTdM9TDk1qWXqm4ix9ggmKlsjQ3uNPz0xHh4lud0k3ALEWk8VF1drkYRjXKc
 EpMFViTQ==;
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liVwc-00DUWS-UI; Mon, 17 May 2021 05:37:38 +0000
X-UUID: a8d2badb98264b88805b195f007d5136-20210516
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=VL+LNJ3/fhoxD/7bP0UUgHGZrNkJIAv3CKs4hRSTyl0=; 
 b=UFe9Pd23jG/a1qZtM2Sh5LTLUqey3bdnPiSsFKpiX0Rx+yKKcfRYYpf6RHc8T+WToWd0zA6DHkFhLPalcLbNxrTO9wVDOpYoC5bHP/DHtA70TkxIQQuEVqUInwucU0mcpSIALQtGou14LyyH5ufLcIvDZAHj69PIf9PUKJwh3zc=;
X-UUID: a8d2badb98264b88805b195f007d5136-20210516
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 2071188422; Sun, 16 May 2021 22:37:29 -0700
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 16 May 2021 22:37:27 -0700
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 17 May 2021 13:37:24 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 17 May 2021 13:37:23 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>
Subject: [PATCH v2] phy: qcom-qmp: remove redundant error of clock bulk
Date: Mon, 17 May 2021 13:37:21 +0800
Message-ID: <1621229841-22984-1-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5CC1D6D304A0BEF7EF3422F5471F0CEC2843A0B05FCE63BE7801B45554CA7BFB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_223735_034326_709E2221 
X-CRM114-Status: GOOD (  10.47  )
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

There is error log in clk_bulk_prepare/enable()

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v2: add reviewed-by Bjorn
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 7877f70cf86f..882b8ecae235 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -3993,10 +3993,8 @@ static int qcom_qmp_phy_com_init(struct qmp_phy *qphy)
 	}
 
 	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
-	if (ret) {
-		dev_err(qmp->dev, "failed to enable clks, err=%d\n", ret);
+	if (ret)
 		goto err_rst;
-	}
 
 	if (cfg->has_phy_dp_com_ctrl) {
 		qphy_setbits(dp_com, QPHY_V3_DP_COM_POWER_DOWN_CTRL,
@@ -4430,10 +4428,8 @@ static int __maybe_unused qcom_qmp_phy_runtime_resume(struct device *dev)
 	}
 
 	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
-	if (ret) {
-		dev_err(qmp->dev, "failed to enable clks, err=%d\n", ret);
+	if (ret)
 		return ret;
-	}
 
 	ret = clk_prepare_enable(qphy->pipe_clk);
 	if (ret) {
-- 
2.18.0
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
