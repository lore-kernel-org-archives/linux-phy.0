Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0439D18134
	for <linux-phy@archiver.kernel.org>; Mon, 14 Oct 2024 17:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=tpcnpFdd08MuyCKkua0EAqvqcGeb1in4iMkccuWUSic=; b=rbPrp8ujVV9THn
	f0YqgYtngWWCPIrwM+uFxsTdGXi4Lv62a/styGrw4hBNaIw/h4TyMy6NJQYSnKzBNWSnh3kLNHSz3
	RePXVqVbbUzns0DRyR6zxtVV1mqwfvK0Obxjxp0MtPTPGBMCVpGelax0DZfWBUjjyjYiSR4PhfYHK
	+Xu3MNj1mex5ES0P6Q0Xc8AYwGQQyHNg5yl8GHCNHQs+1S4TMH+qzmyqizvy1Ye+ilC1aw4y04fdH
	yqF6ldhDZMWMYU65fCf7wd3KAJ0uYjq/oSrxjbSnl+pfL+5JqanizG4uCR+Eq+tZFH0QBK4bmXdD2
	oZZk5XERISeOGl5iYzgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Ohx-000000061QK-18Rv;
	Mon, 14 Oct 2024 17:18:13 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Ohu-000000061PC-29pc
	for linux-phy@lists.infradead.org;
	Mon, 14 Oct 2024 17:18:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B864AA42621;
	Mon, 14 Oct 2024 17:18:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7772C4CEC3;
	Mon, 14 Oct 2024 17:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728926289;
	bh=1ziApFauYenoCS9MtS1B+tDzb5Mh3mm1sv1noAcTU6k=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=VKA7pD6YIgstOPFxjDhROkqhZWnVeMgAJlI+6imU3n58/Pf8OdDY+M8/RVlGnN/0S
	 GBw9tyJBa4EOkMthReck7N7DDx2hSJwVrmewZ9A2OwVw1I7T4kJigLyIkKz7V6CZlE
	 TFy4aq/E0//kuoMkq6ccVSFCg6Vqm2tTIQco3BIH5akm1ByJQI8i5vobR+9r/jsTOg
	 FV5g66HvbV8K6kE4VZ1mTj951cIxhXPwCFPO8jrSQvrvA6KkchM6G6JsKDCyMpk6BY
	 qHUKn3Ng+C/0cicrNKDC6yJ+YMgmFWiU4l4MlnWIaTbMWDgUA5rSn339wwhcj/LmTZ
	 pDYKkCWYKRbNA==
Date: Mon, 14 Oct 2024 12:18:07 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v6 6/8] PCI: qcom: Fix the ops for SC8280X family SoC
Message-ID: <20241014171807.GA612411@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241011104142.1181773-7-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_101810_642748_8CF7BAF2 
X-CRM114-Status: GOOD (  18.39  )
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

[+cc Johan; if you tag a commit with Fixes:, please cc the author of
that commit!]

On Fri, Oct 11, 2024 at 03:41:40AM -0700, Qiang Yu wrote:
> On SC8280X family SoC, PCIe controllers are connected to SMMUv3, hence
> they don't need the config_sid() callback in ops_1_9_0 struct. Fix it by
> introducing a new ops struct, namely ops_1_21_0, so that BDF2SID mapping
> won't be configured during init.

Can you make the subject line say something specific about what this
patch does?  "Fix the ops" really doesn't include any useful
information.

Based on the Fixes: below, this has to do with ASPM, so the subject
line (and the commit log) should probably say something about ASPM.

I don't see the connection between your mention of SMMUv3 and ASPM.
Are there two logical changes here that should be two separate
patches?

> Fixes: d1997c987814 ("PCI: qcom: Disable ASPM L0s for sc8280xp, sa8540p and sa8295p")
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 88a98be930e3..468bd4242e61 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1367,6 +1367,16 @@ static const struct qcom_pcie_ops ops_2_9_0 = {
>  	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
>  };
>  
> +/* Qcom IP rev.: 1.21.0 */
> +static const struct qcom_pcie_ops ops_1_21_0 = {
> +	.get_resources = qcom_pcie_get_resources_2_7_0,
> +	.init = qcom_pcie_init_2_7_0,
> +	.post_init = qcom_pcie_post_init_2_7_0,
> +	.host_post_init = qcom_pcie_host_post_init_2_7_0,
> +	.deinit = qcom_pcie_deinit_2_7_0,
> +	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
> +};
> +
>  static const struct qcom_pcie_cfg cfg_1_0_0 = {
>  	.ops = &ops_1_0_0,
>  };
> @@ -1405,7 +1415,7 @@ static const struct qcom_pcie_cfg cfg_2_9_0 = {
>  };
>  
>  static const struct qcom_pcie_cfg cfg_sc8280xp = {
> -	.ops = &ops_1_9_0,
> +	.ops = &ops_1_21_0,
>  	.no_l0s = true,
>  };
>  
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
