Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5828EC7EE21
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 10:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vR4pWu+DTq0BAd1oDcDUeGH6Wyp5pELagtBpVh7Fe/M=; b=QfL88QeXhqP9zc
	Mvtlw/yxMh0ZjiTnY+BRwlv8495m5WSlY8aI5+NTZctnHl6+EiCF0H0z6K3tclKJZG+dpayyK953G
	fkE8wgqVz93HLffkPNncYPTLvu7qruhUx5LVe4hzGljRz1xGb0ZHTZKBdSLWOKmSahxJsyPGyWb9+
	tjzUfxfrwRvsJoFwDzy2T7XRqILlg0cZzWXzqZVBa5dvnfadHblYfhpSZFoZmsERC1+hiJTnNHrEE
	Z6CZSPZDnIMaprG0vQIF99pG9jX7Fa/3KCmL3OJ544w8eiGXzEYRQRpyt6TQnvpJs5YRZCBL2/l2H
	08pdz77YxNOEzwpCsXYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnPM-000yt6-00;
	Tue, 02 May 2023 10:38:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnPI-000ypR-1v
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 10:38:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 00A0B61EBA
	for <linux-phy@lists.infradead.org>; Tue,  2 May 2023 10:38:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67857C4339B;
	Tue,  2 May 2023 10:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683023930;
	bh=R7UAdwqbV3UuM3O7wDNuryWZu1psAQNZrWV73HlxA/8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rOHMAG4G6EUpMa7NyB//qgND9I1hG3Ze5d3EQcth9b56Ct2/bDjwnPt4o5X5gSXV3
	 cjZGWLzXFPIsCnAMqfuMF3SfVrDsDzythuLBwKLoaraXpcZDrH3MMUvG1I4aDn07Jt
	 IGDjAuJpglgXldLF8mCgQonzlWkNrfja5JP+X+WV3HQRfR+iJ5P94uDTO8sc/HikZG
	 Q96DU5hK1yDLmH8yOOEyfU4qR1PdHYWIleemrB5OC9Yy38+LPWVOtH+b2xSlj1Q8nh
	 KUCjtNkW+EVtxWvtpc52Ds0/Gzbcy22exihqD/dNcvcZ7QNvQ5G4yYkZvaBJ4sU+Il
	 OHOMs0y4ZLfWQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ptnPJ-00038z-70; Tue, 02 May 2023 12:38:53 +0200
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
Subject: [PATCH 2/2] phy: qcom-qmp-pcie-msm8996: fix init-count imbalance
Date: Tue,  2 May 2023 12:38:10 +0200
Message-Id: <20230502103810.12061-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502103810.12061-1-johan+linaro@kernel.org>
References: <20230502103810.12061-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_033852_716176_64D407B2 
X-CRM114-Status: GOOD (  11.68  )
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
prevents retrying initialisation.

Add the missing decrement on initialisation errors so that the counter
reflects the state of the device.

Fixes: e78f3d15e115 ("phy: qcom-qmp: new qmp phy driver for qcom-chipsets")
Cc: stable@vger.kernel.org      # 4.12
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 09824be088c9..0c603bc06e09 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -379,7 +379,7 @@ static int qmp_pcie_msm8996_com_init(struct qmp_phy *qphy)
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
 	if (ret) {
 		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
-		goto err_unlock;
+		goto err_decrement_count;
 	}
 
 	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
@@ -409,7 +409,8 @@ static int qmp_pcie_msm8996_com_init(struct qmp_phy *qphy)
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
