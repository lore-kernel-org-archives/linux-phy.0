Return-Path: <SRS0=mYmN=QE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FB41C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 17 Nov 2021 08:15:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 44D7761BE2
	for <linux-phy@archiver.kernel.org>; Wed, 17 Nov 2021 08:15:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 44D7761BE2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTGTOg9qDnCN60cJqZQ2UuRbD3VQQ5cOKQzp8wd/8SI=; b=1jDVzYA1RmB7yL
	9T/tXlWScBmSu5mYCnpbYOaNzR2XJRxVC8p71rXlPHM2YQ6SzBNI58FGZT8i/wf0kxe9HE+NpGPTp
	Q1nOx/aoSgTfpT3aD2vuXE100/5Xo7BK75VhSG0FwwoXoMISRvuvJx12dxptsVL1+dCwtJ9s89kr/
	EgzgW/r1cNM/2V1b8HF7npz7d8OkBxyISM+BqLpXqNXxTV9+xN43oKgKydERgHyzn/c/Kw1WgQdQk
	2Gj+Hk6Xk3QpFJyylCBOlQLUcTPxKfrb8A1XCyy4wHJKCWKkgGO702TkTvJ4PE4D6872djlocz86j
	N6flzhoPn7qyJdXrDWuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnG5w-003v0o-RQ; Wed, 17 Nov 2021 08:15:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnG5u-003uzr-NW
 for linux-phy@lists.infradead.org; Wed, 17 Nov 2021 08:15:03 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id F0FD761502;
 Wed, 17 Nov 2021 08:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637136901;
 bh=PXTgqQ7QKV2K5+fItm8dleHtPJmP0MwuaD+Q0evQQK0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MMh3FPtt+1l1xnTHEdgLIgNlTMBVg360Yr/Vxrv02xUrgmVGliQHFypxgynoXbH1+
 tX1H34k95VdOlRcmmkU+X7eSjN+rG/X0ilyiNhbUxStY0MCoZbSDhxiwcIAxEt5O65
 UPY/sYT6x8R98vuOZnyiwe4SvxGVX+Ng5cweAzyVZ6oD6N9PP3V/c8vp6KLDW1cXMV
 zSROYnrTEl00VK5eEQ8+fLZvgg5tci3OZ4mC6hWNT/g6/1q4gtotpQYDNBrc+5jUNO
 zy+AV+DDOzRh7kIA4Z5MZxk7dq/4y4gO7YRUAPP7RSsf2JbPdi+Yy9CwsnXMNUoKZC
 PR5FRucGrU2oQ==
Date: Wed, 17 Nov 2021 08:14:56 +0000
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
 kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] phy: HiSilicon: Fix copy and paste bug in error handling
Message-ID: <20211117081456.001af8b3@sal.lan>
In-Reply-To: <20211117074843.GE5237@kili>
References: <20211117074843.GE5237@kili>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_001502_834303_A9D26B1D 
X-CRM114-Status: GOOD (  13.37  )
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

Em Wed, 17 Nov 2021 10:48:43 +0300
Dan Carpenter <dan.carpenter@oracle.com> escreveu:

> This should check ">pmctrl" instead of "->sysctrl".  This bug could
> potentially lead to a crash if we dereference the error pointer.
> 
> Fixes: 73075011ffff ("phy: HiSilicon: Add driver for Kirin 970 PCIe PHY")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/phy/hisilicon/phy-hi3670-pcie.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/hisilicon/phy-hi3670-pcie.c b/drivers/phy/hisilicon/phy-hi3670-pcie.c
> index c64c6679b1b9..0ac9634b398d 100644
> --- a/drivers/phy/hisilicon/phy-hi3670-pcie.c
> +++ b/drivers/phy/hisilicon/phy-hi3670-pcie.c
> @@ -757,8 +757,8 @@ static int hi3670_pcie_phy_get_resources(struct hi3670_pcie_phy *phy,
>  		return PTR_ERR(phy->sysctrl);
>  
>  	phy->pmctrl = syscon_regmap_lookup_by_compatible("hisilicon,hi3670-pmctrl");
> -	if (IS_ERR(phy->sysctrl))
> -		return PTR_ERR(phy->sysctrl);
> +	if (IS_ERR(phy->pmctrl))
> +		return PTR_ERR(phy->pmctrl);
>  
>  	/* clocks */
>  	phy->phy_ref_clk = devm_clk_get(dev, "phy_ref");

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
