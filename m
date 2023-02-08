Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ACACC636CC
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 17:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ek4YKXPnV978Eqc8vLnIzLzSKwjLKHSBqlK25jhV0t4=; b=Bw0gTUJtJZbjp3
	ex6Yv0HFGM+lqNFwu5bqPbSldgonAn/txPiC+NUsZ+yq3wdobleNgs+UPATF3rASkqjQSwxFVNwKC
	DyhAVFubqM8ppz44GlunQc8tksWZxvIMUsjHgSPemLNmIJPzOYZtCwSBAAhhxarmK61OYVOXHzqbr
	abNt1ljJ+mHstqcGrxjoRCYN0oZRORmPCLdULVmqAOeJLVvmDKQq2XfDW77DN1P78illrhaBEXPdn
	Q7nvtF7ST1Fmcd5CojUU8sBCYNQ0AXRPzCZ7Xw2CZOsyhNE1rh3f3a39o4vvzMvF0S+xhrkhjIPqr
	Yliop2vHuq6su27QF1bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPo1C-00GQ2h-Pm; Wed, 08 Feb 2023 17:14:02 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPo1A-00GQ1w-3l
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 17:14:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 778A1B81EAD;
	Wed,  8 Feb 2023 17:13:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22341C433EF;
	Wed,  8 Feb 2023 17:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675876437;
	bh=uIn14lKQnE4MQMzWpMduYFj1ngI5uQm7hYWdO129A20=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RN8YOLUV8gEKc+AyiCT/ftGUAoXNDT0DJ5CuGmHCjLmYz6q2zJx9NqcKNV+F9Q6//
	 XYXRPH8Jf9yxUbCsJCrU0a570yg7EtEfoxiDm0ZwLcxEg4x+1J3Xz/P557zioileje
	 EcSmxfxsZHFuzgVVy5RNrvZe00FE7rK9MHWWi+x461gN1RHEzoCg6QUIBfaOE02h2H
	 ox4gMmAtd5YvB+9JxT6k9vd5Kmoaz7Obj9l4CoGZjF78CPFFwzSH265At2annbgD3u
	 HvaG0ZdKKB1rOxTlagS/AU3vHagQoCDRiaWRYPVjQ4rRJUSe71LnQlTcWQINaSc/+8
	 A/y+n8r+/cUJA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pPo1h-00068l-QX; Wed, 08 Feb 2023 18:14:33 +0100
Date: Wed, 8 Feb 2023 18:14:33 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 10/12] PCI: qcom: Add SM8550 PCIe support
Message-ID: <Y+PYeRo8X8ugXyoi@hovoldconsulting.com>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
 <20230203081807.2248625-11-abel.vesa@linaro.org>
 <Y9zYpE/GnxUqnIyq@hovoldconsulting.com>
 <Y+EYhe/xYSFpI1Yn@linaro.org>
 <Y+PQYxh4t/ytOe3+@hovoldconsulting.com>
 <Y+PXeYrBBL3QaznM@linaro.org>
 <Y+PXrFxobTf/+X+U@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y+PXrFxobTf/+X+U@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_091400_474034_2E0244C9 
X-CRM114-Status: GOOD (  33.26  )
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

On Wed, Feb 08, 2023 at 07:11:08PM +0200, Abel Vesa wrote:
> On 23-02-08 19:10:17, Abel Vesa wrote:
> > On 23-02-08 17:40:03, Johan Hovold wrote:
> > > On Mon, Feb 06, 2023 at 05:11:01PM +0200, Abel Vesa wrote:
> > > > On 23-02-03 10:49:24, Johan Hovold wrote:
> > > > > On Fri, Feb 03, 2023 at 10:18:05AM +0200, Abel Vesa wrote:
> > > > > > Add compatible for both PCIe found on SM8550.
> > > > > > Also add the cnoc_pcie_sf_axi clock needed by the SM8550.
> > > > > 
> > > > > nit: You're now also adding 'noc_aggr'
> > > > > 
> > > > > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > > > > Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > > > > > Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
> > > > > > ---
> > > 
> > > > > > @@ -182,10 +182,10 @@ struct qcom_pcie_resources_2_3_3 {
> > > > > >  
> > > > > >  /* 6 clocks typically, 7 for sm8250 */
> > > > > >  struct qcom_pcie_resources_2_7_0 {
> > > > > > -	struct clk_bulk_data clks[12];
> > > > > > +	struct clk_bulk_data clks[14];
> > > > > >  	int num_clks;
> > > > > >  	struct regulator_bulk_data supplies[2];
> > > > > > -	struct reset_control *pci_reset;
> > > > > > +	struct reset_control *rst;
> > > > > 
> > > > > Please name this one 'reset' or 'resets' (e.g. to avoid hard to parse
> > > > > things like res->rst below).
> > > > 
> > > > Well, it would then be inconsitent with 2_3_3 and 2_9_0, which both use
> > > > rst.
> > > 
> > > Yeah, I saw that. Fortunately these resources are completely
> > > independent, but whatever.
> > 
> > Will do it in the next version then.

Or just leave it as is.

> > > > > >  };
> > > > > >  
> > > > > >  struct qcom_pcie_resources_2_9_0 {
> > > > > > @@ -1177,9 +1177,9 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
> > > > > >  	unsigned int idx;
> > > > > >  	int ret;
> > > > > >  
> > > > > > -	res->pci_reset = devm_reset_control_get_exclusive(dev, "pci");
> > > > > > -	if (IS_ERR(res->pci_reset))
> > > > > > -		return PTR_ERR(res->pci_reset);
> > > > > > +	res->rst = devm_reset_control_array_get_exclusive(dev);
> > > > > > +	if (IS_ERR(res->rst))
> > > > > > +		return PTR_ERR(res->rst);
> > > > > 
> > > > > So the reset array implementation apparently both asserts and deasserts
> > > > > the resets in the order specified in DT (i.e. does not deassert in
> > > > > reverse order).
> > > > > 
> > > > > Is that ok also for the new "pci" and "link_down" resets?
> > > > 
> > > > According to the HPG, yes, this is perfectly fine. It specifically says
> > > > to assert the pcie reset and then continues saying to assert the
> > > > link_down reset.
> > > 
> > > Ok, but that doesn't really say anything about whether it's ok to
> > > *deassert* them in the same order, which was what I asked about.
> > 
> > Actually, what I wanted to say is that the HPG says something like this:
> > 
> > "assert pcie reset, then assert link_down"
> > 
> > and then at the end it literaly repeats the same phrase.
> 
> but uses deassert instead of assert ...

Ok, then it seems to match the implementation. Thanks for clarifying.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
