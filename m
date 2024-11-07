Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6A4CD29FBC
	for <linux-phy@archiver.kernel.org>; Thu,  7 Nov 2024 01:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqfqofWTXiCx9zlpRqXhvX2i+qetEPlSzbQptd1FZRM=; b=OHGpMFF9sMXPO0
	zNGKp3GHaTd2x1I3pAVG1mnYoodGiPHi2d0x5JYODobQ7fmSZZF1mFQbtWnEq7oIg4YOudg5PBkXv
	AtEjCmAhNiKXvys0gDM3iPsfQD8Eg8ph5vfp+i7u9rswQJBgxx0cu42GO2ujf9aAf0u8PWVvfjqPh
	K4KOpeCPwQnH3iL/TqIr8NrQ4zzMVE6z/uTeYiHM54+6cWUl8n40AVYbp+jsJgVec0XWBRWOTiHt+
	ZgLsuaizoaPP+mCFfCHe5ctcgVYzJtVu3dKh00Ty8PoztftaUxSH7cMYIqBhoemsSMjdniNYEV/HW
	KHeNCJ4YvVqT5wZMjvIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8rJZ-00000005Gg7-42kC;
	Thu, 07 Nov 2024 01:28:01 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8rJX-00000005Gfb-23rO
	for linux-phy@lists.infradead.org;
	Thu, 07 Nov 2024 01:28:01 +0000
Received: from mail.maildlp.com (unknown [172.19.88.163])
	by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4XkPXv3c7fz1SCCT;
	Thu,  7 Nov 2024 09:26:07 +0800 (CST)
Received: from kwepemg200008.china.huawei.com (unknown [7.202.181.35])
	by mail.maildlp.com (Postfix) with ESMTPS id E4F07180042;
	Thu,  7 Nov 2024 09:27:49 +0800 (CST)
Received: from [10.67.109.254] (10.67.109.254) by
 kwepemg200008.china.huawei.com (7.202.181.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Thu, 7 Nov 2024 09:27:49 +0800
Message-ID: <ee6521c6-9038-ab16-0773-c9425aae54fd@huawei.com>
Date: Thu, 7 Nov 2024 09:27:48 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH v2] phy: ocelot-serdes: Fix IS_ERR() vs NULL bug in
 serdes_probe()
Content-Language: en-US
To: <vkoul@kernel.org>, <kishon@kernel.org>, <krzysztof.kozlowski@linaro.org>,
	<florian.fainelli@broadcom.com>, <colin.foster@in-advantage.com>,
	<davem@davemloft.net>, <linux-phy@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
References: <20241101061145.2282501-1-ruanjinjie@huawei.com>
From: Jinjie Ruan <ruanjinjie@huawei.com>
In-Reply-To: <20241101061145.2282501-1-ruanjinjie@huawei.com>
X-Originating-IP: [10.67.109.254]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemg200008.china.huawei.com (7.202.181.35)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_172759_723530_537B5B99 
X-CRM114-Status: GOOD (  13.80  )
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

Gentle ping.

On 2024/11/1 14:11, Jinjie Ruan wrote:
> dev_get_regmap() call can return a null pointer. It will not return
> error pointers. Thus apply a null pointer check instead.
> 
> Cc: stable@vger.kernel.org
> Fixes: 672faa7bbf60 ("phy: phy-ocelot-serdes: add ability to be used in a non-syscon configuration")
> Acked-by: Colin Foster <colin.foster@in-advantage.com>
> Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
> ---
> v2:
> - Add Acked-by.
> - Update the commit message as Markus suggested.
> ---
>  drivers/phy/mscc/phy-ocelot-serdes.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/mscc/phy-ocelot-serdes.c b/drivers/phy/mscc/phy-ocelot-serdes.c
> index 1cd1b5db2ad7..77ca67ce6e91 100644
> --- a/drivers/phy/mscc/phy-ocelot-serdes.c
> +++ b/drivers/phy/mscc/phy-ocelot-serdes.c
> @@ -512,8 +512,8 @@ static int serdes_probe(struct platform_device *pdev)
>  						    res->name);
>  	}
>  
> -	if (IS_ERR(ctrl->regs))
> -		return PTR_ERR(ctrl->regs);
> +	if (!ctrl->regs)
> +		return -EINVAL;
>  
>  	for (i = 0; i < SERDES_MAX; i++) {
>  		ret = serdes_phy_create(ctrl, i, &ctrl->phys[i]);

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
