Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 251C0C32771
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 07:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZyi+KLv1I2EBITLpvWgYZdo8ki+xF8p780hnPt192g=; b=CDjtooNM6qFPgb
	dtNOszU6UitVLmUyZ6/QwHemX8eZ8vBIrL9/NckGptSSAf+lzPHUHXbxInWKN+p1AH55ydDK0J9kW
	cCRIUlbhTNVOPuy8+PS76G2hAUMrHkSShWpwXvL9ZcZTqciIbm36YeNznUbRoNRRDWazyA1lXXxVT
	HxB85aVXr/oBFDc2yae73ZpSqWr0ri7okk09jXHd8ezCjyeHNLiXCfJiwncdWl0vImBKuwBPU2Qv9
	NU10w4t4wD1Url3SAhn5vxaxBtAXLnMh+6c3ZWuurnlpVTTl8vyy0jJXm2OUHjUUFVTFbk7JRpNn3
	4S8V6K5EVojkm8vWDe0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obzPg-006Yar-Is; Sat, 24 Sep 2022 07:17:24 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obzPd-006YZT-UX
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 07:17:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7BD20B80DB4;
	Sat, 24 Sep 2022 07:17:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E0ACC433C1;
	Sat, 24 Sep 2022 07:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664003839;
	bh=OofynfKNUNtBce3tQD8sgtjcGFvwIJCOJYj5t820y3k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sq9ekBFljOM8H2FSvks7FSE9Ybg8dzRTyD3Su72fXv/5ohNZKE2txBPUbdim/DRC1
	 Cn1oQxKq1rgiYEufvWKgZgaZz53LJFtQtImRYfhCLz4Nqxd4TIEwb3YaWLUb3EGOKd
	 kIPoEK0tdTfMvrMoOq+t/W09WHt4SYKr56JwHb3ixYgskmyDbmAS9ykPEYAzWoaiQ9
	 cBQ3yJ2hAkXX3kjL8AgrBTktujm7vqhJQlf3rlpckiEBQX+8dyxxEZo55IHL+lFcab
	 Is/bLkVGTiaHz8mpoHBXjLvlECVPpJ5Iiq0vIAeLPKMzUWTXiPX6dwePzNsBhtgui1
	 0lC/kiXv50i0g==
Date: Sat, 24 Sep 2022 12:47:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Haotien Hsu <haotienh@nvidia.com>
Cc: p.zabel@pengutronix.de, jckuo@nvidia.com, kishon@ti.com,
	thierry.reding@gmail.com, jonathanh@nvidia.com,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, Wayne Chang <waynec@nvidia.com>
Subject: Re: [PATCH] phy: tegra: xusb: Enable usb role switch attribute
Message-ID: <Yy6u+9x/oDo4Gd+F@matsya>
References: <20220921112500.798282-1-haotienh@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220921112500.798282-1-haotienh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_001722_163829_DB2D181D 
X-CRM114-Status: GOOD (  15.96  )
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

On 21-09-22, 19:25, Haotien Hsu wrote:
> From: Wayne Chang <waynec@nvidia.com>
> 
> This patch enables the usb-role-switch atrribute
> to have the user-space check current device role
> of otg cability ports

typo cability


You can use 72 chars for changelog rather than limiting at 50chars :-(

> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> Signed-off-by: Haotien Hsu <haotienh@nvidia.com>
> ---
>  drivers/phy/tegra/xusb.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
> index aa5237eacd29..220ab7719ade 100644
> --- a/drivers/phy/tegra/xusb.c
> +++ b/drivers/phy/tegra/xusb.c
> @@ -656,6 +656,7 @@ static int tegra_xusb_setup_usb_role_switch(struct tegra_xusb_port *port)
>  	struct usb_role_switch_desc role_sx_desc = {
>  		.fwnode = dev_fwnode(&port->dev),
>  		.set = tegra_xusb_role_sw_set,
> +		.allow_userspace_control = true,
>  	};
>  	int err = 0;
>  
> -- 
> 2.25.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
