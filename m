Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A838DC07E9D
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 06:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSBrpJYcLl37mZ+r6QmwkC59ZvlPOHmc2tKKexGJKng=; b=F/yUdoKV2glL5u
	PNSzUG9oWsxg7TqeAzgq+++F0lqWhPf+N6anlrOnpDh4kQGd6/m8aMzWUQakT4dBXMEKjUly3Ecoa
	miqKewK8rX4clsu5TMl0zTa/LrkI5LxXrR09QM3mEtJX3GZbmLIHlV3r67VFL9s6LWgrbKjIOR38J
	ulCyRUbnDBQvmY7HcAWMjBp0BU14DI8lTTxQMnKbRSRUQwl96+91mJ6bAUhWx5KyvHygv6YOHGPKK
	EhPPGS5NuLlzPG57Atgn0BDzJGxqA7qQNEMUHhA1iB2P50Znl2f+iBAd5W2pWgSwd7UjV7TVtRmXJ
	oz174jarXDR6d9KFoUFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obyUZ-006Uhs-W5; Sat, 24 Sep 2022 06:18:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obyUX-006UhQ-QH
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 06:18:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0D19760A67;
	Sat, 24 Sep 2022 06:18:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83236C433C1;
	Sat, 24 Sep 2022 06:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664000300;
	bh=N8A1EAkzo8qHknJSPdQjAbz2LO4T4wabU3U9XHAUm94=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YJjfpE/Y1SKb1ltXgBy50w1iWKjSmQR5abyIDKiBPTsDX8m90GheUVBDEcZctHhmO
	 GnNpWCwObfHMx+MpX6VZhrLKgjzKzRM60M8VxYUR7YoV+7bH7EGHLb7hkNlgu4rGff
	 azj+Cx0OsUkhbmpA1ciGYZbH7QDKDroFZ1LWUrGqJkKxOKolHAYYlWSL+bSH8kN27l
	 DafnX1ilRy0g1pxk2+1biSibaNcc1rK3APk0ayPfGI18QDFKyHa4n9FyNkaV0tC69j
	 fWdROvPcH0AiLzvlBvOzMpholuiXqJHnCafaxap3291iu/sduU3JZzKDMc4NLYW4a1
	 Iy4ffvonUeRuQ==
Date: Sat, 24 Sep 2022 11:48:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 1/9] phy: define submodes for PCIe PHYs
Message-ID: <Yy6hJyivbbQ+sI3n@matsya>
References: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
 <20220909091433.3715981-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220909091433.3715981-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_231821_914002_F3D0EC2E 
X-CRM114-Status: GOOD (  15.61  )
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

On 09-09-22, 12:14, Dmitry Baryshkov wrote:
> Define two submodes to be used for the PCIe PHYs, where required.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  include/linux/phy/phy.h | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index b1413757fcc3..bd60c1a72988 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -45,6 +45,15 @@ enum phy_mode {
>  	PHY_MODE_DP
>  };
>  
> +/*
> + * Submodes for the PHY_MODE_PCIE, allowing the host to select between RC (Root
> + * Complex) and EP (End Point) PHY modes.
> + */
> +enum {
> +	PHY_SUBMODE_PCIE_RC,
> +	PHY_SUBMODE_PCIE_EP,
> +};

This can be dropped see include/linux/phy/pcie.h


> +
>  enum phy_media {
>  	PHY_MEDIA_DEFAULT,
>  	PHY_MEDIA_SR,
> -- 
> 2.35.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
