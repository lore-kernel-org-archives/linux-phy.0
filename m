Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34F4DFEFB77
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 18:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=srV1QilZDFtai0D9S+MQaXRVdk1UdixS7PkVx6/W02s=; b=BudQKA7zVCwNdl
	AzeAi+bDNhYELXGRibJcp8v/0gwZ/pZ97yzGf4g8z98RXZapc+h6ywqy5WM4fwvKYTJ0dZzb0ZX5l
	YQ/3XHfBM0zVNaio/tx8wCcv5pyCPU03RvNzm3RXTXKA21fNdUYQOu2Ds6VWoigE62cyoFKddrwhN
	dS7OxMY/MxwtI9/oWkiLV0HsWQFY0scIPHrtwUS1Da+mLfuvdkmC2ig9indFSTVBBBQlleFzUW8wR
	ZOJ6tsru2oZFBwgLrri5KhpWxHOO/UeuusliEAvKoPX6C4cPxD5NUGqN6GDC+Qcv/5KCrvbnmpWkv
	MvCb60y/3iedAcd5N5yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw2l4-00000008vMW-2Nw0;
	Fri, 27 Feb 2026 18:40:14 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw2l1-00000008vLU-1mHG
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 18:40:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 271864378A;
	Fri, 27 Feb 2026 18:40:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 482AAC116C6;
	Fri, 27 Feb 2026 18:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772217609;
	bh=fLWCM3ZpkFLrfa4wmsqvtEiX1qsOTp3saBPfv62CxA0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PApb8MVcX0cbI+xCp2FjjHP/n3Y2pUpWC25Lr7eDjhCtnLm+sFrGKzuPSVaJ1uWU6
	 9vlf4/s6GjEj4MrPXlvhF9lh6M/DZs52pft01NU75pxvt595+xVLcmFOsZlYJHlEas
	 ea5etzmNVF1S3UR/nvIxJgQOLzWgNF2X1Sq4g4SPGTicUMpkNoXUmL9CKtCLZZlr6C
	 WByGRCfSPoTSj3O2ZmexlK/spFGnqKAgbz9altmen7cLqiYoVmCRwB5PFMj2xEM5aY
	 O96W9jKwRqaA2tIgx63mCqwxNhn8m0YbJuMgrYNmpzHSjDuflc4fq2O0keR6IQn1nz
	 aZaHq7P9XZa4w==
Date: Fri, 27 Feb 2026 12:40:05 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qualcomm: m31-eusb2: Make USB repeater optional
Message-ID: <t2aydteyoqkedrvdlp6dxvy3yh5epdvhfblfk2lgzputyr55u4@decckxxgs67c>
References: <20260227-phy-qcom-m31-eusb2-make-repeater-optional-v1-1-07a086bbaba4@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260227-phy-qcom-m31-eusb2-make-repeater-optional-v1-1-07a086bbaba4@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_104011_483932_1517CE1E 
X-CRM114-Status: GOOD (  21.11  )
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

On Fri, Feb 27, 2026 at 07:47:14PM +0200, Abel Vesa wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 

s/qualcomm/qcom/ insubject, to match other changes to this file.

> A repeater is not required for the PHY to function. On systems with
> multiple PHY instances connected to a multi-port controller, some PHYs
> may be unconnected. All PHYs must still probe successfully even without
> attached repeaters, otherwise the controller probe fails.
> 
> So make it optional.

I like this rewrite.

> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> [abel.vesa@oss.qualcomm.com: commit re-worded to reflect actual reason]
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

With $subject adjusted:

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

> ---
> This has been sent initially by Wesley here:
> https://lore.kernel.org/all/20250920032108.242643-10-wesley.cheng@oss.qualcomm.com/
> 
> This is still needed, but for a different reason, so re-worded the
> commit message to reflect why.

Doesn't that make this patch v2?

Regards,
Bjorn

> ---
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> index 95cd3175926d..70a81ab2482f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -285,7 +285,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>  
>  	phy_set_drvdata(phy->phy, phy);
>  
> -	phy->repeater = devm_of_phy_get_by_index(dev, dev->of_node, 0);
> +	phy->repeater = devm_phy_optional_get(dev, NULL);
>  	if (IS_ERR(phy->repeater))
>  		return dev_err_probe(dev, PTR_ERR(phy->repeater),
>  				     "failed to get repeater\n");
> 
> ---
> base-commit: 3fa5e5702a82d259897bd7e209469bc06368bf31
> change-id: 20260227-phy-qcom-m31-eusb2-make-repeater-optional-621c8c1c0354
> 
> Best regards,
> --  
> Abel Vesa <abel.vesa@oss.qualcomm.com>
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
