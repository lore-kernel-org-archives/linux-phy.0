Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDA7EE7717F
	for <linux-phy@archiver.kernel.org>; Thu, 12 Dec 2024 10:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vh8QhRREpBaBa5qYljrbJCvb+GFOrDT0BiA391CRSoE=; b=Y++1yc/FbO6QNk
	TVWOZj7MuVNkpq6pyl828Gh5mDZdp3GWrb3uanX9lfEuZ+6MxtuMD/MM3UcBpDdjUiOv0BZUqyyIG
	6HqDJpYvNVjABN6bZYd8MKiEnk34iRqcXZYISDgWLGERED9tsFMlzQ1d0nZNx2nMmB1ph1xWZiDIC
	j1ofQbETzJOd/rOqfG4SUXZj1XOOD3kfBUKFmxJW+6YDeFElW/LQz8b53U9eBbhDNxowUp41ziMzW
	xXGBvGhnPVLLM1C5NA8lnAZo1NIzhjk3xaWxZvomxK6iNIKrTmpVBXTQUMcF3HSTN5AKs8yt7MlRh
	TKp6YLKXssFCtTdcGPjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLgms-000000006WW-0BzQ;
	Thu, 12 Dec 2024 10:51:18 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLgmo-000000006Vv-1il8
	for linux-phy@lists.infradead.org;
	Thu, 12 Dec 2024 10:51:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:From:
	Content-Type; bh=WDzF6CDPFIEH7vsVJrc4x+At6tYR36JR0eZT22LixOw=;
	b=Voo4vBvUtQJh66pGkvk3fkl6B1mL3zpUtwYZrQukMDdBHe05agGnYOLCHVdm9o
	j9DGvnTO9pl6xxiov6hW/6LRZCjq+Xp9Phe6IVC3WlBWrwAJmB76PB38xoGlNGYJ
	oUTMypXJTuT6hpxZztfLAFrxlAPdH5F2GMH+XAwXtJUB4=
Received: from [192.168.1.26] (unknown [])
	by gzga-smtp-mtada-g1-3 (Coremail) with SMTP id _____wD3r5oLwFpnyXJkAA--.15689S2;
	Thu, 12 Dec 2024 18:50:53 +0800 (CST)
Message-ID: <40473325-c896-4e81-9a12-8ac9eb54ad87@163.com>
Date: Thu, 12 Dec 2024 18:50:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: core: fix an OF node reference leak in _of_phy_get()
To: Joe Hattori <joe@pf.is.s.u-tokyo.ac.jp>, vkoul@kernel.org,
 kishon@kernel.org
Cc: linux-phy@lists.infradead.org
References: <20241212021110.3428320-1-joe@pf.is.s.u-tokyo.ac.jp>
Content-Language: en-US
From: Lk Sii <lk_sii@163.com>
In-Reply-To: <20241212021110.3428320-1-joe@pf.is.s.u-tokyo.ac.jp>
X-CM-TRANSID: _____wD3r5oLwFpnyXJkAA--.15689S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7KFy7Zr47XFW3JrW8Xr18Xwb_yoW8XryUpr
	ZrGFZ0yryFgF48Cw48Aw45WFWFvw4SqFWruFyxCw15ZF98J3Z7Cw1agryYvr45AFWrGryf
	Jr1DGFyFy3WDJw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UbtxDUUUUU=
X-Originating-IP: [183.195.1.156]
X-CM-SenderInfo: 5onb2xrl6rljoofrz/1tbiEw2zNWdatCvtEAAAsH
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_025114_882242_026560DC 
X-CRM114-Status: GOOD (  14.00  )
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

On 2024/12/12 10:11, Joe Hattori wrote:
> _of_phy_get() does not decrement the refcount of the obtained OF node in
> the error path. Add a of_node_put() call before returning.
> 
> This bug was found by an experimental static analysis tool that I am
> developing.
> 

Good tool.

this fix is same as my v1 fix below:
https://lore.kernel.org/all/20241020-phy_core_fix-v1-4-078062f7da71@quicinc.com/

My latest v5 patch series is here, and it has another OF leakage fix.
https://lore.kernel.org/all/20241106-phy_core_fix-v5-0-9771652eb88c@quicinc.com/

(^^).

> Fixes: b7563e2796f8 ("phy: work around 'phys' references to usb-nop-xceiv devices")
> Signed-off-by: Joe Hattori <joe@pf.is.s.u-tokyo.ac.jp>
> ---
>  drivers/phy/phy-core.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index f053b525ccff..bca303d51fd2 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -629,8 +629,10 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
>  		return ERR_PTR(-ENODEV);
>  
>  	/* This phy type handled by the usb-phy subsystem for now */
> -	if (of_device_is_compatible(args.np, "usb-nop-xceiv"))
> +	if (of_device_is_compatible(args.np, "usb-nop-xceiv")) {
> +		of_node_put(args.np);
>  		return ERR_PTR(-ENODEV);
> +	}
>  
>  	mutex_lock(&phy_provider_mutex);
>  	phy_provider = of_phy_provider_lookup(args.np);


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
