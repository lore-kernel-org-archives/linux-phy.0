Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02D1EC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  2 May 2022 10:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4T4lrxY8fvYXIvCzekit8CQieGkPhvZhTFC7u6AoJBU=; b=ReK1BVMdyZFhLa
	6nYCtAUgybFP0yBN1KdLAZrSqNHVua5KEn1eyckmFDEOl9MvfQ9M1H50r03w+LxxaKdKOBZuJR9pa
	/rYksM16Ea9Py6X21JrJ6wQHbQnfuERM1bsJJLAGJo0XH1nja4aD+acNrfN1GD9flOYkm7Y2/Tz7Y
	mRJDrtEBrGT8YOrMDsFKyyZQpXsrfUIxv+pRDdvzbXi14hcg/XcF3lxJ5F3+7liRn1eBI8qTpEvHS
	VQEq3zmFRfmW0E+u3wrKJ+T0adrYPAYIgAOgebtr3KsuutjLXH15eiSZr9+HxXi9SaqRiJzkvMIc4
	bBPHhcIRecSeMsdo9uVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlT03-000lcm-D0; Mon, 02 May 2022 10:09:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlT00-000lbj-O2
 for linux-phy@lists.infradead.org; Mon, 02 May 2022 10:09:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 43B53611CD;
 Mon,  2 May 2022 10:09:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA2D2C385B1;
 Mon,  2 May 2022 10:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651486186;
 bh=eeqZLYnN/1wfZnDKzK6bSzgVXoLjuy6VTAHe1gNkj8o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hsc67eFIgRE7zQI8bJj/bWCd3viDNCuupn72WdNqIh++Rl3YiVQDwYJanG8HxO7b5
 FBswIPm3WwF7+07yGmXLqxYIaC465p/QHQ+B1cXVwdjnDRnSgmx5RA17P8jbjGNYFz
 2Mdtodt7TsFdfPeuBw/Qw63VkapSVAv+jCasPJWK2d/2rQIVXSL5NQfNz7sQQtfwRd
 LSO1+3umf7xkx/TZ2pXmXtUsCDDYWDv5XdxMH68+k7oRDsJe+fTz0m9nv04H5E+32l
 nqGgS1FNlkPPpEJs9bS6NbQaxYVZ96tBcukCbCoekgklvkLejMr5EjojUvgQmQYsXo
 Zv0VqyzgaUi9Q==
Date: Mon, 2 May 2022 15:39:41 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>
Subject: Re: [PATCH 2/2] phy: qcom-qmp: fix pipe-clock imbalance on power-on
 failure
Message-ID: <Ym+t5YVL8HdJaBl4@matsya>
References: <20220420152331.5527-1-johan+linaro@kernel.org>
 <20220420152331.5527-3-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220420152331.5527-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_030948_861646_02A43C29 
X-CRM114-Status: GOOD (  18.91  )
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

On 20-04-22, 17:23, Johan Hovold wrote:
> Make sure to disable the pipe clock also if ufs-reset deassertion fails
> during power on.
> 
> Note that the ufs-reset is asserted in qcom_qmp_phy_com_exit().
> 
> Fixes: c9b589791fc1 ("phy: qcom: Utilize UFS reset controller")
> Cc: Evan Green <evgreen@chromium.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index 8c2300bfe489..7d2d1ab061f7 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -5375,14 +5375,14 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
>  		if (ret) {
>  			dev_err(qmp->dev, "lane%d reset deassert failed\n",
>  				qphy->index);
> -			goto err_lane_rst;
> +			return ret;

This can be skipped if we retain the err_lane_rst label

>  		}
>  	}
>  
>  	ret = clk_prepare_enable(qphy->pipe_clk);
>  	if (ret) {
>  		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
> -		goto err_clk_enable;
> +		goto err_reset_lane;
>  	}
>  
>  	/* Tx, Rx, and PCS configurations */
> @@ -5433,7 +5433,7 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
>  
>  	ret = reset_control_deassert(qmp->ufs_reset);
>  	if (ret)
> -		goto err_lane_rst;
> +		goto err_disable_pipe_clk;

this is the actual fix...

>  
>  	qcom_qmp_phy_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl,
>  			       cfg->pcs_misc_tbl_num);
> @@ -5472,17 +5472,17 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
>  					 PHY_INIT_COMPLETE_TIMEOUT);
>  		if (ret) {
>  			dev_err(qmp->dev, "phy initialization timed-out\n");
> -			goto err_pcs_ready;
> +			goto err_disable_pipe_clk;

same rename here

>  		}
>  	}
>  	return 0;
>  
> -err_pcs_ready:
> +err_disable_pipe_clk:
>  	clk_disable_unprepare(qphy->pipe_clk);
> -err_clk_enable:
> +err_reset_lane:
>  	if (cfg->has_lane_rst)
>  		reset_control_assert(qphy->lane_rst);
> -err_lane_rst:
> +
>  	return ret;

while I feel the names given by this patch are better, they should not
be in a fix patch. We should just add the one line fix here and do
renames later

>  }
>  
> -- 
> 2.35.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
