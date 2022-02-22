Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3936AC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 22 Feb 2022 23:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fldYcYafSPOJ0Le06A5lQXTfR3VBG8yUM04kwPmREJ8=; b=xLXzwPSs0+p4md
	m/A3v0SzGpkBJuAbUk7Pc6inhcFK0B/9iUN5i5Y0E49xNpDwC7YtobW4JMEC6Li5bJ3MgTCoqejPn
	B17FodX3knYfIDK2B6vpi9Vzf6q+0SlRygjSP1Lb6rByMT6DeWQxUAOQ5AC/gQOeJZlv35RUBEnyW
	1twdeREOql/qeBE1Y3mpja/VtHVSYbTxi0xaCbT6m7nPBzD4FCAYUTy3YItDWHavPR/ctTGMHltoD
	i8hjghVtslNcgCZ7asjFIDciklM0+vygaBpCwjs1noSh4tE7y0X8cuS6YHdUx/NCEhPDN/YI57yFh
	LZ9ZSJq7IRT/A+p4IdkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMepe-00Bx1d-Mp; Tue, 22 Feb 2022 23:44:34 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMepb-00Bx0w-3K
 for linux-phy@lists.infradead.org; Tue, 22 Feb 2022 23:44:32 +0000
Received: by mail-oi1-x232.google.com with SMTP id i5so16426061oih.1
 for <linux-phy@lists.infradead.org>; Tue, 22 Feb 2022 15:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2HiSrIrQ1FQn06c0OapcW9y56mOF/g4gtSbzfTG410w=;
 b=jk4Ug7dsiFNMwcv0iHUor6gWcK9nlcHXQMezySXYtupQYoteOPzSraSjWsSJShCBCx
 9RYxkIFF8YB/+rKvvn6Kv5zzg5Gw2Q5EszvE52/u+GZJNfZRxQIPErr8Qo2kvsjp6yPG
 ht+nyAp9/C/rOCnFoaCZqCaMPWzemmmNTKy6Kw9XOCZ+TOYgiq+pzOfhRv4kQkxV3oXj
 8ol0Q1/joLsPlccdxq/NY3bHtGhsznQDVluHHTolsT9uCkvYlSuN3nZFszk65P2xu8vb
 uDAWReg1FixkLmvUgcQfJcPdnfXnir7vsggnM7WjePDi9rxERYF1TUHYwWrv1Xeel/Pq
 9TeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2HiSrIrQ1FQn06c0OapcW9y56mOF/g4gtSbzfTG410w=;
 b=HyVH1Xsii+GOTI1Nmw2IshDKJeIvHPisKrx07Ko6VwxT58RIlWUDR9wc9TWSdaF/F6
 Qkh7neRl6+qO1UdurkVILs9JOjgErIRzQFqoElzknMguUbnAifEodOjO+Ifb8TWOIGIM
 Qvaq1qOhxptpkM2sGtzMEEO46ghk+IL1Y3FbDRp33E6aDs7dmrLZtvXsnXVLcL91ldFb
 Aif7hg8tZEpXoFXDs+6LEPJIKPUOmoI6fjUjrN24oV5rFFnZ4bvspdfuhgcn134cMsW1
 WUx11wToCtY33WRoTw7+2+kP+7oszdqQkE+6VqF6eNGKXXujwH7sOwfWOyLsu4escm90
 ss4A==
X-Gm-Message-State: AOAM5330+St57IgR16KTh737zT0+rlhnwqLN8TJitzfJX1Def2a7JQm4
 t/xtVBHI0XMPR35FrtCZgejSBA==
X-Google-Smtp-Source: ABdhPJx1m+LL1F1f71SPcAhuEeWQJkXdbUvm0ew8/RmL5Jkyus0biW/zkBLUEXvsYbdYJZrEDLL7kA==
X-Received: by 2002:a05:6808:612:b0:2d5:1c6a:db4 with SMTP id
 y18-20020a056808061200b002d51c6a0db4mr3417179oih.199.1645573470217; 
 Tue, 22 Feb 2022 15:44:30 -0800 (PST)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id t17sm3820423ots.38.2022.02.22.15.44.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 15:44:29 -0800 (PST)
Date: Tue, 22 Feb 2022 15:46:30 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Wilczy??ski <kw@linux.com>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 4/5] PCI: qcom: Add interconnect support to
 2.7.0/1.9.0 ops
Message-ID: <YhV11gk/9+q0AVsb@ripper>
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-5-dmitry.baryshkov@linaro.org>
 <Yfv7gh8YycxH2Wtm@ripper>
 <527f0365-1544-ad73-cf49-b839ae629340@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <527f0365-1544-ad73-cf49-b839ae629340@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_154431_233807_67E37D3D 
X-CRM114-Status: GOOD (  36.25  )
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

On Fri 04 Feb 06:38 PST 2022, Dmitry Baryshkov wrote:

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

Sorry, missed your reply on this one.

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

This is PCIe -> DDR, so I think we should interconnect-names this path
"pci-ddr". I also see that on at least some platforms the value depends
on PCIe Gen. So perhaps we should start by just picking these values for
now and then follow up with something where we add the numbers in an
opp-table based on Gen?

> 
> For sm8450 there are two paths used by cnss:
> 		<&pcie_noc MASTER_PCIE_0 &pcie_noc SLAVE_ANOC_PCIE_GEM_NOC>,
> 		<&gem_noc MASTER_ANOC_PCIE_GEM_NOC &mc_virt SLAVE_EBI1>;
> 
> with multiple entries per each path.
> 
> So, I'm not sure about these values.
> 

That seems to be PCIe to master and then a separate segment for the
memory NoC to DDR. That's odd. I think we should attempt to just do:

 <&pcie_noc MASTER_PCIE_0 &mc_virt SLAVE_EBI1>

As a single path for "pci-ddr"

> > 
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

But that said, these numbers doesn't resemble the numbers you show
above and they don't make sense for the "data path". So perhaps this is
a separate "pci-config" path?

Regards,
Bjorn

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
