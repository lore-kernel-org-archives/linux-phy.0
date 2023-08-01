Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87030C04A94
	for <linux-phy@archiver.kernel.org>; Tue,  1 Aug 2023 01:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNPw/cvIcaTBQULTq7zNYiJBpoSmgg6PPqRSt886zvg=; b=4cdSQs6V/CShhP
	BzBL6LOyqE6KGUerdM6eCLD3KNKjh+a61RpqADqmXErQzjlsPzioszea/O2bgDFutemd6PKbG/Adl
	TyoRVz/lPscfaxAx8ACgR8T8STlL6wE73YkMKFoq3ZwUSVTxPkHaDmUyVkhkVztIknATjU1lUJhyk
	iDR2Ndshd5F+a4X7PTZKRDv2LLrRapqd6PT9ZoMOWp9gN7A8mxHJT8LxfC5nM70A+m8vQyxa5t4iB
	18Po/6FJaTQtWSi6/MfgkOX2JRulWmlop+gOKL+TATSsjmFL1IqUxlODzt59NQyabqkdO3es/XdkZ
	Vq5xMiMAWGZj2z0kb/Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQe5k-0008FD-0J;
	Tue, 01 Aug 2023 01:22:28 +0000
Received: from fd01.gateway.ufhost.com ([61.152.239.71])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQe5g-0008BI-1D
	for linux-phy@lists.infradead.org;
	Tue, 01 Aug 2023 01:22:27 +0000
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 7EE917FD3;
	Tue,  1 Aug 2023 09:21:37 +0800 (CST)
Received: from EXMBX062.cuchost.com (172.16.6.62) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 1 Aug
 2023 09:21:37 +0800
Received: from [192.168.125.107] (183.27.98.54) by EXMBX062.cuchost.com
 (172.16.6.62) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 1 Aug
 2023 09:21:36 +0800
Message-ID: <c03886ed-f39e-09c4-6435-7a0e63341da7@starfivetech.com>
Date: Tue, 1 Aug 2023 09:21:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] MAINTAINERS: correct file entry in STARFIVE JH7110 DPHY
 RX DRIVER
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Jack Zhu
	<jack.zhu@starfivetech.com>, Minda Chen <minda.chen@starfivetech.com>, "Vinod
 Koul" <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	<linux-phy@lists.infradead.org>
CC: <kernel-janitors@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20230731114856.14401-1-lukas.bulwahn@gmail.com>
Content-Language: en-US
From: Changhuang Liang <changhuang.liang@starfivetech.com>
In-Reply-To: <20230731114856.14401-1-lukas.bulwahn@gmail.com>
X-Originating-IP: [183.27.98.54]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX062.cuchost.com
 (172.16.6.62)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_182224_613769_FC89DEA1 
X-CRM114-Status: GOOD (  11.41  )
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



On 2023/7/31 19:48, Lukas Bulwahn wrote:
> Commit f8aa660841bc ("phy: starfive: Add mipi dphy rx support") adds the
> MAINTAINERS section STARFIVE JH7110 DPHY RX DRIVER referring to
> 'phy-starfive-dphy-rx.c', but the file actually added in this commit is
> named 'phy-jh7110-dphy-rx.c'.
> 
> Correct the file entry in STARFIVE JH7110 DPHY RX DRIVER.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Thank you for your correcting.

Reviewed-by: Changhuang Liang <changhuang.liang@starfivetech.com>

Thanks,
Changhuang

> ---
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 733bcfa0209a..003b0461641a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20345,7 +20345,7 @@ M:	Jack Zhu <jack.zhu@starfivetech.com>
>  M:	Changhuang Liang <changhuang.liang@starfivetech.com>
>  S:	Supported
>  F:	Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
> -F:	drivers/phy/starfive/phy-starfive-dphy-rx.c
> +F:	drivers/phy/starfive/phy-jh7110-dphy-rx.c
>  
>  STARFIVE JH7110 MMC/SD/SDIO DRIVER
>  M:	William Qiu <william.qiu@starfivetech.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
