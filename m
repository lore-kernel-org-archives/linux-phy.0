Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5116DC6FA83
	for <linux-phy@archiver.kernel.org>; Tue,  6 Sep 2022 06:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OK6kU6CKYDAteica9Vvo943W+87XeGoDq0EzvykeCkk=; b=wc1UZTWxwzlaVr
	iF4P26hOAH048anFj/d50ii3wPLRUKM2qgvbSGgj8VqKUhCpUYorLsw7nNl7m0FVOadohmUkxfDmB
	9XDoHwwS2I99pkxB+/18cYavvQ8gXNYH4jJMe9uhGzjIWTF3EZ+Alh5M49fHqjq68Dy5/WD5cDB/L
	MbCXl4fjlAF5VNCWvyFJVv33g5/E07rdMUivPQjq9zscMLG1wXUcYu0X5dDJVdgl3O4q6+hZtIaB/
	zzgbn+jhhUqeC3vvZTEFvGUOaTknJbv/w1FfWsReTWb4oKs4zhzOAunMEcupSRDsgkjZL71oIKSnJ
	Yifxwi5PSczPPhQxbgrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVSE1-00ATWr-Dw; Tue, 06 Sep 2022 06:38:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVSDv-00ATRL-HD
	for linux-phy@lists.infradead.org; Tue, 06 Sep 2022 06:38:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BF70561315;
	Tue,  6 Sep 2022 06:38:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A81FAC433D6;
	Tue,  6 Sep 2022 06:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1662446294;
	bh=QsCDlqO4tjSBHwaY1BpaR2HUe1nmWPIOovcOuwER1F0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YBSs4dEHzflv4FTctNetNLXgdPKv5Hqe+R/BB1M9gAM5+84WiarO4LPC+Ya3Zn9JM
	 GwjUeuXMi/iCXJYbX0JLzs6ebCB6XxE+nWEJARGKdcy+dBWfOqGiTXED+cTPQ6gZ7v
	 Q8DmXDYsuVmPfRNQuJAdaysTt583Ugr2z7WxUd8s=
Date: Tue, 6 Sep 2022 08:38:11 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vincent Shih <vincent.sunplus@gmail.com>
Cc: kishon@ti.com, vkoul@kernel.org, linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	wells.lu@sunplus.com
Subject: Re: [PATCH] phy: usb: free the buffer after reading a given nvmem
 cell
Message-ID: <Yxbq0ynfdsKNAySv@kroah.com>
References: <1662445382-29879-1-git-send-email-vincent.sunplus@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1662445382-29879-1-git-send-email-vincent.sunplus@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_233815_728748_9854AD51 
X-CRM114-Status: GOOD (  18.80  )
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

On Tue, Sep 06, 2022 at 02:23:02PM +0800, Vincent Shih wrote:
> Use kfree() to free the buffer after calling nvmem_cell_read() to
> read a given nvmem cell.
> 
> Fixes:99d9ccd97385("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")

This is not a commit in Linus's tree, are you sure it is right?

And the format is not quite correct, you need some spaces in the line.

> Signed-off-by: Vincent Shih <vincent.sunplus@gmail.com>
> ---
>  drivers/phy/sunplus/phy-sunplus-usb2.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
> index 5269968..c8540e1 100644
> --- a/drivers/phy/sunplus/phy-sunplus-usb2.c
> +++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
> @@ -13,6 +13,7 @@
>  #include <linux/bitfield.h>
>  #include <linux/clk.h>
>  #include <linux/delay.h>
> +#include <linux/err.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
>  #include <linux/nvmem-consumer.h>
> @@ -92,13 +93,15 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
>  	otp_v = nvmem_cell_read(cell, &otp_l);
>  	nvmem_cell_put(cell);
>  
> -	if (otp_v) {
> +	if (!IS_ERR(otp_v)) {
>  		set = *(otp_v + 1);
>  		set = (set << (sizeof(char) * 8)) | *otp_v;
>  		set = (set >> usbphy->disc_vol_addr_off) & J_DISC;
> +		
> +		kfree(otp_v);
>  	}
> -
> -	if (!otp_v || set == 0)
> +	
> +	if (IS_ERR(otp_v) || (set == 0))
>  		set = OTP_DISC_LEVEL_DEFAULT;
>  
>  	val = readl(usbphy->phy_regs + CONFIG7);
> @@ -294,3 +297,4 @@ module_platform_driver(sunplus_usb_phy_driver);
>  MODULE_AUTHOR("Vincent Shih <vincent.shih@sunplus.com>");
>  MODULE_DESCRIPTION("Sunplus USB 2.0 phy driver");
>  MODULE_LICENSE("GPL");
> +

Why the extra blank line?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
