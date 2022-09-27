Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2491AC07E9D
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 09:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d88D7BJKUpa2li8cLpfoFYzwDrEsZ3URxupO+TEd0ew=; b=WHT4QzV/ky+i7+
	CYqTJLuaSXpYtovE+fDQYmV2i+utWM5117Qv6XO90jmHfzofsk8SPtQrqh69tXwLWq8TqgI0zwsGE
	RHS+L4YU1rbXEt04eTg8AmcL+PIvsQzdop4R1LI2MHIlxr6J8AO/epR+NH4HoYoe1uk84VVHpj/tA
	lwhU4EQO3FPWsXLv4NXyGXzGDB+3aR1P5B1DIlKW24hkQeDuLcUGTPgKzwBjfQuwC+o6+1TOK9INj
	YcWhW3ERmiLEOqMdUPdKAryvWpeCF5k4KONnbmzTRZSOkkH3bQ8SqW1xH2oK1GOySkVkQmsAfCntD
	766Wguqry7CIAzoRsLwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od72s-009c3j-4S; Tue, 27 Sep 2022 09:38:30 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od72X-009bsi-Jq
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 09:38:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 145A1B81AD5;
	Tue, 27 Sep 2022 09:38:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AD41C433D7;
	Tue, 27 Sep 2022 09:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664271486;
	bh=P6/8gFanwrG3PUCh0iIOJR005WUSOgSKjkfz999zwME=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GkUWrgNrJ27uPvtqEDRYbbSnzxLrmXMjY7b/NAMfNMw4eUGiT0qHzYnKWXkJZ9EhX
	 ECZbRNHQmU5SHiHFqdKKcoCnWRlAWyuuerRP/DTgLqCPYZuUJGvACCfinK62/ro73h
	 WHkmnKMKEhbQd+pFSg0CV/eNNoAs5IhkUQkS8ouKapOpiqdWk3lUJb8nm1rS1db7F4
	 ORokuMD+tXogogmaR8WdPJKYPaaXnXf3ToA+IvKeldzDmmiJ5P/cfhSesmPFyZ4my7
	 pXGqnkoqPaGQr0YuGMW3ao3u2zgViOnqgNBnjUxyS+38YnxyfZMIoHKJ+g1rOeAsJV
	 dF0w5SaZODScw==
Date: Tue, 27 Sep 2022 11:37:59 +0200
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
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v6 4/5] PCI: qcom: Setup PHY to work in RC mode
Message-ID: <YzLEd16NDm+XXyDG@lpieralisi>
References: <20220927092207.161501-1-dmitry.baryshkov@linaro.org>
 <20220927092207.161501-5-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220927092207.161501-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_023814_593923_BDECEE26 
X-CRM114-Status: GOOD (  16.15  )
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

On Tue, Sep 27, 2022 at 12:22:05PM +0300, Dmitry Baryshkov wrote:
> Call phy_set_mode_ext() to notify the PHY driver that the PHY is being
> used in the RC mode.
> 
> Reviewed-by: Jingoo Han <jingoohan1@gmail.com>
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Lorenzo Pieralisi <lpieralisi@kernel.org>

> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 66886dc6e777..1027281bd6ff 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -22,6 +22,7 @@
>  #include <linux/pci.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/platform_device.h>
> +#include <linux/phy/pcie.h>
>  #include <linux/phy/phy.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
> @@ -1494,6 +1495,10 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>  	if (ret)
>  		return ret;
>  
> +	ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_RC);
> +	if (ret)
> +		goto err_deinit;
> +
>  	ret = phy_power_on(pcie->phy);
>  	if (ret)
>  		goto err_deinit;
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
