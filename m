Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBD74C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 09:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5tW/PdUYMHUSPpl9fHngMOMynShs5mCH3XI3JJy6dc=; b=wNaWSQIo3nDu7z
	GCD9McvoHpqj1f5z9af1l/+lra4AN5TH03tl8DDyLwQKnVEWCJxIM8G7T9xjBNrZ+3dj7gqxAK7Se
	GGU2IudtpNSVfLYwObb3Sk15qx4HRXQ/R+KdHoUxdNSaQErOsr41LKqCNAr9gMkUy/q5sBsem3LWC
	OQfeJ/mKX0BF6/hBhteTMzpb4ORZWJjCbNfNlhnSJXEx+54DMneZ+kFiwjJ0Is1K4NuOgbMjXBBhJ
	/4fhWTRiDnCrC+6XRPjaQq6JB7vng8ilUegJfE9oPvU/gLPI9mFfalRmbjuXTEJjVFlfY0LF9mnB/
	TxUrS4CT0jpIYGtMhqPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odq5p-002BXy-Bz; Thu, 29 Sep 2022 09:44:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odq5n-002BWO-27
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 09:44:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 948D760EC9;
	Thu, 29 Sep 2022 09:44:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC76FC433D7;
	Thu, 29 Sep 2022 09:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664444670;
	bh=xbn9dftZ/gyraKhzcK3RKTlD6TEA2sJFAESzHYU82JA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fIyHytBDhyBAuoxlyZXXcMSvJhtFh3AJuComIttbuCCT+nuwwJ0CmZcBVKHm3iLH7
	 lihhojL+IFZfc76O36c8a8Yh7w/TePsR59fmTcQHedb9VWSi1UkU3h1XLeIyP6DtWr
	 e13wwc2ll809xAP35L7BzG/Y6KjjbN4h4zQ1g6cx13SKKfMvP+OupsWAZS1RRs21UB
	 //rXYOfJViaerPMOqn/dINyqw7kdeAKWUQIA9BI/jFQ68nDq5IgOdntHYZipIblE1f
	 NEcVex/2VyetBsp8+CfhrtLSuYVjmTwJVaR+24tgcZlx2PHUXplAnq4YywQWdl4A4R
	 jqw+MnMydjE8w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1odq5r-0006Dt-Rx; Thu, 29 Sep 2022 11:44:36 +0200
Date: Thu, 29 Sep 2022 11:44:35 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 00/18] phy: qcom-qmp: rework register layout tables
Message-ID: <YzVpA9zN9Fc45l7r@hovoldconsulting.com>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_024431_201557_98F4B8C3 
X-CRM114-Status: GOOD (  15.59  )
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

On Thu, Sep 29, 2022 at 02:09:56AM +0300, Dmitry Baryshkov wrote:
> This is an alternative implementation of the QMP PHY driver cleanup
> proposed by Johan at [1]. This patchset changes register layout tables
> to use symbolic names instead of bare values and attempts to tie the reg
> layout with the version of the QMP PHY.

I wouldn't call this an alternative, but rather a separate change on
top. Using separate per-IP version "register-layout" structs is in
principle a good idea. It does require a bit of extra work though, as
it's not always clear what version of the IP each platform is using (e.g.
IPQ).

I've respun the clean up series that triggered Dimitry to send this
series:

	https://lore.kernel.org/lkml/20220929092916.23068-1-johan+linaro@kernel.org/

and dropped the two patches merging the IPQ and SDM845 structs.

The register layout work can be rebased on top (trivially).

I'm not so fond of the whole splitting of header files into atoms as you
lose the overview. But I guess that's a separate discussion.

> [1] https://lore.kernel.org/linux-phy/20220928152822.30687-1-johan+linaro@kernel.org

> Dmitry Baryshkov (12):
>   phy: qcom-qmp-pcie: rework regs layout arrays
>   phy: qcom-qmp-pcie: rename regs layout arrays
>   phy: qcom-qmp-ufs: split UFS-specific v2 PCS registers to a separate
>     header
>   phy: qcom-qmp-ufs: rework regs layout arrays
>   phy: qcom-qmp-ufs: rename regs layout arrays
>   phy: qcom-qmp-usb: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
>   phy: qcom-qmp-usb: remove QPHY_PCS_MISC_TYPEC_CTRL reg
>   phy: qcom-qmp-usb: rework regs layout arrays
>   phy: qcom-qmp-pcie-msm8996: rework regs layout arrays
>   phy: qcom-qmp-combo: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
>   phy: qcom-qmp-usb: rework regs layout arrays
>   phy: qcom-qmp: move type-specific headers to particular driver
> 
> Johan Hovold (6):
>   phy: qcom-qmp-pcie: drop unused common-block registers
>   phy: qcom-qmp-pcie: clean up power-down handling
>   phy: qcom-qmp-pcie-msm8996: clean up power-down handling
>   phy: qcom-qmp-combo: clean up power-down handling
>   phy: qcom-qmp-ufs: clean up power-down handling
>   phy: qcom-qmp-usb: clean up power-down handling

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
