Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 112BCC77B73
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 10:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ei/9jagiu0jmt17ZK0i33uv7u9iY6MaqaG/zGFVX3U=; b=tUfRLqRt3sCm/v
	6XJJdRhg6r0T0jb4RQvqtiHr775OZ5NGO+epEepTlsaOfqNMLJAGX/P6rQ+VRkI8sErg3q5K/ufPQ
	Z1wfsWMfBRQAXtMEqcLJ+2h34q/kNKNjEvd1enr0j5Wr6ldmTgMCCf3pAUQeGuIoH/BGSmPc+U/Xg
	Z/u0N928+6xBqTMIN7Pe9+tR66JTpDB+cUu87WUk3jyljJA0abXajTPqV+MKQOU+DIWvgpfjHIEkz
	JAxB6MIlPeyrI5xKqzyQ4vlNOMuZEIN+Um3gp8xHiVtH3baqlAZyzSGP13e0tWm0ToC9oD40qZu5T
	DpdUKB5RcLZGyJUCtoAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnPL-000ysl-2D;
	Tue, 02 May 2023 10:38:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnPI-000ypm-20
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 10:38:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9BA1F622EE
	for <linux-phy@lists.infradead.org>; Tue,  2 May 2023 10:38:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EA69C433D2;
	Tue,  2 May 2023 10:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683023930;
	bh=wFErpi5cswaNrmCHXUKcLKuE14JY4SYvJDJ1O2W7YCM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RnvNWesz5byE6Wv0rjtyrWor3M4fsdZCmx4Ou0ssG2rdCcDrLp711q14htRAbHfqS
	 R943ikJPOEifUGbUtiGarnZYjWHqWPWkc3UehJQiO22X/MWPrCc4DTd7Kj7brvBDHt
	 QqscPql7hFkA42CIGLA+aIzbxRz3g/n5X47/ZOZro1p8R+1FHXLkP6Mi6Y2w6yoJf4
	 35zvTt8H2i0l1Dnj2MyBFLtoldaPmqmfWBzf4e4Gg7ln71v+e4hO9Qq+kmSnj/sEKh
	 hr7A5McDhIzR9uf5nIFHUiolSKQHU8sFERnUFGjuhbNjgtu5qY1909AeQM5bnYiS8O
	 kkI8UcGLywTtg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ptnPJ-00038x-3w; Tue, 02 May 2023 12:38:53 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH 1/2] phy: qcom-qmp-combo: fix init-count imbalance
Date: Tue,  2 May 2023 12:38:09 +0200
Message-Id: <20230502103810.12061-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502103810.12061-1-johan+linaro@kernel.org>
References: <20230502103810.12061-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_033852_708760_97FFAC6C 
X-CRM114-Status: GOOD (  12.00  )
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

The init counter is not decremented on initialisation errors, which
prevents retrying initialisation and can lead to the runtime suspend
callback attempting to disable resources that have never been enabled.

Add the missing decrement on initialisation errors so that the counter
reflects the state of the device.

Fixes: e78f3d15e115 ("phy: qcom-qmp: new qmp phy driver for qcom-chipsets")
Cc: stable@vger.kernel.org	# 4.12
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c1483e157af4..ae412d64b426 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2487,7 +2487,7 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
 	if (ret) {
 		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
-		goto err_unlock;
+		goto err_decrement_count;
 	}
 
 	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
@@ -2537,7 +2537,8 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
 	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
-err_unlock:
+err_decrement_count:
+	qmp->init_count--;
 	mutex_unlock(&qmp->phy_mutex);
 
 	return ret;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
