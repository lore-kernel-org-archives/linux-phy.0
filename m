Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC5E6C6FD1D
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 11:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pnpw2eje8D5nxSXixcG6IUidjip0rdVacxG0B3eRjjI=; b=0uxJyXgGefHtgY
	hLqB4evG3RVG5HqazeDARymLV6IZXqM06q2JjyD0sNZbd4VHbzeQmuSDy3NQnB3J0VQwdSIuyvGrq
	6fSGZCEpPOC943+x0jNhoXBPhuAh22lBM7IDfr/u3Qgv2iOwUDBYZOvjpkZcbhMrhl5HaHHUl2p1q
	uHBYLc6QjE9CPDnikdpXMzsU++Oyr7gFbBcvPISHlxgctzbGLbgYPRkl7qDlJc+rn1gNRzGXbj/bP
	FLBRxv2ywPZP6/N1+7be5g+0LDEXK3u/j4gg/SoPkw5+SepD3KZX/OlmQPywDlRs+t8lXMZK73LPj
	XxnNhl2Z/4Caf25Ebtvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peDrJ-008qMm-1X;
	Mon, 20 Mar 2023 11:39:25 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peDrG-008qLg-0L;
	Mon, 20 Mar 2023 11:39:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BB29FB80E56;
	Mon, 20 Mar 2023 11:39:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3086C433D2;
	Mon, 20 Mar 2023 11:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679312359;
	bh=MvT8IT0Ss5u4BlpeMs3E5aK69DJP+3SRpjlmwQWHM/s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NFT3L/8DuTMbycnq+SKBGIWPGo3fU1ec9fsQoItM0ZlHxqfNMfXh+ah6sk5RrjV4/
	 dmJaLG3EfWZpoGY0WXBoLDuQLj3M/ZBcuMk3khWc38gIfzhj52Sc63nSx8Ug18C0Bx
	 LNnGTQx7OojkbvD/fOXPCRM7HgF84bv8Kext3AiNvjJGKUM0drGewFac+IU2jHZSOg
	 zHUEUyUbpb40byv/KGL7ZOs+LbmHFn46ANVGHXQn25u3O5iS9C8bqsDx2vUBRiSCQy
	 Htx5UGmta6hCTscglgW5gof5ldijB5w/BvWtDHWhV3FHL1F0vz7WYMkS+m1cuM3jHB
	 MLmTx80ecxkfQ==
Date: Mon, 20 Mar 2023 17:09:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: Use of_property_present() for testing DT property
 presence
Message-ID: <ZBhF4yia/FzkHy6y@matsya>
References: <20230310144720.1544600-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230310144720.1544600-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_043922_288457_775FF528 
X-CRM114-Status: GOOD (  19.13  )
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

On 10-03-23, 08:47, Rob Herring wrote:
> It is preferred to use typed property access functions (i.e.
> of_property_read_<type> functions) rather than low-level
> of_get_property/of_find_property functions for reading properties. As
> part of this, convert of_get_property/of_find_property calls to the
> recently added of_property_present() helper when we just want to test
> for presence of a property and nothing more.

Applied, thanks

> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/phy/allwinner/phy-sun4i-usb.c  | 2 +-
>  drivers/phy/broadcom/phy-bcm-ns-usb2.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
> index fbcd7014ab43..fc9f6fb447a0 100644
> --- a/drivers/phy/allwinner/phy-sun4i-usb.c
> +++ b/drivers/phy/allwinner/phy-sun4i-usb.c
> @@ -758,7 +758,7 @@ static int sun4i_usb_phy_probe(struct platform_device *pdev)
>  		return PTR_ERR(data->vbus_det_gpio);
>  	}
>  
> -	if (of_find_property(np, "usb0_vbus_power-supply", NULL)) {
> +	if (of_property_present(np, "usb0_vbus_power-supply")) {
>  		data->vbus_power_supply = devm_power_supply_get_by_phandle(dev,
>  						     "usb0_vbus_power-supply");
>  		if (IS_ERR(data->vbus_power_supply)) {
> diff --git a/drivers/phy/broadcom/phy-bcm-ns-usb2.c b/drivers/phy/broadcom/phy-bcm-ns-usb2.c
> index 6a36e187d100..269564bdf687 100644
> --- a/drivers/phy/broadcom/phy-bcm-ns-usb2.c
> +++ b/drivers/phy/broadcom/phy-bcm-ns-usb2.c
> @@ -107,7 +107,7 @@ static int bcm_ns_usb2_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  	usb2->dev = dev;
>  
> -	if (of_find_property(dev->of_node, "brcm,syscon-clkset", NULL)) {
> +	if (of_property_present(dev->of_node, "brcm,syscon-clkset")) {
>  		usb2->base = devm_platform_ioremap_resource(pdev, 0);
>  		if (IS_ERR(usb2->base)) {
>  			dev_err(dev, "Failed to map control reg\n");
> -- 
> 2.39.2

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
