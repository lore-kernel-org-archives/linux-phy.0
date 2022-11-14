Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9439C43219
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqrXBg771iIK16M+DPkOii8ZlSyMO5g7vjfeD1E6mlQ=; b=ZyLr8NT3bLubCv
	MupNjbopQZzURtf2A4uLAfhP8F3Yh9KBJQEkcmqywS7kaFgsAKEPp0E3M9sVFzrAQSUXeuRCLjts0
	vfZwSqxEgHueMdmOXERdclXHwtCp9neEBvOQ7Rw7NYLBaM1+ibjc5Lr8HVcl9B2RS220hmayIL2o0
	VxN3DZtMVeKO/Tqyjjmo6hhD9FhRIIrzFERuHQ5xyvkmGWf9+awr6smkoNYVBS4k2Vjw5DFZXK4c6
	OHBFaqqHcTiLwMNEeoorfyD0TTZl/7GNKxhEjyc6yNdMyT+48ME/GzNtnsZNeTSzqz861S+nozMWY
	WqgOpUAPXph+BMvfIxzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJQ-000D2l-0L; Mon, 14 Nov 2022 11:07:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJ6-000Cnq-KP
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 165716101A;
	Mon, 14 Nov 2022 11:07:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5D00C4315D;
	Mon, 14 Nov 2022 11:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424033;
	bh=3oKBVvbim8AnILN7ovfk5Q/WICjkxryDGKgk86VJ0wQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ow1nNeFOTv3yxZwqzIwbFSZ3b+zPr4r2YVn82VeWPXR6Rmy895qmA6/1A5cxC3pBs
	 bC1q4c9+sT9ddKSJnaRWUXikKOlQRig+vklMqugzLH1765+us6wbfF/WHgjG3NQgHG
	 wo544QdP5RJ4oeIwIzkRUr388n51+G6crOM6btDgGj/XCGqEXGBTgeqHcnv4Vdo9SS
	 v+dAlJgoS/i1lq73FiqgYcDqcAJPLkBCkcPiB9Vyt+1Uc7+w3FCILG3O2sXXUSDe+I
	 2eI/0483wWhUadZWp9UdDlCijogTYLDB8VMIM/pxGB3c9p2wrc5pd1cd100wTPpVkn
	 sxLEIVV0GvDYQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIY-0001Ed-8E; Mon, 14 Nov 2022 12:06:42 +0100
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
Subject: [PATCH v2 06/22] phy: qcom-qmp-combo: rename USB PHY ops
Date: Mon, 14 Nov 2022 12:06:05 +0100
Message-Id: <20221114110621.4639-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030716_750445_A52A4231 
X-CRM114-Status: GOOD (  11.61  )
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

Add a "usb" infix to the USB PHY operation functions and name them
after the corresponding operations (e.g. "init" rather than "enable").

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index cec487560fd7..bf0874d22d91 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2084,7 +2084,7 @@ static int qmp_combo_exit(struct phy *phy)
 	return 0;
 }
 
-static int qmp_combo_enable(struct phy *phy)
+static int qmp_combo_usb_init(struct phy *phy)
 {
 	int ret;
 
@@ -2099,7 +2099,7 @@ static int qmp_combo_enable(struct phy *phy)
 	return ret;
 }
 
-static int qmp_combo_disable(struct phy *phy)
+static int qmp_combo_usb_exit(struct phy *phy)
 {
 	int ret;
 
@@ -2109,7 +2109,7 @@ static int qmp_combo_disable(struct phy *phy)
 	return qmp_combo_exit(phy);
 }
 
-static int qmp_combo_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+static int qmp_combo_usb_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 
@@ -2119,9 +2119,9 @@ static int qmp_combo_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 }
 
 static const struct phy_ops qmp_combo_usb_phy_ops = {
-	.init		= qmp_combo_enable,
-	.exit		= qmp_combo_disable,
-	.set_mode	= qmp_combo_set_mode,
+	.init		= qmp_combo_usb_init,
+	.exit		= qmp_combo_usb_exit,
+	.set_mode	= qmp_combo_usb_set_mode,
 	.owner		= THIS_MODULE,
 };
 
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
