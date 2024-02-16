Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0604AC48BEB
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 09:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AD9pTsp9JhFGYMpjqQ8RS22Iuy+5qmCjzDpgdVMQMA=; b=l9N4cn4WZPOG1g
	eeFklaehcAs06ThNPVwBr7F3jJIbB8iicRbVW7QBMtMVbBtANLzK/eQ70e0sM3V444ZtzDux9x1jW
	xrlv0MmQmjzKxGCBFIgCRtnUK3O4JF6ij1lVxOGg8FiLq3blYBa1O+pwZwjZ+VYYe4/CL0C7kDZZ4
	VSvRbFq5N8eMyN/Opq7/o7yaudkDBJXZRbvbZb4AW19LKDCcF9q3l4dwSgy5DhG+FgWEHaAJZLDpJ
	WBrZ8b57s5P+f8Rj1iDd6OicI7raj/te/6JAVc9yaYulNgpcSbi1lWu4yYoaETeP07VttIRMKUXg4
	EGtTLe5NlJqpEC3fAVaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raucI-00000001kOC-2efo;
	Fri, 16 Feb 2024 09:34:46 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raucF-00000001kNN-0UIN;
	Fri, 16 Feb 2024 09:34:44 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 41G9YDeq060094;
	Fri, 16 Feb 2024 03:34:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1708076053;
	bh=vKwAOmyTIKWOUkF+ltd/wXRNBHA5NjPfXEM/pH4HgCE=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=dBUWI9sql6TnlUIEOGFAg4vS8BWuS/JbhwS9gC86EL1cddmuNSFGe21Sbp3oVpOUP
	 guWZf54EVOiiV7PHE/3ylqvfDNUbduYWyeri/qgOwP1hrmJr4N9Wh83De+L3D/jKfk
	 gwQR04D2czoTUO9EfIQm7q2LFvd15n95Q8GRlAZQ=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 41G9YDLg057428
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 16 Feb 2024 03:34:13 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 16
 Feb 2024 03:34:12 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 16 Feb 2024 03:34:12 -0600
Received: from localhost (uda0492258.dhcp.ti.com [172.24.227.9])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 41G9YB1G048944;
	Fri, 16 Feb 2024 03:34:12 -0600
Date: Fri, 16 Feb 2024 15:04:11 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Thomas Richard <thomas.richard@bootlin.com>
CC: Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski
	<brgl@bgdev.pl>,
        Andy Shevchenko <andy@kernel.org>, Tony Lindgren
	<tony@atomide.com>,
        Haojian Zhuang <haojian.zhuang@linaro.org>,
        Vignesh R
	<vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
        Janusz Krzysztofik
	<jmkrzyszt@gmail.com>,
        Andi Shyti <andi.shyti@kernel.org>, Peter Rosin
	<peda@axentia.se>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I
	<kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Lorenzo
 Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?=
	<kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas
	<bhelgaas@google.com>,
        <linux-gpio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
        <linux-i2c@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-pci@vger.kernel.org>, <gregory.clement@bootlin.com>,
        <theo.lebrun@bootlin.com>, <thomas.petazzoni@bootlin.com>,
        <u-kumar1@ti.com>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v3 15/18] PCI: cadence: extract link setup sequence from
 cdns_pcie_host_setup()
Message-ID: <72300ba5-1db2-4bbb-a797-d1b547001ddb@ti.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-15-5c2e4a3fac1f@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v3-15-5c2e4a3fac1f@bootlin.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_013443_261790_1EFEE14C 
X-CRM114-Status: GOOD (  19.31  )
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

On 24/02/15 04:18PM, Thomas Richard wrote:
> The function cdns_pcie_host_setup() mixes probe structure and link setup.
> 
> The link setup must be done during the resume sequence. So extract it from
> cdns_pcie_host_setup() and create a dedicated function.
> 
> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>

LGTM.

Reviewed-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Regards,
Siddharth.

> ---
>  drivers/pci/controller/cadence/pcie-cadence-host.c | 39 ++++++++++++++--------
>  drivers/pci/controller/cadence/pcie-cadence.h      |  6 ++++
>  2 files changed, 32 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/pci/controller/cadence/pcie-cadence-host.c b/drivers/pci/controller/cadence/pcie-cadence-host.c
> index 5b14f7ee3c79..93d9922730af 100644
> --- a/drivers/pci/controller/cadence/pcie-cadence-host.c
> +++ b/drivers/pci/controller/cadence/pcie-cadence-host.c
> @@ -497,6 +497,30 @@ static int cdns_pcie_host_init(struct device *dev,
>  	return cdns_pcie_host_init_address_translation(rc);
>  }
>  
> +int cdns_pcie_host_link_setup(struct cdns_pcie_rc *rc)
> +{
> +	struct cdns_pcie *pcie = &rc->pcie;
> +	struct device *dev = rc->pcie.dev;
> +	int ret;
> +
> +	if (rc->quirk_detect_quiet_flag)
> +		cdns_pcie_detect_quiet_min_delay_set(&rc->pcie);
> +
> +	cdns_pcie_host_enable_ptm_response(pcie);
> +
> +	ret = cdns_pcie_start_link(pcie);
> +	if (ret) {
> +		dev_err(dev, "Failed to start link\n");
> +		return ret;
> +	}
> +
> +	ret = cdns_pcie_host_start_link(rc);
> +	if (ret)
> +		dev_dbg(dev, "PCIe link never came up\n");
> +
> +	return 0;
> +}
> +
>  int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
>  {
>  	struct device *dev = rc->pcie.dev;
> @@ -533,20 +557,9 @@ int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
>  		return PTR_ERR(rc->cfg_base);
>  	rc->cfg_res = res;
>  
> -	if (rc->quirk_detect_quiet_flag)
> -		cdns_pcie_detect_quiet_min_delay_set(&rc->pcie);
> -
> -	cdns_pcie_host_enable_ptm_response(pcie);
> -
> -	ret = cdns_pcie_start_link(pcie);
> -	if (ret) {
> -		dev_err(dev, "Failed to start link\n");
> -		return ret;
> -	}
> -
> -	ret = cdns_pcie_host_start_link(rc);
> +	ret = cdns_pcie_host_link_setup(rc);
>  	if (ret)
> -		dev_dbg(dev, "PCIe link never came up\n");
> +		return ret;
>  
>  	for (bar = RP_BAR0; bar <= RP_NO_BAR; bar++)
>  		rc->avail_ib_bar[bar] = true;
> diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
> index 373cb50fcd15..4c687aeb810e 100644
> --- a/drivers/pci/controller/cadence/pcie-cadence.h
> +++ b/drivers/pci/controller/cadence/pcie-cadence.h
> @@ -515,10 +515,16 @@ static inline bool cdns_pcie_link_up(struct cdns_pcie *pcie)
>  }
>  
>  #ifdef CONFIG_PCIE_CADENCE_HOST
> +int cdns_pcie_host_link_setup(struct cdns_pcie_rc *rc);
>  int cdns_pcie_host_setup(struct cdns_pcie_rc *rc);
>  void __iomem *cdns_pci_map_bus(struct pci_bus *bus, unsigned int devfn,
>  			       int where);
>  #else
> +static inline int cdns_pcie_host_link_setup(struct cdns_pcie_rc *rc)
> +{
> +	return 0;
> +}
> +
>  static inline int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
>  {
>  	return 0;
> 
> -- 
> 2.39.2
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
