Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99448C8303E
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 17:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1PAtEJ1oNU1MUpCtRyeUbd7rhQ5EqgTC2lJPJW9g88=; b=bBEDpYpj9EkMEJ
	cBLiOI2aR/z/DpV4AXMthzTN1NW2QqG7s5jMFnyE/n6jsN5mzR4mcuX+EyR0zJUhimNEskdpXvAno
	MZ3ETXmL2qRhuMS9lp73i5QCYxDHvDPIfIRdQByed34jRiyHDPI5Po5c1NdvFTz86YRXYSyibnrK1
	nkmSa6+7KcsVcL2HnI4rigeh4h77mO0sy5VmTDMCB5EGv89KQ6wcDWjoKuINS9rQ9MmIaREWImF/b
	uuENdeaIGYBBQtZ508f0drcHAjINMlPXPspIVAjCg3vhQTcSkWfpgN+C5SdH9l2xhwG21uuoOvtIH
	75dKmrabV0mxahvmooBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjjHY-00000003517-1PfR;
	Thu, 29 Aug 2024 17:50:04 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjjGe-000000034sk-32TD;
	Thu, 29 Aug 2024 17:49:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id C8F46AE082E;
	Thu, 29 Aug 2024 17:49:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 481FEC4CEC1;
	Thu, 29 Aug 2024 17:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724953746;
	bh=QWWOFe/ASXAPJ38v2aHBuhEpRmh5sbL8ny7rcbpiugc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=alE77GbcKxrXUGBBTKl/3SKJ027OH7GUR7jM0NlH/DXMGZLzbUVI72oqOpZuR/tXk
	 D9Iede+iR5Gbjgn8ScAJ7+oCPY7JKMVYn04trYdl16x62MEKLZ5dphIoP62KyFNdZI
	 BRRWGvkUhf112pDrV99Ei3Hf9bcM68O28H/YHuFQslAQ1I4hWQNyfbPcNiFAumZpL5
	 DnCMTjTEB63jEKLLbZCOhlMX5jOMv5YjK2chde7GdySjIBKNNZaGOinnAOb/9a1jf3
	 CojHvFfX2JSWOYghFo2wByQPQ0UEjRcfJxhu8JneRLSu6GCP6hVA3T7qDatdsTUWfj
	 H3s8b5YjuXhsg==
Date: Thu, 29 Aug 2024 23:19:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yangtao Li <frank.li@vivo.com>
Cc: kishon@kernel.org, krzk@kernel.org, alim.akhtar@samsung.com,
	konrad.dybcio@linaro.org, liubo03@inspur.com, robh@kernel.org,
	yuvaraj.cd@gmail.com, ks.giri@samsung.com, vasanth.a@samsung.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 2/4] phy: qualcomm: phy-qcom-apq8064-sata: Convert to
 devm_clk_get_enabled()
Message-ID: <ZtC0j1kaHKHA3v/P@vaman>
References: <20240822084400.1595426-1-frank.li@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240822084400.1595426-1-frank.li@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_104909_227080_FD9618F0 
X-CRM114-Status: GOOD (  22.65  )
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

On 22-08-24, 02:44, Yangtao Li wrote:
> Convert devm_clk_get(), clk_prepare_enable() to a single
> call to devm_clk_get_enabled(), as this is exactly
> what this function does.

Can you please resend this as a single thread. Threading is broken in
this series, I see 2, 3 patches, no idea where 1, 4 are...

> 
> Signed-off-by: Yangtao Li <frank.li@vivo.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-apq8064-sata.c | 22 ++++----------------
>  1 file changed, 4 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
> index 3642a5d4f2f3..18c0dbd8e707 100644
> --- a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
> +++ b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
> @@ -68,7 +68,6 @@
>  
>  struct qcom_apq8064_sata_phy {
>  	void __iomem *mmio;
> -	struct clk *cfg_clk;
>  	struct device *dev;
>  };
>  
> @@ -203,7 +202,7 @@ static int qcom_apq8064_sata_phy_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct phy_provider *phy_provider;
>  	struct phy *generic_phy;
> -	int ret;
> +	struct clk *cfg_clk;
>  
>  	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
>  	if (!phy)
> @@ -223,19 +222,14 @@ static int qcom_apq8064_sata_phy_probe(struct platform_device *pdev)
>  	phy_set_drvdata(generic_phy, phy);
>  	platform_set_drvdata(pdev, phy);
>  
> -	phy->cfg_clk = devm_clk_get(dev, "cfg");
> -	if (IS_ERR(phy->cfg_clk)) {
> +	cfg_clk = devm_clk_get_enabled(dev, "cfg");
> +	if (IS_ERR(cfg_clk)) {
>  		dev_err(dev, "Failed to get sata cfg clock\n");
> -		return PTR_ERR(phy->cfg_clk);
> +		return PTR_ERR(cfg_clk);
>  	}
>  
> -	ret = clk_prepare_enable(phy->cfg_clk);
> -	if (ret)
> -		return ret;
> -
>  	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
>  	if (IS_ERR(phy_provider)) {
> -		clk_disable_unprepare(phy->cfg_clk);
>  		dev_err(dev, "%s: failed to register phy\n", __func__);
>  		return PTR_ERR(phy_provider);
>  	}
> @@ -243,13 +237,6 @@ static int qcom_apq8064_sata_phy_probe(struct platform_device *pdev)
>  	return 0;
>  }
>  
> -static void qcom_apq8064_sata_phy_remove(struct platform_device *pdev)
> -{
> -	struct qcom_apq8064_sata_phy *phy = platform_get_drvdata(pdev);
> -
> -	clk_disable_unprepare(phy->cfg_clk);
> -}
> -
>  static const struct of_device_id qcom_apq8064_sata_phy_of_match[] = {
>  	{ .compatible = "qcom,apq8064-sata-phy" },
>  	{ },
> @@ -258,7 +245,6 @@ MODULE_DEVICE_TABLE(of, qcom_apq8064_sata_phy_of_match);
>  
>  static struct platform_driver qcom_apq8064_sata_phy_driver = {
>  	.probe	= qcom_apq8064_sata_phy_probe,
> -	.remove_new = qcom_apq8064_sata_phy_remove,
>  	.driver = {
>  		.name	= "qcom-apq8064-sata-phy",
>  		.of_match_table	= qcom_apq8064_sata_phy_of_match,
> -- 
> 2.39.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
