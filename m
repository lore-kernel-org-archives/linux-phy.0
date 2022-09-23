Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FC5AECAAD8
	for <linux-phy@archiver.kernel.org>; Fri, 23 Sep 2022 08:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rl8CDMyNF0loA6tIy1mW0sc0+FZ4ItMcNAMkShHZCLQ=; b=HYJn4N7DmCHXED
	Ls5/tbUChK2xayKIbdVSszvCYt2P0YO/6jj25l/eU7fjxywvtQNy5iuziZyWQpGKjVGgDrcBFsTV5
	9dVRUoAJvzWumu0mwSyIuUvOXJzwILuwQKcxOezcyDyWWczEBzsRlEaZdAen4GUvtIfNwMY6RhKU3
	KszHvuuhcKu/nrxqUwbcA/VmRgubLBgCT3aGwnyApWfC0h0Ugp0PN6EgLMlEAhop738RGM1MvbJWt
	p/9PcIgrK+wIflaheI3W71wKHNDc9I1UiLsSfr9vNcipdQ153txpWoxa9qvS1cqbaXsnnpszayCHY
	akrvAhaXVUhsaPhC3q1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obeVg-0036lh-Ef; Fri, 23 Sep 2022 08:58:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obeVd-0036jd-TP
	for linux-phy@lists.infradead.org; Fri, 23 Sep 2022 08:58:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 79440611E3;
	Fri, 23 Sep 2022 08:58:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEE95C433C1;
	Fri, 23 Sep 2022 08:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663923486;
	bh=BgKVREHg5OpngvRNOlXi5PLKFAxqE0nOa1LwtGxKtOM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jbIsuQD8tcbhgx5o3LMD/9n5krtarNX2QFJ70ACjyF45Fe+N5gOA0mu/ysUjCKig+
	 9HdoGdYgGKrv+WHn6NJ3A+cxGZrPTnyrs8VyMstdzJeoWnMp6WSfwKbKHnR09dq99S
	 GAVQoI7+4yyts0eXfryhzdzU8FDGK3gblbm+TSTC/M9Ro5V2fUMFsTs40Yd7+06MxP
	 C8PkF/jakJhB6o1i8vA1agXh2c5rWCHxz2c8YBK7DCE66dr2bOewNTbSSmPsp54SrG
	 8hYwYQpaawW79BdzMetmx4o+8AGIn7Br2pKEGDkj/dgmfYkHakkRcF9WdcJMH4EN2j
	 FCYX8hQGbe+FQ==
Message-ID: <d3b8754e-f888-5bef-c6c3-16c42c598421@kernel.org>
Date: Fri, 23 Sep 2022 11:58:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH] phy: ti: phy-j721e-wiz: fix reference leaks in
 wiz_probe()
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Jyri Sarha <jsarha@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>, Tanmay Patil <t-patil@ti.com>,
 linux-phy@lists.infradead.org, kernel-janitors@vger.kernel.org
References: <YyxFI8aW23IC/21U@kili>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <YyxFI8aW23IC/21U@kili>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_015810_010946_C9471B87 
X-CRM114-Status: GOOD (  15.87  )
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



On 22/09/2022 14:21, Dan Carpenter wrote:
> These two error paths need to call of_node_put(child_node) before
> returning.
> 
> Fixes: edd473d4293a ("phy: ti: phy-j721e-wiz: add support for j7200-wiz-10g")
> Fixes: 7ae14cf581f2 ("phy: ti: j721e-wiz: Implement DisplayPort mode to the wiz driver")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

> ---
>  drivers/phy/ti/phy-j721e-wiz.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
> index 20af142580ad..438ccce3d1bf 100644
> --- a/drivers/phy/ti/phy-j721e-wiz.c
> +++ b/drivers/phy/ti/phy-j721e-wiz.c
> @@ -1400,7 +1400,8 @@ static int wiz_probe(struct platform_device *pdev)
>  	if (IS_ERR(wiz->scm_regmap)) {
>  		if (wiz->type == J7200_WIZ_10G) {
>  			dev_err(dev, "Couldn't get ti,scm regmap\n");
> -			return -ENODEV;
> +			ret = -ENODEV;
> +			goto err_addr_to_resource;
>  		}
>  
>  		wiz->scm_regmap = NULL;
> @@ -1450,7 +1451,7 @@ static int wiz_probe(struct platform_device *pdev)
>  
>  	ret = wiz_get_lane_phy_types(dev, wiz);
>  	if (ret)
> -		return ret;
> +		goto err_addr_to_resource;
>  
>  	wiz->dev = dev;
>  	wiz->regmap = regmap;

cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
