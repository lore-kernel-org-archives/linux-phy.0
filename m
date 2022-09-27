Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F7C1C6FA83
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 09:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEKbpaLmySQWiITEA6oJ07USHSLEcOKSPNlqJgDXi+U=; b=xS4PLYmfgGTiGd
	Yiemx+bqan85gYjd7TyvG4aJVf4xIlbfRbgfTRpwh0lMWsf6np0MBbX3D0C3jYxQsG2RCcUqoWWYb
	15J/Riv6hdxMdac1gozpsawm20Bdhxq2KHLiFBC6ur74KwGWHrZa9cI1ox3Cdg+D6LGBoeSK0a2LE
	dbGw7NXzkhgKZhXTW+9OvcxexpT9n4E/v5KvtLTBaY8FqEv16bQKQTqNSsDnZ1ZF8zDr+yd8YrmOq
	hZFnuriThrerKGQFRF6a3pSIepIHUryHwc7JB8PfQHUJyBXSVy5wtVJQPYOYAgu4iLn4YgofvavOu
	qsUr4USIBb8AHpix8sjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od72o-009c1g-Hl; Tue, 27 Sep 2022 09:38:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od721-009bfA-65
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 09:37:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B59B061651;
	Tue, 27 Sep 2022 09:37:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACB39C433B5;
	Tue, 27 Sep 2022 09:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664271456;
	bh=p2vBPOpbBwRX23lt8ghHeq7yQEMpQ7ksH9q0XvT2WhU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tNEnoyA+g0pLKai+7ZujdIJf3xVouN3Mp1bHE+uNmWiU9sJKvkqVcvh7N4PpAEdba
	 rkeVDQKVeD4PHjdwuZu1UDvR0Z6IIb4AHHmLsjltBRINtxEaDwYy5flXiZoQLgRSKf
	 0xD3K9SL9abiuV2dMD1nDMiU+IGez8TaLgfgV/PopIfyFB3kwDIxUZPky5BgUeET/W
	 +mIFMSFkkA4SSo+x5N3p6ikCMz2wCKwz9pAIm+AdTrPCzJ8V64vFLtIzBSWq2zxgoK
	 CKPijR1hsQu2KTyz7oY9gmhsSqLGbtrEc3MGOSzY9CS0OEh+CoXtcqJP6fd+02ZP3M
	 fwP0CtGIi5nKw==
Date: Tue, 27 Sep 2022 11:37:28 +0200
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
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
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v6 5/5] PCI: qcom-ep: Setup PHY to work in EP mode
Message-ID: <YzLEWOFV9Iy3KSVL@lpieralisi>
References: <20220927092207.161501-1-dmitry.baryshkov@linaro.org>
 <20220927092207.161501-6-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220927092207.161501-6-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_023737_305843_67E46A8F 
X-CRM114-Status: GOOD (  16.25  )
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

On Tue, Sep 27, 2022 at 12:22:06PM +0300, Dmitry Baryshkov wrote:
> Call phy_set_mode_ext() to notify the PHY driver that the PHY is being
> used in the EP mode.
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Reviewed-by: Jingoo Han <jingoohan1@gmail.com>
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/pci/controller/dwc/pcie-qcom-ep.c | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Lorenzo Pieralisi <lpieralisi@kernel.org>

> diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> index ec99116ad05c..8dcfeed24424 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> @@ -13,6 +13,7 @@
>  #include <linux/delay.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/mfd/syscon.h>
> +#include <linux/phy/pcie.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_domain.h>
> @@ -240,6 +241,10 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
>  	if (ret)
>  		goto err_disable_clk;
>  
> +	ret = phy_set_mode_ext(pcie_ep->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_EP);
> +	if (ret)
> +		goto err_phy_exit;
> +
>  	ret = phy_power_on(pcie_ep->phy);
>  	if (ret)
>  		goto err_phy_exit;
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
