Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BB9EC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewcfJGsYmaDiwa5RIbnRqfk+X+DHE7dF7bai6aUbaBY=; b=ATnww9TkFNYr8g
	LNMlDBwSmRSrhYmBMr0WrtQngVn+FoBUU030Q9ivhEUPOaQMaUD8tVzlOy13A0WasFjrc/JxbM7tC
	f1m902LsiglYcF5aHC7jQ65/6yy1CLUOm8lpOOEFfeGtxuFhenLHhTrJqSKsOEILsUIIYLj8GOQqJ
	V62TnMLZz/LD55TkKBbJ4qgDJQU3IvgjWPLnaYyvwDwC4o4M8efctq9SR8UmZzSgL2naLTE0vGMZj
	FBoUiFvfhAXbwo82rY/zas3a2I5KN2imZ9HXsi4zDwIbr1E1Jb5LnJYDIR37Aeq8HnL601krkuha3
	X+sUVfmLVboQBlnY1Dcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqy-00EPia-0U; Fri, 11 Nov 2022 08:57:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPql-00EPTK-Ob
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 534D061EE5;
	Fri, 11 Nov 2022 08:57:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B99E7C433D6;
	Fri, 11 Nov 2022 08:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157042;
	bh=5C1jlX48Nchjosb1BQmNB/f76zJc6sJZFDo1LuueAHo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cL2LKzytOHLTFSgAlq6dcatonUfAx1IbS/M6FwfHn2FLFNRRHhCkJXl3V1UHe/WcB
	 6FxG4lCSssoFbGaxrWrLCxb5Ykq4NIOAEx/2wyDWpGNhCyJtxUP8zOIv+sNbbncUqn
	 dRSYe8BdNj6voTXiVX2UpOkTt9A/VmkuKuYcrLDCEuIdcq+ojqIvKJeCN7R9EjSogc
	 Mei5LIiGAM2C/8b+KivMMZTwy70coBtwA4yqwqtcQU6aZqXuoeGjiBWTg02BsjJ69g
	 1b5Kl98CA59OaQZu/b0gQrG2bLu6+g1hbaY43en5EBN1q3s8LNZvLXS7+beHFNUhJx
	 53W4D+jqUcIXg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqJ-0002Tt-2r; Fri, 11 Nov 2022 09:56:55 +0100
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
Subject: [PATCH 03/22] phy: qcom-qmp-combo: move pm ops
Date: Fri, 11 Nov 2022 09:56:24 +0100
Message-Id: <20221111085643.9478-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005724_067567_454D9F6E 
X-CRM114-Status: GOOD (  12.87  )
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
