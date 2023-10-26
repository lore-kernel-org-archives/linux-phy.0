Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED122C25B6F
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 11:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mZ6i7L5WdhtQ1iR7EkAWXYD8uI4GUwt8Ck4MaKFnk4=; b=hmlDZskwtCm0Ed
	w/3DXL46UJSh/bhIVLngVQ/HZgzMWQAKsG9IFoZj+dAmAt9kgD68CJRIviLHxzJ8+xASw80FquQ2Y
	+eBVB76TOl8BzTmyFH3aUklW4LFlS2XxNYb65DH0L72WXA1jLB3YVW4hz4IREucxmuBY/YJuAML0d
	H9AqCHZvM4yF4oBYRVFA3VV7p9iU43vTx/IrhiY6NfPoRH55OYRIaX94VGMuhKZDenm7p12+mHwsL
	DRZaGe7xl21/epu01DRghz9+FTYecr8h9+MikoX7Sp9p27wLd9w8+uekExLufKjIsqqCEQCOJuHKz
	f4gN1lVKEaTugcLnGeyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvyyM-00EOzx-2F;
	Thu, 26 Oct 2023 11:56:22 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvyyJ-00EOzC-2Y
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 11:56:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A955D63364;
	Thu, 26 Oct 2023 11:56:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7AAFC433C7;
	Thu, 26 Oct 2023 11:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698321378;
	bh=CENzIntdOf++JKgYOeR0qhTw1BcWJXALH8MVjPWUNDE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GUCkR0XemaTpB6vkMIzYXnE9fxKRgoiYG+fJWmXlPTursvmoOiHfmeAN9CuBtS6ud
	 GRwn4zNyW1Jruxx2dmg8tisROH5/YwccbrbDrXIISqD8Z+t2AZflKgI811bCVX8cpa
	 ie5YAGHeWk0C5OUc3ydTGBIcvK1Hxh6YgSykDEunn4X9fPRwjCo6RPCW3tB2XRw8Sc
	 4sbfkYtvJrRK/g0pxLG6ZXTQTbbYbzJ8jfC5XCSyEDXtPgWeP1RJztutu7o4S3hJ1D
	 rbd02d/wePI5LE0GYOzzOjQm/WTc6F62/HpkKzXfY1YuKP3ZpgptlDmM4Nvf1Jkwad
	 13YsEn22x84og==
Message-ID: <f09e7aab-f446-478f-b52e-0bb71b9fe2b3@kernel.org>
Date: Thu, 26 Oct 2023 14:56:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: ti: gmii-sel: Fix register offset when parent is not
 a syscon node
Content-Language: en-US
To: Andrew Davis <afd@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231025143302.1265633-1-afd@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20231025143302.1265633-1-afd@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_045619_892768_2AEF622D 
X-CRM114-Status: GOOD (  18.17  )
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



On 25/10/2023 17:33, Andrew Davis wrote:
> When the node for this phy selector is a child node of a syscon node then the
> property 'reg' is used as an offset into the parent regmap. When the node
> is standalone and gets its own regmap this offset is pre-applied. So we need
> to track which method was used to get the regmap and not apply the offset
> in the standalone case.
> 
> Fixes: 1fdfa7cccd35 ("phy: ti: gmii-sel: Allow parent to not be syscon node")
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---
>  drivers/phy/ti/phy-gmii-sel.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
> index 555b323f45da1..bc847d3879f79 100644
> --- a/drivers/phy/ti/phy-gmii-sel.c
> +++ b/drivers/phy/ti/phy-gmii-sel.c
> @@ -64,6 +64,7 @@ struct phy_gmii_sel_priv {
>  	u32 num_ports;
>  	u32 reg_offset;
>  	u32 qsgmii_main_ports;
> +	bool no_offset;
>  };
>  
>  static int phy_gmii_sel_mode(struct phy *phy, enum phy_mode mode, int submode)
> @@ -402,7 +403,8 @@ static int phy_gmii_sel_init_ports(struct phy_gmii_sel_priv *priv)
>  		priv->num_ports = size / sizeof(u32);
>  		if (!priv->num_ports)
>  			return -EINVAL;
> -		priv->reg_offset = __be32_to_cpu(*offset);

nit: new line before new 'if' block please.

> +		if (!priv->no_offset)
> +			priv->reg_offset = __be32_to_cpu(*offset);
>  	}
>  
>  	if_phys = devm_kcalloc(dev, priv->num_ports,
> @@ -471,6 +473,7 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
>  			dev_err(dev, "Failed to get syscon %d\n", ret);
>  			return ret;
>  		}
> +		priv->no_offset = true;
>  	}
>  
>  	ret = phy_gmii_sel_init_ports(priv);


Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
