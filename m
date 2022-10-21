Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13256C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 21 Oct 2022 11:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWU5y8vw0vpbCkgdDJkJ/TkrrtJP83VfpdiX7mmL1Lc=; b=irtSREEvdn7p6I
	lvMGDlrM6IypaT4KJBtcOWsNvYryDRSqnjT7oDqYgyFP6ugRQsH1VHHSI69C0AF3P1ZGUuKicD6Jy
	9R4aq2wDlGxVQDCEpoIX4aUYyK57vp2n764pxN5h6yCmRFagfHc4niRYgUW4CTCRxIIyfOcxoBUh8
	iTKlohNXzxY6rUrmyc8z5a3LtQp6MOzGgHzmO9YpxSCZUPgvOX4Et9v9sSeZCtUb2yqHQ8sA9Vbc3
	gVdAjgifDYJciOKJafZCMvUqUAcj3+ihdjnQLMAKWvXu38UqraOY/epZEL7HrbtFTD1ZmJ8YodBD/
	twHO28U7MVWfsM/4n/AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olqGt-007OPt-Gn; Fri, 21 Oct 2022 11:33:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olqGr-007OOm-9y
	for linux-phy@lists.infradead.org; Fri, 21 Oct 2022 11:33:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E0A3F61E7E;
	Fri, 21 Oct 2022 11:32:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9957EC433B5;
	Fri, 21 Oct 2022 11:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666351978;
	bh=bHuZR4rMM1qL/TW8wsRxJhDlERNua01QySV3U+fIvv8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eZeNVZz3JoAcPEPpF+F5AsNEFUw3zhaSpNwhImh2d3/5yg5RIN6VUDLJwWGuUFrGi
	 2FQ+bPJpzuQJE+t1NeQA679l5iRQJLYn2M28Db72OK+92h3ZqNBYYobUVuvskx1OR4
	 vGZCdwkmjqcHMrugTD8qnBqAXm4KesaTBVvpv+5FruHd0Zj+Amc6H/tnk4fyR+XWjw
	 Y97sR+w8c/+IbnV/wfw1dF8MG9KhwXMCkGIgNuojnvkQTeAHmuzJf1nZZUGLlb84Y5
	 EirV2qFDReemL+mDuJ+o6cKZQR+GH26D1UP55H7g2jC20FMDhl9C3Tw+ZiMY7sdmcl
	 Co4E0vDEHSQww==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1olqGa-00011A-QY; Fri, 21 Oct 2022 13:32:45 +0200
Date: Fri, 21 Oct 2022 13:32:44 +0200
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
Subject: Re: [PATCH v3 08/15] phy: qcom-qmp-pcie: add register init helper
Message-ID: <Y1KDXD9n0cCqjTGy@hovoldconsulting.com>
References: <20221021110947.28103-1-johan+linaro@kernel.org>
 <20221021110947.28103-9-johan+linaro@kernel.org>
 <932765e0-ecbc-8c9b-69c5-ce0bb0c8de68@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <932765e0-ecbc-8c9b-69c5-ce0bb0c8de68@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_043301_445098_EAACC111 
X-CRM114-Status: GOOD (  22.23  )
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

On Fri, Oct 21, 2022 at 02:18:49PM +0300, Dmitry Baryshkov wrote:
> On 21/10/2022 14:09, Johan Hovold wrote:
> > Generalise the serdes initialisation helper so that it can be used to
> > initialise all the PHY registers (e.g. serdes, tx, rx, pcs).
> > 
> > Note that this defers the ungating of the PIPE clock somewhat, which is
> > fine as it isn't needed until starting the PHY.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 51 +++++++-----------------
> >   1 file changed, 15 insertions(+), 36 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index dd7e72424fc0..f57d10f20277 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > @@ -1820,46 +1820,32 @@ static void qmp_pcie_configure(void __iomem *base,
> >   	qmp_pcie_configure_lane(base, tbl, num, 0xff);
> >   }
> >   
> > -static void qmp_pcie_serdes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
> > -{
> > -	void __iomem *serdes = qmp->serdes;
> > -
> > -	if (!tables)
> > -		return;
> > -
> > -	qmp_pcie_configure(serdes, tables->serdes, tables->serdes_num);
> > -}
> > -
> > -static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
> > +static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
> >   {
> >   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> > +	void __iomem *serdes = qmp->serdes;
> >   	void __iomem *tx = qmp->tx;
> >   	void __iomem *rx = qmp->rx;
> >   	void __iomem *tx2 = qmp->tx2;
> >   	void __iomem *rx2 = qmp->rx2;
> > +	void __iomem *pcs = qmp->pcs;
> > +	void __iomem *pcs_misc = qmp->pcs_misc;
> >   
> > -	if (!tables)
> > +	if (!tbls)
> >   		return;
> >   
> > -	qmp_pcie_configure_lane(tx, tables->tx, tables->tx_num, 1);
> > -	qmp_pcie_configure_lane(rx, tables->rx, tables->rx_num, 1);
> > +	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
> > +
> > +	qmp_pcie_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
> > +	qmp_pcie_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
> >   
> >   	if (cfg->lanes >= 2) {
> > -		qmp_pcie_configure_lane(tx2, tables->tx, tables->tx_num, 2);
> > -		qmp_pcie_configure_lane(rx2, tables->rx, tables->rx_num, 2);
> > +		qmp_pcie_configure_lane(tx2, tbls->tx, tbls->tx_num, 2);
> > +		qmp_pcie_configure_lane(rx2, tbls->rx, tbls->rx_num, 2);
> >   	}
> > -}
> > -
> > -static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
> > -{
> > -	void __iomem *pcs = qmp->pcs;
> > -	void __iomem *pcs_misc = qmp->pcs_misc;
> > -
> > -	if (!tables)
> > -		return;
> >   
> > -	qmp_pcie_configure(pcs, tables->pcs, tables->pcs_num);
> > -	qmp_pcie_configure(pcs_misc, tables->pcs_misc, tables->pcs_misc_num);
> > +	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
> > +	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
> 
> As seem above, if nothing else, tables -> tbls rename generates 
> unnecessary diff.

Can you please stop with the bikeshedding. This is not about keeping the
diff small, this is about readability of the new helper function as I
already told you.

And this is a *local* identifier, not some state member that needs a
super descriptive name. And the rest of the driver used "tbl"
consistently until your EP/RC mode patches for that matter.

> Other than that LGTM.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
