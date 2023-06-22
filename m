Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3C74EB64DD
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jun 2023 21:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uH24jXRM2fawQ/NPG/fWEbD73aM2IBskr1OqVWyP+nE=; b=kfJHHNOboFvgWR
	XnvRFmMqtJQ9q2nahlRAkFZUQ3nrMOHnINpbJ3HvO3hKJe04/OI6vfnQHyow/l2tYrAeofEso2+pu
	xyvCp8e09yOpxYlp3jmvWGHbGzdPcIQ9g/ubxQmpuBZwYrda/iZwK7bRldtYaY2zeW4Nb/aly5AiH
	s/PrQ8jXSGU7Z0Pl3gnadAEDDTlQyF46Y7fAcTku8IAIsLwRVSRydqZ2Vgo0IfyKJPe+ipwYiH1ol
	bHajhCfmePxCi0eRtF7NnXpk9dnvjz3+qQFkDOkJZPgxn0kLw9gi6B4dNgVhvM8qdsAeiEsEsv3iA
	rlPgQZMNienesvL27zrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCS1I-001sZP-0l;
	Thu, 22 Jun 2023 21:39:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCS1F-001sYv-1T
	for linux-phy@lists.infradead.org;
	Thu, 22 Jun 2023 21:39:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E92EA61903;
	Thu, 22 Jun 2023 21:39:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C536EC433C0;
	Thu, 22 Jun 2023 21:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687469947;
	bh=Z2zTt75aFcGtbth62mIt/vvQjlX+GrHqMyjPeIFN970=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jOP/MthUTyOSgLyggUl97x3Lf/lwzkl4IVLDnHp90GLDkZBh8Diw8GN990JHot2Eu
	 l1K0z4Ge+a1f9q6PKpMbCZMDQlBNB5D87BQ2prIVWQbtqjX5OfgkFnLBsVnbQhwcNm
	 zXcnQtg/gbfW0p1L1xxgshRQpp01q3IsthF5t5jCYpgtbCoiIOiZQfJt9fL7Bkps88
	 8/xpBSX8WkOKT3UPJsTmmeX3GVMkGGmE1ShBcKlXl+VNJ8N8A77/SsjlDWbpx6snIP
	 8P9xn0u0tYlGW4TlD8xtbaJvPUrLGomwQpxSgGlj2NBa+uefzA0h9vsXVI7tleTNdg
	 DNTRehXJus1Yw==
Date: Thu, 22 Jun 2023 14:43:07 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Adrien Thierry <athierry@redhat.com>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 2/3] phy: qcom-snps-femto-v2: add system sleep PM ops
Message-ID: <52qapxj7sdearduro3iiqqpekrltc5zviwgq3gz4j4lne6cp5b@phikpenjras3>
References: <20230622194021.80892-1-athierry@redhat.com>
 <20230622194021.80892-3-athierry@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230622194021.80892-3-athierry@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_143909_603215_370D9098 
X-CRM114-Status: GOOD (  17.35  )
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

On Thu, Jun 22, 2023 at 03:40:19PM -0400, Adrien Thierry wrote:
> The downstream driver [1] implements set_suspend(), which deals with
> both runtime and system sleep/resume. The upstream driver already has
> runtime PM ops, so add the system sleep PM ops as well, reusing the same
> code as the runtime PM ops.
> 
> [1] https://git.codelinaro.org/clo/la/kernel/msm-5.4/-/blob/LV.AU.1.2.1.r2-05300-gen3meta.0/drivers/usb/phy/phy-msm-snps-hs.c
> 
> Signed-off-by: Adrien Thierry <athierry@redhat.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index ce1d2f8b568a..378a5029f61e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -179,7 +179,7 @@ static inline void qcom_snps_hsphy_write_mask(void __iomem *base, u32 offset,
>  	readl_relaxed(base + offset);
>  }
>  
> -static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
> +static int qcom_snps_hsphy_do_suspend(struct qcom_snps_hsphy *hsphy)
>  {
>  	dev_dbg(&hsphy->phy->dev, "Suspend QCOM SNPS PHY\n");
>  
> @@ -199,7 +199,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
>  	return 0;
>  }
>  
> -static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
> +static int qcom_snps_hsphy_do_resume(struct qcom_snps_hsphy *hsphy)
>  {
>  	int ret;
>  
> @@ -214,25 +214,25 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
>  	return 0;
>  }
>  
> -static int __maybe_unused qcom_snps_hsphy_runtime_suspend(struct device *dev)
> +static int __maybe_unused qcom_snps_hsphy_suspend(struct device *dev)
>  {
>  	struct qcom_snps_hsphy *hsphy = dev_get_drvdata(dev);
>  
>  	if (!hsphy->phy_initialized)
>  		return 0;
>  
> -	qcom_snps_hsphy_suspend(hsphy);
> +	qcom_snps_hsphy_do_suspend(hsphy);
>  	return 0;
>  }
>  
> -static int __maybe_unused qcom_snps_hsphy_runtime_resume(struct device *dev)
> +static int __maybe_unused qcom_snps_hsphy_resume(struct device *dev)
>  {
>  	struct qcom_snps_hsphy *hsphy = dev_get_drvdata(dev);
>  
>  	if (!hsphy->phy_initialized)
>  		return 0;
>  
> -	qcom_snps_hsphy_resume(hsphy);
> +	qcom_snps_hsphy_do_resume(hsphy);
>  	return 0;
>  }
>  
> @@ -518,8 +518,10 @@ static const struct of_device_id qcom_snps_hsphy_of_match_table[] = {
>  MODULE_DEVICE_TABLE(of, qcom_snps_hsphy_of_match_table);
>  
>  static const struct dev_pm_ops qcom_snps_hsphy_pm_ops = {
> -	SET_RUNTIME_PM_OPS(qcom_snps_hsphy_runtime_suspend,
> -			   qcom_snps_hsphy_runtime_resume, NULL)
> +	SET_RUNTIME_PM_OPS(qcom_snps_hsphy_suspend,
> +			   qcom_snps_hsphy_resume, NULL)
> +	SET_SYSTEM_SLEEP_PM_OPS(qcom_snps_hsphy_suspend,
> +				qcom_snps_hsphy_resume)

Won't this cause issues if you system suspend the device while it's
already runtime suspended?

Regards,
Bjorn

>  };
>  
>  static void qcom_snps_hsphy_override_param_update_val(
> -- 
> 2.40.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
