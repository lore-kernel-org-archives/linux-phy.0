Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 124D6C433FE
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 13:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lpiCqoHoBOhDfo36nwOmwcC+6Y5KfhZibjIUMa/W7qk=; b=GD6awGctv+rVo7
	sUjp7Jj5OUEHvtYvMjyiH4QnsSWTnzATZUih2YA4Myn684Jy4gYXIlKtu30v6L78G6cwvIFZGoidq
	YJ0kDnRrB9xZ+lgIzZ6UBi0B2ola72l2rCmw7r+URqfvDY3LfZu4E9OgzIevLeyXA6hns+CN21bmd
	P4S+ffo1yZUgkq+Mmyf+lMG9S1YaXrqWTw44FWMoGbqrpf4NQGvfRnww4tl4ks5hVPL0J8tKDcwCv
	EFfKy9ACGD32yXVztUJTGNcqUkAgDEjmsAOAkTwL9OmOC3Q3E5BG5J0XeHMpJa05XnuZEQIyYRUgs
	K2XOiD8k0UFJVsEyYrOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orJGI-006b9h-B2; Sat, 05 Nov 2022 13:31:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orJGF-006b8u-Aw
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 13:31:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C422060B31;
	Sat,  5 Nov 2022 13:30:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B146AC433D7;
	Sat,  5 Nov 2022 13:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667655057;
	bh=Exmb2YbVuJv8xgD75Jwx6M3P7AfHe0lCKRLcDlEsnKw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pPyd7d6NY3uFHHKCarHevBVmkEnP1IGtnPPCPiV186twVOs262fob0X4/QyuS0LEV
	 5v9DGoZDnSHBAE2P1j15ptsg7OrKX+3eu2Ri/xXnp4LZpt2mvsLGlrtkKUXtSsHyUL
	 xSg5L5xrFE0G3AyEdPGaIkrKdsG3kt250uDEGNqmVMwPv1snB4D5/SWGXIHdFxX076
	 UAkbh6eMnw4DY8ID9cPitTEoJXQLnlZum+UNSUCA7AsHTyE+2oJGLKTICTNZf5CB7c
	 2AXvTdXCuuvrIeJETIDtM+0KlK5TM7QKZN5ZjIehR8iYFDqwcbcaYOpG3BiJs5rASu
	 nyBMQZiEo6KFQ==
Date: Sat, 5 Nov 2022 19:00:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 09/16] phy: qcom-qmp-pcie: add register init helper
Message-ID: <Y2ZljEGAdg9zehE7@matsya>
References: <20221028133603.18470-1-johan+linaro@kernel.org>
 <20221028133603.18470-10-johan+linaro@kernel.org>
 <Y2ZSVooZDBDnsKD3@matsya>
 <Y2ZiTWk+dJj/XNu/@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y2ZiTWk+dJj/XNu/@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_063059_454030_0E34C586 
X-CRM114-Status: GOOD (  16.40  )
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

On 05-11-22, 14:17, Johan Hovold wrote:
> On Sat, Nov 05, 2022 at 05:38:54PM +0530, Vinod Koul wrote:
> > On 28-10-22, 15:35, Johan Hovold wrote:

> > > +	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
> > 
> > We are tbls
> 
> Yeah, it's a separate function.
> 
> Note that qmp_pcie_configure_lane() above use 'tbl' too.
> 
> > > +
> > >  	qmp_pcie_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
> > >  	qmp_pcie_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
> > >  
> > > @@ -1848,15 +1843,6 @@ static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_t
> > >  		qmp_pcie_configure_lane(tx2, tbls->tx, tbls->tx_num, 2);
> > >  		qmp_pcie_configure_lane(rx2, tbls->rx, tbls->rx_num, 2);
> > >  	}
> > > -}
> > > -
> > > -static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
> > > -{
> > > -	void __iomem *pcs = qmp->pcs;
> > > -	void __iomem *pcs_misc = qmp->pcs_misc;
> > > -
> > > -	if (!tbls)
> > > -		return;
> > >  
> > >  	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
> > >  	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
> > > @@ -1932,8 +1918,8 @@ static int qmp_pcie_power_on(struct phy *phy)
> > >  	else
> > >  		mode_tables = cfg->tables_ep;
> > >  
> > > -	qmp_pcie_serdes_init(qmp, &cfg->tables);
> > > -	qmp_pcie_serdes_init(qmp, mode_tables);
> > > +	qmp_pcie_init_registers(qmp, &cfg->tables);
> > > +	qmp_pcie_init_registers(qmp, mode_tables);
> > 
> > but here tables :(
> > 
> > Lets stick with either please, or if we have differentiation lets make
> > it real obvious
> 
> It's not uncommon to use shorter local identifiers and a more descriptive
> name in structures, but since the driver already used 'tbl' consistently
> before the recent addition of the aggregate tables structure, I can
> rename also those pointers so that we use 'tbl' and 'tbls' consistently
> throughout the driver.

Thanks that would be great. Lets stick to one convention throughout the
driver

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
