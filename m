Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3026FC05027
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 13:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKhADeGfRdPPv9iIkA4yVKWMmNIlrPosxEcR2GTeOmo=; b=GNyqRwNh3mKMms
	WPabH8sFWl53wAfsHnJewt+PBn7hAnwOOQqe2/TeCVddWLEtLqrD+61tNspTBuFYRx7Tu/woF3Olh
	R2o9l9Nk3DsE+HW7oFy6/TLLKIssoP0IAt9M/zodbznsPv3stgddbMk7G2Isa1oiNaBzXg0A9l5i7
	cGFuVeVJcLwD9yxyckB2Pwaa2/MvJPZsn8NDNZcH4JNtKdWdMXK9y7+ikh4VXFymgsnIBieXDifAA
	6HozDC4EVGZr4wzXRZj3YRcMjnu3LvqTbiH6e7Pn8DEKoJA8zevElHZCFnIPTV19HH5K0K0k5moLI
	0vAjHYoIMfwiDoM2nsNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNwY2-002BZ5-7V; Fri, 03 Feb 2023 13:56:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNwRU-0029BU-0H
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 13:49:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D382E61F3B;
	Fri,  3 Feb 2023 13:49:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60C3EC433EF;
	Fri,  3 Feb 2023 13:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675432166;
	bh=iaPYASL71iby6A+UP40u7xoSoq/l1VQRbHBGy6Rg+a0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qbc5NeqTVtIQhkiiLvbx1fOi7YVKIu43zsRy7/uyTZVpzGHUos7ybdN3bB9ujZ1yl
	 og+WAd2ugPMLTjusGMuD0lrRwgs6hw1uzzhyZe9QU+1fdsVW3Qmp6XRMefKti5092l
	 WY/2LAsHhwLsWGpxTKzoLFK6qFx27i3QJT673n2fEZK1xZqx+BlMILDZ7lJ0jM7WiE
	 vZkrrpZgijEAE7773G6FvIBsNOt9fbl/iAjllHP5cgftk4+KNLaYL9acxiJPS3K3CU
	 6pDAjISwW5abmiKTu+SsfuLoyZOwZzBxgUaf3ArltpMK/ZohcJR4orMQj1bq5RS4ZX
	 3ft+NoZFhEU5g==
Date: Fri, 3 Feb 2023 19:19:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [RFC v3 5/7] phy: qcom: phy-qcom-snps-eusb2: Add support for
 eUSB2 repeater
Message-ID: <Y90Q4rDYw9kcXmCQ@matsya>
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
 <20230202133816.4026990-6-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230202133816.4026990-6-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_054928_178190_07A6DF2F 
X-CRM114-Status: GOOD (  21.62  )
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

On 02-02-23, 15:38, Abel Vesa wrote:
> From: Neil Armstrong <neil.armstrong@linaro.org>
> 
> For USB 2.0 compliance, eUSB2 needs a repeater. The PHY needs to
> initialize and reset it. So add repeater support
> 
> Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> index 23ec162cc3bd..8d972d49732b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> @@ -128,6 +128,8 @@ struct qcom_snps_eusb2_hsphy {
>  	struct regulator_bulk_data vregs[EUSB2_NUM_VREGS];
>  
>  	enum phy_mode mode;
> +
> +	struct phy *repeater;
>  };
>  
>  static int qcom_snps_eusb2_hsphy_set_mode(struct phy *p, enum phy_mode mode, int submode)
> @@ -136,7 +138,7 @@ static int qcom_snps_eusb2_hsphy_set_mode(struct phy *p, enum phy_mode mode, int
>  
>  	phy->mode = mode;
>  
> -	return 0;
> +	return phy_set_mode_ext(phy->repeater, mode, submode);
>  }
>  
>  static void qcom_snps_eusb2_hsphy_write_mask(void __iomem *base, u32 offset,
> @@ -235,6 +237,12 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
>  	if (ret)
>  		return ret;
>  
> +	ret = phy_init(phy->repeater);
> +	if (ret) {
> +		dev_err(&p->dev, "repeater init failed. %d\n", ret);
> +		goto disable_vreg;
> +	}
> +
>  	ret = clk_prepare_enable(phy->ref_clk);
>  	if (ret) {
>  		dev_err(&p->dev, "failed to enable ref clock, %d\n", ret);
> @@ -342,6 +350,8 @@ static int qcom_snps_eusb2_hsphy_exit(struct phy *p)
>  
>  	regulator_bulk_disable(ARRAY_SIZE(phy->vregs), phy->vregs);
>  
> +	phy_exit(phy->repeater);
> +
>  	return 0;
>  }
>  
> @@ -386,6 +396,12 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
>  	if (ret)
>  		return dev_err_probe(dev, ret,
>  				     "failed to get regulator supplies\n");
> +
> +	phy->repeater = devm_phy_get(dev, "eusb2-repeater");
> +	if (IS_ERR(phy->repeater))
> +		return dev_err_probe(dev, PTR_ERR(phy->repeater),
> +				     "failed to get repeater\n");

That implies repeater is assumed to be there for all designs, how about
older devices, they may not have a repeater?

> +
>  	generic_phy = devm_phy_create(dev, NULL, &qcom_snps_eusb2_hsphy_ops);
>  	if (IS_ERR(generic_phy)) {
>  		dev_err(dev, "failed to create phy %d\n", ret);
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
