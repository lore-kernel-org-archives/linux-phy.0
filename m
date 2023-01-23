Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5269AC25B50
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 18:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=UVYBgMbX+CDaD53shLdTaou/LHHQrRpR6YS44vkK9e0=; b=48+NJc3S7Jdp6r
	lrfC6Keg34OBnLyAxWrNoU79YPmUG/+F5rMc+y6SgWk1HFa633VMyth/hlt6I/RyEJy2Lu1T2eC7e
	CJ52VuGdMyZPNR6EUVpNWsTKR6y2bATlVPz4CCdbRVplDCnf7L2L0TkOnu8LMEU7/AeM8YFOTy7Q+
	in7+O/+1mry+DEO3GxyUrePwrf1i52KML5fwEpOFutWqwNPt9GNaOb4BgeN5M51yPE3jRaqSId3dJ
	IuFlVNX/tINqg1/kFPvA7NP3gdZIlbP9T+VG+UsNJSJVLl1JelkSJRmo31364Q7AdMNj553CdYvpf
	/f6deedlXrhrhSWQuXtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK1O0-000zQv-Ok; Mon, 23 Jan 2023 18:17:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK1Np-000zOz-7F; Mon, 23 Jan 2023 18:17:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0057E60FF8;
	Mon, 23 Jan 2023 18:17:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A3E0C433D2;
	Mon, 23 Jan 2023 18:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674497847;
	bh=BZEO8SDQ8/Vkc7GQ657ERlWHgTSZADVcbO3BThEGNLM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=bvnB7JP4zU9lnf+VoRMzrNsdyd7+16HsB1fwP94Of3IPA0jZcb66ZfnY98IGJdI6J
	 KKIlByypjx8FdDgaSTMhSn3JyYOnmMMxdNQMxi8GIYtKijz0tqySBDGiO4acc8q/gb
	 1CNcSAUlamyofG8sGplSaaWK1MsMjbiNxJv9h/8fToxFisaH5hAfSUsxNwADRP5qpN
	 K5DG+eh7fTsr/nTX8rYTCqoo3MV7HY2sUrXEqRNQhdJZz73Hx/JpcSwuxd1go59U4Y
	 ve1gvHhBJoow4ZaZWGdSzIX5geABezwJGfTNv/N76WtY8e4HB03rKNSAJfT2a8CIZI
	 e7sXmSECDgWEw==
Date: Mon, 23 Jan 2023 12:17:25 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Madalin Bucur <madalin.bucur@nxp.com>,
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
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 5/7] PCI: tegra: Convert to devm_of_phy_optional_get()
Message-ID: <20230123181725.GA903141@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9e0aa207d531ccea00e8947678a4f6ce1c625ac.1674036164.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_101729_335979_519940B9 
X-CRM114-Status: GOOD (  18.56  )
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

On Wed, Jan 18, 2023 at 11:15:18AM +0100, Geert Uytterhoeven wrote:
> Use the new devm_of_phy_optional_get() helper instead of open-coding the
> same operation.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks!

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

Let me know if you want me to apply; otherwise I'll assume you will
merge along with the [1/7] patch.

> ---
>  drivers/pci/controller/pci-tegra.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/pci-tegra.c b/drivers/pci/controller/pci-tegra.c
> index 929f9363e94bec71..5b8907c663e516ad 100644
> --- a/drivers/pci/controller/pci-tegra.c
> +++ b/drivers/pci/controller/pci-tegra.c
> @@ -1330,12 +1330,9 @@ static struct phy *devm_of_phy_optional_get_index(struct device *dev,
>  	if (!name)
>  		return ERR_PTR(-ENOMEM);
>  
> -	phy = devm_of_phy_get(dev, np, name);
> +	phy = devm_of_phy_optional_get(dev, np, name);
>  	kfree(name);
>  
> -	if (PTR_ERR(phy) == -ENODEV)
> -		phy = NULL;
> -
>  	return phy;
>  }
>  
> -- 
> 2.34.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
