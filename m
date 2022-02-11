Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27CC4C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 16:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRtLWsnvfpOXctfFi+Me2kl99vVZYt8utZkFWzMSskQ=; b=eJlcc55RcmfbxW
	vvNQ742MvnRqRhZRuY4H11F8hZjEOUm2u5b0LsnofiOzGdCFV1ZB2INUyS9CHefGepCW8x5HlvLUV
	eEkabLSEi/IDwyjHcrSXB61Tud7aoCJIEkG5lxcxxBziMtf0mTVnRQ7JQi5CzX2KsFT0Jwo10RjAR
	142uewebM8iO69iVzSscNHXsXUu2Y3t8q4PbEzb7DhEyb/7KETSFcPD3HtakvK1NUAOru4ZwgFhzG
	Co97EJY+yrbpS7fEZg6ToOK6HOiHsE7foxujgW6Sm0rInSD/VtdBOerktt3DRTI8ez/okccgFhQvl
	kC2aCPvg0gSbyFDL4/YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIYWv-007wvV-If; Fri, 11 Feb 2022 16:12:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIYWs-007wtw-Sr
 for linux-phy@lists.infradead.org; Fri, 11 Feb 2022 16:12:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D1FC9106F;
 Fri, 11 Feb 2022 08:12:12 -0800 (PST)
Received: from lpieralisi (e121166-lin.cambridge.arm.com [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4715B3F70D;
 Fri, 11 Feb 2022 08:12:11 -0800 (PST)
Date: Fri, 11 Feb 2022 16:12:08 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Wilczy??ski <kw@linux.com>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 4/5] PCI: qcom: Add interconnect support to
 2.7.0/1.9.0 ops
Message-ID: <20220211161208.GB448@lpieralisi>
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-5-dmitry.baryshkov@linaro.org>
 <Yfv7gh8YycxH2Wtm@ripper>
 <527f0365-1544-ad73-cf49-b839ae629340@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <527f0365-1544-ad73-cf49-b839ae629340@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_081215_061071_B1064288 
X-CRM114-Status: GOOD (  31.11  )
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

On Fri, Feb 04, 2022 at 05:38:33PM +0300, Dmitry Baryshkov wrote:
> On 03/02/2022 18:57, Bjorn Andersson wrote:
> > On Sat 18 Dec 06:10 PST 2021, Dmitry Baryshkov wrote:
> > 
> > > Add optional interconnect support for the 2.7.0/1.9.0 hosts. Set the
> > > bandwidth according to the values from the downstream driver.
> > > 
> > 
> > What memory transactions will travel this path? I would expect there to
> > be two different paths involved, given the rather low bw numbers I
> > presume this is the config path?
> 
> I think so. Downstream votes on this path for most of the known SoCs. Two
> spotted omissions are ipq8074 and qcs404.
> 
> > 
> > Is there no vote for the data path?
> 
> CNSS devices can vote additionally on the MASTER_PCI to memory paths:
> For sm845 (45 = MASTER_PCIE):
>                 qcom,msm-bus,vectors-KBps =
>                         <45 512 0 0>,
>                         <45 512 600000 800000>; /* ~4.6Gbps (MCS12) */
> 
> On sm8150/sm8250 qca bindings do not contain a vote, but wil6210 does (100 =
> MASTER_PCIE_1):
>                 qcom,msm-bus,vectors-KBps =
>                         <100 512 0 0>,
>                         <100 512 600000 800000>; /* ~4.6Gbps (MCS12) */
> 
> For sm8450 there are two paths used by cnss:
> 		<&pcie_noc MASTER_PCIE_0 &pcie_noc SLAVE_ANOC_PCIE_GEM_NOC>,
> 		<&gem_noc MASTER_ANOC_PCIE_GEM_NOC &mc_virt SLAVE_EBI1>;
> 
> with multiple entries per each path.
> 
> So, I'm not sure about these values.

This discussion is gating the series, please let me know if you want me
to cherry-pick the other patches or you will resend the series.

Lorenzo

> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > ---
> > >   drivers/pci/controller/dwc/pcie-qcom.c | 11 +++++++++++
> > >   1 file changed, 11 insertions(+)
> > > 
> > > diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> > > index d8d400423a0a..55ac3caa6d7d 100644
> > > --- a/drivers/pci/controller/dwc/pcie-qcom.c
> > > +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> > > @@ -12,6 +12,7 @@
> > >   #include <linux/crc8.h>
> > >   #include <linux/delay.h>
> > >   #include <linux/gpio/consumer.h>
> > > +#include <linux/interconnect.h>
> > >   #include <linux/interrupt.h>
> > >   #include <linux/io.h>
> > >   #include <linux/iopoll.h>
> > > @@ -167,6 +168,7 @@ struct qcom_pcie_resources_2_7_0 {
> > >   	struct clk *pipe_clk_src;
> > >   	struct clk *phy_pipe_clk;
> > >   	struct clk *ref_clk_src;
> > > +	struct icc_path *path;
> > >   };
> > >   union qcom_pcie_resources {
> > > @@ -1121,6 +1123,10 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
> > >   	if (IS_ERR(res->pci_reset))
> > >   		return PTR_ERR(res->pci_reset);
> > > +	res->path = devm_of_icc_get(dev, "pci");
> > 
> > The paths are typically identified using a string of the form
> > <source>-<destination>.
> > 
> > 
> > I don't see the related update to the DT binding for the introduction of
> > the interconnect.
> > 
> > Regards,
> > Bjorn
> > 
> > > +	if (IS_ERR(res->path))
> > > +		return PTR_ERR(res->path);
> > > +
> > >   	res->supplies[0].supply = "vdda";
> > >   	res->supplies[1].supply = "vddpe-3v3";
> > >   	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(res->supplies),
> > > @@ -1183,6 +1189,9 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
> > >   	if (pcie->cfg->pipe_clk_need_muxing)
> > >   		clk_set_parent(res->pipe_clk_src, res->phy_pipe_clk);
> > > +	if (res->path)
> > > +		icc_set_bw(res->path, 500, 800);
> > > +
> > >   	ret = clk_bulk_prepare_enable(res->num_clks, res->clks);
> > >   	if (ret < 0)
> > >   		goto err_disable_regulators;
> > > @@ -1241,6 +1250,8 @@ static void qcom_pcie_deinit_2_7_0(struct qcom_pcie *pcie)
> > >   	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
> > >   	clk_bulk_disable_unprepare(res->num_clks, res->clks);
> > > +	if (res->path)
> > > +		icc_set_bw(res->path, 0, 0);
> > >   	/* Set TCXO as clock source for pcie_pipe_clk_src */
> > >   	if (pcie->cfg->pipe_clk_need_muxing)
> > > -- 
> > > 2.34.1
> > > 
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
