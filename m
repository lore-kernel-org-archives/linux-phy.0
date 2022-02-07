Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4394AC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 17:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Wqp1l/R7cz9kWaEcfkAnoaimSHwrd+IJ6yWi1RI7Qyo=; b=B1iMQDc6Q/efFc
	dzmU81uaBFeAHfuLUTiMwBGLOu8m2c6/aleveTp+9iMxFq4La558B/phZkhxcfz9GP/w1Xhkp8MaQ
	Jfbj3gBmJriG1KgjTuf6o86/x5LGWYQErBTEb5Rqj0nk7xvS7wNaJv8xOHj4kbOxJ6lICBsgau/1q
	jsozoFQgU60b+yXYnXFutPy6jaRYJiybcUZq3Xp68Z4TVG9oehvM4MSrk3/Qh5+2B4NDG4I3KLg6J
	6H7PqpjJow1yaf5uNTN/c59vOwOBvSipj9U3m4jfArVxjfSHqMe8nhm2FrPMDS3BbKNhILROIqyhG
	tI9Lq5TDxrYa6dMGP45A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH7wf-00BJ5N-Nk; Mon, 07 Feb 2022 17:36:57 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH7wc-00BJ4D-DI
 for linux-phy@lists.infradead.org; Mon, 07 Feb 2022 17:36:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E38B8B815AE;
 Mon,  7 Feb 2022 17:36:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51C3CC004E1;
 Mon,  7 Feb 2022 17:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644255410;
 bh=/7YN1m76qf4snYDMVXR15LGTPvRjVN/AzA2qo6qhVtI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=sIIeoPL8OANAhj44U1X2u3zQNXXTY1oNGPK1fQdVT33tNkvktg0GpxHLyNj3K0x0Y
 wtLfKFRIAPZAXgk6+w5ADLpkcGocrbN7xLd3pMhnGVkDs7MLXNgdzQHEBb+dHjMOCA
 lPu5UbwA4JkRzAAZglw0pPUuwOTIVReV56CBlvm1GdMxqXbvCjeYYGxm1aKC3/xnlE
 LVAsPetTzl99KaBACPC+Q4vhd2QS7IScea5Vt041eaunVaLh9tAUgXN4J26/cEi2V1
 gqn18+3Cut7ljOd6vFbBscsv+wvwpDnmq2ODyZpbafGo39RxgCSfqrEsbZ3+4IsH09
 yhC3Bq8NCI8wg==
Date: Mon, 7 Feb 2022 11:36:48 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
 thierry.reding@gmail.com, jonathanh@nvidia.com, kishon@ti.com,
 vkoul@kernel.org, kw@linux.com, krzysztof.kozlowski@canonical.com,
 p.zabel@pengutronix.de, mperttunen@nvidia.com,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kthota@nvidia.com,
 mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V1 09/10] PCI: Disable MSI for Tegra234 root ports
Message-ID: <20220207173648.GA402391@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205162144.30240-10-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_093654_767612_413CF1F3 
X-CRM114-Status: GOOD (  17.43  )
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

On Sat, Feb 05, 2022 at 09:51:43PM +0530, Vidya Sagar wrote:
> Tegra234 PCIe rootports don't generate MSI interrupts for PME and AER
> events. Since PCIe spec (Ref: r4.0 sec 7.7.1.2 and 7.7.2.2) doesn't support
> using a mix of INTx and MSI/MSI-X, MSI needs to be disabled to avoid root
> ports service drivers registering their respective ISRs with MSI interrupt
> and to let only INTx be used for all events.

s/rootports/root ports/ to match other usage here.

This argument matches that in 8c7e96d3fe75 ("PCI: Disable MSI for
Tegra root ports") [1], but that's not quite what sec 7.7.1.2 and
7.7.2.2 say.  Those sections talk about what happens when both MSI and
MSI-X are disabled:

  If MSI and MSI-X are both disabled, the Function requests servicing
  using INTx interrupts (if supported).

but they don't say anything about what happens when MSI or MSI-X is
*enabled*.

I think a better citation is PCIe r6.0, sec 6.1.4.3, which says:

  While enabled for MSI or MSI-X operation, a Function is prohibited
  from using INTx interrupts (if implemented) to request service (MSI,
  MSI-X, and INTx are mutually exclusive).

Can you please update the comment in the code and this commit log to
cite PCIe r6.0, sec 6.1.4.3 instead, and to clarify that these Tegra
devices always use INTx for PME and AER, even when MSI/MSI-X is
enabled?

Why do these Tegra quirks use DECLARE_PCI_FIXUP_CLASS_EARLY() instead
of just DECLARE_PCI_FIXUP_EARLY()?  quirk_al_msi_disable() uses the
_CLASS version because the same Device ID is used for non-Root Port
devices.  Is the same true here, or could these use
DECLARE_PCI_FIXUP_EARLY()?

There are many quirks that disable MSI, and they're a mixture of EARLY
and FINAL.  They should probably all be the same.

[1] https://git.kernel.org/linus/8c7e96d3fe75

> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  drivers/pci/quirks.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
> index d2dd6a6cda60..3ac5c45e61a1 100644
> --- a/drivers/pci/quirks.c
> +++ b/drivers/pci/quirks.c
> @@ -2747,6 +2747,15 @@ DECLARE_PCI_FIXUP_CLASS_EARLY(PCI_VENDOR_ID_NVIDIA, 0x10e5,
>  DECLARE_PCI_FIXUP_CLASS_EARLY(PCI_VENDOR_ID_NVIDIA, 0x10e6,
>  			      PCI_CLASS_BRIDGE_PCI, 8,
>  			      pci_quirk_nvidia_tegra_disable_rp_msi);
> +DECLARE_PCI_FIXUP_CLASS_EARLY(PCI_VENDOR_ID_NVIDIA, 0x229a,
> +			      PCI_CLASS_BRIDGE_PCI, 8,
> +			      pci_quirk_nvidia_tegra_disable_rp_msi);
> +DECLARE_PCI_FIXUP_CLASS_EARLY(PCI_VENDOR_ID_NVIDIA, 0x229c,
> +			      PCI_CLASS_BRIDGE_PCI, 8,
> +			      pci_quirk_nvidia_tegra_disable_rp_msi);
> +DECLARE_PCI_FIXUP_CLASS_EARLY(PCI_VENDOR_ID_NVIDIA, 0x229e,
> +			      PCI_CLASS_BRIDGE_PCI, 8,
> +			      pci_quirk_nvidia_tegra_disable_rp_msi);
>  
>  /*
>   * Some versions of the MCP55 bridge from Nvidia have a legacy IRQ routing
> -- 
> 2.17.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
