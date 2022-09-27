Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AEA2C6FA90
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 08:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKLFf0MEGq3tlFHrRvmxA26gFSnM0pI+lPHxBVSSQs4=; b=kBlyOsxh0IdHRo
	jakxrR6zHiIJHvJPvPX+l7HTZTHI4b1G6HSAbzi2hcdwZyDaVyQBQAS71Araih/Kg9+mf2MIGjIx4
	qTEcD8GWmRMsuwKaPjzArlcFskN6WWFeHHyP2GUCYkjD24mT6WXklsturrPM94nuQyJr+C13v6kq9
	2x4gi4Xr+Rnjae2mGR50cNeOG0jqNd1J3AgdKPICSSjvPErDr00KFsd1mC9BfK0GJ2fZfE26D31Qr
	p2itFEhv8YidtnjV9HoUSxGSvOIf/F7BHQ7gzt6cxRdpxg04S6f0qg6psfTdk7FaU1gcIKNNmJ0MO
	qBNTAITCCS67kse9Y7nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5kK-0093wu-73; Tue, 27 Sep 2022 08:15:16 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5eH-0091Ug-Tb
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 08:09:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 45D54B81A38;
	Tue, 27 Sep 2022 08:09:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD08FC433D6;
	Tue, 27 Sep 2022 08:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664266139;
	bh=Mb19XfGnPCcnwswVS6PF2KmTYQWlJKV6Z8OZtSEzClo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n2XhKXo4qdh4EP/FiVyhKpJbNfTSadbk6ffhXzLFpCd5LdkuJKrvrGxDZNSMZPUDr
	 f+GVP1PIIdazNdmzgwRA5JnM7y0wWw/r2kXiEZ2eAlsZPZ1nwI3q6IAZ8JXhFE9tt7
	 AhVh5u8vPwP7uoG3jSqUF5TW8RNxY3ZeVh8l1R7yrfrAkDED1u2RvoApRZf/GIjJPM
	 tUXFy0jnsjig/CyhzDfHcoVLUxF6JPKFyhE5QrGkveHIWSMj2Eh4nnWz3erMHmBWbS
	 vBEBpQI/JvT9WcUFlri1/BbkNYTjsv/HxemmwbbRAxTocCSlog8Fk8UCBfwx6DX9YZ
	 1lapEghthd67g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1od5eK-0005Ts-QN; Tue, 27 Sep 2022 10:09:04 +0200
Date: Tue, 27 Sep 2022 10:09:04 +0200
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
Subject: Re: [PATCH v5 2/5] phy: qcom-qmp-pcie: support separate tables for
 EP mode
Message-ID: <YzKvoN6hplGOKzsr@hovoldconsulting.com>
References: <20220926173435.881688-1-dmitry.baryshkov@linaro.org>
 <20220926173435.881688-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220926173435.881688-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_010902_282306_7B49DAF1 
X-CRM114-Status: GOOD (  23.96  )
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

On Mon, Sep 26, 2022 at 08:34:32PM +0300, Dmitry Baryshkov wrote:
> The PCIe QMP PHY requires different programming sequences when being
> used for the RC (Root Complex) or for the EP (End Point) modes. Allow
> selecting the submode and thus selecting a set of PHY programming
> tables.
> 
> Since the RC and EP modes share common some common init sequence, the
> common sequence is kept in the main table and the sequence differences
> are pushed to the extra tables.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 47 +++++++++++++++++++++---
>  1 file changed, 41 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index dc8f0f236212..dd7911879b10 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -14,6 +14,7 @@
>  #include <linux/of.h>
>  #include <linux/of_device.h>
>  #include <linux/of_address.h>
> +#include <linux/phy/pcie.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/regulator/consumer.h>
> @@ -1320,10 +1321,14 @@ struct qmp_phy_cfg {
>  	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
>  	const struct qmp_phy_cfg_tables tables;
>  	/*
> -	 * Additional init sequence for PHY blocks, providing additional
> -	 * register programming. Unless required it can be left omitted.
> +	 * Additional init sequences for PHY blocks, providing additional
> +	 * register programming. They are used for providing separate sequences
> +	 * for the Root Complex and for the End Point usecases.

"use cases", drop the second "for the".


> +	 *
> +	 * If EP mode is not supported, both tables can be left empty.

s/empty/unset/

>  	 */
>  	const struct qmp_phy_cfg_tables *tables_rc;
> +	const struct qmp_phy_cfg_tables *tables_ep;
>  
>  	/* clock ids to be requested */
>  	const char * const *clk_list;

> +static int qmp_pcie_set_mode(struct phy *phy,
> +				 enum phy_mode mode, int submode)

No need for line break.

> +{
> +	struct qmp_phy *qphy = phy_get_drvdata(phy);
> +
> +	switch (submode) {
> +	case PHY_MODE_PCIE_RC:
> +	case PHY_MODE_PCIE_EP:
> +		qphy->mode = submode;
> +		break;
> +	default:
> +		dev_err(&phy->dev, "Unuspported submode %d\n", submode);

You forgot to fix the "unsupported" typo.

> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}

Looks good otherwise:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
