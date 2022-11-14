Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88264C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAJGe/6j1FN3zBzD2q4lkI1DCiZLRlo2zNSPjjMsSWU=; b=stHc9+9zInCBaw
	eThdV/C8eK/OS03mLOl9PjyOe9I8+KdmkyYXCG/dpQNFvflZYPn+JncUTXcBeIrRdGpg9BT6Ui2H5
	IGItOVCG6r1oXeXTXXHSrMLr5TTaHYBPL77rQFNPp572leQSHJ+aUbCzGez7Ls56hKBCZaW75Ddhu
	dkrrRTVeZvNh0UEp47sT22puYN3tRtUyyxmVsobQ5I264wuP13iepWzdG/n9XtNs/NydPkRYSucoT
	Evs58cp3aqKe84dgKV+vbRIYGH5iQ+XkPc8LBtkfhOLZ0Q+zCtNGzMN5E8ae+pKmqERbXKgJJSPzp
	zLbkVUgwQxu6IQbPT1VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJP-000D2e-TO; Mon, 14 Nov 2022 11:07:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJ6-000CnU-2s
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A594A61029;
	Mon, 14 Nov 2022 11:07:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2E3EC43155;
	Mon, 14 Nov 2022 11:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424033;
	bh=GWWGPUKPa7D/bftHKUkTMDy0KmAGhBAfx6Kwm0ESm4s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ObwY/TLolRbC8Gi0GzoqtGIK2fICxgc+t4euQThTUGIAmPi0tAh5kBukaf6wXubj1
	 vfkbBgpNcpjtmfZUtYdLDkuP/15E+zvfI6Nby69pM0Kgrkgyh6MBunHdSQ2hUcG+ce
	 2TD7bUhHQHakrjzLGu07Thw39tC03dqysP9lDjx0pSC3ejI1VWwYwVgp5hDGoayvHc
	 /1U0liulquK6Y5YA9IFvGlAoH9ItSjyKLDHzTUQNXeG3czmxk2OWmoiIRHff5IcBfP
	 Rez42ZIZOJqT7BJ1QIEsfMOPBuU/j8uPoIl+/s5nIzJ+yt8V5MNYVI3PwopY3+unNj
	 UHZNVcLTQaPwQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIY-0001Eg-AU; Mon, 14 Nov 2022 12:06:42 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 07/22] phy: qcom-qmp-combo: drop unnecessary debug message
Date: Mon, 14 Nov 2022 12:06:06 +0100
Message-Id: <20221114110621.4639-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030716_194156_4F9DEE43 
X-CRM114-Status: UNSURE (   9.83  )
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

Drop the unnecessary (verbose) debug message from the init PHY op.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index bf0874d22d91..ae04f6219fd2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1967,10 +1967,8 @@ static int qmp_combo_com_exit(struct qmp_phy *qphy)
 static int qmp_combo_init(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
-	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	int ret;
-	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
 
 	ret = qmp_combo_com_init(qphy);
 	if (ret)
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
