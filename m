Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE83BC5320E
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 06:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oU0hknb9LT31dx+au6k3CbwO8G3bYJQHJTy7ClKXHW4=; b=mwpmtdUcnQ1MeS
	Tz3QuJQ46zSu4fCDpv2sHY2/GQ5svZUDzfc4NY5es84hwyqFZQtrmKhhhjFnuKe9fKgD6O0mZRQ6Z
	nbGlfOswZBRGWOkgCixSjGSPSuuw6o2REH2RgRRIdy2SZOlbTMx/j3RXNms6IVAnEIGVApNMCZZpq
	y7q5upGpWEchTwuFHTJDRNmHhWe8peaPcpzCBtWmNoLoTp+3m72y5H//xgqpoldPCo4nGQQS/rc5h
	+8kqc2q4nuisdFR3lxNCTyxTGWd0kiO7nP3EUekkyxWaFQurXRUmIv0FukNDSdB87PVK38pPtfa4I
	P/8DimSyridRTlzAe4Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipuW-0000000A41u-15dq;
	Tue, 27 Aug 2024 06:42:36 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipuT-0000000A401-0DJi
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 06:42:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8E0BBA415F5;
	Tue, 27 Aug 2024 06:42:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB670C4FF63;
	Tue, 27 Aug 2024 06:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724739950;
	bh=fN1ZnF3+bANyj6nCHUeB1Vt6rRnkOrtSXJk+7r0jQKY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QLtCluKmvD0oXuf6N1ljeQMDrLNkQny4MvNscJbGF2J9y3EvvCTNBZN/NqLCzGDpP
	 fU5Vk2okwhe3QGihz7Lgf8gwKk2Y2Sg50Sj163jeOJspkybovyygXxMudrdf14K8dc
	 Ma7bUVWq9bdphXUWiL0iuwX1DxHPHOLujQ6GBGaoQg/uOMrICoClDQDiteZfRJmxl7
	 /+KGZk9JavCq2QFlSVAIqPbkbuD/6Kukll60DFRuopF8cTUUNhfazAezT/0phK0Gni
	 g2DS3Zs5IOH3r3KwWQDZNQ4PIVqaxQoKprtecnjf4X0OeLxEdlFlPjONs+BeNtBzjD
	 eV3O1G+QBAEfQ==
Date: Tue, 27 Aug 2024 08:25:47 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sricharan R <quic_srichara@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, robimarko@gmail.com
Subject: Re: [PATCH V2 3/6] phy: qcom: Introduce PCIe UNIPHY 28LP driver
Message-ID: <svraqyrvmyfvezj6zuzsoc5cy3lqklwxkmjdloquj2v4r5ik72@xnbaoigiikeu>
References: <20240827045757.1101194-1-quic_srichara@quicinc.com>
 <20240827045757.1101194-4-quic_srichara@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240827045757.1101194-4-quic_srichara@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_234233_170699_45D9CE85 
X-CRM114-Status: GOOD (  10.41  )
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

On Tue, Aug 27, 2024 at 10:27:54AM +0530, Sricharan R wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add Qualcomm PCIe UNIPHY 28LP driver support present
> in Qualcomm IPQ5018 SoC and the phy init sequence.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>

...

> +static int qcom_uniphy_pcie_probe(struct platform_device *pdev)
> +{
> +	struct qcom_uniphy_pcie *phy;
> +	int ret;
> +	struct phy *generic_phy;
> +	struct phy_provider *phy_provider;
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = of_node_get(dev->of_node);
> +
> +	phy = devm_kzalloc(&pdev->dev, sizeof(*phy), GFP_KERNEL);
> +	if (!phy)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, phy);
> +	phy->dev = &pdev->dev;
> +
> +	phy->data = of_device_get_match_data(dev);
> +	if (!phy->data)
> +		return -EINVAL;
> +
> +	ret = qcom_uniphy_pcie_get_resources(pdev, phy);
> +	if (ret < 0)
> +		dev_err_probe(&pdev->dev, ret, "Failed to get resources:\n");

What the hell happened here? Read my review one more time and then git
grep for usage of dev_err_probe.

NAK.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
