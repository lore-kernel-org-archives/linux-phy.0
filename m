Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77393E77188
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jan 2025 01:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3XSAPVJ3+0BbzqP9Q7oJP4yaThNYvPjbUQz/PCU8kE=; b=wJBXm/2d40sd5f
	S9tYbkaedquV2tyFZrc1USpEDxlBvXVNzmkKqdq6jgi2bf4VfyfV4wYNtPTx9xax57h+1PKmE/iG8
	WJbGRw7m20d1XVOn/hZg8Gxv4TJ7aEjpyaD32djOj6UzqwUi7Ej208QElAq2IkvNNPwLYd6b3Sggm
	bVDmRPZZF3JcMqegpehbkg3SM+NRacA+RNu6D3+ZZzsyop7xw3Y22glb9/gER2FZYr6Dw/TIIdzB3
	DgEmPBiajVCLsd7SeVBeLNfLzgZbctjU9XUPBgrPpQ6yr2aYCjToBjFMuSigrXbQyfueGS9ewmrwo
	7hDCYJRtu1whA0xgP56A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVhgB-0000000ALoS-1eD2;
	Thu, 09 Jan 2025 01:49:47 +0000
Received: from mail-m11876.qiye.163.com ([115.236.118.76])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVhg8-0000000ALnK-15oO
	for linux-phy@lists.infradead.org;
	Thu, 09 Jan 2025 01:49:46 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 828b5f6b;
	Thu, 9 Jan 2025 09:49:33 +0800 (GMT+08:00)
Message-ID: <a2c62be6-7668-4bb9-96f8-cec60c25e9a2@rock-chips.com>
Date: Thu, 9 Jan 2025 09:49:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: core: don't require set_mode() callback for
 phy_get_mode() to work
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250107-phy-fix-set-moe-v1-1-b3dfe9391672@linaro.org>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20250107-phy-fix-set-moe-v1-1-b3dfe9391672@linaro.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxhLTVZKHR1PTksfH05NHh5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9448c0a9ee03a3kunm828b5f6b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Oj46ESo*DDIKNRUQDhBRSRkr
	LQ0KFC1VSlVKTEhNSENMSExPT0hOVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKTUlLNwY+
DKIM-Signature: a=rsa-sha256;
	b=eWj9OrvfUkIYzkHYl4Vd5A3cWzdgoeIISARqy3R8RuCAwPwhqKCBFoqWDWgwyy98EpbCO5I2XonGNOhxwkxA6xs7OaHizg/vBfwGeLh8Ii0qltEtds821weIB5xKDs6gAPiXbO0YEQJoYcaB7X/TrvX+igekv9CZgiSK5oJgVK0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=UgOq+7PNvG9ZKcvlhMZc4sO7NHiPlyLjwvrCDhqXlCI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_174944_824414_60079491 
X-CRM114-Status: GOOD (  14.24  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2025/1/7 19:34, Dmitry Baryshkov wrote:
> As reported by Diamond Ding, the phy_get_mode() call doesn't work as
> expected unless the PHY driver has a .set_mode() call. This prompts PHY
> drivers to have empty stubs for .set_mode() for the sake of being able
> to get the mode.
> 
> Make .set_mode() callback truly optional and update PHY's mode even if
> it there is none.
> 
> Cc: Damon Ding <damon.ding@rock-chips.com>
> Link: https://lore.kernel.org/r/96f8310f-93f1-4bcb-8637-137e1159ff83@rock-chips.com
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/phy/phy-core.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 8dfdce605a905d7f38205727151258af41f807a9..067316dfcd83a6fc8428cddd27d3b7ebfc270831 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -405,13 +405,14 @@ EXPORT_SYMBOL_GPL(phy_power_off);
>   
>   int phy_set_mode_ext(struct phy *phy, enum phy_mode mode, int submode)
>   {
> -	int ret;
> +	int ret = 0;
>   
> -	if (!phy || !phy->ops->set_mode)
> +	if (!phy)
>   		return 0;
>   
>   	mutex_lock(&phy->mutex);
> -	ret = phy->ops->set_mode(phy, mode, submode);
> +	if (phy->ops->set_mode)
> +		ret = phy->ops->set_mode(phy, mode, submode);
>   	if (!ret)
>   		phy->attrs.mode = mode;
>   	mutex_unlock(&phy->mutex);
> 
> ---
> base-commit: 7b4b9bf203da94fbeac75ed3116c84aa03e74578
> change-id: 20250107-phy-fix-set-moe-d275cff5e27b

Tested-by: Damon Ding <damon.ding@rock-chips.com>

Best regards
Damon


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
