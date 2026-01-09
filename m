Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 584E5D26D6B
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 15:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=QU7h55Xj4QFkhJJ9bbAtNgtKHbyPtaen9aGMcnNYvkU=; b=o1mpwQBnP5p+ax
	HvGwfecC7w39R8fwYbd4cEBRTHgfQuO1yQrbLFrLZY58dRz5D0tRcjWtI4YWt3yxV8dfZC0E9LD14
	Upc0QhDBIP1zH2P6kMTQx7c8xCJ/eiSwp2g4FVtWDjP3QoEb2ofwBTFD6vBMQHrdq6d5LUelbzgQ2
	zEElPqhUayXXj/IETM8dLUiDT8RAj6QSUeFlwOPMR8oEK0VPJsJqJX3qxrYB1HXyf+tgKBZ9950tu
	0RQDdAw+zgQyayVe3YQkW+oxCmIxYUB5oE07o1IkOYQ4O6xx46eieEoKHGGmRcHnf4R1IRt05ijVB
	m6zHXigpkMl1bXuz+mDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veEoF-00000002XMD-0Kv9;
	Fri, 09 Jan 2026 15:53:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veEoD-00000002XLv-1f0k
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 15:53:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6DFB460132;
	Fri,  9 Jan 2026 15:53:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06978C4CEF1;
	Fri,  9 Jan 2026 15:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767974032;
	bh=zK0zjHRUg0EscVVeO0n2jsonL23Wr5elXJuCtQlfIvk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=nhdOUxd1lM18hERN+FcC1kmau3i2OjE4BlxSBRaiAzLUMZv1JsAEAbAjHgrRHrdD+
	 AsPy6IDmAIInpzBYpN6EEwRhmi7oP9XRmoShYZ4o0BgSPgAJNXRVNtEEr9Jk3sjoBk
	 cqqaPPoRDuidy47fVBzdphqqnG4yZkmwvSiSFIdpvNV3bKdZUEhdogogHqhZqfWk2V
	 SCpG/goOIC+C2cbwH4qji80ADLcLZt7gJzQyV3bEkaEbph3Yo0LLo0//4iMW/a3D/X
	 xMOTj0Yxs4AcQM/dumYzVEcza1O0YfbqVUfL4M0kHjubZd88mAbiR6zHKiGoH2eKWQ
	 NUjY7Cuy1q7bQ==
Date: Fri, 9 Jan 2026 09:53:50 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 2/5] PCI: dwc: Add support for retaining link during host
 init
Message-ID: <20260109155350.GA546142@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260109-link_retain-v1-2-7e6782230f4b@oss.qualcomm.com>
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

On Fri, Jan 09, 2026 at 12:51:07PM +0530, Krishna Chaitanya Chundru wrote:
> Some platforms keep the PCIe link up across bootloader and kernel
> handoff. In such cases, reinitializing the root complex is unnecessary
> if the DWC glue drivers wants to retain the PCIe link.
> 
> Introduce a link_retain flag in struct dw_pcie_rp to indicate that
> the link should be preserved. When this flag is set by DWC glue drivers,
> skip dw_pcie_setup_rc() and only initialize MSI, avoiding redundant
> configuration steps.

It sounds like this adds an assumption that the bootloader
initialization is the same as what dw_pcie_setup_rc() would do.  This
assumption also applies to future changes in dw_pcie_setup_rc().

It looks like you mention an issue like this in [PATCH 4/5]; DBI & ATU
base being different than "HLOS" (whatever that is).  This sounds like
a maintenance issue keeping bootloader and kernel driver assumptions
synchronized.

Is there something in dw_pcie_setup_rc() that takes a lot of time or
forces a link retrain?  You mentioned some clock and GENPD issues in
the cover letter, but I don't see the connection between those and
dw_pcie_setup_rc().  If there is a connection, please include it in
this commit log and include a code comment about why
dw_pcie_setup_rc() is being skipped.

> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 11 ++++++++---
>  drivers/pci/controller/dwc/pcie-designware.h      |  1 +
>  2 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 372207c33a857b4c98572bb1e9b61fa0080bc871..d050df3f22e9507749a8f2fedd4c24fca43fb410 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -655,9 +655,14 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  	if (ret)
>  		goto err_free_msi;
>  
> -	ret = dw_pcie_setup_rc(pp);
> -	if (ret)
> -		goto err_remove_edma;
> +	if (!pp->link_retain) {

Use positive logic if possible (test "pp->link_retain" instead of
"!pp->link_retain").

I suspect this would be more maintainable if you identified specific
things *inside* dw_pcie_setup_rc() that need to be skipped, and you
added tests there.

> +		ret = dw_pcie_setup_rc(pp);
> +		if (ret)
> +			goto err_remove_edma;
> +	} else {
> +		dw_pcie_msi_init(pp);
> +	}
> +
>  
>  	if (!dw_pcie_link_up(pci)) {
>  		ret = dw_pcie_start_link(pci);
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index 31685951a080456b8834aab2bf79a36c78f46639..8acab751b66a06e8322e027ab55dc0ecfdcf634c 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -439,6 +439,7 @@ struct dw_pcie_rp {
>  	struct pci_config_window *cfg;
>  	bool			ecam_enabled;
>  	bool			native_ecam;
> +	bool			link_retain;
>  };
>  
>  struct dw_pcie_ep_ops {
> 
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
