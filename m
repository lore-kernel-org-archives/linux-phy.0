Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2399C3A59F
	for <linux-phy@archiver.kernel.org>; Fri, 21 Oct 2022 11:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hySfEobANs9oazmnSyHvLWzZh63DUKC9Hu6Sa/5au9s=; b=LS7lUQYlncyYZM
	yngicE51yfEwAGjdPh7fht5PB0r8P0cs96vmz2QtaYVdj5mg5+HWAq/0Q8QEmVnAQB9ilBw7EFJsi
	JptoPWqy/50OjhZwF8j+o8tkES/PoXzAeW+ymc74HBJe7/YMjjRVMkaYcKj1GX0gfeiTd1xD4nDDj
	q06LoqQLGR9hBmePTuRNVv5iYe8gDbRYor5L4ntg8GOEitYIvsSZ41R3p4SndwVxfTKLZZ18EaboR
	nfyW6ULYc1cynRb06Jkxuqc9LEzGxDaQdCaarcUbGLH3+OsyhVYFaV3/xHkRU4K5e1jELWJdQCyEY
	YeOBG00jM1sfrAyIvUqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olpvV-007Ioc-7A; Fri, 21 Oct 2022 11:10:57 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olpvO-007Ihq-Jy
	for linux-phy@lists.infradead.org; Fri, 21 Oct 2022 11:10:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A986661DED;
	Fri, 21 Oct 2022 11:10:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F688C4FF14;
	Fri, 21 Oct 2022 11:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666350644;
	bh=Gldfbxi2CNx6owX1tl38OE7nIuG09oWmFAtb5rd0ZwA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kjiBP8A0WOOmt0x0f+Xmp4FB9ABBqDNe1g20uMTs5QH0hcTmyIYIc3j5sw0xVMNIP
	 4FkilY9D1+svSkJee0MWSbtLF7cmkw1l4prhE457Gt54gArLivjbz5ld0SWkZBeR2+
	 /FZCoiI+n0Ji3ZhbgIgAYOHVeKa4ChTKUlywc1Cr5pVgLj06pJvSNmPx9or9L64vHD
	 S7HcDFIrbFR3a3zqRYzvjGOSYGcR0h/NeaE2dlCu1FLuyqmFMN9q3v5JyEYQ0Gn3G6
	 3UhWfxA/MX7KaFK/DyPp2OabJ4e3M0jAG0VNkw15AScRpfbLl4fa9VkxcTWZyN49c/
	 NDys6jdtLqAUQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1olpv5-0007L1-FB; Fri, 21 Oct 2022 13:10:31 +0200
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
Subject: [PATCH v3 13/15] phy: qcom-qmp-pcie: add support for pipediv2 clock
Date: Fri, 21 Oct 2022 13:09:45 +0200
Message-Id: <20221021110947.28103-14-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221021110947.28103-1-johan+linaro@kernel.org>
References: <20221021110947.28103-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_041050_845258_F27BE60C 
X-CRM114-Status: GOOD (  15.62  )
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

Some QMP PHYs have a second fixed-divider pipe clock that needs to be
enabled along with the pipe clock.

Add support for an optional "pipediv2" clock.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 25 ++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 9c8e009033f1..758457943f2b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1378,8 +1378,10 @@ struct qmp_pcie {
 	void __iomem *tx2;
 	void __iomem *rx2;
 
-	struct clk *pipe_clk;
 	struct clk_bulk_data *clks;
+	struct clk_bulk_data pipe_clks[2];
+	int num_pipe_clks;
+
 	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
@@ -1923,11 +1925,9 @@ static int qmp_pcie_power_on(struct phy *phy)
 	qmp_pcie_init_registers(qmp, &cfg->tables);
 	qmp_pcie_init_registers(qmp, mode_tables);
 
-	ret = clk_prepare_enable(qmp->pipe_clk);
-	if (ret) {
-		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
+	ret = clk_bulk_prepare_enable(qmp->num_pipe_clks, qmp->pipe_clks);
+	if (ret)
 		return ret;
-	}
 
 	/* Pull PHY out of reset state */
 	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
@@ -1950,7 +1950,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 	return 0;
 
 err_disable_pipe_clk:
-	clk_disable_unprepare(qmp->pipe_clk);
+	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
 
 	return ret;
 }
@@ -1960,7 +1960,7 @@ static int qmp_pcie_power_off(struct phy *phy)
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	clk_disable_unprepare(qmp->pipe_clk);
+	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
 
 	/* PHY reset */
 	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
@@ -2154,6 +2154,7 @@ static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np
 	struct platform_device *pdev = to_platform_device(qmp->dev);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
+	struct clk *clk;
 
 	qmp->serdes = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(qmp->serdes))
@@ -2206,12 +2207,16 @@ static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np
 		}
 	}
 
-	qmp->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
-	if (IS_ERR(qmp->pipe_clk)) {
-		return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
+	clk = devm_get_clk_from_child(dev, np, NULL);
+	if (IS_ERR(clk)) {
+		return dev_err_probe(dev, PTR_ERR(clk),
 				     "failed to get pipe clock\n");
 	}
 
+	qmp->num_pipe_clks = 1;
+	qmp->pipe_clks[0].id = "pipe";
+	qmp->pipe_clks[0].clk = clk;
+
 	return 0;
 }
 
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
