Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8114C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 20 Apr 2022 15:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hottly3evdGpS+NSsg4f1JF7XEKc6NvxUIbOPY3Zx3k=; b=B1Flvvi3PIITkp
	JOPZZjzSocunVQpzg9uZXwZwDMXD1IWoi2od3ee83rUyQOexH80ZeFTQS/5VVKSQXJQJ2b5brOeGa
	H4Gcd94mnTxc9SsEFLJ5LzZZLZXqT9acCFW8kWbYUBcPlj7hTzmSWSKinX/jhn7bINQgELNQAS4b/
	4KfERE3X/DFCoXfLl43RouwPkIO4WRfkGETX2WtymsY8Ycr7f49YHaR8nJdbdg849dBwJ7lQbl0Gw
	QnouWdPn4Yw6Y0iNPU2junKQZlSgpxIscV2LAv6fCSXKeC6zrPFgJ/J1r60vRR0fMRmvtxf4mEe9W
	V+fvE1dF52zPnw9NZnnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhCDH-009Z8S-7h; Wed, 20 Apr 2022 15:25:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhCDF-009Z7C-21
 for linux-phy@lists.infradead.org; Wed, 20 Apr 2022 15:25:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 14E5A6194B;
 Wed, 20 Apr 2022 15:25:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4C0FC385BA;
 Wed, 20 Apr 2022 15:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650468346;
 bh=7VdTIarpj4DEF1wLyRFzg7wcUOlSAfbGXkDpuT6RetU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=C1NRMR3/m9DLsPxBIm0jRRISt84pI7JBs2syxvNZgLznv0OtIaBNziXlMfGtw6sTf
 DEIIEfSyPJQiMOGbbIq0ouT3OAOyQQR2/O5FxbSqWDMfX9u3TMC0263NA7GIpKHvyk
 8RnNm5adjLpkr+tb9jCxzc9yhI6IfWPYyKYfPF5aPXCE6ki5AS0eYU3yNoFGtlgJKr
 nQuE8pQCdnh9SHchipBav8bIxZTp6FpOkK0eWtwfNdFqQGyV5+IQYVYhoX1Uc2Fz40
 qBV5ilyTXJIDf4tbdSnza3Zx0O4gk10BqcTfwwPnL1ySmc4s1YX4pDUbxZdFU1uruL
 dpy4KqM9soJiQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1nhCD5-0001Sa-Uo; Wed, 20 Apr 2022 17:25:39 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 1/2] phy: qcom-qmp: fix phy-descriptor kernel-doc typo
Date: Wed, 20 Apr 2022 17:23:30 +0200
Message-Id: <20220420152331.5527-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220420152331.5527-1-johan+linaro@kernel.org>
References: <20220420152331.5527-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_082549_173485_F6F3D889 
X-CRM114-Status: GOOD (  11.23  )
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

Fix misspelled "clock" in the description of the pipe_clk field in the
PHY-descriptor kernel-doc comment.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 972f27c0e0a2..8c2300bfe489 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -3291,7 +3291,7 @@ struct qmp_phy_combo_cfg {
  * @tx2: iomapped memory space for second lane's tx (in dual lane PHYs)
  * @rx2: iomapped memory space for second lane's rx (in dual lane PHYs)
  * @pcs_misc: iomapped memory space for lane's pcs_misc
- * @pipe_clk: pipe lock
+ * @pipe_clk: pipe clock
  * @index: lane index
  * @qmp: QMP phy to which this lane belongs
  * @lane_rst: lane's reset controller
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
