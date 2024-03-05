Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53075C54798
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 19:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1veSJu13y9uwOeI+c0ScZDXSIvHPvydDnkPpwku7VUU=; b=FRaunnXbeKkzZh
	O5KHIjQUX79kwRuxQoL2NvBMWWLZcbcZ/qywB/t528Dul3lDqWCjOveovfd/9/EZhFrZ9Id9J/LeP
	dfrT9xl1mtTwq0ULLSzV4xThT00+MahSLBHgPlP4yYVwyCuxqaRtg6XU6BqYnr/yFuo9COfYIG5Zx
	c08DR1+fD2n29cuYXvzlFALhh/ypUlvcElk/MwiC6YSRGNqcabSwPvEgdcHY07IbZ1S/PmL9oW50L
	ziNx9hcKLAlL1gU2gZl8kXGx4e8d7GD0WpAkdlQKL5qVFlMIHAHI/E2IM9BpptakyidnmE4E6kG/H
	KT7mv9R9k+1pxGd6tAXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhaMl-0000000F02Z-00tc;
	Tue, 05 Mar 2024 19:22:19 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhaMi-0000000F01y-2Ypg
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 19:22:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id ED884CE1E57;
	Tue,  5 Mar 2024 19:22:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B45EC433C7;
	Tue,  5 Mar 2024 19:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709666533;
	bh=WK1G/NaCYvxTxQ/E6MRFLMHXXETCzVWrlTphyKmWH/s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aX8Y8+Zdk66foHU/vgrLhRefbVfoikrZmF/gHYbKS8iwxqGuKMao8AKX2dUTTPLZE
	 PPxBFJmD30zUO1nCZDHPHHT+OZaih4sHfTFhtPUHQ5w9WRu6MK+nx1GImp19ggsEcQ
	 Nh5nbkHh6rAUaJsRiOuulf/KSZsrYE+czREyXeiEGhGDTnzzwssBu6lIidtAZNxaxI
	 ezPNglsH/T3IB1JRycxGEq996pd55valJ8I+djh8U9C4lbdLXAxMgYX9tR9OdQAWv2
	 opbvye3lD/s9F+4xQ5sSjKXB9aHxIzsWtkrplp+GdYMd32CvC6PHWOZM0m9C0ZjXXj
	 fxGHEoE90EXJQ==
Date: Tue, 5 Mar 2024 13:22:09 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Sriram Dash <quic_sriramd@quicinc.com>
Cc: konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, quic_wcheng@quicinc.com, Thinh.Nguyen@synopsys.com, 
	p.zabel@pengutronix.de, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	quic_psodagud@quicinc.com, quic_nkela@quicinc.com, manivannan.sadhasivam@linaro.org, 
	ulf.hansson@linaro.org, sudeep.holla@arm.com, quic_shazhuss@quicinc.com
Subject: Re: [RFC 2/3] USB: dwc3: qcom: Add support for firmware managed
 resources
Message-ID: <ltjrdqxvupzjdqa22fvpzndeh7pc7zfmi5ybqxu2izjnnxjon7@jojqkltzukvv>
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <1709657858-8563-3-git-send-email-quic_sriramd@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1709657858-8563-3-git-send-email-quic_sriramd@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_112217_026549_4BD73D5C 
X-CRM114-Status: GOOD (  25.98  )
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

On Tue, Mar 05, 2024 at 10:27:37PM +0530, Sriram Dash wrote:
> Some target systems allow multiple resources to be managed by firmware.
> On these targets, tasks related to clocks, regulators, resets, and
> interconnects can be delegated to the firmware, while the remaining
> responsibilities are handled by Linux.
> 
> The driver is responsible for managing multiple power domains and
> linking them to consumers as needed. Incase there is only single
> power domain, it is considered to be a standard GDSC hooked on to
> the qcom dt node which is read and assigned to device structure
> (by genpd framework) before the driver probe even begins.
> 
> This differentiation logic allows the driver to determine whether
> device resources are managed by Linux or firmware, ensuring
> backward compatibility.
> 
> Furthermore, minor cleanup is performed for the private data of

No "futhermore"s please, separate matters should be proposed as separate
patches. Perhaps these can be sent separately and merged immediately?

> the SNPS Femto PHY. However, ACPI handling is omitted due to the
> absence of clients on the ACPI side.
> 
> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 290 ++++++++++++++++++++------
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 213 +++++++++++++++----
>  drivers/usb/dwc3/dwc3-qcom.c                  | 259 +++++++++++++++++------

You're making independent changes across three different drivers across
two different subsystems, with different maintainers, this is not
acceptable as a single patch.

>  3 files changed, 594 insertions(+), 168 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index 8525393..1ac1b50 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -21,6 +21,9 @@
>  
>  #include "phy-qcom-qmp-common.h"
>  
> +#include <linux/pm_opp.h>
> +#include <linux/pm_domain.h>

Why are these includes alone here? Integrate your changes with the
driver properly.

> +
>  #include "phy-qcom-qmp.h"
>  #include "phy-qcom-qmp-pcs-misc-v3.h"
>  #include "phy-qcom-qmp-pcs-misc-v4.h"
> @@ -1212,6 +1215,9 @@ struct qmp_phy_cfg {
>  	unsigned int pcs_usb_offset;
>  };
>  
> +#define DOMAIN_GENPD_TRANSFER			0
> +#define DOMAIN_GENPD_CORE			1

Does this really represent the hardware? What hardware constructs does
"transfer" and "core" maps to?

> +
>  struct qmp_usb {
>  	struct device *dev;
>  
> @@ -1236,6 +1242,19 @@ struct qmp_usb {
>  	struct phy *phy;
>  
>  	struct clk_fixed_rate pipe_clk_fixed;
> +
> +	struct dev_pm_domain_list *pd_list;
> +	struct device *genpd_core;
> +	struct device *genpd_transfer;
> +
> +	bool fw_managed;
> +	/* separate resource management for fw_managed vs locally managed devices */
> +	struct qmp_usb_device_ops {
> +		int (*bus_resume_resource)(struct qmp_usb *qmp);

Not only does these function pointers make the drivers much harder to
follow, your naming of these seems chosen to maximize the confusion.

In your managed case this doesn't seem to relate to any "bus", in the
"local" case, this doesn't relate to a "bus", and these callbacks are
decoupled from the actual runtime resume and suspend cycle of the QMP
device itself...

> +		int (*runtime_resume_resource)(struct qmp_usb *qmp);
> +		int (*bus_suspend_resource)(struct qmp_usb *qmp);
> +		int (*runtime_suspend_resource)(struct qmp_usb *qmp);
> +	} qmp_usb_device_ops;
>  };
>  
>  static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
> @@ -1598,6 +1617,41 @@ static const struct qmp_phy_cfg x1e80100_usb3_uniphy_cfg = {
>  	.regs			= qmp_v7_usb3phy_regs_layout,
>  };
>  
> +static void qmp_fw_managed_domain_remove(struct qmp_usb *qmp)
> +{
> +	dev_pm_domain_detach_list(qmp->pd_list);
> +}
> +
> +static int qmp_fw_managed_domain_init(struct qmp_usb *qmp)
> +{
> +	struct device *dev = qmp->dev;
> +	struct dev_pm_domain_attach_data pd_data = {
> +		.pd_flags	= PD_FLAG_NO_DEV_LINK,

Iiuc, you attach the two power-domains with NO_DEV_LINK, such that the
pm runtime state of the device itself won't reflect on the power
domains, and then you hand-code all the involved logic yourself?

Why can't you integrate with the device and use its runtime state?
Please clearly explain why you're doing it like this in your commit
messages.

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
