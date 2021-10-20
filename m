Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49C1FC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 17:27:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B2F860F9F
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 17:27:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0B2F860F9F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+A8+JEX5BNQKFQsP17oEVa7cmfElq2kmUAPY6LB42FY=; b=xvN0JK9R7HQmub
	Ds41wqo5KsUG44WhnPSDs66lwmnpcV/eqUzV0S2CIGAfq3TECeByg54JWIQLKKH8/abCKBP3AQhtR
	4tYMztClU/nraLyuLK0711FNpU086aZxtyIW6weXQn96indhPth8Ba6C7ByVPnDX/TlCW0S0Po86U
	1nmmxEwGE+bsHaA0IFGFCPAT5gkmCH9w/OSVjAurmk17Iwj7G+FIyNXj/LhjSEZ/WZ+AHfOM+7LD3
	W1e/9AQsFJ8owlgSRpBgb8xyEqaN+2ZR2KKy9gQGS9kcTVCdOABvAP8AElvihIi1/lViif7wFMHB0
	GxaZlrOXM+mcTlQjhTwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdFNM-005JmR-Ij; Wed, 20 Oct 2021 17:27:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdFNJ-005Jld-If
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 17:27:38 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 078E360F9F;
 Wed, 20 Oct 2021 17:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634750857;
 bh=tyQDeymI59Y8MZ5eBC3Ad/9unrJV3Xk5ZkBbMyhhpMY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jmEwPqivbWiqRPgwabXQE9M4rlYkApDKdrJyzOpn0tYGhFt1w4gCs18Cdh3mPb/E+
 sqjRRL6MA3KykefzXR4ceq61SgELnhd+KEm40UpFuubFs6UN1d+/1wKlCmKJ77EYhW
 0ZMXmNubwhg9lqk96AEj0utvopTL0IuMJBzyO14fldVk8fJI02IY2Bdjof0TeibmJX
 6KwmfGVvSAB2ZF5WZ9eysWjUYWqLupYWM0hXVKfAzFGblvpKG9VfCxl3s8wMA+dFpe
 8yeQA5YgVVVNxqqM/G2jR+eqS3sNyeJQuu7Rg0p+8DT523FIPsUJN7EA7CnsnLA4uE
 lPcHWDDlKXBGw==
Date: Wed, 20 Oct 2021 22:57:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 linux-phy@lists.infradead.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] phy: ti: gmii-sel: check of_get_address() for failure
Message-ID: <YXBRhOmXRQJDdJoW@matsya>
References: <20210914110038.GB11657@kili>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210914110038.GB11657@kili>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_102737_661954_2DF15FC1 
X-CRM114-Status: GOOD (  11.91  )
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

On 14-09-21, 14:00, Dan Carpenter wrote:
> Smatch complains that if of_get_address() returns NULL, then "size"
> isn't initialized.  Also it would lead to an Oops.

Applied, thanks

> 
> Fixes: 7f78322cdd67 ("phy: ti: gmii-sel: retrieve ports number and base offset from dt")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/phy/ti/phy-gmii-sel.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
> index 5fd2e8a08bfc..d0ab69750c6b 100644
> --- a/drivers/phy/ti/phy-gmii-sel.c
> +++ b/drivers/phy/ti/phy-gmii-sel.c
> @@ -320,6 +320,8 @@ static int phy_gmii_sel_init_ports(struct phy_gmii_sel_priv *priv)
>  		u64 size;
>  
>  		offset = of_get_address(dev->of_node, 0, &size, NULL);
> +		if (!offset)
> +			return -EINVAL;
>  		priv->num_ports = size / sizeof(u32);
>  		if (!priv->num_ports)
>  			return -EINVAL;
> -- 
> 2.20.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
