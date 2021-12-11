Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4814DC433F5
	for <linux-phy@archiver.kernel.org>; Sat, 11 Dec 2021 03:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMh7Cwxd7YVVcyVhhrz6Et9sT3Wtdh79rB9jas5tjaY=; b=HAUxCuz98xu17P
	xygyCSToloyBh8+SNUVfmLQAvCOL4VeAFous+dXzKE/eWG5tfmz8XTjGxRNs4WMQXMxj/ZdXT/51i
	Ik/pRDgq1V1odRuzoX9kfWO7KGko0oelWCQNdqh/6DlxG2PIlBdsbCy0tlRuhuGJg2LFMtp4YTPOL
	dLZjvPlZRnkTa1byzpVzFKFVBjUU7hxy51lzscjt3imAVKMm7DQU752YF/dzxYKfJ6Tq2KpxlNe2v
	QMGDzxYGOxiRCvbNMb5sObj+OiCK8ZlgaOFwKh6ZItLMt1oox6pQOD/VGABUJM9bBaBCDmUPCFNmK
	m64VRjQ/Rduf0J/U0bOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvsn6-004TUi-Jc; Sat, 11 Dec 2021 03:11:16 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvsn3-004TU0-Lf
 for linux-phy@lists.infradead.org; Sat, 11 Dec 2021 03:11:15 +0000
Received: by mail-pg1-x529.google.com with SMTP id m24so9592224pgn.7
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 19:11:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wZPVLhTmfjbvLXy8wFUxjggNBQQIUKMzW/yUT1AkbIg=;
 b=MsYzCgMk4JLhLMLV7WvCd6xB1q8NhaATEzsou9pc+5yIw8jz16Pojr5PkCg+GNQZwH
 AUKsuvTFZdLNvJ5v5Tbp8QslJvhTIYkHENo+gv+UNGu6IPk6BCEK0nEvE/iYG/+x1+sG
 9Gf+85gnPTKrexYtcSS1JoIiLgXRB/HVZ0z6QmDpzQmF+VTLE5l3UCpWic0HatC6vqsE
 oHJdQ2exIMqZGYV3cp0D+xO2hKRQLTY/aIvLQ4DfSg/ID5T5eo7cbougTC4vRHXLdFMM
 vzFHrhGhFVI3u46UKk0kGJeS+vzk2qYvfhoDc5FpCZ72e5LX+JBa6JcUYXdHCSdU1WyJ
 KYqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wZPVLhTmfjbvLXy8wFUxjggNBQQIUKMzW/yUT1AkbIg=;
 b=kiCJ1+bTQZd7RGLRxIGtIBewmxOjvJ5xqgWqjjMmLzno7aYS8e6TlcvKvz8VMjqroY
 EvJSUrDitOHyd98+G+GwC44yJOO6vXvvnc8mqviiFfoceK8hdnOC4U6FicFwqQ6hmmJ3
 0x1+Rv23J3kqYOx1seZsNr0k/rP7lVxDhJ3MURw6qD5FmrEhrTLLwPNBFGbq3SFBj7KL
 xE3ncwt54S+PvPxiBNkPsKYEO8ouj0wYN58SnxHrKCbhP+tNOzJxkJKsRdacyCkt+dhg
 F9sVkPy9b5e7ELbZNob+K4V7X1iRsYl1GeXbCoJvC5BVy2iCD+8Bg14jG1IQKZ1DXvcP
 F0aw==
X-Gm-Message-State: AOAM532LtQ1ps9zJmokgc7kWi2VfOD3IUjs8VFyXDwjv2m3zFQDBQDFR
 2/yQGFzD/stpPqs2Auuik8j2
