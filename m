Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5C4CC3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 17:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozqa7LncHjnAy8qoUT1ZCUbnnP0NWUJeQOs9fSPOqeI=; b=F9CeFxfnfIbtcl
	lU8RNnFYu/dV+hNPTFCT7iG9JUWEqXaVYf0SyYuJTQ8ygtY6zuI3XNHQp8iWAZdQbXwbEuahDnmHI
	t5EJjBKWJzb7AywV+KHohlL4jNVFKZXyADurqf2WSrPjKUbVSyY+URkNuN7V7UrLQsn4M2t8HSVXS
	T8fxL1dZv37XRlExLmf9iUevYIB6//fuxycwQwIwiAbY5gHlhBR0nQV9elol6ticUGmGFv7+u0MR/
	TBStWmYueqlcgiBeVjn4mnf7Xk1aE/n4RdCTTFNAbOo9iaEp3BMBcXCfOfl72j49I+4sRqhjXPzt5
	BuUsTy0yrqOAsuZiKmDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saf5R-0000000DgCJ-1rLU;
	Sun, 04 Aug 2024 17:32:05 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saf4v-0000000Dg80-0D5x;
	Sun, 04 Aug 2024 17:31:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 49403CE0948;
	Sun,  4 Aug 2024 17:31:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E87BDC4AF0C;
	Sun,  4 Aug 2024 17:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722792689;
	bh=zjfDj9zdM+U5DvLzjntQwkRoHUErnB7EOc/jsD5JhuQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LDVNGOFhjNy6UTjVfonDCU6lBZsZrY9+xuyW4ZokGIasfsywCE7kUAjuerKzCqDUL
	 5vcDnFN5ebU/iy6buZZxXfHK4CIQe25L5mbhac4MLUu5AsS2gkpV6VpEgrFwKl0aa7
	 ZxBgrjkL7LmGToDT6EJHEB2yDS8yEa93WLaA1dxwQ7etNYx2Lo8K3FGVwnveEMWe3Y
	 bpLBekAgxJFuYDD5dBEFBLr5fJ07DU2PN8wnfywJLsyTa3wI+Sod7EBNiaiQwOE3lB
	 gNRet9WTw6L1wzvknu2FpLxmRxbYV6trwJ0w+2kw9iy47G/XhCFUgNxet/L3RdBD5e
	 2qHdbXoul99qw==
Date: Sun, 4 Aug 2024 23:01:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: linux-phy@lists.infradead.org, kishon@kernel.org,
	linux-arm-kernel@lists.infradead.org, lorenzo.bianconi83@gmail.com,
	nbd@nbd.name, john@phrozen.org, dd@embedd.com, upstream@airoha.com,
	angelogioacchino.delregno@collabora.com
Subject: Re: [PATCH] phy: airoha: adjust initialization delay in
 airoha_pcie_phy_init()
Message-ID: <Zq-67ZnlmMLh_Ssz@matsya>
References: <82e50875deba44e34f49bd92578b4dc24f121b01.1720508349.git.lorenzo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82e50875deba44e34f49bd92578b4dc24f121b01.1720508349.git.lorenzo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_103133_282821_C15097EA 
X-CRM114-Status: GOOD (  14.20  )
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

On 09-07-24, 09:03, Lorenzo Bianconi wrote:
> Align phy-pcie initialization delay to the vendor sdk in
> airoha_pcie_phy_init routine and allow the hw to complete required
> configuration before proceeding
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  drivers/phy/phy-airoha-pcie.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/phy-airoha-pcie.c
> index bd3edaa986c8..445bacfdaaf4 100644
> --- a/drivers/phy/phy-airoha-pcie.c
> +++ b/drivers/phy/phy-airoha-pcie.c
> @@ -18,6 +18,9 @@
>  #define LEQ_LEN_CTRL_MAX_VAL	7
>  #define FREQ_LOCK_MAX_ATTEMPT	10
>  
> +/* PCIe-PHY initialization time in ms needed by the hw to complete */
> +#define PHY_HW_INIT_TIME_MS	30
> +
>  enum airoha_pcie_port_gen {
>  	PCIE_PORT_GEN1 = 1,
>  	PCIE_PORT_GEN2,
> @@ -1180,8 +1183,11 @@ static int airoha_pcie_phy_init(struct phy *phy)
>  				 PCIE_DA_XPON_CDR_PR_PWDB);
>  	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_SS_DA_XPON_PWDB0,
>  				 PCIE_DA_XPON_CDR_PR_PWDB);
> -
> -	usleep_range(100, 200);
> +	/*
> +	 * Wait for the time in ms needed by the hw to complete the PCIe-PHY
> +	 * initialization
> +	 */
> +	mdelay(PHY_HW_INIT_TIME_MS);

Why not use msleep()...?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
