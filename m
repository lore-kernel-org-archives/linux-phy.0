Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E9BAECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 12:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FO8MOe0Cn9O9RYPeltrPFIsgN2nozAC98RLLpvB3pU=; b=03T+QUJRf2HG9g
	Vttxr17tKxtNYS6rcNGWfyIamPy/Z+KleKb7uMN7fYNV/b83h7+WG+4iWd2IjFqgWy9RlXg/7YLPb
	hNgIkXg5qno6FMhkbzfgKzJEODzn695Gwk72mJWuH6Aitaty7tYuBKNuNo/EO5xJpvUO2LYYcXK3R
	W9hKKx4S0rAgaUG/JLEUKlg6kfnVCkSZwZ5TcqMGJwDKdtOGk4RZxo6/J1UGZk83seMs8CyOsFE+c
	zyKtou7hroG4vSvPWkyr8sdlxtFoMSBo4qb1BCn6FdN/l7SU6TMASYS471sHy9az4DXBco//MTh5V
	B4RRuzAqKfNEusna4txA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOsv-00HAlU-QY; Fri, 28 Oct 2022 12:54:53 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOss-00HAjB-Ty
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 12:54:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 936B3CE2B00;
	Fri, 28 Oct 2022 12:54:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2483DC433C1;
	Fri, 28 Oct 2022 12:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666961683;
	bh=m+dABeNdo1jP9iK7JBRoT+Hc2J3W+ylW1aqtkyVNMsc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fJrku492UpL2ToEbDTFMxi6MgjxD8xG5ZhVFxQ/A9TlfqFvWZkd6YLnAQbuq9pKbh
	 ps3zJuE/fIRhkFDJkAflSMwdYg+b3yibDzDa3/Dxp08yf8e+gbx14ZjOSH6XY3xIcN
	 TWMCsORy9TMbyiYTjXGXtgoh9tew9Xi0nAkPJYGOBYhZBps6GAlIUVZ2chV7h0K5LR
	 2PSuzXsAOZurYLCZeO2F5mat8WIR7PFCU+M3t/DStOe6WMLFnE4DtCbeFTXINqb41j
	 7EkujZVKWctY0xUTAOY3BvW/ka9zyXltTX6ozzoEj9eW8rirUO6vufCHrwND57NpSS
	 OtA2CHU8IIIVQ==
Date: Fri, 28 Oct 2022 18:24:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 08/15] phy: qcom-qmp-pcie: add register init helper
Message-ID: <Y1vRDv+hrMmnqwPj@matsya>
References: <20221021110947.28103-1-johan+linaro@kernel.org>
 <20221021110947.28103-9-johan+linaro@kernel.org>
 <932765e0-ecbc-8c9b-69c5-ce0bb0c8de68@linaro.org>
 <Y1KDXD9n0cCqjTGy@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y1KDXD9n0cCqjTGy@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_055451_922569_97C7C9B4 
X-CRM114-Status: GOOD (  25.86  )
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

On 21-10-22, 13:32, Johan Hovold wrote:
> On Fri, Oct 21, 2022 at 02:18:49PM +0300, Dmitry Baryshkov wrote:
> > On 21/10/2022 14:09, Johan Hovold wrote:
> > > Generalise the serdes initialisation helper so that it can be used to
> > > initialise all the PHY registers (e.g. serdes, tx, rx, pcs).
> > > 
> > > Note that this defers the ungating of the PIPE clock somewhat, which is
> > > fine as it isn't needed until starting the PHY.
> > > 
> > > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 51 +++++++-----------------
> > >   1 file changed, 15 insertions(+), 36 deletions(-)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > > index dd7e72424fc0..f57d10f20277 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > > @@ -1820,46 +1820,32 @@ static void qmp_pcie_configure(void __iomem *base,
> > >   	qmp_pcie_configure_lane(base, tbl, num, 0xff);
> > >   }
> > >   
> > > -static void qmp_pcie_serdes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
> > > -{
> > > -	void __iomem *serdes = qmp->serdes;
> > > -
> > > -	if (!tables)
> > > -		return;
> > > -
> > > -	qmp_pcie_configure(serdes, tables->serdes, tables->serdes_num);
> > > -}
> > > -
> > > -static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
> > > +static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
> > >   {
> > >   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> > > +	void __iomem *serdes = qmp->serdes;
> > >   	void __iomem *tx = qmp->tx;
> > >   	void __iomem *rx = qmp->rx;
> > >   	void __iomem *tx2 = qmp->tx2;
> > >   	void __iomem *rx2 = qmp->rx2;
> > > +	void __iomem *pcs = qmp->pcs;
> > > +	void __iomem *pcs_misc = qmp->pcs_misc;
> > >   
> > > -	if (!tables)
> > > +	if (!tbls)
> > >   		return;
> > >   
> > > -	qmp_pcie_configure_lane(tx, tables->tx, tables->tx_num, 1);
> > > -	qmp_pcie_configure_lane(rx, tables->rx, tables->rx_num, 1);
> > > +	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
> > > +
> > > +	qmp_pcie_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
> > > +	qmp_pcie_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
> > >   
> > >   	if (cfg->lanes >= 2) {
> > > -		qmp_pcie_configure_lane(tx2, tables->tx, tables->tx_num, 2);
> > > -		qmp_pcie_configure_lane(rx2, tables->rx, tables->rx_num, 2);
> > > +		qmp_pcie_configure_lane(tx2, tbls->tx, tbls->tx_num, 2);
> > > +		qmp_pcie_configure_lane(rx2, tbls->rx, tbls->rx_num, 2);
> > >   	}
> > > -}
> > > -
> > > -static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
> > > -{
> > > -	void __iomem *pcs = qmp->pcs;
> > > -	void __iomem *pcs_misc = qmp->pcs_misc;
> > > -
> > > -	if (!tables)
> > > -		return;
> > >   
> > > -	qmp_pcie_configure(pcs, tables->pcs, tables->pcs_num);
> > > -	qmp_pcie_configure(pcs_misc, tables->pcs_misc, tables->pcs_misc_num);
> > > +	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
> > > +	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
> > 
> > As seem above, if nothing else, tables -> tbls rename generates 
> > unnecessary diff.
> 
> Can you please stop with the bikeshedding. This is not about keeping the
> diff small, this is about readability of the new helper function as I
> already told you.
> 
> And this is a *local* identifier, not some state member that needs a
> super descriptive name. And the rest of the driver used "tbl"
> consistently until your EP/RC mode patches for that matter.

I would disagree here... You can change tbls/tables but then it does not
help _this_ patch

Right thing would be to change tbls to tables first and then add init
helper... For a reviewer seeing an undocumented change and unnecessary
diff is not right..

Pls split if you would still like the rename

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
