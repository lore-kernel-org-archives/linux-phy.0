Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD115C77B75
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 18:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZve2cLYaBwPqUhW0qEwfOoQooxPPenFQ4IDYl7nono=; b=OFzZwLtcPdR1Q8
	SMTPz8Fv6BsdViLmHPaXGk+SFblN1m9A9mfKvP7GBL//n4y/8iFctHDl81TLvtB5iy5GPZ5h9Q6Zn
	y6l62n4ZZwdURM477SEf6NkInKpnibws98xwkBUl2oCKbopG4dZb46Lv84bYQepAVeNfgWl4r6zy7
	oFgRoVBMp6RQ7Ruwj1cqlu4LyVU5iMFYNAzrWF5WYQmaxtKVLLxzbWaKosaCYSUP9my2QrOSV02rj
	11PTykDoll4eTixS7LcfM9wG6tRkvU4P5WJTSGilkNe0NjKqCqIdAQYUk27EVxUNN2/1hZOgAlCJf
	+mS5UGtUvmWgtf2rJ63Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyzUJ-006m3v-0S;
	Tue, 16 May 2023 18:33:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyzUF-006m3J-0K
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 18:33:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B655F6306B;
	Tue, 16 May 2023 18:33:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE016C433D2;
	Tue, 16 May 2023 18:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684262005;
	bh=a7PTnqs0YEm7IsOGAlvOif0wre27TfjbZbHFQy0cnwU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rEa9im+Rl2Y/r0Y6FeNozIBqp5Zuk3+/eyERtBc0g5sI+ih30RXMoSsu+sN+tFfxj
	 9HYfjcxHwxe4tLNtYzuGQQKP7uJISNhwhIR5r940lyJs0DQ770/NPseu81MkSQ8tUS
	 AWipO7RjPqGElhY9WCcGeXysVrsGE74TCy7htWmf9XGXYaN7EDigzEZhkU0M+caz7S
	 xPDu42RfMh0+W81Ae7ymp1R40QOC7UBEcqeKuobuDrxg1sUwHIJIPoFumo6HONtOnc
	 KgFpGqblHmIDsVHvHFTry7WJwknjXOjeyjjgYlGV0LRUtIfMXxQ5EmPMyzTizphM3S
	 ECk+e3H1+1ENA==
Message-ID: <3c7d7d0b-b859-8921-952c-870c9474969c@kernel.org>
Date: Tue, 16 May 2023 21:33:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] phy: ti: gmii-sel: Allow parent to not be syscon node
Content-Language: en-US
To: Andrew Davis <afd@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230515195922.617243-1-afd@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230515195922.617243-1-afd@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_113327_201517_D13FFBA6 
X-CRM114-Status: GOOD (  20.35  )
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

Hi Andrew,

On 15/05/2023 22:59, Andrew Davis wrote:
> If the parent node is not a syscon type, then fallback and check
> if we can get a regmap from our own node. This no longer forces
> us to make the parent of this node a syscon node when that might
> not be appropriate.

Trying to understand the motive for this and if it is better to
introduce a "syscon = <&syscon_node>" property instead which
makes it fool proof for all cases.

> 
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---
>  drivers/phy/ti/phy-gmii-sel.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
> index 8c667819c39a..1e67ed9a5cf6 100644
> --- a/drivers/phy/ti/phy-gmii-sel.c
> +++ b/drivers/phy/ti/phy-gmii-sel.c
> @@ -435,9 +435,12 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
>  
>  	priv->regmap = syscon_node_to_regmap(node->parent);
>  	if (IS_ERR(priv->regmap)) {
> -		ret = PTR_ERR(priv->regmap);
> -		dev_err(dev, "Failed to get syscon %d\n", ret);
> -		return ret;
> +		priv->regmap = device_node_to_regmap(node);
> +		if (IS_ERR(priv->regmap)) {
> +			ret = PTR_ERR(priv->regmap);
> +			dev_err(dev, "Failed to get syscon %d\n", ret);
> +			return ret;
> +		}
>  	}
>  
>  	ret = phy_gmii_sel_init_ports(priv);

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
