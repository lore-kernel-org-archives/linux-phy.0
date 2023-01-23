Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A244EC38142
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 08:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htaPKzkXNsmijK+581tx+La/9Kw2P+JQV/yyAPWEaz4=; b=nEKZ/ev7Jcv2w7
	6yLJuBDZVJeUdKwpf/l7hZ0ASfqVQxJaoTp5qQEXXA3NfxtBaxZjguuQrPwUPg8mI/3Dw8VQGktBX
	acsvnU/USniisoVwWn4XCJmy7OizqwZFMdpFoRYHU9WP0qv9Y3sruEY4/skxwx5D1B3rGxcGEU/s/
	GBftCJBB30hZNfMu0TIRW2GFoR8AlkJqX2+efBm0ZeM383cZu0Wk3Mfz2C0RwSqsNumFTh58o20Bp
	/VCAk+4gYdeT06i6RxZgU1gHw30bSAB7wbPn/eJoatVkQwdXB6ZwqRTci0UpzG9UHMMCWSlrLPaEp
	YUbYX5ScsKNyLUll2xAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJsB2-00GLxF-Vl; Mon, 23 Jan 2023 08:27:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJsB0-00GLwB-Ga
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 08:27:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1B7BE60DE0;
	Mon, 23 Jan 2023 08:27:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7203AC4339B;
	Mon, 23 Jan 2023 08:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674462455;
	bh=OQxf5cHhznOPaRiG+Bzw+GhjQlu9qjJCNC3JaFSHGHY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IFpORtBnIh5wdoRQ9JDTdL4sSP3RQvJNn/Qhr3ZvXV5trCyNGdDYGdydk5zKGcJP/
	 IfaJrvLpnSqO0/WP39/CfEBAxBkOpx7HLvX4dsItPXB1HlsvfBTMwEgP9cLfvPVKDy
	 vfkGufdy6L/1cOOskC2qOtJfUKo1am6kFWJKZvYJIkS+r+9TCi3FQutyZJJMz6rg2q
	 l7WRarWb9MxNQSfkbd06xvLwIydylrRrHOoB4fWbreo51u2AS8x2zUft+lFY+0eXIv
	 0jNupGoDBmp511xPObxLhKL1DEc822au9TlEfwC9U8Gps07y0ED3cy5FrS65SNeeTe
	 /N1PZ1RNYmIow==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pJsAu-0007nw-88; Mon, 23 Jan 2023 09:27:32 +0100
Date: Mon, 23 Jan 2023 09:27:32 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 10/12] PCI: qcom: Add SM8550 PCIe support
Message-ID: <Y85E9N2mLOEj9K49@hovoldconsulting.com>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
 <20230119140453.3942340-11-abel.vesa@linaro.org>
 <20230119142155.GA101896@thinkpad>
 <Y8ljLJ8vsqxdQtW8@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y8ljLJ8vsqxdQtW8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_002738_627784_499D8D3A 
X-CRM114-Status: GOOD (  20.30  )
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

On Thu, Jan 19, 2023 at 05:35:08PM +0200, Abel Vesa wrote:
> On 23-01-19 19:51:55, Manivannan Sadhasivam wrote:
> > On Thu, Jan 19, 2023 at 04:04:51PM +0200, Abel Vesa wrote:
> > > Add compatible for both PCIe found on SM8550.
> > > Also add the cnoc_pcie_sf_axi clock needed by the SM8550.
> > > 
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > 
> > Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
> > 
> > > Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > > ---

> > > diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> > > index 77e5dc7b88ad..30f74bc51dbf 100644
> > > --- a/drivers/pci/controller/dwc/pcie-qcom.c
> > > +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> > > @@ -182,7 +182,7 @@ struct qcom_pcie_resources_2_3_3 {
> > >  
> > >  /* 6 clocks typically, 7 for sm8250 */
> > 
> > Now this comment is outdated ;)
> > 
> 
> Fair point. I'll wait for some more comments before
> I'll send a new version.

The comment is still correct, as several of these clocks are optional
and platform dependant. There's strictly no need to update it as part
of this patch.

> > >  struct qcom_pcie_resources_2_7_0 {
> > > -	struct clk_bulk_data clks[12];
> > > +	struct clk_bulk_data clks[13];
> > >  	int num_clks;
> > >  	struct regulator_bulk_data supplies[2];
> > >  	struct reset_control *pci_reset;
> > > @@ -1208,6 +1208,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
> > >  	res->clks[idx++].id = "noc_aggr_4";
> > >  	res->clks[idx++].id = "noc_aggr_south_sf";
> > >  	res->clks[idx++].id = "cnoc_qx";
> > > +	res->clks[idx++].id = "cnoc_sf_axi";

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
