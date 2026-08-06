Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D766C56208
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 10:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fqVKweA/RIkkhgRHCy1jBS2t1QOMnsbgoLZ1BJDVeE=; b=nRVLENvRP4/K2M
	+uJXL2LQUnDkNaqQeI3N2IwKyS+jE/dJtJaXn8NpTjMO0o7hfezLccjY8rEYAGYpC/zgw+5/qmMix
	3d6ZAHfnEPB5BEDV8GmDgaUvofwcPle9K0LNo9zqNoTtIvhVNo8PAUAeEfORfuIR5BEUgshdhg8d+
	LU9WRWhcjwvLlLxjVlavl9RTkkcPOc8N0LlTF+GWeU5A87cJjIgtzL5pnWGdRdXkWJq0nE0UNopVJ
	5NdqoBrjPuDyrt9NEPSIdN7EPtR6EKXwjhdJvG0kWVwzaKS+ZZj/902O4D/6GXrKi7NHF6mDJrLb3
	aa3GDHD60bZ7DYpk4cqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrvFX-00000005XWI-3TVa;
	Thu, 06 Aug 2026 10:22:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrvFV-00000005XVm-3SZ5
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 10:22:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4C7AE40751;
	Thu,  6 Aug 2026 10:22:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64BE11F000E9;
	Thu,  6 Aug 2026 10:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786011773;
	bh=y/X2+qsEtpGJnngE5H735HwoMa+3ALu+5ZFSCcmI/3w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=f1tHULtnPSgQ9aqY22bhDq9qa7DNMaTt+LtM5hR0WX/gXwP7d+A1eZZXQs45vrKhp
	 fvzjQS5K5OcAP1+ezypSqCb62fFiLnpMl1dRPvgJTouZ3fHRam1zyFfuQvk93wxUj4
	 92P5Dei657m1V6gqDzERIWtSuP34vcgq4kdoi+YUar9ymPszcJw9un4OaqN5NR+6Bc
	 qfe+b91d/mcviGR3bKy96FSbbJW243TIUuYKLjLiYhp0qjQVvJkxFmZjotrUs4SSdk
	 JC1aw9gI2xwBml6hSRDQAXa8urkAhrwPTCnzGhAUVqJTBhTB8kEuPkwI3n0hseHLyl
	 ZgYfXgMLDhteQ==
Date: Thu, 6 Aug 2026 15:52:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Felix Gu <ustc.gu@gmail.com>
Cc: Vincent Shih <vincent.sunplus@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: sunplus: fix crash when the disc_vol nvmem cell is
 missing
Message-ID: <anRgefttPEDmKzjm@vaman>
References: <20260804-sunplus-v1-1-79f52226cb50@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260804-sunplus-v1-1-79f52226cb50@gmail.com>
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

On 04-08-26, 21:58, Felix Gu wrote:

Where is the crash report?
Patch title should document the change not the reason, please read the
documentation on how to create patches

> nvmem_cell_get() can fail with errors other than -EPROBE_DEFER, but
> update_disc_vol() only handled -EPROBE_DEFER and then called
> nvmem_cell_read() with the error pointer, crashing the kernel.
> 
> Fall back to the default disconnect voltage on a failed cell lookup,
> and free the buffer returned by nvmem_cell_read().
> 
> Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
> Signed-off-by: Felix Gu <ustc.gu@gmail.com>
> ---
>  drivers/phy/sunplus/phy-sunplus-usb2.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
> index 637a5fbae6d9..94146118e9c2 100644
> --- a/drivers/phy/sunplus/phy-sunplus-usb2.c
> +++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
> @@ -81,12 +81,13 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
>  	char *disc_name = "disc_vol";
>  	ssize_t otp_l = 0;
>  	char *otp_v;
> -	u32 val, set;
> +	u32 val, set = OTP_DISC_LEVEL_DEFAULT;
>  
>  	cell = nvmem_cell_get(usbphy->dev, disc_name);
> -	if (IS_ERR_OR_NULL(cell)) {
> +	if (IS_ERR(cell)) {
>  		if (PTR_ERR(cell) == -EPROBE_DEFER)
>  			return -EPROBE_DEFER;
> +		goto out;
>  	}
>  
>  	otp_v = nvmem_cell_read(cell, &otp_l);
> @@ -96,11 +97,12 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
>  		set = *(otp_v + 1);
>  		set = (set << (sizeof(char) * 8)) | *otp_v;
>  		set = (set >> usbphy->disc_vol_addr_off) & J_DISC;
> +		if (set == 0)
> +			set = OTP_DISC_LEVEL_DEFAULT;
> +		kfree(otp_v);
>  	}
>  
> -	if (IS_ERR(otp_v) || set == 0)
> -		set = OTP_DISC_LEVEL_DEFAULT;
> -
> +out:
>  	val = readl(usbphy->phy_regs + CONFIG7);
>  	val = (val & ~J_DISC) | set;
>  	writel(val, usbphy->phy_regs + CONFIG7);
> 
> ---
> base-commit: 9a4cdc958dd79fc6c3b20b51a10debec6ca09fec
> change-id: 20260804-sunplus-53a7bb1bcd72
> 
> Best regards,
> --  
> Felix Gu <ustc.gu@gmail.com>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
