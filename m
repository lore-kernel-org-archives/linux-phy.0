Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83441C61DA4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 05:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asD+1g9NIHtsx9iRQjM+4aaVTLz/MN/8GBZQes6kA0Y=; b=XWmHQwU5bmFd72
	8qEauIej3zTxzOjUafAdKr46G4zt6v7EKX2+QRMpA9MjdxV/PlB529rabKJKRGUN6EyQNc/2cX9Ll
	1FF3h9SpCtaLIpL6Y/mjTeiavhff/I2hJ6B02ZmoUdseVnnFS59Uazevliq6vX8SBFTup82SAf5/6
	ux4/wtlkMQB4IFa548IRDrt0BFHFZmyk5EIHz2yO7ZId6nYptSgZuRzCvJgLS93oYyyQa4GSPB7+k
	V1o24wA3d+g7YADxzBZaTO0mZ1HQZPrSiP8ZLNFIAycE0ZpdMZzGVBcqGawp5yjaEOzg+lDSa7YQ6
	RvMcEgj6mpzrEGxUpfIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNobv-000RiO-VO; Fri, 03 Feb 2023 05:27:43 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNobm-000RgX-ER; Fri, 03 Feb 2023 05:27:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D78BEB82973;
	Fri,  3 Feb 2023 05:27:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95D55C433EF;
	Fri,  3 Feb 2023 05:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675402051;
	bh=fHq9IkxqxVUwz3GGvOE/Mwt4EK7elXIC9jlHvqcrh8s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b8aDl1NIsRsl5BjZTgbUD7FGwU0exrjPdV5CSous9UsW/GkGSVWtwdmywNbhtc1vP
	 qD9wUxbxs4lj9ObsBx32KTRRww8VYUVzr6hON2oshLd7CP5vusl+YUfCsiAkfcSbSw
	 7Z6mei8DcZOM3Ehye2TfF33alKtXhQjfgRng4kstNIvCyfoPX98cySlNoZWzbVFS2d
	 cor3Ij5NklP1JiZI+8k/udVX0Y6uJoq2kDnY3bYNBFzIO3aheHu2zWc5I9WQSve3bl
	 0dJycH5YhwSy/+uaptRsgK8hnl4CyBZ+y01J2rNUqcZt8yXiLMgEcbaeqXlcGIi7ry
	 TS2czWrz8ECfQ==
Date: Fri, 3 Feb 2023 10:57:26 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Jonathan Corbet <corbet@lwn.net>, Madalin Bucur <madalin.bucur@nxp.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Thierry Reding <thierry.reding@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Russell King <linux@armlinux.org.uk>, linux-phy@lists.infradead.org,
	linux-doc@vger.kernel.org, netdev@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v2 6/9] net: ethernet: ti: am65-cpsw: Convert to
 devm_of_phy_optional_get()
Message-ID: <Y9ybPmWub43JpMUb@matsya>
References: <cover.1674584626.git.geert+renesas@glider.be>
 <3d612c95031cf5c6d5af4ec35f40121288a2c1c6.1674584626.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d612c95031cf5c6d5af4ec35f40121288a2c1c6.1674584626.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_212734_791887_EE9DAE6C 
X-CRM114-Status: GOOD (  20.80  )
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

On 24-01-23, 19:37, Geert Uytterhoeven wrote:
> Use the new devm_of_phy_optional_get() helper instead of open-coding the
> same operation.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - Rebase on top of commit 854617f52ab42418 ("net: ethernet: ti:
>     am65-cpsw: Handle -EPROBE_DEFER for Serdes PHY") in net-next
>     (next-20230123 and later).

I was trying to apply this on rc1, so ofcourse this fails for me? How do
we resolve this?

I can skip this patch, provide a tag for this to be pulled into -net
tree

> ---
>  drivers/net/ethernet/ti/am65-cpsw-nuss.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
> index c696da89962f1ae3..794f228c8d632f7a 100644
> --- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
> +++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
> @@ -1460,11 +1460,9 @@ static int am65_cpsw_init_serdes_phy(struct device *dev, struct device_node *por
>  	struct phy *phy;
>  	int ret;
>  
> -	phy = devm_of_phy_get(dev, port_np, name);
> -	if (PTR_ERR(phy) == -ENODEV)
> -		return 0;
> -	if (IS_ERR(phy))
> -		return PTR_ERR(phy);
> +	phy = devm_of_phy_optional_get(dev, port_np, name);
> +	if (IS_ERR_OR_NULL(phy))
> +		return PTR_ERR_OR_ZERO(phy);
>  
>  	/* Serdes PHY exists. Store it. */
>  	port->slave.serdes_phy = phy;
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
