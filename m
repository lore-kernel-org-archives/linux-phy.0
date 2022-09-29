Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A012C04A95
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 07:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3zlPD2XJG5S8Zi+Whxoto8OK57Oir4ec/JDXVrb0c0=; b=EQeTtlvJVVhYzZ
	LPv4yOZjx/iawn1NHTrNApQtfXIsIxaidtWSaxOgc9Dsy28B6lz6ZYqsNwnXk5CmnDYRlnzJwM3qQ
	XSdNRo6tOj/DB77Tkmf67k3IjUT5+BwJiU3GUq7bhaKje7zyarcSb0LmfvgHOBggud51unsywcUg9
	WtXgoF8tucnM6CGc4FwWGvAkBXYLJMpV1OqqU+LcSThOv3p+Ze13TEUH6uzSM1kXkZWEasQyiVJS2
	g6lqd4Kx660qTSVTcBhOtBmRHEDx9RssRkYPEHpqt79We5ltc3SfFwzSxi5z1DsbtLToS8EN/X8rX
	KU6mh11nywgvQA9Bmc8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odnvg-001ZLA-5E; Thu, 29 Sep 2022 07:25:56 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odnvd-001ZJy-FW
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 07:25:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D69E9B82344;
	Thu, 29 Sep 2022 07:25:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93AA7C433D7;
	Thu, 29 Sep 2022 07:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664436350;
	bh=JZDOgB1vIukfHv5av9y47wgB68bL740uiqdRbkiYGmg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KtKAJlztbKYrxvmZ6j0cNGroPxCeHi9j66jkxA55GIN0p0IXXYj0ksD+l8aTTSSuH
	 qgs7mWjUK/BzOdP7HVMDNjk7KqT89GwQNbmuv7I4BIDRTxIo0rjOxW6E0btmRqyq7v
	 ACLYmPF3QrctN5vUOvx4ilOoUeH27Dw5gm2fiiTqbhXMFOC9DiVzoUwnfM0wSko1U5
	 mJhwE7hg4h+GU8YyiVIdHvjReB6oJMoXe5AUWnwCMHtYhiHD869sxJjwJNvqjDjAsi
	 3FOalncqgUaOF3XBXxQLFkwYNcy9LIEUEPIQiLVc+zKsVtLEI+RiCMW2hi53IEib4E
	 GRM57lDC5g7Bw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1odnvg-0006Yb-PH; Thu, 29 Sep 2022 09:25:56 +0200
Date: Thu, 29 Sep 2022 09:25:56 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 07/13] phy: qcom-qmp-pcie: clean up power-down handling
Message-ID: <YzVIhK5z3I6hjzLU@hovoldconsulting.com>
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-8-johan+linaro@kernel.org>
 <c3d39c4e-2099-b09a-8486-8abae7336611@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c3d39c4e-2099-b09a-8486-8abae7336611@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_002553_682897_8F1E7537 
X-CRM114-Status: GOOD (  19.62  )
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

On Wed, Sep 28, 2022 at 10:15:46PM +0300, Dmitry Baryshkov wrote:
> On 28/09/2022 18:28, Johan Hovold wrote:
> > Always define the POWER_DOWN_CONTROL register instead of falling back to
> > the v2 offset during power on and power off.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 20 ++++++--------------
> >   1 file changed, 6 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index eea66c24cf7e..47cdb9ed80cd 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > @@ -90,12 +90,14 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
> >   	[QPHY_SW_RESET]			= 0x00,
> >   	[QPHY_START_CTRL]		= 0x08,
> >   	[QPHY_PCS_STATUS]		= 0x174,
> > +	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
> >   };
> 
> Without symbolic names it's not obvious that 0x04 (and thus this 
> regs_layout) can be used for v2 and v3, but not for v4.

It's no less obvious than it was when we were falling back to the v2
define when it wasn't in the table.

> @@ -1872,13 +1874,8 @@ static int qmp_pcie_init(struct phy *phy)
>       if (ret)
>               goto err_assert_reset;
> -     if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL])
> -             qphy_setbits(pcs,
> -                             cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> -                             cfg->pwrdn_ctrl);
> -     else
> -             qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
> -                             cfg->pwrdn_ctrl);
> +     qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> +                     cfg->pwrdn_ctrl);

This is the cruft I'm getting rid of.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
