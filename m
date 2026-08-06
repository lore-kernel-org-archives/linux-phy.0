Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BDC5C56205
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 15:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8doItlLA6FLBaper+jepZoSjpKZvxfKAFfpmR3AE6Ww=; b=KSC9ufEV/d9+6C
	W5xlitb9Am+Ds2BLsp9OulmLsS3F5LiF8OkhthmSLMzxYz+guQDq5NnPaQ59KoB9it90CUbgFaPLu
	DZmnu4YtVo9GJ/oRlK32agv3MI5XSXGTlMARgRU1uuTKGo0R2Q9mIfuCudWtLGndxAcS9oET3IOpA
	6GhQjmX/FR1isBUHgFvyDM5N7vnWVgl/ZnDwbFTw/xMczCe3a7fW8N5ZsQoyzZQCZa0lkcEQCI3E/
	0f6g9pFu9N7ra8DnD9P7cjvaKJeJ3VrbNwmZqdS2qWfW8odD59s3XUcay0x1jGEO74TzsuA2+ZSE7
	33149ae+JyC31xeD6QWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws04s-000000066eO-44KA;
	Thu, 06 Aug 2026 15:32:14 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws04s-000000066eI-1fzp
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 15:32:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1F554435D1;
	Thu,  6 Aug 2026 15:32:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AE2C1F00A3A;
	Thu,  6 Aug 2026 15:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786030334;
	bh=AZSZPzON7ucEjZ9c+7oaRZh+ub6oqa+CVuEDyGespbM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=b+fvyxByaDjz2DlM4029QCo37jD6N/G6amWNS0pnoEPmOWqb3BXt6p0mT8PEKCI2d
	 EBKROd/dJQ3b5U3eoKcId9a3UpAl85hA+ZvUpCCvTqLiNSGPV3vPvaeVt7QkWdmoum
	 A1IXr+VTkIlHZx0a11Jj7IYo519BaVJIZL9D1YWC4GzGtoDhE+UA48YP3OlU+xEnO+
	 NjeHwuNJf4BhJK5lQ0UpjmZzCtQQ5L4qBv3j3SCcIs6wURoBPLmHoO+Uhqf2p7Hh4D
	 z4cSsIv32MlfgfOAQ8zwzsLk+HGjfArNkQLPVQBQZHjdFND1320To+TmOqZDGNyzM/
	 al0c4GfCZmoOg==
Date: Thu, 6 Aug 2026 21:02:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v8 2/6] phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver
Message-ID: <anSo-TRpqVm_T_Y1@vaman>
References: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
 <20260730-glymur_linkmode_0731-v8-2-a455265ad8bf@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260730-glymur_linkmode_0731-v8-2-a455265ad8bf@oss.qualcomm.com>
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

On 30-07-26, 22:13, Qiang Yu wrote:
> Some QMP PCIe PHY hardware blocks support multiple link topologies (e.g.
> x8 or x4+x4) selected via a TCSR register. The existing single-instance
> QMP PCIe PHY driver has no way to model this: it assumes a single cfg per
> DT node and instantiates exactly one PHY.
> 
> Add a dedicated driver for this class of PHY. Match data carries a
> per-mode cfg table; qmp_pcie_multiphy_probe() reads the current link
> mode from the TCSR register pointed to by "qcom,link-mode", looks up the
> corresponding cfg array, and instantiates one qmp_pcie per sub-PHY
> required by that link mode, registering the clock and #phy-cells = <1> phy
> providers so consumers can address individual sub-PHYs by index.
> 
> The driver inherits the phy setting and link-mode programmed by firmware,
> so only the no_csr reset is used and no phy setting tables are provided.
> 
> Add the first match data and compatible, qcom,glymur-qmp-gen5x8-pcie-phy,
> for the Glymur Gen5 PCIe PHY that can bifurcate into two x4 links or
> operate as a single x8 link.
> 
> Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/Kconfig                      |  11 +
>  drivers/phy/qualcomm/Makefile                     |   1 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c | 744 ++++++++++++++++++++++
>  3 files changed, 756 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
> index 60a0ead127fa..8d45820bc84a 100644
> --- a/drivers/phy/qualcomm/Kconfig
> +++ b/drivers/phy/qualcomm/Kconfig
> @@ -77,6 +77,17 @@ config PHY_QCOM_QMP_PCIE
>  	  Enable this to support the QMP PCIe PHY transceiver that is used
>  	  with PCIe controllers on Qualcomm chips.
>  
> +config PHY_QCOM_QMP_PCIE_MULTIPHY
> +	tristate "Qualcomm QMP PCIe Multi PHY Driver"
> +	depends on PCI || COMPILE_TEST
> +	select GENERIC_PHY
> +	default PHY_QCOM_QMP

Can you please drop this. Let the respective config select it

> +
> +static struct clk_hw *qmp_pcie_multiphy_clk_hw_get(struct of_phandle_args *clkspec,
> +						    void *data)

please align this to preceding open braces. I think this might look
neater:
static struct clk_hw *
qmp_pcie_multiphy_clk_hw_get(struct of_phandle_args *clkspec, void *data)

> +{
> +	struct qmp_pcie_multiphy *qmp_data = data;
> +	unsigned int idx = 0;
> +
> +	if (clkspec->args_count)
> +		idx = clkspec->args[0];
> +
> +	if (idx < (unsigned int)qmp_data->num_pipe_outputs)
> +		return &qmp_data->pipe_out_clks[idx].hw;
> +
> +	return ERR_PTR(-EINVAL);
> +}
> +
> +static int qmp_pcie_multiphy_register_clocks(struct device *dev,
> +					      struct device_node *np,
> +					      struct qmp_pcie_multiphy *qmp_data)

please align these two to preceding open braces


> +static int qmp_pcie_probe_phy(struct qmp_pcie *qmp, struct device_node *np,
> +			      struct phy **out_phy)
> +{
> +	int ret;
> +
> +	ret = qmp_pcie_get_mmio(qmp);
> +	if (ret)
> +		return ret;
> +
> +	ret = qmp_pcie_clk_init(qmp);
> +	if (ret)
> +		return ret;
> +
> +	ret = qmp_pcie_reset_init(qmp);
> +	if (ret)
> +		return ret;
> +
> +	ret = qmp_pcie_vreg_init(qmp);
> +	if (ret)
> +		return ret;
> +
> +	ret = qmp_pcie_pd_init(qmp);
> +	if (ret)
> +		return ret;
> +
> +	*out_phy = devm_phy_create(qmp->dev, np, &qmp_pcie_phy_ops);
> +	if (IS_ERR(*out_phy))
> +		return PTR_ERR(*out_phy);
> +
> +	phy_set_drvdata(*out_phy, qmp);
> +
> +	return 0;
> +}
> +
> +

Two empty lines, please drop one

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
