Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 945A4C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 20 Oct 2022 09:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhChvttzjG6ZKrMiTRRT/kbglxpaPDtTS0syx6Cq2hs=; b=WFnah9t3cGOzY+
	Ivui4Be2vT+voDPRNX2f/a+8QgROnIccT4tKHEkC7eacbaYvYb/jTWJ6wv6MuIFf8we/ku1oK4JkQ
	1EwY6NEKyS+lzYEeeEIXeargk0uAuyLyfA1qTZmhuHsf+L/EfMrvfpeh5xrLU/aNtp/1TmZzWDdOE
	cykBbG1LT5BDNWlLZ8Nt42HVsU1OqkzUeiTstVm6BfSre2sLdxzcEvlnCniYNBaO4AX1y1+6VOTcz
	mGO/Wt/BAa82rl5nVN8ZsxMtP1SDT2MWXzSu5H7Gn5KxXeEFc0JVC/cFZgig/gSYwk0g/YdlOM076
	mSwKOJeOJ4tN5at+vGHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olRV3-00Ch6u-W9; Thu, 20 Oct 2022 09:06:02 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olRV0-00Ch2N-Hm
	for linux-phy@lists.infradead.org; Thu, 20 Oct 2022 09:06:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 9CDA1CE24E6;
	Thu, 20 Oct 2022 09:05:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAB3BC433D6;
	Thu, 20 Oct 2022 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666256753;
	bh=8iKdldjvKKs2lE0Li1/6feX8twrjb9ZVJyOVWEF5/5I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eqa/6DDoOVKzdrO6zSjsCb3R4ZZvJUIXcmQe6uPPg8m6TXZBiMUQ29UidpE+J4nCl
	 ijiamSzzmJSDYKYys7tqMKEaBTmY9NLDkIaR7IWieogwEgjhR4fa4PVdd4sntazKqI
	 hVn4GJY1bVgT8URw7y6Xsi7CGHNsXkaQ9dCbtvc1l/MT5g5PekkZhmWuo8o7XYwpri
	 i/5gUYlPorOyVRtWStTrQD2dWQqnhW3AXGEYDxqCLmKobKwXcemIefL1vOb7fM/FAr
	 h1VPKL9dpYu+R0TQ0cc7c7bCaruLo3sWjUw2ClDmADIA+AcUUXu8yPob35PtpIHb1r
	 GF8J7K2mUNLSw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1olRUi-0001AH-2K; Thu, 20 Oct 2022 11:05:40 +0200
Date: Thu, 20 Oct 2022 11:05:40 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 13/15] phy: qcom-qmp-pcie: add support for pipediv2
 clock
Message-ID: <Y1EPZBinv0tyZVqW@hovoldconsulting.com>
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-14-johan+linaro@kernel.org>
 <325d6c7b-ca96-df73-a792-4d156a710267@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <325d6c7b-ca96-df73-a792-4d156a710267@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_020559_434444_0482C1C1 
X-CRM114-Status: GOOD (  28.40  )
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

On Thu, Oct 20, 2022 at 11:31:35AM +0300, Dmitry Baryshkov wrote:
> On 19/10/2022 14:35, Johan Hovold wrote:
> > Some QMP PHYs have a second fixed-divider pipe clock that needs to be
> > enabled along with the pipe clock.
> > 
> > Add support for an optional "pipediv2" clock.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 ++++++++++++++++++++----
> >   1 file changed, 36 insertions(+), 6 deletions(-)

> I still think that the attached patch is somewhat simpler. Diffstat 
> supports that idea:
> 
> $ diffstat /tmp/pipe.diff
>   phy-qcom-qmp-pcie.c |   26 ++++++++++++++++----------
>   1 file changed, 16 insertions(+), 10 deletions(-)

It's not just about LoC.
 
> Yes, I'm speaking this after having cleaned up several open-coded 
> versions of clk_bulk_foo from the drm/msm code. It typically starts with 
> the 'just another clock' story, and then suddenly they are all over the 
> code.

But you don't start using the bulk API when you have one clock. Two,
maybe. Three, sure. It's a decision that needs to be done on a case-by
case basis, and pipe clocks for the QMP block is different from general
interface clocks (which are more likely to be extended). (And of course
the clocks would need to be independent in the first place.)

Here's your example diff inline:

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 9c8e009033f1..a148b143dd90 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1378,8 +1378,10 @@ struct qmp_pcie {
 	void __iomem *tx2;
 	void __iomem *rx2;
 
-	struct clk *pipe_clk;
+	struct clk_bulk_data *pipe_clks;
+	int num_pipe_clks;
 	struct clk_bulk_data *clks;
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

The above is pretty much identical, expect for using the bulk API
instead of the very straight-forward pipe-clock helpers.

@@ -2154,6 +2154,7 @@ static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np
 	struct platform_device *pdev = to_platform_device(qmp->dev);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
+	struct clk *clk;
 
 	qmp->serdes = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(qmp->serdes))
@@ -2206,12 +2207,17 @@ static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np
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
+	qmp->pipe_clks = devm_kcalloc(dev, qmp->num_pipe_clks,
+				      sizeof(*qmp->pipe_clks), GFP_KERNEL);
+	qmp->pipe_clks[0].clk = clk;

So here you're poking at bulk API internals and forgot to set the id
string, which the implementation uses.

For reasons like this, and the fact that will likely never have a third
pipe clock, I'm reluctant to using the bulk API.

+
 	return 0;
 }
 
Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
