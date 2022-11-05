Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04901C4332F
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 13:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UL+p2+E1m0yNzij1PnHTrJZgBvoXHz3xzjs9We+n8Ic=; b=U3QnsPGS/Q9j7V
	mKxfsfNbezkRMg1gDPh2EeSv+1Lw07iO3rc0RSN3rG5COVXDxNLRLj3ZXPCwYrmvcA1ydPy0ifh4+
	B/5BstBEELPvi0J+FBJc1XuU+TTJLgcqXIGy5F9sHUJFnJ4d3qINlh9uQ8Kuv+rQB488Ud21IKRYk
	Sr+0QpgU7cbCNgHLu/SfbkwMS2C1I6yxm82dmOgZFpaAil/3TiWsmQ77U1tXP24L7h9s6PmHyqdGE
	tF/rgo4rI/MKro34wZQV02dl6QK7nD1uEg3UesK71KpQBztqwlxFhBCYh/mLb6InVWBbt6ZO/BG2n
	jStpyQAwVXrBF0dskFbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orJ38-006a0Z-Cd; Sat, 05 Nov 2022 13:17:26 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orJ36-006Zzq-An
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 13:17:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C9702B815C6;
	Sat,  5 Nov 2022 13:17:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 757F0C433C1;
	Sat,  5 Nov 2022 13:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667654241;
	bh=g8lIKSV/SnGce3PP/TyHF+6TUk0vGoCQ14dXjV9GD4Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r77WgSbuYIqnJVLLN+6Wh2Qi3bbAn4mvy6z83OjfMXHzJ9UB0haxjhyOxJ2OazLil
	 uthSj0nqeMSOwcSfRMS/mCZlOjRhGhq4AXqkRDEKSkL816JMAJAydP2mEwMslFg7Oo
	 chDeMPi88bk3fJ3JZDdxk3L6RigxvJNnQar+IQRhZOem/U2Z6LzSVVK27qEWJmyfEH
	 2Dt50gtREw/WzVI6WTb9DUcusA2iWogSqqAL3DQuQwFvL2DyM+sxdwFk52GprRLQL6
	 2p2e94UHD8g7GRP+61rRMJINJh27KqwAt2LI3AnVE/zXgrXhoBgaroTHaHZkHcGhbI
	 YdPwsfg7DATBA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1orJ2j-0006ok-8P; Sat, 05 Nov 2022 14:17:01 +0100
Date: Sat, 5 Nov 2022 14:17:01 +0100
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 09/16] phy: qcom-qmp-pcie: add register init helper
Message-ID: <Y2ZiTWk+dJj/XNu/@hovoldconsulting.com>
References: <20221028133603.18470-1-johan+linaro@kernel.org>
 <20221028133603.18470-10-johan+linaro@kernel.org>
 <Y2ZSVooZDBDnsKD3@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y2ZSVooZDBDnsKD3@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_061724_675548_3D47B8A7 
X-CRM114-Status: GOOD (  22.68  )
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

On Sat, Nov 05, 2022 at 05:38:54PM +0530, Vinod Koul wrote:
> On 28-10-22, 15:35, Johan Hovold wrote:
> > Generalise the serdes initialisation helper so that it can be used to
> > initialise all the PHY registers (e.g. serdes, tx, rx, pcs).
> > 
> > Note that this defers the ungating of the PIPE clock somewhat, which is
> > fine as it isn't needed until starting the PHY.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 37 +++++-------------------
> >  1 file changed, 8 insertions(+), 29 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index 791ed7ef0eab..f57d10f20277 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > @@ -1820,27 +1820,22 @@ static void qmp_pcie_configure(void __iomem *base,
> >  	qmp_pcie_configure_lane(base, tbl, num, 0xff);
> >  }
> >  
> > -static void qmp_pcie_serdes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
> > -{
> > -	void __iomem *serdes = qmp->serdes;
> > -
> > -	if (!tbls)
> > -		return;
> > -
> > -	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
> > -}
> > -
> > -static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
> > +static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
> >  {
> >  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> > +	void __iomem *serdes = qmp->serdes;
> >  	void __iomem *tx = qmp->tx;
> >  	void __iomem *rx = qmp->rx;
> >  	void __iomem *tx2 = qmp->tx2;
> >  	void __iomem *rx2 = qmp->rx2;
> > +	void __iomem *pcs = qmp->pcs;
> > +	void __iomem *pcs_misc = qmp->pcs_misc;
> >  
> >  	if (!tbls)
> >  		return;
> >  
> > +	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
> 
> We are tbls

Yeah, it's a separate function.

Note that qmp_pcie_configure_lane() above use 'tbl' too.

> > +
> >  	qmp_pcie_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
> >  	qmp_pcie_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
> >  
> > @@ -1848,15 +1843,6 @@ static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_t
> >  		qmp_pcie_configure_lane(tx2, tbls->tx, tbls->tx_num, 2);
> >  		qmp_pcie_configure_lane(rx2, tbls->rx, tbls->rx_num, 2);
> >  	}
> > -}
> > -
> > -static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
> > -{
> > -	void __iomem *pcs = qmp->pcs;
> > -	void __iomem *pcs_misc = qmp->pcs_misc;
> > -
> > -	if (!tbls)
> > -		return;
> >  
> >  	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
> >  	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
> > @@ -1932,8 +1918,8 @@ static int qmp_pcie_power_on(struct phy *phy)
> >  	else
> >  		mode_tables = cfg->tables_ep;
> >  
> > -	qmp_pcie_serdes_init(qmp, &cfg->tables);
> > -	qmp_pcie_serdes_init(qmp, mode_tables);
> > +	qmp_pcie_init_registers(qmp, &cfg->tables);
> > +	qmp_pcie_init_registers(qmp, mode_tables);
> 
> but here tables :(
> 
> Lets stick with either please, or if we have differentiation lets make
> it real obvious

It's not uncommon to use shorter local identifiers and a more descriptive
name in structures, but since the driver already used 'tbl' consistently
before the recent addition of the aggregate tables structure, I can
rename also those pointers so that we use 'tbl' and 'tbls' consistently
throughout the driver.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
