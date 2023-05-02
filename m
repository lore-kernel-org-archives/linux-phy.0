Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 503DDC7EE26
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 10:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdPaVUqG0kmjX0TWWT9FHTbghNCSRa/SKz9q7Gotkms=; b=uCN8dBYfMEZOf2
	PG7nDOnzS/SXs1Pf+me9xVC0Vm8v14YPRqpocenY6HBNylzRYqNhatYaIOHKHvsFzHrPqOyMlp7h4
	MIAhD+pYI1SS0ADhIjDgFQRU82zenUFgffD6gNgXEBaXQYgpY3pGV5lIvwwaypLCrxh8UFXYOCa9v
	3NAVG64U04uRJ0yIjGlIK5l1O2dYV1NQdM0lkC8Jyjw1kj4HqmYVmwTGF4AtthO9Xj45VZ9jaHnwv
	e4WLyhIMOgtXTWGv5HBiyf5R0/tEGDDtGAJQdDR1GNtP+UesS/kJz+mWhpmvgCJ8vRom2JprA6gHo
	mbEaU39cmHpQmlbX3j7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnU7-0011lZ-06;
	Tue, 02 May 2023 10:43:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnU3-0011i8-1X
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 10:43:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5A63660C3E;
	Tue,  2 May 2023 10:43:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B59D3C433D2;
	Tue,  2 May 2023 10:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683024225;
	bh=5PcTT+Mp2phj0AGBO4adQ2h/a2T5CGjfMzj/n4Uwgzw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BZ560cJnwCTkC6eAn5fQX/YYVE0IeaXkS+LYCPdcMD+0S1IOu+cBBqwxWcf8PVV3m
	 zwtI8FLnTbK4qfP7a7cVIT08y7JvQ5iRnxM4fD9fdwSrIK8vxszHCGjk36GcZvlec5
	 8WqXGDrX0hp/qPwkk3DhB323vo4MMcLr3ZrQtdEmrhZiTi88TaHhZV1gFyQ0/ElXCt
	 JYdu1LXpgn59JluFra1UBwhLgVZCy5J2vPs5UvVjLhB1u1MEUvG623ey9QanbhE9Ka
	 /MZo9hFICk6nJPyOun8GIr2jGM9oYDHDTy405ZVvb7whr4HC7IrpHxETjPq67lrXA1
	 L2DHtHv9cx+iw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ptnU4-0003Bn-Jh; Tue, 02 May 2023 12:43:48 +0200
Date: Tue, 2 May 2023 12:43:48 +0200
From: Johan Hovold <johan@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/7] phy: qcom-qmp-combo: Move phy_mutex out of
 com_init/exit
Message-ID: <ZFDpZMBSM4fXWzB2@hovoldconsulting.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-3-quic_bjorande@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230425034010.3789376-3-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_034347_610378_17B53E54 
X-CRM114-Status: GOOD (  22.45  )
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

On Mon, Apr 24, 2023 at 08:40:05PM -0700, Bjorn Andersson wrote:
> With the upcoming introduction of USB Type-C orientation switching the
> region of mutual exclusion needs to be extended to cover both the common
> init/exit as well as the individual functions.
> 
> So move the phy_mutex one step up the stack.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 51 +++++++++++++----------
>  1 file changed, 30 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 6850e04c329b..7280f7141961 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -2463,16 +2463,13 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
>  	void __iomem *com = qmp->com;
>  	int ret;
>  
> -	mutex_lock(&qmp->phy_mutex);
> -	if (qmp->init_count++) {
> -		mutex_unlock(&qmp->phy_mutex);
> +	if (qmp->init_count++)
>  		return 0;
> -	}
>  
>  	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
>  	if (ret) {
>  		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
> -		goto err_unlock;
> +		goto err;

I was going to say that you can just return ret directly but then
realised we have a counter imbalance here that should be fixed.

I've just sent a couple of fixes which you could rebase on:

	https://lore.kernel.org/r/20230502103810.12061-1-johan+linaro@kernel.org

>  	}
>  
>  	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> @@ -2514,16 +2511,13 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
>  	qphy_setbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>  			SW_PWRDN);
>  
> -	mutex_unlock(&qmp->phy_mutex);
> -
>  	return 0;
>  
>  err_assert_reset:
>  	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>  err_disable_regulators:
>  	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> -err_unlock:
> -	mutex_unlock(&qmp->phy_mutex);
> +err:
>  
>  	return ret;
>  }
 
> @@ -2686,14 +2683,19 @@ static int qmp_combo_usb_init(struct phy *phy)
>  	struct qmp_combo *qmp = phy_get_drvdata(phy);
>  	int ret;
>  
> +	mutex_lock(&qmp->phy_mutex);

Nit: I think adding a newline here would improve readability.

>  	ret = qmp_combo_com_init(qmp);
>  	if (ret)
> -		return ret;
> +		goto out_unlock;
>  
>  	ret = qmp_combo_usb_power_on(phy);
> -	if (ret)
> +	if (ret) {
>  		qmp_combo_com_exit(qmp);
> +		goto out_unlock;
> +	}
>  
> +out_unlock:
> +	mutex_unlock(&qmp->phy_mutex);

Same here.

>  	return ret;
>  }
>  
> @@ -2702,11 +2704,18 @@ static int qmp_combo_usb_exit(struct phy *phy)
>  	struct qmp_combo *qmp = phy_get_drvdata(phy);
>  	int ret;
>  
> +	mutex_lock(&qmp->phy_mutex);

And here.

>  	ret = qmp_combo_usb_power_off(phy);
>  	if (ret)
> -		return ret;
> +		goto out_unlock;
>  
> -	return qmp_combo_com_exit(qmp);
> +	ret = qmp_combo_com_exit(qmp);
> +	if (ret)
> +		goto out_unlock;
> +
> +out_unlock:
> +	mutex_unlock(&qmp->phy_mutex);

And here.

> +	return ret;
>  }
>  
>  static int qmp_combo_usb_set_mode(struct phy *phy, enum phy_mode mode, int submode)

Looks good otherwise: 

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
