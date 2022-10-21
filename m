Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63C5BC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 21 Oct 2022 11:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ovl3MONkbFNno2CtY5CJsQROeVejYLpAdbJJJij3zU=; b=czu0CiSKCco3m4
	kcuJMRF7P3JwGQRl+Zrb9D40fWvfsDIQSM7CH1987SpDOEtkO3W9PU9Y42fc5sKh1PS3wDxrcUtPA
	YRR1fRUFv9V4sgO60AggNdB3ubOWtuNEohmFSDbVztABa3+4HrjknACMjxaqI2RApJpHQbRFZRr3+
	0B0YWkyYwKc6h146MfEAwAtkhZYc6S+fJ9YaOP2GOFAqM4r/fek3I098KiGhTzdfaBeYyCZEnAISA
	LZZ92wgHQ0+N51WPlZTSaZQh/wtZ3NCsyg3NGE4/22J/LEyHHjuc7uunbuD1jX/mc+tMq4c5K2L2X
	e03mCTMEijtUT8QZkSqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olpvU-007InX-P6; Fri, 21 Oct 2022 11:10:56 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olpvM-007Iel-9F
	for linux-phy@lists.infradead.org; Fri, 21 Oct 2022 11:10:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A95B7B82BA4;
	Fri, 21 Oct 2022 11:10:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C68CC4FF13;
	Fri, 21 Oct 2022 11:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666350644;
	bh=4mnICkBWbb6C7gqpfuGXYvIo4Kc1xOnaotX3R6uU03c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EgoH7za8sz786V4nqJTLo+I4tOwD3zorzNjWLwHe89zBYLp8K3dCjEVdZdR7k2wF0
	 MnfguBzgJUMYeNBtwM+UMeHcNsVZ1+j70saKgTvFmzdQV6rBMfrQA4XZynmyY5B89q
	 FeyH213LuZ/MEOBIkbr5eyiV9R7ZA+WdO89u3++5NQjjdqgVTvtGa7U+JIYz3Fsgz1
	 UiDK+xDPIlXQb6wKF0Dc3BG5ArZV1nsWKi/ql+KMwEfQqO8EowLV1teyMs9jwhpIuL
	 /kQ+X74CevvDI6AW05mFoHBpM7048u0lLac4LlwonWa3+0QyLPznxwobtpvGsm8fQJ
	 MZDGQLBcwezvw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1olpv5-0007Kz-CB; Fri, 21 Oct 2022 13:10:31 +0200
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
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 12/15] phy: qcom-qmp-pcie: fix initialisation reset
Date: Fri, 21 Oct 2022 13:09:44 +0200
Message-Id: <20221021110947.28103-13-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221021110947.28103-1-johan+linaro@kernel.org>
References: <20221021110947.28103-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_041048_507530_031D5432 
X-CRM114-Status: GOOD (  12.68  )
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
