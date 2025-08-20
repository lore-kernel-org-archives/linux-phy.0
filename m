Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 375E1CA0EDC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 20:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CeqcI7j1ab3Fj6gY34jK8Je2++JFwCH3Yhccw8b/2m0=; b=AadbLrGqjzPqht
	54fYgxnLawuiHViTDc916eR4uGoBWplJpnTpsfu5MLfoUgwSQEMllQYPeUnVrV/yr7XGCXKPE5+rj
	lqT2+iYeGm0KTrZPRW1Teac5JBS4iReml4zddF2mHkmp9/G3W/5es9v/LPTllnCcKDwzj1A0Zul+g
	LzChjVIegeGR/hOUFLwePhq5gDlXyMPLVnxAH/PIOq8oWVBz4I2QME6cGQme9CsTREwNBJx0fwR65
	HBfnbxREzj4cjYZvngJjlvNUOCLg4Q4FbxwgYmqf7X4UlmuPbDJjNVkkgyFE/pIATXmY15n1SRDjm
	/xqdJEs6XObVIIYkkanA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoplA-0000000Et6G-3VLc;
	Wed, 20 Aug 2025 20:50:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uolLi-0000000ELdR-3YWO
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 16:07:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 347824629C;
	Wed, 20 Aug 2025 16:07:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39AFDC4CEE7;
	Wed, 20 Aug 2025 16:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755706062;
	bh=Fc6Djx8B9AyLUd9B+FppF5No5ax5Rsl2+whttkvW4ps=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SdYg4dng5SJPT6E+XjYcNIxfPAKCyJ9Ma7ZguYWwFhh2yhFJyMgyhP0ZH3aAicOxE
	 AtkAsPmudNikzTaA3UvB6/Yt2FgkUP2uVHPbyuh6irNEKtqmd6633yG0LXRA8xn7bf
	 FsbX17YAY5k08e+JpWuNuqedoEr+KzZ48UMqv4T60r+ct3FJ4hgCRmASxrwaHnX91t
	 UpwVtQT4NwEyibJfweA15QmoeCfpRLTBDIh1XXqbrc1n7m45ODBi/apkFF+dBcsCfH
	 gz6hdrGVbjIATtgoD88fmOVgB8Kl0W66znKJtOF/s3zDNgoxYEMQGt8wXgDFgbt+Cz
	 B1o+wU8Yb8/Bg==
Date: Wed, 20 Aug 2025 21:37:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: dlemoal@kernel.org, cassel@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kishon@kernel.org, linux-phy@lists.infradead.org,
	ningyu@eswincomputing.com, zhengyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com, lianghujun@eswincomputing.com
Subject: Re: [PATCH v2 3/3] phy: eswin: Create eswin directory and add
 EIC7700 SATA PHY driver
Message-ID: <aKXyyAT-xRPhoYDx@vaman>
References: <20250819134722.220-1-luyulin@eswincomputing.com>
 <20250819140043.1862-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250819140043.1862-1-luyulin@eswincomputing.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_090742_908207_A61A4B57 
X-CRM114-Status: GOOD (  11.52  )
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

On 19-08-25, 22:00, Yulin Lu wrote:
> From: luyulin <luyulin@eswincomputing.com>
> 
> Created the eswin phy driver directory and added support for
> the SATA phy driver on the EIC7700 SoC platform.
> 
> Signed-off-by: luyulin <luyulin@eswincomputing.com>

Please use full name as you have used in the copyright notices


> +#define SATA_P0_PHY_TX_PREEMPH_GEN2	(0x05 << 8)
> +#define SATA_P0_PHY_TX_PREEMPH_GEN3	(0x08 << 16)
> +#define SATA_MPLL_MULTIPLIER		(0x3c << 16)

Use GENMASK for these

> +static int eic7700_sata_phy_init(struct phy *phy)
> +{
> +	struct eic7700_sata_phy *sata_phy = phy_get_drvdata(phy);
> +	u32 val = 0;
> +	int ret = 0;

both initializations are superfluous

> +static int eic7700_sata_phy_exit(struct phy *phy)
> +{
> +	struct eic7700_sata_phy *sata_phy = phy_get_drvdata(phy);
> +	u32 val = 0;

here and other places

> +static struct platform_driver eic7700_sata_phy_driver = {
> +	.probe	= eic7700_sata_phy_probe,
> +	.driver = {
> +		.of_match_table	= eic7700_sata_phy_of_match,
> +		.name  = "eswin,sata-phy",
> +		.suppress_bind_attrs = true,

why?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
