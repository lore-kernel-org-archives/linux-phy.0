Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDA46C6FA90
	for <linux-phy@archiver.kernel.org>; Fri, 16 Sep 2022 10:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgrR/0nLd5sYlLwy6A8w6tCcC8RVJB1xn+kxJBC+8Fg=; b=RtMz5iBMN7yKSH
	uAjrZFyKgtA/zmcf8L1mpT21Klw/wbtwhk5/4Poip7Rtms73ZL+5jmRZgkU51x2qN5Tx6TvgUvcaj
	9rkjvzHVwmWcOAl4SgFthcCcnblA9DAviQlHyGhxLSahLi8weBZGKwQ20mbiLV7I1pTmCnGD/cLmr
	52V27ra2oCibavCA60aKUWupxZymt5aaGSwQz681iExA9LgewD+DRRiDxU9mzKAwGNISPLVsGzhF/
	sGLUHPPFawVzhf3vVbQ+imy6xdvQmc+2EVluFs8mAHwumIyklabxWa0RDiKT4yxUZS/EjyloueRpA
	v7pqdta3DkFfJ1Ja5Wzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ8YD-00C9tY-Rs; Fri, 16 Sep 2022 10:26:25 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ8Vg-00C8Pw-8N
	for linux-phy@lists.infradead.org; Fri, 16 Sep 2022 10:23:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 5C298B825CA;
	Fri, 16 Sep 2022 10:23:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17CDCC433D6;
	Fri, 16 Sep 2022 10:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663323825;
	bh=wHuXE3fdczCWj5LpXAeiEbdmEi4v580F7vtElZE9XhA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PN9WSIgjdRVyExpTLH2SmiVu22qRWdsqGOGOys9lQzIX/E5wNDWgopEpig7FLPVh4
	 a3XD0dSw7EweVLBQ6TFpGcPbxkWUWNL1AvP5uWz94GTeMjfjfo9nw4b6eBVtFpqO7h
	 vbfjyqsGFpcqY+a9QDzAal3D3roVN3UCND+EvT7QCeuNmp1crNZ3E2Y8XDmtNdzp8G
	 FrhVgUnzyxqnyFoJ9TmdfJAtGnuFMRU4EBzoP91Zs/1dJkGfW46vXjooJ1AHitmAz8
	 n8ZP7dNjeYM+y28FBLkdfFgSMy1KlQQPm9Z66s7SyhGChqG3l+nwOqM8uLLVqXlrQS
	 OXDX4iXCtyA1Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oZ8Vi-00030N-8F; Fri, 16 Sep 2022 12:23:50 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 01/11] phy: qcom-qmp-pcie: add pcs_misc sanity check
Date: Fri, 16 Sep 2022 12:23:30 +0200
Message-Id: <20220916102340.11520-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220916102340.11520-1-johan+linaro@kernel.org>
References: <20220916102340.11520-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_032348_507662_AF289148 
X-CRM114-Status: GOOD (  13.54  )
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

Make sure that the (otherwise) optional pcs_misc IO region has been
provided in case the configuration specifies a corresponding
initialisation table to avoid crashing with malformed device trees.

Note that the related debug message is now superfluous as the region is
only used when the configuration has a pcs_misc table.

Fixes: 421c9a0e9731 ("phy: qcom: qmp: Add SDM845 PCIe QMP PHY support")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index e6bffb0e2da3..05e73625a619 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2300,8 +2300,10 @@ static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
 	    of_device_is_compatible(dev->of_node, "qcom,ipq6018-qmp-pcie-phy"))
 		qphy->pcs_misc = qphy->pcs + 0x400;
 
-	if (!qphy->pcs_misc)
-		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
+	if (!qphy->pcs_misc) {
+		if (cfg->pcs_misc_tbl || cfg->pcs_misc_tbl_sec)
+			return -EINVAL;
+	}
 
 	qphy->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
 	if (IS_ERR(qphy->pipe_clk)) {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
