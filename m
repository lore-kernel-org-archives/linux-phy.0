Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14A11C38A02
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 09:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCW1uLzvNG4RqmabhvS5KIzWUpUZGkGHx96XNi5Imbw=; b=CNQrtFoTllne+L
	dJ5q8DcZVEwHxXa6c6c9ID3vQ0yQ6tqQAw/tXLmQEA3ju2oCSqPA9mFiiR8v7CjnZ6q+nwoewGv21
	KRM9xts8WoRyi/72YCEgTjc9M1kThLB0uYkwUiHkuiJnDfDpKTx3EMdr38zkPLb/3ocoYalw+2anB
	lTN0bOLrj6GKjnpqYiSDKjzmufO3CyAFswDSVZFfC4g1xgZup0GkE2GME73SIDaA5I6Oqir61V59K
	3GmY1HfrfTR+9PGpHFcVqhqojF7ulIfrma/6aIjuwKkiwEXcdaYNUjxQCjUDxkj+B4q9ojSo70Zwd
	g2ihNHbPqW/dGqG/DYVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooi5e-005hML-9d; Sat, 29 Oct 2022 09:25:18 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooi5b-005hLa-Bd
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 09:25:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 983F9B80B13;
	Sat, 29 Oct 2022 09:25:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28AD5C433D6;
	Sat, 29 Oct 2022 09:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667035512;
	bh=y4nkSx5YThbDh80eDDpmOltCRi12a/lA8Fbho3y4Jjg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bofdyItd8S97ui5sbmLX5DAwZY8JSyCqBTRPy+Qbmw9Z5Uv1NSkvv04gYzqE+I6eJ
	 TXW3CUxKEZ494tT+P0GAqlFJtOXNT3uFACd2ot57Ak5tykyXxFPDZ0ecdmfit05QA8
	 6q3IxZBjHalrhvciSKdfuqbcA/jq6gZReIAkcRiis3T/8/U65/OwJcnNg71NrRzh6d
	 HZ/cpFGIAZvog7sTp6hrIy5jCHr9XgM0lshyYIkVsaM2kTpLpd8J9S9AvEpq/cgoez
	 4Q9j365CJRNklCYuRuq4rnxEGP1nXa/ueKH1ROmaNn4ut7S8X1Wf4eYfLNJGlPGdMs
	 sKy08z1yiiJVg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ooi5K-0000go-V9; Sat, 29 Oct 2022 11:24:59 +0200
Date: Sat, 29 Oct 2022 11:24:58 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v6] phy: qcom-qmp-ufs: provide symbol clocks
Message-ID: <Y1zxamwp7HP03SUx@hovoldconsulting.com>
References: <20221028164847.485874-1-dmitry.baryshkov@linaro.org>
 <Y1zsQN33joDlJRAP@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y1zsQN33joDlJRAP@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_022515_565845_51A38BB2 
X-CRM114-Status: GOOD (  21.50  )
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

On Sat, Oct 29, 2022 at 11:02:56AM +0200, Johan Hovold wrote:
> On Fri, Oct 28, 2022 at 07:48:47PM +0300, Dmitry Baryshkov wrote:
> > Register three UFS symbol clocks (ufs_rx_symbol_0_clk_src,
> > ufs_rx_symbol_1_clk_src ufs_tx_symbol_0_clk_src). Register OF clock
> > provider to let other devices link these clocks through the DT.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> >  static int qmp_ufs_parse_dt_legacy(struct qmp_ufs *qmp, struct device_node *np)
> >  {
> >  	struct platform_device *pdev = to_platform_device(qmp->dev);
> > @@ -1135,6 +1195,13 @@ static int qmp_ufs_probe(struct platform_device *pdev)
> >  	if (ret)
> >  		goto err_node_put;
> >  
> > +	ret = phy_symbols_clk_register(qmp, np);
> 
> Looks like this should go in probe() instead, or was there a reason for
> not registering these clocks when using the new bindings?

Oops, misread the diff. Please ignore this bit.

> And don't they need to be described in both the old and new bindings
> first either way?

This still applies though (i.e. you need to add #clock-cells to
the bindings).

> > +	if (ret) {
> > +		dev_err(dev, "failed to create symbol clocks, %d\n",
> > +			ret);
> 
> Please use the "...: %d\n" form for consistency.
> 
> But you can probably just drop this error message instead.
> 
> > +		goto err_node_put;
> > +	}
> > +
> >  	qmp->phy = devm_phy_create(dev, np, &qcom_qmp_ufs_phy_ops);
> >  	if (IS_ERR(qmp->phy)) {
> >  		ret = PTR_ERR(qmp->phy);
 
Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