X-Google-Smtp-Source: ABdhPJzfchh3tDRiN4hj1vD/tbB0nD8iMxo/XxSFswJDLeGypxG5uepeX4JiFWmvYZpdUOFfDLT6kA==
X-Received: by 2002:a05:6a00:b49:b0:49f:c8e0:51ff with SMTP id
 p9-20020a056a000b4900b0049fc8e051ffmr21021033pfo.36.1639192271182; 
 Fri, 10 Dec 2021 19:11:11 -0800 (PST)
Received: from workstation ([202.21.42.75])
 by smtp.gmail.com with ESMTPSA id m15sm3876838pgd.44.2021.12.10.19.11.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 Dec 2021 19:11:10 -0800 (PST)
Date: Sat, 11 Dec 2021 08:41:06 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 05/10] PCI: qcom: Add ddrss_sf_tbu flag
Message-ID: <20211211031106.GB21304@workstation>
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
 <20211208171442.1327689-6-dmitry.baryshkov@linaro.org>
 <20211210112241.GE1734@thinkpad>
 <95401925-6e97-8fce-4fe6-4701c4fad301@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <95401925-6e97-8fce-4fe6-4701c4fad301@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_191113_743223_8124883D 
X-CRM114-Status: GOOD (  32.01  )
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

On Sat, Dec 11, 2021 at 04:59:05AM +0300, Dmitry Baryshkov wrote:
> On 10/12/2021 14:22, Manivannan Sadhasivam wrote:
> > On Wed, Dec 08, 2021 at 08:14:37PM +0300, Dmitry Baryshkov wrote:
> > > Qualcomm PCIe driver uses compatible string to check if the ddrss_sf_tbu
> > > clock should be used. Since sc7280 support has added flags, switch to
> > > the new mechanism to check if this clock should be used.
> > > 
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > ---
> > >   drivers/pci/controller/dwc/pcie-qcom.c | 5 ++++-
> > >   1 file changed, 4 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> > > index 51a0475173fb..803d3ac18c56 100644
> > > --- a/drivers/pci/controller/dwc/pcie-qcom.c
> > > +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> > > @@ -194,7 +194,9 @@ struct qcom_pcie_ops {
> > >   struct qcom_pcie_cfg {
> > >   	const struct qcom_pcie_ops *ops;
> > > +	/* flags for ops 2.7.0 and 1.9.0 */
> > 
> > No need of this comment.
> 
> Dropping it
> 
> > 
> > >   	unsigned int pipe_clk_need_muxing:1;
> > 
> > This should be added in the previous patch.
> 
> It exists already
> 

Ah, my tree was outdated. I do see it in -rc4.

> > 
> > > +	unsigned int has_ddrss_sf_tbu_clk:1;
> > 
> > Wondering if we could make both the flags "bool" as the values passed to it
> > are of boolean type. I don't think we could save a significant amount of
> > memory using bitfields.
> 
> I followed the existing pipe_clk_need_muxing. I have no strong preference
> here, so let's see what Bjorn will prefer.
> 

Okay.

Thanks,
Mani

> > 
> > Thanks,
> > Mani
> > >   };
> > >   struct qcom_pcie {
> > > @@ -1164,7 +1166,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
> > >   	res->clks[3].id = "bus_slave";
> > >   	res->clks[4].id = "slave_q2a";
> > >   	res->clks[5].id = "tbu";
> > > -	if (of_device_is_compatible(dev->of_node, "qcom,pcie-sm8250")) {
> > > +	if (pcie->cfg->has_ddrss_sf_tbu_clk) {
> > >   		res->clks[6].id = "ddrss_sf_tbu";
> > >   		res->num_clks = 7;
> > >   	} else {
> > > @@ -1512,6 +1514,7 @@ static const struct qcom_pcie_cfg sdm845_cfg = {
> > >   static const struct qcom_pcie_cfg sm8250_cfg = {
> > >   	.ops = &ops_1_9_0,
> > > +	.has_ddrss_sf_tbu_clk = true,
> > >   };
> > >   static const struct qcom_pcie_cfg sc7280_cfg = {
> > > -- 
> > > 2.33.0
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
