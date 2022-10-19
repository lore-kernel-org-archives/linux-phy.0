Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 240BDC43219
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 11:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVCmNJT+bMNEHz2ow+jrQqMRlXix04N29DuvZg3nrOc=; b=A58wXRFysoiigv
	RvMoUxanjOFXY6WuO9jI+3D/AG47SU0MPjiMjzkeuDwDA6hZoaNRlXoUYEIvv58wYNHqMbHelVd/M
	w5/riW4XzGT+6Nq5HX5O6ISkf4af63cYq1xBIYhDDfJ83qtEKWSnuHvTsdlRjuP8bAZ+WzFzpuxBo
	FnmwXhdhxQcRtByeUcZ5M215CqpINUMKAoCAkJB4ih++gAXknhorPlWyxKg5biLAJx7q8k9XRvMI8
	Q04xD6EqcVeaTzJ5xSAP2U1Pa23lYEYCGcslea26JZff3h4BiPSOyLS6v1Eoj4DS7YLCTDreAWVn7
	8dekLLCqhtcCjor5AYNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol7N8-000vE4-Gd; Wed, 19 Oct 2022 11:36:30 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol7N1-000v6M-Ax
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 11:36:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 00AB2B823AA;
	Wed, 19 Oct 2022 11:36:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF12BC4347C;
	Wed, 19 Oct 2022 11:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666179379;
	bh=zIA+ml8wbUJ1pYtOiAw0rtWwlGesij42jZ74b5odlbA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OnfROS9pgtB+v2R+pRpamwuc5ZfGYmp8hTczSrF6h09gpiAZ/PA1Z0Xbqp0QBh46S
	 EGCz/oppZ1IkL0Xwa6D6udZxbKcCKWaDetAWHO3swrwh/yqZZe0v1Wk1yKHuZ1TUOB
	 eqj0e2n60OIZXQnPaQSgbklGG4T1ZCIjZPWgA/DBT8a2O+9ngHv08rAQNhhR5rp+ZY
	 hgPKMoZJ/tU+VU5Db0V2rs+aWwm6lt4hp7FAToofhsG1qEOhyPOPWBqbNIk4veu8zo
	 0ESO1sgYXpUofJridNFGr0ujQNQ8iOlEEPpgZriNDaikppkA4kKK4xt5xoQYh9mGmN
	 67dypo7QXf4cQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ol7Mm-0005pl-9a; Wed, 19 Oct 2022 13:36:08 +0200
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
Subject: [PATCH v2 12/15] phy: qcom-qmp-pcie: fix initialisation reset
Date: Wed, 19 Oct 2022 13:35:49 +0200
Message-Id: <20221019113552.22353-13-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221019113552.22353-1-johan+linaro@kernel.org>
References: <20221019113552.22353-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_043623_583886_7F4216B7 
X-CRM114-Status: GOOD (  13.32  )
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
