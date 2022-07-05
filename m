Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E958FC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 06:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZPAV4trdi8BWyfRH5youZmhG5+vpkWL1Vypuso6z6I=; b=GcaAD3B92sxpS3
	Xsn7QoICuqB6bNv++BFN/oraodic8mVwIx9K3ahiJuITVJBwaNzmLGu39g9IrNjFhL5UtN4alzv3J
	VDEdQ+5lAc+P4seg9Ib+DMEVK9u71+2wj/XnWwa4UemhgkmsFXnj17K3CLJFewiGOy367/etmUJuz
	fj5BBpmgMR8uiDVwCCTJJjXSeiHcqgar3QfcQ8sophlkwqOQaGyPx6umN+ON92Ec+oCQ4Yw/OmjUP
	E+mf3VN66S+/MNrS4g52GS+H1nrWNGEZcbdU95Yh41ZSw+15SomKlLvjxonFeTFDJIulr64K1j/ou
	l0CNM9UIs2LwPgkeyAOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8c08-00EzBz-7u; Tue, 05 Jul 2022 06:25:36 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8c03-00Ez8i-MM
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 06:25:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 438ACCE1269;
	Tue,  5 Jul 2022 06:25:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E58FC341C7;
	Tue,  5 Jul 2022 06:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657002327;
	bh=gT9vnVWwfoaHB/KlAQfPukD6zbCjQfi0xC2TgLz8Ixg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QQiyORgpEmTuZ7hRd4rpivPxBCRE9sZIIC3psJ10k8AnU9FSkYEBIWeO6oHhY+2bT
	 gOWu9onqD66WfCeviF8oHCZ4jqy2FvULccPniYlVH80npXuF+UKUaum0uGZlqKjRWu
	 75jMaHvqwZFIP0EhiwBoBVV6lF+8Vs6WCE+ZVxQKZp6rHFOkbdsKvA3DQpCp9Zv9iV
	 fDEDKGK6y+u12lk2sLoWMg61Kx7XNzlNm177NRMQVvo2VoxDUoWeqEopmswjhyzomu
	 LJDeH7sOhMyyk1OreB6khpri975grUltDUHjZ3AfmQ5Zz1G3sN4uFrXHoebb9NyyBr
	 ZCFrhwe33Aslg==
Date: Tue, 5 Jul 2022 11:55:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-pci@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org, Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 1/2] phy: samsung: phy-exynos-pcie: sanitize
 init/power_on callbacks
Message-ID: <YsPZU83Jl/kcqR8h@matsya>
References: <CGME20220628220437eucas1p2c478751458323f93a71050c4a949f12e@eucas1p2.samsung.com>
 <20220628220409.26545-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628220409.26545-1-m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_232532_231061_1310E823 
X-CRM114-Status: GOOD (  21.37  )
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

On 29-06-22, 00:04, Marek Szyprowski wrote:
> The exynos-pcie driver called phy_power_on() and then phy_init() for some
> historical reasons. However the generic PHY framework assumes that the
> proper sequence is to call phy_init() first, then phy_power_on(). The
> operations done by both functions should be considered as one action and
> as such they are called by the exynos-pcie driver (without doing anything
> between them). The initialization is just a sequence of register writes,
> which cannot be altered, without breaking the hardware operation.
> 
> To match the generic PHY framework requirement, simply move all register
> writes to the phy_init()/phy_exit() and drop power_on()/power_off()
> callbacks. This way the driver will also work with the old (incorrect)
> PHY initialization call sequence.

Is the plan to merge thru pcie tree?

> 
> Reported-by: Bjorn Helgaas <helgaas@kernel.org>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>  drivers/phy/samsung/phy-exynos-pcie.c | 25 +++++++++----------------
>  1 file changed, 9 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/phy/samsung/phy-exynos-pcie.c b/drivers/phy/samsung/phy-exynos-pcie.c
> index 578cfe07d07a..53c9230c2907 100644
> --- a/drivers/phy/samsung/phy-exynos-pcie.c
> +++ b/drivers/phy/samsung/phy-exynos-pcie.c
> @@ -51,6 +51,13 @@ static int exynos5433_pcie_phy_init(struct phy *phy)
>  {
>  	struct exynos_pcie_phy *ep = phy_get_drvdata(phy);
>  
> +	regmap_update_bits(ep->pmureg, EXYNOS5433_PMU_PCIE_PHY_OFFSET,
> +			   BIT(0), 1);
> +	regmap_update_bits(ep->fsysreg, PCIE_EXYNOS5433_PHY_GLOBAL_RESET,
> +			   PCIE_APP_REQ_EXIT_L1_MODE, 0);
> +	regmap_update_bits(ep->fsysreg, PCIE_EXYNOS5433_PHY_L1SUB_CM_CON,
> +			   PCIE_REFCLK_GATING_EN, 0);
> +

why not retain exynos5433_pcie_phy_power_on() and call it from here and
drop in ops. It would be clear to reader that these are for turning on
the phy...

>  	regmap_update_bits(ep->fsysreg,	PCIE_EXYNOS5433_PHY_COMMON_RESET,
>  			   PCIE_PHY_RESET, 1);
>  	regmap_update_bits(ep->fsysreg, PCIE_EXYNOS5433_PHY_MAC_RESET,
> @@ -109,20 +116,7 @@ static int exynos5433_pcie_phy_init(struct phy *phy)
>  	return 0;
>  }
>  
> -static int exynos5433_pcie_phy_power_on(struct phy *phy)
> -{
> -	struct exynos_pcie_phy *ep = phy_get_drvdata(phy);
> -
> -	regmap_update_bits(ep->pmureg, EXYNOS5433_PMU_PCIE_PHY_OFFSET,
> -			   BIT(0), 1);
> -	regmap_update_bits(ep->fsysreg, PCIE_EXYNOS5433_PHY_GLOBAL_RESET,
> -			   PCIE_APP_REQ_EXIT_L1_MODE, 0);
> -	regmap_update_bits(ep->fsysreg, PCIE_EXYNOS5433_PHY_L1SUB_CM_CON,
> -			   PCIE_REFCLK_GATING_EN, 0);
> -	return 0;
> -}
> -
> -static int exynos5433_pcie_phy_power_off(struct phy *phy)
> +static int exynos5433_pcie_phy_exit(struct phy *phy)
>  {
>  	struct exynos_pcie_phy *ep = phy_get_drvdata(phy);
>  
> @@ -135,8 +129,7 @@ static int exynos5433_pcie_phy_power_off(struct phy *phy)
>  
>  static const struct phy_ops exynos5433_phy_ops = {
>  	.init		= exynos5433_pcie_phy_init,
> -	.power_on	= exynos5433_pcie_phy_power_on,
> -	.power_off	= exynos5433_pcie_phy_power_off,
> +	.exit		= exynos5433_pcie_phy_exit,
>  	.owner		= THIS_MODULE,
>  };
>  
> -- 
> 2.17.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
