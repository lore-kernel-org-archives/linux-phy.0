Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8A48C02180
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 21:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jYWosftxO8CpkaPMPCTn5ZEs6paBcQ6H68nHwmBgXGE=; b=k8WjlVBS8TaQ0t
	Vm9HYEULxxlt+dsJIOMFm+NRIPD9r1JRbDP57qS/jUCXVnhbOYXWWSdbSbFxLGThfUPvIfPT7idTl
	Yv9Tu+uF6iuHXbG3BTwaaoquzhXO+HIGB1tcLShCQZtJSOrb0wm5R0Frz6PKv0MHVvY5iENi4h+ep
	QB1SxEIBoc691bUYfZovf6hKP4KheMGfLULT5JtKlDSsnhmkhfM4gKlZBaOddSjAUm28Cuxypcrf4
	cTSzf3IZ4AvR6cKNQghK1FSK1S2eNV20nqiABSYGYe7F1mXmtWWF5nBWEErpuUBROsNSkaSiRnb5/
	P8Bz7Yk+CzHWSw7S2i3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXSGL-00000006iWa-48NS;
	Mon, 13 Jan 2025 21:46:21 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXSGJ-00000006iV8-0Nuf
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 21:46:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1736804776;
 bh=+p3HjcTPs6cUGhlZ08w+IM+7oSzoEOQFMQB2ubcEu1k=;
 b=haS6i7qiFGlb4OflBSu0Eab3+0Rv/nUYP6T5++9RpNbPa4fyv2EqGz+jLlBab2TpgUUc4DN28
 Wz3naM4LBwWb4Lsq9mK88uATL2JYwZ2bOAMdRbU6KAxvKSaU3c4WjZjVQp5oyDUM9i6n+5AkyYx
 ETy3s9yHN4tdES6We1jdigY7+4zNkSGczWtMrON3HiOJzYcVd6dhuF/uxALmanHGiy/NOHf0JPW
 Q5CqwR3teJiHgarqu0BgL3V1ovYJ2olc7J1MZvclCYdV6nAC+9yoa9uKOiBJWQ6HaGdTV4rCpGu
 sFuD+8lyNS+67JoSfXrR6qGwcvOwbP11UYTvq+h4iWVw==
X-Forward-Email-ID: 6785899ca2e821240c331f5b
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <df8e0ff8-355b-4c18-9349-0f04ae16e01b@kwiboo.se>
Date: Mon, 13 Jan 2025 22:45:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] phy: rockchip: naneng-combphy: compatible reset
 with old DT
To: Vinod Koul <vkoul@kernel.org>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Jianfeng Liu <liujianfeng1994@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250106100001.1344418-1-amadeus@jmu.edu.cn>
 <20250106100001.1344418-2-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250106100001.1344418-2-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_134619_476861_90873F5D 
X-CRM114-Status: GOOD (  15.26  )
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

Hi Vinod,

On 2025-01-06 11:00, Chukun Pan wrote:
> The device tree of RK3568 did not specify reset-names before.
> So add fallback to old behaviour to be compatible with old DT.
> 
> Fixes: fbcbffbac994 ("phy: rockchip: naneng-combphy: fix phy reset")

The commit fbcbffbac994 ("phy: rockchip: naneng-combphy: fix phy reset")
broke backwards compatibly with old DTs and has already been backported
breaking i.e. PCIe and USB on Rockchip RK356x boards on stable and
longterm kernels.

E.g with v6.12.9 on a Radxa ROCK 3A (RK3568) board:

  rockchip-naneng-combphy fe830000.phy: error -ENOENT: failed to get phy reset
  rockchip-naneng-combphy fe830000.phy: probe with driver rockchip-naneng-combphy failed with error -2
  rockchip-naneng-combphy fe840000.phy: error -ENOENT: failed to get phy reset
  rockchip-naneng-combphy fe840000.phy: probe with driver rockchip-naneng-combphy failed with error -2
  rockchip-naneng-combphy fe820000.phy: error -ENOENT: failed to get phy reset
  rockchip-naneng-combphy fe820000.phy: probe with driver rockchip-naneng-combphy failed with error -2

  # cat /sys/kernel/debug/devices_deferred
  3c0000000.pcie  platform: supplier fe840000.phy not ready
  fcc00000.usb    platform: supplier fe820000.phy not ready
  fd000000.usb    platform: supplier fe830000.phy not ready

Please revert the commit fbcbffbac994 ("phy: rockchip: naneng-combphy:
fix phy reset") or merge this patch to restore PCIe and USB RK356x.

> Cc: Jianfeng Liu <liujianfeng1994@gmail.com>
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>

With this patch PCIe and USB start working again on same board.

Reviewed-by: Jonas Karlman <jonas@kwiboo.se>

Regards,
Jonas

> ---
>  drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> index a1532ef8bbe9..8c3ce57f8915 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -324,7 +324,10 @@ static int rockchip_combphy_parse_dt(struct device *dev, struct rockchip_combphy
>  
>  	priv->ext_refclk = device_property_present(dev, "rockchip,ext-refclk");
>  
> -	priv->phy_rst = devm_reset_control_get(dev, "phy");
> +	priv->phy_rst = devm_reset_control_get_exclusive(dev, "phy");
> +	/* fallback to old behaviour */
> +	if (PTR_ERR(priv->phy_rst) == -ENOENT)
> +		priv->phy_rst = devm_reset_control_array_get_exclusive(dev);
>  	if (IS_ERR(priv->phy_rst))
>  		return dev_err_probe(dev, PTR_ERR(priv->phy_rst), "failed to get phy reset\n");
>  


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
