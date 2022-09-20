Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60D0DECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMKUZBeQn5kFuHI3xL0v6GzPRao1uXxIVY0AU8Unh8E=; b=ayR3egI2epKAsR
	WuyvwpUJyhZ4dQ1VH27nhXkFGex4J6fd28QZTsmFtOhBT/9EvbScoGLvD7s96mXf5PVJby7cait6g
	bteThhHaO7T0NbONY314rNEYsmyGYtBCg2UYITif4aU6OEb+8hJJwvynog0050Jc/elmz22/khuWl
	d28hCgrnyiHa+1/36jFeZG19yxchyX1CKIgdgT7Y+6fuCcrJGtGncjpeNaF0bwaauB29OPtQTT7Mc
	+VSdRuyO/AfrgWAWjsJzJJw+g40GrKpEFKzfjaIcKh0BEo3kPgVmv3i8ibeKG7a8N1gYVd5HkplN+
	3Jbf0OyCMvWt7E6D1YXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqc-001Qiq-O1; Tue, 20 Sep 2022 07:39:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqR-001QTv-8x
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 72E2C62509;
	Tue, 20 Sep 2022 07:39:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41828C43158;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=ORGJx+pieiDyOt7N1yDp+SZUKncCqhqusGHMQ0HumRE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LhPg5YpLc2kD6bUsH3cpT+KqhlWIrHUfFOoz83w9H648wqEu7/PiLc6sOECVUmr/B
	 k8JxVRiqowOXnzcD0xDkYnYOxxnHK7nYGL5JfdSHhybSfS5rk5He3B3wNyZKT4YDUT
	 U28/zt2qsxMv+UU1vlnrUqoIyE8PYqDlMNtSPuuRTnlNZy2OvHFL29KTkiQ6L3Vphu
	 uZ7gGA2p7O2QcA/lbCXDANsTmC0+pokX6GX4TXGnWxCzJDr0+evGKp6rZjRPJoAPha
	 7nHL0y6vu8JqItUUXi/Quh/yTW94X/BPxZ8yCS4GcwliKXQGrvuQyS6Cgeu51cNRhl
	 vp/+8R5GmNm2Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqP-0005Qx-Ui; Tue, 20 Sep 2022 09:39:01 +0200
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
Subject: [PATCH 08/17] phy: qcom-qmp-pcie-msm8996: drop unused kernel doc
Date: Tue, 20 Sep 2022 09:38:17 +0200
Message-Id: <20220920073826.20811-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003903_433548_5BE49408 
X-CRM114-Status: GOOD (  10.34  )
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

Drop the removed mode field from the struct qmp_phy kernel doc.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 7e755213e9c5..e261837aee32 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -238,7 +238,6 @@ struct qmp_phy_cfg {
  * @index: lane index
  * @qmp: QMP phy to which this lane belongs
  * @lane_rst: lane's reset controller
- * @mode: current PHY mode
  */
 struct qmp_phy {
 	struct phy *phy;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
