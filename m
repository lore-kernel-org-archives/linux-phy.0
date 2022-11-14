Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E015CC43217
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t7Gg7rd3Lhi6HJyelOnr2J9orQB7PjJ4PUBs/QZKB6k=; b=Y9pz8gZwgsUnR4
	RoSpv2v6TMXuPmwo5LsXBH3FxVrSscR7r/SfzFRi38ToxCgZH+OUIMp9oZ+u9jJAZ3PGPU2gDAw2S
	d7jqsbszZyjW+1NWOMjqzpt/V3Xq1TXYVEknzr+pHaU7ZTAr1WYblf8FFh1C71XJXTiU/+pZSusv2
	Spso5wusWgFPWX9WKrYy96pnZZrlAzoAw1cQiCt8UQvRyak6pndefPyxo4tvTRjMnGjgj4YsRJbYU
	lW0yhiJCmjbgUxPVal565DB9Vp/szir1ZzZEJq8nGEB/6qheQH2f8qB4X0K+KVdCABOmorOGv7m7W
	bWdoZbVCrO3s9VXUrE8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJQ-000D2v-5F; Mon, 14 Nov 2022 11:07:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJ6-000Cnc-HX
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0EB1961030;
	Mon, 14 Nov 2022 11:07:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17BE8C4FEB5;
	Mon, 14 Nov 2022 11:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424034;
	bh=TDErkI5MMhhMepYhg2GqGRdafBU+C2asoAiXs1z2LYs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RthtirqcOUdJX6WOeFLLN3ZauKjFZI1oqX78kgNh2FQrxfImCaKt5qLbA4y8lJKx9
	 C9N0SYfSxpOXvnpslAYHwiCOS4Zq9msoJm11vhtITKTgFAFd2n89oyBK34xItDWQ9f
	 i4WBmORP3p2pD6vJCFb7nqxx+NGqrjKK1uWsjSewwk7iZOF8MP8DlPRFmqKQy8hGjL
	 Pu3Cg/kK97982xNSlckZGzhjA322NZ8CtEdg1mXW11hbXd9EihVu0uLDiADgZ9VyEO
	 40kgPYDJwXOyU4DeUqAdMxtY7Kkal1/n+bWLL6zm7oguWQQscutPw62xWIowZR4KuX
	 WrmthmZvLEgZA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIY-0001Eo-GF; Mon, 14 Nov 2022 12:06:42 +0100
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
Subject: [PATCH v2 09/22] phy: qcom-qmp-combo: rename DP PHY ops
Date: Mon, 14 Nov 2022 12:06:08 +0100
Message-Id: <20221114110621.4639-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030716_687733_FBE3499A 
X-CRM114-Status: GOOD (  11.59  )
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

Rename the configure and calibrate DP PHY ops using the common prefix
for consistency.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 5d985195df38..7392ae460fd7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1842,7 +1842,7 @@ static int qcom_qmp_v4_dp_phy_calibrate(struct qmp_phy *qphy)
 	return 0;
 }
 
-static int qcom_qmp_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
+static int qmp_combo_dp_configure(struct phy *phy, union phy_configure_opts *opts)
 {
 	const struct phy_configure_opts_dp *dp_opts = &opts->dp;
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
@@ -1857,7 +1857,7 @@ static int qcom_qmp_dp_phy_configure(struct phy *phy, union phy_configure_opts *
 	return 0;
 }
 
-static int qcom_qmp_dp_phy_calibrate(struct phy *phy)
+static int qmp_combo_dp_calibrate(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -2127,9 +2127,9 @@ static const struct phy_ops qmp_combo_usb_phy_ops = {
 
 static const struct phy_ops qmp_combo_dp_phy_ops = {
 	.init		= qmp_combo_dp_init,
-	.configure	= qcom_qmp_dp_phy_configure,
+	.configure	= qmp_combo_dp_configure,
 	.power_on	= qmp_combo_power_on,
-	.calibrate	= qcom_qmp_dp_phy_calibrate,
+	.calibrate	= qmp_combo_dp_calibrate,
 	.power_off	= qmp_combo_power_off,
 	.exit		= qmp_combo_dp_exit,
 	.owner		= THIS_MODULE,
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
