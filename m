Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22A93C4321E
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbGoG2EGFPgKb8YXh8H0N6A/MkX6PG6hEXdo2oLQtD4=; b=kBfKyu1xmEiHo7
	zkO6H9IfO3i46MoMFoxh04k3T4rpC4EG5uvLrW0rqaWxJ2uaoiHDwHYEjKE1OwFS/H2hyQQN0d88Q
	cW2Mn09R48KBNQF01LyYV85nhOBNG+O0uRTPySSlAGBPSOaQQDSDCymz6eEdp78oAjGXanxMz5M+J
	TGJRMXS+oiPqBzzyBo/hX9DxsSvkvdT256F2ndSldk3bt5NhTWE6eujiWIcN40fD29+58lmVYFN0b
	xzcwu7a4lTRtJ4lMDpvcwqTxG8sOiumZ61q8HT/M8xAX6TDjckpdz2IYAE4ptk17vBcm+/JafJoOa
	0EAs9FnzMYi+wC2y/5Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJQ-000D3c-Fl; Mon, 14 Nov 2022 11:07:36 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJ7-000CnV-3y
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 984CDB80DDD;
	Mon, 14 Nov 2022 11:07:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5D92C433B5;
	Mon, 14 Nov 2022 11:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424033;
	bh=PtQoJaOR3Mf5cDZQQve7VwAUA5KUND9BYF4wcr4Tzj4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GeyuQk1FrSHN98Ybm7q3LyoIz8XO5svq0D1Al7KrYYs8LliXNvWFUCXTojo4xEWf5
	 tX0iAd2Ol0HvLMvw9ZJ7VVAzVlZgfZkd/VEZ8YgQF8RNKvImYUa8djKnvJVM43fEi9
	 ykQR6M6OQGQjpl5FujEnxH+ylJzqBbWt/D9EjfBnrvIcsMX+7wre7qP2t0SB32ve1e
	 1kcTUCpP20GiovYgGBwWPDANcwg5WuFqw3EMzZ4lbhYP+5+G+lXUj2L9tr6ms5q6hw
	 xRUAW7u/cLgOsote2S5hyBromMQhVXZR19BlshCqhJ7Rwn8FQCG4j4bSlE42cfsPIj
	 ROLsblBB1qK7Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIY-0001EV-0i; Mon, 14 Nov 2022 12:06:42 +0100
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
Subject: [PATCH v2 03/22] phy: qcom-qmp-combo: move pm ops
Date: Mon, 14 Nov 2022 12:06:02 +0100
Message-Id: <20221114110621.4639-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030717_387300_133305B3 
X-CRM114-Status: GOOD (  13.04  )
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

Move the PM ops structure next to the implementation to keep the driver
callbacks grouped.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index e7c8c4417142..2ac29b71d3b7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2216,6 +2216,11 @@ static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
 	return 0;
 }
 
+static const struct dev_pm_ops qmp_combo_pm_ops = {
+	SET_RUNTIME_PM_OPS(qmp_combo_runtime_suspend,
+			   qmp_combo_runtime_resume, NULL)
+};
+
 static int qmp_combo_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
@@ -2646,11 +2651,6 @@ static int qmp_combo_create(struct device *dev, struct device_node *np, int id,
 	return 0;
 }
 
-static const struct dev_pm_ops qmp_combo_pm_ops = {
-	SET_RUNTIME_PM_OPS(qmp_combo_runtime_suspend,
-			   qmp_combo_runtime_resume, NULL)
-};
-
 static int qmp_combo_probe(struct platform_device *pdev)
 {
 	struct qcom_qmp *qmp;
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
