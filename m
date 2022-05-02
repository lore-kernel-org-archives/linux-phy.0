Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B692C433FE
	for <linux-phy@archiver.kernel.org>; Mon,  2 May 2022 12:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOIGuB4sYUXklc08f1QCHZIQA/zypiwILLsdoM5fyBQ=; b=dbGjCl9Yi2zAcc
	+uzt3c5IF5qLJ1TdFrWBTY2RM8ZJGkvdxNUii979vgYC2yHCRFXf3zxELu0eq7NTFrHz8w33Q8B6I
	pQ/ifp7FjRPvAX2bMnF5IJWfyR/aWdCTjpydlBKAhvvS/Wc7gxDHxDR1t2Y0ut2Z05uoqaZfdusO2
	/uK8Nr5SQOzyXWbE9k5/By3MZOqKWzzfmKmt1XsOmUd8ksJrm6kdkAlfx+NEwiXMVzBPqW88+j8yj
	LyK+frklgOjdsIa0Q6VEl0ZQ9TWfANIebvHlSJ1EvvmGYvla4B0RU3e+9suxi91ZQzc4u9AcMwePM
	ckK+8fS2mcjDvv/OHjlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlUk7-00131t-Hk; Mon, 02 May 2022 12:01:31 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlUk4-001316-U5
 for linux-phy@lists.infradead.org; Mon, 02 May 2022 12:01:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 56500B816B9;
 Mon,  2 May 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20BB5C385AC;
 Mon,  2 May 2022 12:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651492886;
 bh=BO6LwlJ2aRePANHThfcAB5WN+7rxFLdfIADusHG87Xw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e3nv69OLpF4JRUNJ+6tQKk6DcF4x3kMtBy8oBhs2HLXx7cObZlFh9tgr/7iN5PaZY
 0MaI2nnU5ErUChjOmVXixJ8G+fpkGguNEMX/+ZSVHRXXD437zBKfOLb/kU8JMsHONW
 SMJ+s9B7A9ezyajNrWVYusXbyLP221nNOnVrjGstwnm8fpVfsfl//46AfBtAh0CSnR
 EeRN8mpqIOx/k2YBzKBXKwo3cM71vEm6ePvC+Q4UImZNAd13jPX0IMpdruuL8tSRBr
 RKiP3fn8atVK21MldTQBrXliNfX4I6M2igG6vLXfqA3/B5hGv22QSNiyxICVSlbxRV
 HEWcyL9YF+VLA==
Date: Mon, 2 May 2022 17:31:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>
Subject: Re: [PATCH 2/2] phy: qcom-qmp: fix pipe-clock imbalance on power-on
 failure
Message-ID: <Ym/IEbrYRXIxFPV5@matsya>
References: <20220420152331.5527-1-johan+linaro@kernel.org>
 <20220420152331.5527-3-johan+linaro@kernel.org>
 <Ym+t5YVL8HdJaBl4@matsya> <Ym+yGa0xT82d9XOf@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Ym+yGa0xT82d9XOf@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_050129_311712_416C56A2 
X-CRM114-Status: GOOD (  28.21  )
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

On 02-05-22, 12:27, Johan Hovold wrote:
> On Mon, May 02, 2022 at 03:39:41PM +0530, Vinod Koul wrote:
> > On 20-04-22, 17:23, Johan Hovold wrote:
> > > Make sure to disable the pipe clock also if ufs-reset deassertion fails
> > > during power on.
> > > 
> > > Note that the ufs-reset is asserted in qcom_qmp_phy_com_exit().
> > > 
> > > Fixes: c9b589791fc1 ("phy: qcom: Utilize UFS reset controller")
> > > Cc: Evan Green <evgreen@chromium.org>
> > > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-qmp.c | 14 +++++++-------
> > >  1 file changed, 7 insertions(+), 7 deletions(-)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> > > index 8c2300bfe489..7d2d1ab061f7 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> > > @@ -5375,14 +5375,14 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
> > >  		if (ret) {
> > >  			dev_err(qmp->dev, "lane%d reset deassert failed\n",
> > >  				qphy->index);
> > > -			goto err_lane_rst;
> > > +			return ret;
> > 
> > This can be skipped if we retain the err_lane_rst label
> > 
> > >  		}
> > >  	}
> > >  
> > >  	ret = clk_prepare_enable(qphy->pipe_clk);
> > >  	if (ret) {
> > >  		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
> > > -		goto err_clk_enable;
> > > +		goto err_reset_lane;
> > >  	}
> > >  
> > >  	/* Tx, Rx, and PCS configurations */
> > > @@ -5433,7 +5433,7 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
> > >  
> > >  	ret = reset_control_deassert(qmp->ufs_reset);
> > >  	if (ret)
> > > -		goto err_lane_rst;
> > > +		goto err_disable_pipe_clk;
> > 
> > this is the actual fix...
> 
> Right, but with a one-line fix this would read
> 
> 	goto err_pcs_ready;
> 
> which makes no sense at all. Is that really what you prefer?

Yes I feel for a fix we should always have the minimal changes.. makes
porting easier

> 
> Renaming just this one and the below one, would leave the error labels
> named using two different schemes, which also isn't very nice, but
> perhaps ok.
> 
> > >  
> > >  	qcom_qmp_phy_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl,
> > >  			       cfg->pcs_misc_tbl_num);
> > > @@ -5472,17 +5472,17 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
> > >  					 PHY_INIT_COMPLETE_TIMEOUT);
> > >  		if (ret) {
> > >  			dev_err(qmp->dev, "phy initialization timed-out\n");
> > > -			goto err_pcs_ready;
> > > +			goto err_disable_pipe_clk;
> > 
> > same rename here
> > 
> > >  		}
> > >  	}
> > >  	return 0;
> > >  
> > > -err_pcs_ready:
> > > +err_disable_pipe_clk:
> > >  	clk_disable_unprepare(qphy->pipe_clk);
> > > -err_clk_enable:
> > > +err_reset_lane:
> > >  	if (cfg->has_lane_rst)
> > >  		reset_control_assert(qphy->lane_rst);
> > > -err_lane_rst:
> > > +
> > >  	return ret;
> > 
> > while I feel the names given by this patch are better, they should not
> > be in a fix patch. We should just add the one line fix here and do
> > renames later
> 
> I'll respin if you prefer, just want to double check that you really
> want a one line fix (i.e. goto err_pcs_ready).

Yes please


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
