Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83FEAFA3742
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ovl3MONkbFNno2CtY5CJsQROeVejYLpAdbJJJij3zU=; b=x75asD/cWMfJc5
	j1CIJd9d9yisd2aCRf9D7JHE6KcPyWX/Ufid8+PwBjFdjyrkZ7k2b/GbNvIN9J7zgnq51h4qnVPuF
	lzMDr4/Xm2EhvZnrRHX7BHdIXOeCWg/tht1IRqDcn5UBbuyg3fiTsz+JBjejhXKalPA86AvNOtxtJ
	rDcvbFgL3jETlHCF6pSb7MfdG8nQ//50uJp8F7MPbBIwnw7iJD1e6UsCcaS/3/8/MhlkJ4esGpYw6
	W8lsgTDP2D/a9+g9dbs4+Ke1jMkCbkcsVG7hsvYoXvpeaqIWrkz3LlQBzZ25o/b9A2maixoOfYRDm
	AUhoDBa+CEEK5Y9Hb5ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPXl-00HOBZ-Sz; Fri, 28 Oct 2022 13:37:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPXa-00HO4I-TZ
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:37:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D999A62884;
	Fri, 28 Oct 2022 13:36:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7706FC4FF15;
	Fri, 28 Oct 2022 13:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666964209;
	bh=4mnICkBWbb6C7gqpfuGXYvIo4Kc1xOnaotX3R6uU03c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sk4uPyCTXTh5o+YLVTb0WPJGpz+bDOcphYNAJBKB0ahD2ukoIK5gUhYRuhtWrP9Eo
	 VXc6gN5hcZZedXm/W1W22E4lDfRreT3LO3QZ65R2F9vZQfWV65pT5bWe6jcJNyruzA
	 TL6wDSkyyJ5EqU6Qx0gTg+2udrxgxUdFAiW828shHmp1ZmKMtezkEk8xmNeyPj2yDg
	 xYhW6eIPpoz1mhBqa2UJMAhK8cd+VpXsthyz+wqSw0Dv7VWQyq1x8bV5rCcP+HqCfY
	 f4AbDskb2txOmALbvr+tKM93K/GBBFq4ufsecfaFotrIwZhZcnTAI6X7BcVD99S3RI
	 wcGaxDce6SLgQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooPXH-0004rT-Tk; Fri, 28 Oct 2022 15:36:35 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v4 13/16] phy: qcom-qmp-pcie: fix initialisation reset
Date: Fri, 28 Oct 2022 15:36:00 +0200
Message-Id: <20221028133603.18470-14-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028133603.18470-1-johan+linaro@kernel.org>
References: <20221028133603.18470-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_063655_058392_697BDE28 
X-CRM114-Status: GOOD (  12.20  )
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

Add the missing delay after asserting reset. This is specifically needed
for the reset to have any effect on SC8280XP.

The vendor driver uses a 1 ms delay, but that seems a bit excessive.
Instead use a 200 us delay which appears to be more than enough and also
matches the UFS reset delay added by commit 870b1279c7a0 ("scsi:
ufs-qcom: Add reset control support for host controller").

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 2f4bdef73395..9c8e009033f1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1866,6 +1866,8 @@ static int qmp_pcie_init(struct phy *phy)
 		goto err_disable_regulators;
 	}
 
+	usleep_range(200, 300);
+
 	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
 	if (ret) {
 		dev_err(qmp->dev, "reset deassert failed\n");
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
