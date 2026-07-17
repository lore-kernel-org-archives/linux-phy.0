Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20C88C4451B
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jul 2026 22:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXwt+hgjSu4iOppkMfX9ayupb6vKjdW9b+P/KbhjmOM=; b=Mpi75WELj0o4D/
	MaK/Pk74/j9M7TIv12eNfFDZdpNX4Xh7Ys5pwZCuKim5KfSEXEtBHlNCy3Pvm9LmdoX7hzuBZN/ho
	nGFgUf/1MvPsNg8A8u15JtBnkh58g3BEEaqNg6sbzUBKWgYyK1+0IB2KqpabhPNfyX8faZ/pOdWMk
	2iOdlhUI9CazFbWigXPxBWbSNpG4ZR/E/2j6N013vGm/PpRPH9I4nDoljV/i7fOjHwImrncyGODEr
	QAdTtyY3KLMow8v4YxpG7DDi3XAy8DU1uxcN5ESefnbL0Rhf6Mo4wyBmNoTGBAjMtzansDzdozdgH
	V8Bvf/tKU/DmwNQy0oFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkrJW-00000003MMg-1YMe;
	Fri, 17 Jul 2026 22:45:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkrJV-00000003MMY-20Z2
	for linux-phy@lists.infradead.org;
	Fri, 17 Jul 2026 22:45:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CADAD4080A;
	Fri, 17 Jul 2026 22:45:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C341E1F000E9;
	Fri, 17 Jul 2026 22:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784328348;
	bh=VG5X/evnGewSUQI8ksLSJatC1f/4dR1Q9jG5R9N+XT0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oX0jkBMPVnpHoYweyKmQ0j0ASNHIwfwVVdHWsON/eAM0/vAcsXtHOOeVx+2/RY1yH
	 0Cf19O3CS5ljFHuUnLdftCuY+/STXwuXgqpwiX3FOrC7Ef4+oqJ61gH+nfUs1q1bzK
	 FzSwR7W92oKUjKVAW50Acj+Pb3lr6sugHkv2UHf1O+ipP+FJVhBaCUbYCk65+JAyag
	 wPoUw7bBj1PwYqqfz0W33N4AhKzC8jdwgWn/vC5leJ6UrJZYUfMKSPG/sg1hSOsiQ6
	 4nro/RUA0aP7hFcmNN/kaYvvlbgjAG6pbUvYLnvgKtUFgIVjoaAbpNFlCy5WiwOtzI
	 vBsdPX5XSVI/A==
Date: Fri, 17 Jul 2026 17:45:45 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/3] phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver
Message-ID: <alqrbpi3EbvV9RnC@baldur>
References: <20260717-glymur_linkmode_0717-v5-0-4f9e87a61463@oss.qualcomm.com>
 <20260717-glymur_linkmode_0717-v5-2-4f9e87a61463@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260717-glymur_linkmode_0717-v5-2-4f9e87a61463@oss.qualcomm.com>
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

On Fri, Jul 17, 2026 at 02:58:34AM -0700, Qiang Yu wrote:
[..]
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
> new file mode 100644
> index 000000000000..b79edf2b7d5f
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
> @@ -0,0 +1,770 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2026, Qualcomm Technologies, Inc. and/or its subsidiaries.

No, there should not be a year in there.

> + */
> +
[..]
> +static int qmp_pcie_pd_power_on(struct qmp_pcie *qmp)
> +{
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	int i, ret;
> +
> +	for (i = 0; i < cfg->num_pds; i++) {
> +		ret = pm_runtime_get_sync(qmp->pd_devs[i]);

In the error path you will put pd_devs[0..i-1], but
pm_runtime_get_sync() requires that you put pd_devs[i] as well.

Please use pm_runtime_resume_and_get() instead.

> +		if (ret < 0) {
> +			dev_err(qmp->dev, "failed to power on %s domain\n",
> +				cfg->pd_names[i]);
> +			goto err_power_off;
> +		}
> +	}
> +
> +	return 0;
> +
> +err_power_off:
> +	while (--i >= 0)
> +		pm_runtime_put(qmp->pd_devs[i]);
> +
> +	return ret;
> +}

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
