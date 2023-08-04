Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0E6FC0015E
	for <linux-phy@archiver.kernel.org>; Fri,  4 Aug 2023 01:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5nJDWRIblpY0TXxot4Wp7KduU2Byghp9pTJeiz2JsLU=; b=XHIg/15Fw5Jp/a
	nzLtJ+cbs3FUTFTGApAy6iB01zGnw1iEMfWYKeBXyo6bRZ6UN0QSEaSM7EuoSKA8heXxjuzU1d+cb
	pxK9a7JOxUqu1dABuk5NxXdAj3qrlQvFISYJyPSpE0R+DF2BTADR2br+nuQD18gKJUqTb3H5VdDEr
	xlogy8h3ThD6/uYGq9O13henzNHjztcMgakIImP7wAYUK5F/FaX+ydUaCSQCkylru72aWBL/yiN6H
	V9oAvvL641DSkgEbDP/1A1Z9IYQucqpiv85bxyaDZ5561WQzQx4ZEaQndM/n67paDMnxqTTKbrNc9
	CG5vpFQTSk15+w0t7gSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRjS3-00BDi8-1S;
	Fri, 04 Aug 2023 01:17:59 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRjS1-00BDhj-16
	for linux-phy@lists.infradead.org;
	Fri, 04 Aug 2023 01:17:58 +0000
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.56])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RH76B2sNzzNmkR;
	Fri,  4 Aug 2023 09:14:26 +0800 (CST)
Received: from [10.67.109.254] (10.67.109.254) by
 kwepemi500008.china.huawei.com (7.221.188.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 09:17:52 +0800
Message-ID: <044de607-19b5-9a64-abee-1f075b35ed7b@huawei.com>
Date: Fri, 4 Aug 2023 09:17:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH -next] phy: realtek: usb: Drop unnecessary error check for
 debugfs_create_dir
Content-Language: en-US
To: <vkoul@kernel.org>, <kishon@kernel.org>, <gregkh@linuxfoundation.org>,
	<stanley_chang@realtek.com>, <linux-phy@lists.infradead.org>
References: <20230728062734.3398852-1-ruanjinjie@huawei.com>
From: Ruan Jinjie <ruanjinjie@huawei.com>
In-Reply-To: <20230728062734.3398852-1-ruanjinjie@huawei.com>
X-Originating-IP: [10.67.109.254]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_181757_546222_5F8FFB39 
X-CRM114-Status: GOOD (  12.19  )
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

Ping.

On 2023/7/28 14:27, Ruan Jinjie wrote:
> This patch removes the error checking for debugfs_create_dir in
> phy-rtk-usb2.c and phy-rtk-usb3.c. This is because the debugfs_create_dir()
> does not return NULL but an ERR_PTR after an error.
> 
> The DebugFS kernel API is developed in a way that the caller can safely
> ignore the errors that occur during the creation of DebugFS nodes.
> The debugfs APIs have a IS_ERR() judge in start_creating() which can
> handle it gracefully. so these checks are unnecessary.
> 
> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
> ---
>  drivers/phy/realtek/phy-rtk-usb2.c | 2 --
>  drivers/phy/realtek/phy-rtk-usb3.c | 2 --
>  2 files changed, 4 deletions(-)
> 
> diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
> index ed47a1ce5d9c..715cd9480347 100644
> --- a/drivers/phy/realtek/phy-rtk-usb2.c
> +++ b/drivers/phy/realtek/phy-rtk-usb2.c
> @@ -853,8 +853,6 @@ static inline void create_debug_files(struct rtk_phy *rtk_phy)
>  
>  	rtk_phy->debug_dir = debugfs_create_dir(dev_name(rtk_phy->dev),
>  						phy_debug_root);
> -	if (!rtk_phy->debug_dir)
> -		return;
>  
>  	if (!debugfs_create_file("parameter", 0444, rtk_phy->debug_dir, rtk_phy,
>  				 &rtk_usb2_parameter_fops))
> diff --git a/drivers/phy/realtek/phy-rtk-usb3.c b/drivers/phy/realtek/phy-rtk-usb3.c
> index 6050f1ef4f6b..6d726926607a 100644
> --- a/drivers/phy/realtek/phy-rtk-usb3.c
> +++ b/drivers/phy/realtek/phy-rtk-usb3.c
> @@ -416,8 +416,6 @@ static inline void create_debug_files(struct rtk_phy *rtk_phy)
>  		return;
>  
>  	rtk_phy->debug_dir = debugfs_create_dir(dev_name(rtk_phy->dev), phy_debug_root);
> -	if (!rtk_phy->debug_dir)
> -		return;
>  
>  	if (!debugfs_create_file("parameter", 0444, rtk_phy->debug_dir, rtk_phy,
>  				 &rtk_usb3_parameter_fops))

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
