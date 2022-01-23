Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D43CC433FE
	for <linux-phy@archiver.kernel.org>; Sun, 23 Jan 2022 11:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vcGVEd4cuSuK3ud94bw2f/4IVkN4KdkiNmE3MrWR2pQ=; b=KMmSr9BtXKnqMg
	yhZulTCnAcLQruJeFJMDUV6hIlBU35r/It5/me7UADnsNcgu0C3SmEBmludSyUhZlJFwdjDIpm2qq
	nt/PkAKu1hQ58ZAYUlCQX5uHqY6xtgEMTmGGmAG5erQlv+Zzg1vlgHkl96YXjXEtts8948PV3t0NA
	Ph3gGZVulG8IuVgjEuhLhJG42awiRN5C68kzTDz6331oHo8hnZoM+MyPHyhNujtY7QIIS+nn2c+MI
	FBjtQwTDxFyC/PgVEjvver0ThasLgFrE3yxpGIToHCsUehVE3nBPbFliU95eFx0SSOWTlqS4HUJlz
	ZtjPp9KHNnWLprZF26/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBbQ1-000l2b-AA; Sun, 23 Jan 2022 11:52:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBbPz-000l1r-CG
 for linux-phy@lists.infradead.org; Sun, 23 Jan 2022 11:52:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8329A60B96;
 Sun, 23 Jan 2022 11:52:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1E74C340E2;
 Sun, 23 Jan 2022 11:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642938741;
 bh=Hzf1QA1X0U32CcLGCPEgwz1IWeec/ElYEjEy+Y1MEfY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MC3PIFON5AL8l6Vt8y2ALb5WDDUTQcqcQoPRXIJeI9v31hm02ikRnD19Ii7EGFd9w
 d1rM/5KtjKrqg6YcDLgA0MXPti1Rr1Rgy6xw4POnnBAZnHJlkAJnSgcvY0WlUzigaM
 yvekd9Njt50K5M4MlBmQDlH9buavfxI1TiIOT4yj7I0PVHZiyJVcInk4W50ivAkU0v
 Be/2+WdcfGksItKbNTl5ui1FZcQdqB7ngn3ux587gBKzoyVFLh8CDNjQseXjHO3iQf
 FOYynusxXKTeTC4T/CasyOYHgADfjFRycg9U5U2ZdfxtdS+nDsBoRcErQJKlnrwk0/
 5leyHViDEODAg==
Date: Sun, 23 Jan 2022 17:22:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ansuel Smith <ansuelsmth@gmail.com>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] drivers: phy: qcom: ipq806x-usb: conver latch
 function to pool macro
Message-ID: <Ye1BcvaneH0sWeQV@matsya>
References: <20220117002641.26773-1-ansuelsmth@gmail.com>
 <20220117002641.26773-2-ansuelsmth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220117002641.26773-2-ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_035223_482995_6B36DD05 
X-CRM114-Status: GOOD (  17.18  )
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

On 17-01-22, 01:26, Ansuel Smith wrote:
> Convert latch function to readl pool macro to tidy things up.
> 
> Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 17 +++++------------
>  1 file changed, 5 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> index 6788e0e8272a..ab2d1431546d 100644
> --- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> @@ -112,6 +112,9 @@
>  #define SS_CR_READ_REG				BIT(0)
>  #define SS_CR_WRITE_REG				BIT(0)
>  
> +#define LATCH_SLEEP				40
> +#define LATCH_TIMEOUT				100
> +
>  struct usb_phy {
>  	void __iomem		*base;
>  	struct device		*dev;
> @@ -156,19 +159,9 @@ static inline void usb_phy_write_readback(struct usb_phy *phy_dwc3,
>  
>  static int wait_for_latch(void __iomem *addr)
>  {
> -	u32 retry = 10;
> -
> -	while (true) {
> -		if (!readl(addr))
> -			break;

we break if read returns non zero value...

Do you know what is the value expected?

> -
> -		if (--retry == 0)
> -			return -ETIMEDOUT;
> -
> -		usleep_range(10, 20);
> -	}
> +	u32 val;

Okay this contains garbage..
>  
> -	return 0;
> +	return readl_poll_timeout(addr, val, !val, LATCH_SLEEP, LATCH_TIMEOUT);

and we are waiting for it read a garbage value!


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
