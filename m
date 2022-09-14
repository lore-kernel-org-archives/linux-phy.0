Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5C12C6FA92
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 16:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYBdWCReOYwVGxSEaUtGDUK7ZgH/o2TbU2QBOJhEedA=; b=Y7BoS8zROMZ04k
	cNWg1OCQfwDbpwo9lbqkjrzlQL9o9v9jBKXrOCU1xIyT+00/7mcfyyxXUH9HSn3x1sEUaRnO7Gzmc
	g4oNgEdOgRLWF9Y0kWXhx3LqKb3dfpOFelAtEjZZwecoPDOjzUQCYv5g1Nw1t/k02lQB02B6ST8yd
	0MxK6RPxx+2oDiN8Cm62ZCUJjlKoxKzcMkGCRQ2kIPVb2x0ct+mBBW27PM3v/EKzRcin1TBlXJto6
	/+VOU8h/yVtLx6MHP8x6W8R51mXZLs7/8gFp33Wgz9XjQb67LZj8Nm4fSAf1MyUzXyh/ralg0C8AS
	npIfisn1rTjakfadqj1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYVDs-0054cT-Sm; Wed, 14 Sep 2022 16:26:48 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYVDm-0054UI-Iq
	for linux-phy@lists.infradead.org; Wed, 14 Sep 2022 16:26:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D7AE7B81733;
	Wed, 14 Sep 2022 16:26:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38C37C43470;
	Wed, 14 Sep 2022 16:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663172798;
	bh=WmT3D1ubWUlXwkxcmHSXLSlMUvN1d1perX/Uc6z0G+w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OZDrRJ1mH9iIkIe+xY2n3SV+hBxS5Ha5eR16FzlI2lxdclV0XeG4F05Aok936tHGq
	 7+pU1jl6uAo4FZnVhLFyr0T2Wzni2pcciRCAGin7BUaSViP1lcSHqK4TVTn8yehG0Y
	 pOgoyvPdB1OzxGAY6kq6nKRZj4JzeEs3CWolJgsMb9C6TfRluG8BTpnyLs14s8vAkJ
	 YpNGBSTvMZIjsqvkFQXgfTGwQ69xqeUT0Nsa8qJyBOyWQ+3BgIZOY0jRZTzxcgBbVU
	 ZzCF+dlSFh6Nv0oazk4tysvBxIzM0bHmJGjAHNwPZxRlP7Qsc4uFy8HN6ez2sfHiUf
	 wS3g+kVqgirBg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oYVDj-0001eZ-G8; Wed, 14 Sep 2022 18:26:39 +0200
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
Subject: [PATCH 01/11] phy: qcom-qmp-pcie: add pcs_misc sanity check
Date: Wed, 14 Sep 2022 18:25:35 +0200
Message-Id: <20220914162545.6289-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220914162545.6289-1-johan+linaro@kernel.org>
References: <20220914162545.6289-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_092642_862841_01A5ED0B 
X-CRM114-Status: GOOD (  12.87  )
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
initialisation table to avoid crashing with malformed devicetrees.

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
