Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1C5CC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 13:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mz08kgO2ycBgSmCnip4vqYvHeMYoF5RE2IZ6Qtnfy3M=; b=kss043qewJ3obj
	ZqJma0WeN/1Hu39SRL2g0+fpjjVC3tolc/sLSi3/W/X/6l2AGmG8ml1/KgnK5juMGEklm6LLtKq/o
	Ww3v54y4jjKXF578+kpBzVkBm8ZR2xHRhsgnc7QIXt38AVAb8QVxG7ZeC8lZkif5gnKea7+30Ix/7
	jVnwr39R+59+F8k9OO6WCRjOOiPD5hn07N212jz3UyztbDeFy8uCB5dgU9Nxb6CLh7++WkGwviYKd
	UU/XzL93xP6VmC+LpHlM858yDhNxS7SukBZ8blYe6gnOl53fnQn7PHfDyXxDJjnu1tWmcncWJevUG
	58AJXDi3qTxyBJzOpdNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol95F-0027kH-5s; Wed, 19 Oct 2022 13:26:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol959-0027in-3e
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 13:26:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B1DE0618C4;
	Wed, 19 Oct 2022 13:26:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16197C433C1;
	Wed, 19 Oct 2022 13:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666185961;
	bh=A5t4CXm5J1KUg+zlPQFV5lxTl6j5CK+3GZRfiu9Ujqk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U4Uq19l5+cJ0WdPmSnhzmdK47Q0oxS06zMDRehgCsk9Vl2btsZ9fgLxXyBD8xkDET
	 KrYYUPaM2H90Jwaxh6euwEnnqQ3sTThI7BAw+amUyBNMS0L/tO/yxHXoiADfss5o10
	 E30f1kKn6s4sn1ucRIqBDdXC/rDUGqwJEplUbdwFoE5+izBqKzTq6QBY+m9MZF1Edm
	 dlKbDAQFTwPMAaTd08shIl+KjWmILIt1CS84ZIdDWPUZ7gtMZJ6h1H4DrWWffCC2nf
	 igH1hYaHF6OK4zqnQ9oDbVlpwFStdjduhhDD5wq0muwmF714bJkZv/VnlKt7bk0lAX
	 t6WilUs1ndNFw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ol94v-0005wG-3Y; Wed, 19 Oct 2022 15:25:49 +0200
Date: Wed, 19 Oct 2022 15:25:49 +0200
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
Subject: Re: [PATCH v2 08/15] phy: qcom-qmp-pcie: add register init helper
Message-ID: <Y0/63eH82t2zXFi5@hovoldconsulting.com>
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-9-johan+linaro@kernel.org>
 <0f1fff20-772f-c4d1-f803-f1824ef23780@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0f1fff20-772f-c4d1-f803-f1824ef23780@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_062603_247268_11441968 
X-CRM114-Status: GOOD (  22.43  )
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

On Wed, Oct 19, 2022 at 04:12:02PM +0300, Dmitry Baryshkov wrote:
> On 19/10/2022 14:35, Johan Hovold wrote:
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
> Nit: could we please keep it as `tables'?

I considered that but found that the longer identifier hurt
readability so I prefer to use "tbls" here.

Compare

	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);

	qmp_pcie_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
	qmp_pcie_configure_lane(rx, tbls->rx, tbls->rx_num, 1);

	if (cfg->lanes >= 2) {
		qmp_pcie_configure_lane(tx2, tbls->tx, tbls->tx_num, 2);
		qmp_pcie_configure_lane(rx2, tbls->rx, tbls->rx_num, 2);
	}

	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);

with

	qmp_pcie_configure(serdes, tables->serdes, tables->serdes_num);

	qmp_pcie_configure_lane(tx, tables->tx, tables->tx_num, 1);
	qmp_pcie_configure_lane(rx, tables->rx, tables->rx_num, 1);

	if (cfg->lanes >= 2) {
		qmp_pcie_configure_lane(tx2, tables->tx, tables->tx_num, 2);
		qmp_pcie_configure_lane(rx2, tables->rx, tables->rx_num, 2);
	}

	qmp_pcie_configure(pcs, tables->pcs, tables->pcs_num);
	qmp_pcie_configure(pcs_misc, tables->pcs_misc, tables->pcs_misc_num);

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
