Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34A6BC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 08:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KIsrsBZvxSSA2SyzLwAhbCeb5eelAWRqjn5E6e2Ij3k=; b=VFxFLo3sADNLfw
	77OephQBOAyyeBKT20o2lkuzgc0Q3j7rO8JSDE4AVg7Y6RmJ5M4QM/ZguBcD5APP89m5KkdILwiXq
	oiLfNY6cqFLr+jIiVrMF6vGFXJiIIpMn/fqSXhFx2D1YTH2lqByGrRJGans4ueMWLPjUfD5N90s6q
	5AMLlaHYysFv1y0aJk1xICKSk3KAh7YRKyK/Sv4p7k3+0hrjduk9oYDiRC6t6W7xpPyw3p2xP+/EF
	/vtj9npq/2hADSBDrThbR8L65dMz5N5/ez5xLYiAYdcjDKU7LdVv7P1Bq+I1aib5RhU3YKwhgu1DO
	3Z/ojHVL1Wvp93qnpQhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5s4-00977a-BT; Tue, 27 Sep 2022 08:23:16 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5kz-00947D-Lx
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 08:15:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id CCA7DCE1777;
	Tue, 27 Sep 2022 08:15:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10349C433D6;
	Tue, 27 Sep 2022 08:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664266545;
	bh=FZg9AeA4UkTjA9OnzBdxptxRWgoL9SJpqAjfj4pKr3I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ejt/WDlhvbW7IshGeu75MCmsOm40K41R3CDOoQghaHktP17AgJSasPWj16YGGw6SF
	 K5adwvapO82uaItX2QKgd88GvG4W0T1btP+QHGLKpu5E21+o9Eg0Rtds0oWtIcVmwA
	 mkr6oWcagEdGA7fHMeni8kMXZkXM//1Fqe8aw3UWPHtAtZ1BuQpH6CcCxLQcHEh+1J
	 Rf3HRAAol/epRnUjX57UkCuvu1A9E52ybhstYKvHe6VjzDXd3CWoPyc9Q96srtLsZi
	 VizEwd2uxvMxUzP5LvvJ1voVArDj9orKbORSTpu0xq2FPN2lBoXAZKhLqTt0MsTdsF
	 vzf6si6ftNSzg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1od5kt-0005Vu-1E; Tue, 27 Sep 2022 10:15:51 +0200
Date: Tue, 27 Sep 2022 10:15:51 +0200
From: Johan Hovold <johan@kernel.org>
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
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 4/5] PCI: qcom: Setup PHY to work in RC mode
Message-ID: <YzKxN/tyt/yY3RoZ@hovoldconsulting.com>
References: <20220926173435.881688-1-dmitry.baryshkov@linaro.org>
 <20220926173435.881688-5-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220926173435.881688-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_011557_961278_9561E424 
X-CRM114-Status: GOOD (  16.96  )
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

On Mon, Sep 26, 2022 at 08:34:34PM +0300, Dmitry Baryshkov wrote:
> Call phy_set_mode_ext() to notify the PHY driver that the PHY is being
> used in the RC mode.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

I believe you forgot to add Jingoo Han's tag:

	https://lore.kernel.org/all/CAPOBaE548e669mbg5vM+ZoAgOz+g4eKRRODcRXRX-r+cdMf1yQ@mail.gmail.com/

> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
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

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
