Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26FF4C38A02
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/m9Ym7TJe6KtGO17PK3E0s5lgVxYFCMnkncacQYX+0=; b=FdHDpi1nIE8vOk
	HtENuxri+SJ32SLagvUnSZmGO8HoqAhqFSErJTO9zclZDY9mz+WP+zA5SjosYC8MS0i7lOaS+2iJe
	VyTrnflIyg1uy3anwJ09+5lVwfEZOz7b6Jh8PBsck9KQyv81s2blU0H8Xtj2zVDSbetpdHdlrFr2m
	K1BMl1fTuhpOQUrq95YHCAuivaGm+psazVgPjy0K6pTZeHReBQGNBbrfyjAKefq/shQU5q6Joza1I
	bzGjSjuBucaWQ+xbhmZJNh7Lt0WWzMjb514dfZg5rsaxYciUU4ApnWCYMHkjQVr1Ve43Qi2GLlDfw
	7wb864qfFrhwt6Xd7c4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPr0-00EPkQ-RM; Fri, 11 Nov 2022 08:57:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqn-00EPWf-Ty
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 50C5661EE5;
	Fri, 11 Nov 2022 08:57:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52AC8C43162;
	Fri, 11 Nov 2022 08:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157043;
	bh=UcjQPB9m1Y/nqixRql/KGV5QHSLIloXxZBPzAAJt1eI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mxDnJheg/YmYxRIQJfUkUj4qVyKalxgGT27Fvr4wfAPP6SMAPYly3BjLR5ES59b1Y
	 U6eX2/ZH4tyxfxGJeIX39eUgD83JKRrjlv6LE/Ez2VKkw7fLyKNcj5ZKSuGOCn+b+b
	 6xJRxrh2k4epKNbBvm7WxbgFLp77C/mYFzcgiVkOsrElk1vZNvPmA1RlhM/nByi7Cz
	 NX784g06yky8g/DCyvd8yoetlG82kz5avkVWzziKwTMiaJQ74etK9RbY0seRWeJWZ8
	 P6yBvvOrS7G+D0EimD3TEut1OOWEFUeqNiLeBE4TNrFgfhT+iC3v77r7W2Qmw4Lv4g
	 JpCujZxRRxkHg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqJ-0002UA-In; Fri, 11 Nov 2022 09:56:55 +0100
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
Subject: [PATCH 09/22] phy: qcom-qmp-combo: rename DP PHY ops
Date: Fri, 11 Nov 2022 09:56:30 +0100
Message-Id: <20221111085643.9478-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005726_038168_D1B5DD2C 
X-CRM114-Status: GOOD (  11.40  )
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
