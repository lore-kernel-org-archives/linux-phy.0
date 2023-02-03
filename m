Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 032C3C64EC3
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 10:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvKEGijr8YLgYpsWLsAZIeEgS7qS2IQM0SqZQgpeucs=; b=a3lG0QmJjM/F6u
	G5DM73yCKfsob9c3IoaaoHsFHSy7QYE6O5mVPHx0G6nMcjErsAJJRZJ8EWqA1QzalmDfAL9muNk8y
	DTg0mDeHMR1uRCrUyWc8pDgd1IyUef/qMNAECwWByKIghjokhzjFd9XHI7L7OhgSdlc5P7oWZOhM5
	mmSrnyVuR7lYnSCT3XpGnmde+bug5XXhQtCjkunzKryNllNRJtnxKR5ApXhoADsKd5DajxMlgwudi
	0UtoLYjsNsL7XsWljl1YW9tTjjVnSY6vbRDzFNpX/2NkxV83IyOhmjYRksZqIOJeT+9zoOh/7m7/m
	c/22Fm0aTZg37DSfXuzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsu5-001IMp-ET; Fri, 03 Feb 2023 10:02:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsu1-001ILO-Sg
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 10:02:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D3E5361E54;
	Fri,  3 Feb 2023 10:02:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A3E1C4339B;
	Fri,  3 Feb 2023 10:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675418559;
	bh=rnU2TJfZt8QYFp2uBoZb0Y3dfP5eidARn6lcezfy8NE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FuUUN9oAAbwE8GPShjfbNbYLC3rzUzPp5dNzqO3Jev3z7JNqVLQMNTEkw7DCygQ/K
	 HEYeCwBWoi8wz0pYzmnuB6npgzvTWw8Gm97BotX1/ILJRg1YxktgnAnBsdp21GeiLM
	 +NYK+GOFgDiMGLwUx7WLkU8+3vGxuCCA0QE8hBv/TEvPD5b2fwDOosoSPYUI7Mapd3
	 RuFAQvIP/xfE1W0SvxB1NMNd/add1aRNZS2vl/GXqZ/+F/sZip/ioHoXkQ1Xh8S9RX
	 bTUCmxEA0LFb16w/FPVOex4I2uOssCEqR1cREvzqJJDYcA5IZfSykKK4cz1bf/WLrm
	 cApSOhAHPzZJQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pNsuP-00012x-Td; Fri, 03 Feb 2023 11:03:05 +0100
Date: Fri, 3 Feb 2023 11:03:05 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v7 09/12] dt-bindings: PCI: qcom: Add SM8550 compatible
Message-ID: <Y9zb2X4w0WfIto9n@hovoldconsulting.com>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
 <20230203081807.2248625-10-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230203081807.2248625-10-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_020242_036234_51588105 
X-CRM114-Status: GOOD (  20.23  )
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

On Fri, Feb 03, 2023 at 10:18:04AM +0200, Abel Vesa wrote:
> Add the SM8550 platform to the binding.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> 
> This patchset relies on the following patchset:
> https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/
> 
> The v6 of this patch is:
> https://lore.kernel.org/all/20230202123902.3831491-10-abel.vesa@linaro.org/
> 
> Changes since v6:
>  * none
> 
> Changes since v5:
>  * added Krzysztof's R-b tag
> 
> Changes since v4:
>  * dropped _serdes infix from ln_shrd table name and from every ln_shrd
>    variable name
>  * added hyphen between "no CSR" in both places
>  * dropped has_ln_shrd_serdes_tbl
>  * reordered qmp_pcie_offsets_v6_20 by struct members
>  * added rollback for no-CSR reset in qmp_pcie_init fail path
>  * moved ln_shrd offset calculation after port_b
>  * dropped the minItems for interconnects
>  * made iommu related properties global
>  * renamed noc_aggr_4 back to noc_aggr
> 
> Changes since v3:
>  * renamed noc_aggr to noc_aggr_4, as found in the driver
> 
> Changes since v2:
>  * dropped the pipe from clock-names
>  * removed the pcie instance number from aggre clock-names comment
>  * renamed aggre clock-names to noc_aggr
>  * dropped the _pcie infix from cnoc_pcie_sf_axi
>  * renamed pcie_1_link_down_reset to simply link_down
>  * added enable-gpios back, since pcie1 node will use it
> 
> Changes since v1:
>  * Switched to single compatible for both PCIes (qcom,pcie-sm8550)
>  * dropped enable-gpios property
>  * dropped interconnects related properties, the power-domains
>  * properties
>    and resets related properties the sm8550 specific allOf:if:then
>  * dropped pipe_mux, phy_pipe and ref clocks from the sm8550 specific
>    allOf:if:then clock-names array and decreased the minItems and
>    maxItems for clocks property accordingly
>  * added "minItems: 1" to interconnects, since sm8550 pcie uses just one,
>    same for interconnect-names
 
> +  enable-gpios:
> +    description: GPIO controlled connection to ENABLE# signal
> +    maxItems: 1

What is this gpio used for? Describing it as "ENABLE#" looks wrong as
AFAIK it's not part of the PCIe interface.

There's also no driver support being adding for this gpio as part of
this series and you don't use it for either controller on the MTP.

Are you relying on firmware to enable this one currently perhaps?

> +
>    perst-gpios:
>      description: GPIO controlled connection to PERST# signal
>      maxItems: 1

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
