Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5A27ECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 07:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGXXO6wo3Dz4RyzJl+SjdCYNgbSxtLpBKgKMO5cNCv4=; b=Tn26dUBxrfZ+yp
	6ytr/7gH1MoDjTt/uibD3VihJXue5Tyhusp5xHinYD3TYeELMwBs1sjuImb9rpaHdbxvRIfNKOTVi
	f59ItveKDUbi6z8rnaR/r5J02b3kBju+JWzaV7r+YJYIWtroZJ2Hw47fvMSRW6WAOX1b3T2s8mcnq
	zl3GQQX/eEujM+L2fadFAV9eDyFZfT66Azpho3WpUky8RAeJrrC+dgKwfmiNvhgJDOx+/YQeSUTy1
	Wy5RztZOFEBBIfXxl1aFX1vVBTFGeC+yUtIn1wBhmM4ntn+NFT2fJPA4CkehNgsum0qZFzirYrZXK
	YhApzkawexIRPUtnydmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqJ-00EpTX-3Y; Tue, 30 Aug 2022 07:39:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvpA-00Eotx-Jy
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 07:38:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 173F0614CC;
	Tue, 30 Aug 2022 07:38:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BFD8C433D6;
	Tue, 30 Aug 2022 07:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661845095;
	bh=KQ0cN3fGWMuIh7l3tRunaZd7UYa74HXpLliy5jjUJ24=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pjzTAyxQ3ZjhrCnl1rxUXIjchwFKQzEHBL9EFIkSsdLREbBjys/MTG9W69hKkURlo
	 Yz507fc+1uHLMWqyZZbJn86jPyLYGVGIX5y7Rr3aCAc3pYrisUddRE3/oCHETkjmC/
	 /AGNrTNMlH2tzki0BS79VmTiv5fypNx1nNV5QTMKDsl2UF2JhKeyAT8A+g76pcG6cd
	 DIS6KWY666w5u+81RMVJK2kwQgGPkjYcaJgvw+34mM2y6nmNBoL3go4ShJV6XxucFP
	 goeEqiYSlmaboqkEoZFnItVK4FYXvxRkCz5skPJCGofJqZlgoTf9AOaEv3VHwz49rG
	 t2u20PkVPut/g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oSvpB-0002rl-F9; Tue, 30 Aug 2022 09:38:18 +0200
Date: Tue, 30 Aug 2022 09:38:17 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn@kryo.se>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/6] phy: qcom-qmp-pcie: split register tables into
 primary and secondary part
Message-ID: <Yw2+aVbqBfMSUcWq@hovoldconsulting.com>
References: <20220825105044.636209-1-dmitry.baryshkov@linaro.org>
 <20220825105044.636209-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220825105044.636209-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003816_860216_D11FE529 
X-CRM114-Status: GOOD (  23.08  )
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

On Thu, Aug 25, 2022 at 01:50:40PM +0300, Dmitry Baryshkov wrote:
> SM8250 configuration tables are split into two parts: the common one and
> the PHY-specific tables. Make this split more formal. Rather than having
> a blind renamed copy of all QMP table fields, add separate struct
> qmp_phy_cfg_tables and add two instances of this structure to the struct
> qmp_phy_cfg. Later on this will be used to support different PHY modes
> (RC vs EP).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 141 +++++++++++++----------
>  1 file changed, 83 insertions(+), 58 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index c84846020272..60cbd2eae346 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1346,34 +1346,33 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
>  
>  struct qmp_phy;
>  
> -/* struct qmp_phy_cfg - per-PHY initialization config */
> -struct qmp_phy_cfg {
> -	/* phy-type - PCIE/UFS/USB */
> -	unsigned int type;
> -	/* number of lanes provided by phy */
> -	int nlanes;
> -
> -	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
> +struct qmp_phy_cfg_tables {
>  	const struct qmp_phy_init_tbl *serdes_tbl;
>  	int serdes_tbl_num;
> -	const struct qmp_phy_init_tbl *serdes_tbl_sec;
> -	int serdes_tbl_num_sec;
>  	const struct qmp_phy_init_tbl *tx_tbl;
>  	int tx_tbl_num;
> -	const struct qmp_phy_init_tbl *tx_tbl_sec;
> -	int tx_tbl_num_sec;
>  	const struct qmp_phy_init_tbl *rx_tbl;
>  	int rx_tbl_num;
> -	const struct qmp_phy_init_tbl *rx_tbl_sec;
> -	int rx_tbl_num_sec;
>  	const struct qmp_phy_init_tbl *pcs_tbl;
>  	int pcs_tbl_num;
> -	const struct qmp_phy_init_tbl *pcs_tbl_sec;
> -	int pcs_tbl_num_sec;
>  	const struct qmp_phy_init_tbl *pcs_misc_tbl;
>  	int pcs_misc_tbl_num;
> -	const struct qmp_phy_init_tbl *pcs_misc_tbl_sec;
> -	int pcs_misc_tbl_num_sec;
> +};
> +
> +/* struct qmp_phy_cfg - per-PHY initialization config */
> +struct qmp_phy_cfg {
> +	/* phy-type - PCIE/UFS/USB */
> +	unsigned int type;
> +	/* number of lanes provided by phy */
> +	int nlanes;
> +
> +	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
> +	struct qmp_phy_cfg_tables primary;
> +	/*
> +	 * Init sequence for PHY blocks, providing additional register
> +	 * programming. Unless required it can be left omitted.
> +	 */
> +	struct qmp_phy_cfg_tables secondary;

I haven't really had time to look at this series yet, but it seems the
way these structures are named and organised could be improved.

First, "primary" and "secondary" says nothing about what these
structures are and the names are also unnecessarily long. 

Second, once you add a containing structure, the "_tbl" suffixes could
be removed (e.g. in "pcs_misc_tbl").

Doing something like below should make the code cleaner:

	struct qmp_phy_cfg_tables {
		const struct qmp_phy_init_tbl *serdes;
		const struct qmp_phy_init_tbl *tx;
		...
	};

	struct qmp_phy_cfg {
		struct qmp_phy_cfg_tables tbls1;
		struct qmp_phy_cfg_tables tbls2;
		...
	};
	
as the tables can be referred to as

	cfg.tbls2.serdes

instead of
	
	cfg.secondary.serdes_tbl;

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
