Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78022C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpPlnarW2HNGsaXmQba/0tHIBRM684Q0RQQGDY22UvY=; b=xeRSF+ovhE/zAH
	YoU/BPFHtIgC7Jl8wt9GPF7NWVWGAZuy1fIVJokz1eYAlARVL9THKiBMh6l+v4mVMHOYw1ykAhc0r
	S9unCc5fiNdHlC5YuP/5ndojlBPQgM2NGE31mgljZyYZKXM1XOWxQQr5zZ4rvcwPx7UhXUDEBA0AU
	Z0nxKLw0Wbs3b0yETRFWgvHz9JYiY7vPiHo9qM2Xkjm4976GhX0HbjVQHBz+uW4wc0o4Ux5KjErai
	t+s668l1yMYFIt1tGpdXFyoazoTrw02E8AYgaJ94Gybiy1vpjTZ+3iINZQ7f6CtMptaIfbR/fhBcm
	9XbhElyWVxiH8aFUoU5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXS1-007QA7-A3; Wed, 12 Oct 2022 08:50:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRp-007Q23-US
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:50:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B40C8614A2;
	Wed, 12 Oct 2022 08:50:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CF1CC433D7;
	Wed, 12 Oct 2022 08:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564639;
	bh=grrQJRlOwTBUkzdoRWtUy3loadm28dQuP1YPgfYctaU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HdlQZJIiK0xGzdnHR6Q5tG2ra70zyk7S5uNRSL/6FkPORm2U2iTv/hpTHvB/YkaMK
	 yx8bWP8vzfZEFrnoNGyNlOIZha00NY7rWEn1b3Emjx29oF+BoAKkI0SGWB/VyNus8C
	 LW51IRj8iNwHhTH6lw3LBNUoSJWc6PT3DA5DT1eMQACukBJfY3P2WmEd03JLD88yH7
	 u2cCl/kuDblx9UKR+o8smVupgMKabscBvH5MMQb0gklVhQHjhEVz4hu9AO3B7/pUUc
	 BITrKF551OLnRY1/RTNfI+jp0a+PAz7S8neHxcug6aYtPs4siHGwpMgnKfmI8+fNfh
	 nHgBhCkMFwmCg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXRf-0006I1-3Q; Wed, 12 Oct 2022 10:50:31 +0200
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
Subject: [PATCH 12/20] phy: qcom-qmp-ufs: increase ready polling period
Date: Wed, 12 Oct 2022 10:49:54 +0200
Message-Id: <20221012085002.24099-12-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012085002.24099-1-johan+linaro@kernel.org>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_015042_073984_755D21AB 
X-CRM114-Status: GOOD (  10.94  )
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

It typically takes between one and two milliseconds for the PHY to
become ready after starting it. Increase the tight 3--10 us polling
period to the more reasonable 51--200 us.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 8380904cf26c..1a51f803928b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -937,7 +937,7 @@ static int qmp_ufs_power_on(struct phy *phy)
 	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
 	status = pcs + cfg->regs[QPHY_PCS_READY_STATUS];
-	ret = readl_poll_timeout(status, val, (val & PCS_READY), 10,
+	ret = readl_poll_timeout(status, val, (val & PCS_READY), 200,
 				 PHY_INIT_COMPLETE_TIMEOUT);
 	if (ret) {
 		dev_err(qmp->dev, "phy initialization timed-out\n");
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
