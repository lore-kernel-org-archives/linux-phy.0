Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC433C07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 06:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKb7Omj29Oqxakui0Vas9XKWQX5dzi2xJL/DYxai4Vw=; b=g82/fVLtO5Rfwa
	yF7k3wn0gCs5O3RCTMGgM5tueHy/spWp8QftAuzhjnUe7b1+xoVa7GUHzBS8WW4kTidLex8dZe9Kp
	WD0IvCzD9kozpQNtbXkn9aK8UOzsdTj8K9zZltsOwcKgXS6RjGEfnDLQGBKar0XW0R01YNCdzyp0C
	5K69RLICif7ehfCA9Tm/BwZ6sArXLDwUVmy3XZ0iHQVTRRUPirnaGYkPYwb/ThfUMq/eztBMx5rGM
	xoRJFFt8IIpCOtmTxkCJJ97BI3Aed3OfmGqM7D1hrWkroy69Zz+yQVyfAg86XC8U9v478lL3CRj/c
	4KlCLORTTzosAW3NLlog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ochm1-002Orb-Uu; Mon, 26 Sep 2022 06:39:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ochkV-002NrS-E2
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 06:37:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8ABB261757;
	Mon, 26 Sep 2022 06:37:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 564C8C433D6;
	Mon, 26 Sep 2022 06:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664174270;
	bh=Qe9q43PNCvVX/HcS4sbwQ1ON37dLP7rnsPqYAzCOw98=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gc6nfD/V68hkz9Z3H1WM1nrJAPtEa4F4Wcd5aTgdylEcHco7/aWLKRcBQhs5c5W9N
	 iQ/NooakfuESR2QmqW0vGZFL94DxKWKJuCPdIs6QvA+VCb3tHVeJZaIP+kxDwGVjks
	 d59WZfdFsUEARpauS0l/NtIRvsolv6h21KDgW/QLscS4uCklAop1G+2i2agIOjX5f6
	 SrqZj5m0Gx1+hPUU7jUzPeearWcNzY+1dY0ZVwiIKgeYGViBWG9oMZMtoJCQoO8gjF
	 +TCHQ0c2fZXRInWSVvdVxsn1/6EzOA5fps7WL01kivYq+S1T6ZVhIHmXMYDD26qWkN
	 /oP6WsfqFS6Mw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ochkZ-0002Ba-M2; Mon, 26 Sep 2022 08:37:55 +0200
Date: Mon, 26 Sep 2022 08:37:55 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
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
Subject: Re: [PATCH v4 3/6] phy: qcom-qmp-pcie: support separate tables for
 EP mode
Message-ID: <YzFIw2TUGu/H0fSk@hovoldconsulting.com>
References: <20220924160302.285875-1-dmitry.baryshkov@linaro.org>
 <20220924160302.285875-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220924160302.285875-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_233751_593116_9B44FAC6 
X-CRM114-Status: GOOD (  21.99  )
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

On Sat, Sep 24, 2022 at 07:02:59PM +0300, Dmitry Baryshkov wrote:
> The PCIe QMP PHY requires different programming sequences when being
> used for the RC (Root Complex) or for the EP (End Point) modes. Allow
> selecting the submode and thus selecting a set of PHY programming
> tables.
> 
> Since the RC and EP modes share common some common init sequence, the
> common sequence is kept in the main table and the sequence differences
> are pushed to the extra tables.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 67 ++++++++++++++++++++----
>  1 file changed, 58 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 6e8c74585670..1fc23df59454 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1320,10 +1320,14 @@ struct qmp_phy_cfg {
>  	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
>  	struct qmp_phy_cfg_tables common;
>  	/*
> -	 * Additional init sequence for PHY blocks, providing additional
> -	 * register programming. Unless required it can be left omitted.
> +	 * Additional init sequences for PHY blocks, providing additional
> +	 * register programming. They are used for providing separate sequences
> +	 * for the Root Complex and for the End Point usecases.
> +	 *
> +	 * If EP mode is not supported, both tables can be left empty.
>  	 */
> -	struct qmp_phy_cfg_tables *extra;
> +	struct qmp_phy_cfg_tables *extra_rc; /* for the RC only */
> +	struct qmp_phy_cfg_tables *extra_ep; /* for the EP only */
  
> @@ -2278,7 +2325,9 @@ static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
>  		qphy->pcs_misc = qphy->pcs + 0x400;
>  
>  	if (IS_ERR(qphy->pcs_misc)) {
> -		if (cfg->common.pcs_misc_tbl || cfg->extra->pcs_misc_tbl)
> +		if (cfg->common.pcs_misc_tbl ||
> +		    cfg->extra_rc->pcs_misc_tbl ||
> +		    cfg->extra_ep->pcs_misc_tbl)

More NULL derefs.

>  			return PTR_ERR(qphy->pcs_misc);
>  	}

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
