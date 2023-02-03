Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AD17C63797
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFHIT/EkY5CgiFLe/uQZUWmBH9027ERtD2ZQf0NHGDc=; b=omxAY/W6MJWmeP
	cLJkaZDPNeNDVDKJrP+2aNblaK7VzpHdhYFtXiVA2wZmfxZ1ZrcynEaFhTx00lGRzRK+j+3PPk8AS
	ahyra02kq2LlnV+9OPTZuka8CqvRvxZAbnlC/wiNwmZDhsrIVLsBLHFQ4EPwjgvbIxpK8z4uLp3Fa
	Zm15cHM3yPMXki6nytrSJzPqz78KLfhZBbLKP6Z04ZWLDErSwa8bjOLk7YMmupaMPBg3snLDG1WtK
	CxC9FfvuWLxT/HFhVNVzdmJjCthZr1q3pZJxC6Y5M7txi/+yjZLn8clq1+Tl/LL64thMlncJW4Abs
	dod65ho3fdFBPEUww7iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsgp-001FL4-1D; Fri, 03 Feb 2023 09:49:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsgm-001FKK-6P
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 09:49:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8102261E56;
	Fri,  3 Feb 2023 09:48:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEF38C433D2;
	Fri,  3 Feb 2023 09:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675417738;
	bh=rXy7btraUJBuP9FasxHRz8/BmmVLJJUUb3KO9iJARDc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mLa5WYJXS1btpT4AHaZ9QKYVurBIWHg5qFF3nYsOFpyX9cbTxHRsNM8c9z7ujFdl/
	 ZNozG6sKcYFGHkM65ky1nlGHTRN5xobGYrnq8zN3dx/G/ZhMWX92hqtyiKz9MhntTO
	 lPQrB63fG12M+NIhkTWwKiVJmPtuZhBWtWBSNhJ9g6b1K7JP5HmDBzmB8ajf9FcC7w
	 zle/k/b0C2z0Jqg8Y2sG5xo7yX7do57WAhULOUgXVzwvY/pp3CnwqqUUjFsegfJO1r
	 vfLloica/zuWgd9JOjoZ9uObM7JjQv88tgabR8SFKHixyqFTQrprDUrh0js85aDY7p
	 T/0rRtLI/zJAg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pNshA-0000u7-FA; Fri, 03 Feb 2023 10:49:25 +0100
Date: Fri, 3 Feb 2023 10:49:24 +0100
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
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 10/12] PCI: qcom: Add SM8550 PCIe support
Message-ID: <Y9zYpE/GnxUqnIyq@hovoldconsulting.com>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
 <20230203081807.2248625-11-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230203081807.2248625-11-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_014900_334700_D01B9E50 
X-CRM114-Status: GOOD (  24.43  )
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

On Fri, Feb 03, 2023 at 10:18:05AM +0200, Abel Vesa wrote:
> Add compatible for both PCIe found on SM8550.
> Also add the cnoc_pcie_sf_axi clock needed by the SM8550.

nit: You're now also adding 'noc_aggr'

> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
> ---
> 
> The v6 of this patchset is:
> https://lore.kernel.org/all/20230202123902.3831491-11-abel.vesa@linaro.org/
> 
> Changes since v6:
>  * none
> 
> Changes since v5:
>  * none
> 
> Changes since v4:
>  * added Mani's R-b tag
> 
> Changes since v3:
>  * renamed cnoc_pcie_sf_axi to cnoc_sf_axi
> 
> Changes since v2:
>  * none
> 
> Changes since v1:
>  * changed the subject line prefix for the patch to match the history,
>    like Bjorn Helgaas suggested.
>  * added Konrad's R-b tag
> 
>  drivers/pci/controller/dwc/pcie-qcom.c | 25 ++++++++++++++-----------
>  1 file changed, 14 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index a232b04af048..6a70c9c6f98d 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -182,10 +182,10 @@ struct qcom_pcie_resources_2_3_3 {
>  
>  /* 6 clocks typically, 7 for sm8250 */
>  struct qcom_pcie_resources_2_7_0 {
> -	struct clk_bulk_data clks[12];
> +	struct clk_bulk_data clks[14];
>  	int num_clks;
>  	struct regulator_bulk_data supplies[2];
> -	struct reset_control *pci_reset;
> +	struct reset_control *rst;

Please name this one 'reset' or 'resets' (e.g. to avoid hard to parse
things like res->rst below).

>  };
>  
>  struct qcom_pcie_resources_2_9_0 {
> @@ -1177,9 +1177,9 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
>  	unsigned int idx;
>  	int ret;
>  
> -	res->pci_reset = devm_reset_control_get_exclusive(dev, "pci");
> -	if (IS_ERR(res->pci_reset))
> -		return PTR_ERR(res->pci_reset);
> +	res->rst = devm_reset_control_array_get_exclusive(dev);
> +	if (IS_ERR(res->rst))
> +		return PTR_ERR(res->rst);

So the reset array implementation apparently both asserts and deasserts
the resets in the order specified in DT (i.e. does not deassert in
reverse order).

Is that ok also for the new "pci" and "link_down" resets?

>  	res->supplies[0].supply = "vdda";
>  	res->supplies[1].supply = "vddpe-3v3";
> @@ -1205,9 +1205,11 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
>  	res->clks[idx++].id = "ddrss_sf_tbu";
>  	res->clks[idx++].id = "aggre0";
>  	res->clks[idx++].id = "aggre1";
> +	res->clks[idx++].id = "noc_aggr";
>  	res->clks[idx++].id = "noc_aggr_4";
>  	res->clks[idx++].id = "noc_aggr_south_sf";
>  	res->clks[idx++].id = "cnoc_qx";
> +	res->clks[idx++].id = "cnoc_sf_axi";
>  
>  	num_opt_clks = idx - num_clks;
>  	res->num_clks = idx;
> @@ -1237,17 +1239,17 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
>  	if (ret < 0)
>  		goto err_disable_regulators;
>  
> -	ret = reset_control_assert(res->pci_reset);
> -	if (ret < 0) {
> -		dev_err(dev, "cannot assert pci reset\n");
> +	ret = reset_control_assert(res->rst);
> +	if (ret) {
> +		dev_err(dev, "reset assert failed (%d)\n", ret);
>  		goto err_disable_clocks;
>  	}
>  
>  	usleep_range(1000, 1500);
>  
> -	ret = reset_control_deassert(res->pci_reset);
> -	if (ret < 0) {
> -		dev_err(dev, "cannot deassert pci reset\n");
> +	ret = reset_control_deassert(res->rst);
> +	if (ret) {
> +		dev_err(dev, "reset deassert failed (%d)\n", ret);
>  		goto err_disable_clocks;
>  	}

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
