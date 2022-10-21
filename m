Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F35D2C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 21 Oct 2022 09:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xqswito7OWuCZNnM/xccQQ43zPK4YkijG/8LnVtqx+k=; b=b760Vp4h7IezY6
	Q+MH7vasWgweu1d+0YZT90UNEKSNTcJu9CxGLlrCJGLIoxKx7Ua7EZLYJ1Ypmof9H/6jW2l0mOCNY
	FVP/h9oOSIwFgXMDxPqtg3So/bQIfyM0m2CR/deQabD+NrlG7kLEh3+ccZrtYvuI9XxAeauDaoOlL
	cZ8KVBk3rzeCT3tYNOjx0SAlsnlTFwFYtKIXSaH9j4AChNkh3Cm/ptVZIpWGwiGE82QwGdq57x9R4
	d3xhK2d5DUrwIt5xFC5zsYH/Yo2139Ds6ELfNRISsdw8qfZhcLlT7g25TIGY7O3kA3QFB9J080S6T
	FxwVTBKnbxROy3rE6obw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olo4O-006hUh-Bt; Fri, 21 Oct 2022 09:12:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olo4M-006hTE-BI
	for linux-phy@lists.infradead.org; Fri, 21 Oct 2022 09:11:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AB59961E28;
	Fri, 21 Oct 2022 09:11:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EDB4C433D7;
	Fri, 21 Oct 2022 09:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666343517;
	bh=dH8fnaw2bSgqdWXeyJfw+/qCj6MLAJ4Vv/QAwOnPRW4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ovwbLCMioT0HuD/yB6BI0yUisLfj+eLYmAQoMXr7PGCoJjfB2P17Ekhw14UjaEeRc
	 rWsDxUtOWmNvSdTeF6UFE3rxc+U8WAEUvPJt1VGerMj/jEmcPYgHdHvvGNDX+AoXa7
	 WFJOj2GyKXQccHSCQlyWicOA3dHq1AKh12XbEQacnsz90F5XrYqCUp2TzPsMTbdqt4
	 arqMiXio8oL0P1HY7AcrcfD26KZyFDfwWTbKkA4gAFObjN+8Fkh5rqlTZ44noDS8sS
	 JkYOIlIfDSO+wBOM3wrjLk7EtRzI1RTPSIgpJn3r8Z0fuIN/zKIasmQwikKT8jS7Up
	 2R3N/BWIsFA7g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1olo47-0003Mc-2U; Fri, 21 Oct 2022 11:11:43 +0200
Date: Fri, 21 Oct 2022 11:11:43 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 12/15] phy: qcom-qmp-pcie: fix initialisation reset
Message-ID: <Y1JiT7qKERR7ktSs@hovoldconsulting.com>
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-13-johan+linaro@kernel.org>
 <02a879d4-cc7a-ca8e-7334-755873baa3e7@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <02a879d4-cc7a-ca8e-7334-755873baa3e7@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_021158_447731_A290B4E2 
X-CRM114-Status: GOOD (  26.74  )
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

On Wed, Oct 19, 2022 at 04:52:29PM +0300, Dmitry Baryshkov wrote:
> On 19/10/2022 14:35, Johan Hovold wrote:
> > Add the missing delay after asserting reset. This is specifically needed
> > for the reset to have any effect on SC8280XP.
> > 
> > The vendor driver uses a 1 ms delay, but that seems a bit excessive.
> > Instead use a 200 us delay which appears to be more than enough and also
> > matches the UFS reset delay added by commit 870b1279c7a0 ("scsi:
> > ufs-qcom: Add reset control support for host controller").
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 2 ++
> >   1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index 2f4bdef73395..9c8e009033f1 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > @@ -1866,6 +1866,8 @@ static int qmp_pcie_init(struct phy *phy)
> >   		goto err_disable_regulators;
> >   	}
> >   
> > +	usleep_range(200, 300);
> > +
> 
> If there is a v3, I'd kindly ask to add a comment about vendor using 1ms 
> here.

No, I'm going to leave this is as is. The vendor driver is just a
reference implementation with a wide range of differences which there's
little point in documenting in mainline.

This information will continue to be available in the git logs if anyone
wonders were these numbers came from.

If it turns out that some other platform needs a longer delay, we can
consider increasing the delay unconditionally after verifying
experimentally.

And anyone with access to actual documentation is of course free to
suggest a different delay from the start.

> >   	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
> >   	if (ret) {
> >   		dev_err(qmp->dev, "reset deassert failed\n");

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
