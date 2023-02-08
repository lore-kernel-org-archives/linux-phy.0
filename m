Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9595BC636CC
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 17:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubPSyiFcXPruUIyNhU4JFOPgeDk2ndLWnHF7ydbIt8k=; b=huJTlFiqEZgZi/
	GlyiXgO7ys+1qcvluDkxDpve19XlONYtjgbrGNuWRzfJeP+2F/UMg2zkeCWP8XhYSfWn106b6UWq4
	S2lXpW3JZbDTfc9jhzWdspJTIA4vfKXijhdukqP/OxilKi6ncYrd09eVb8fsx17Wz2QsHraXzHweN
	h1qDbj85RqOcul+BNTEv0ZHo2u6AGE/xfoKiEsuquppBWeknFgwIScIF0goXx7D6/UUFACEH/SpzH
	eCzgn+NC/AOmLP2jre17BKh1gDNbVKhuC0g+377J5rl/iDEjvPknqNVWvXoSitiW1SVULNx+nIEji
	uk3cBQydv9cQhfK9OZ0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPnyY-00GPg3-2N; Wed, 08 Feb 2023 17:11:18 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPnyV-00GPf2-7o
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 17:11:16 +0000
Received: by mail-wr1-x430.google.com with SMTP id r2so17474864wrv.7
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 09:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7cLeU01iMrKTQSb7NiGqblMUa6KGJs2t7KVkHL7EHQk=;
        b=h9Xh6ZADnvzoyAa4lzuNJ3dunqiN989gqbGwMrwuADfAobTQVl8ZYv5sh4VK+jNP48
         l4io5Pze8UM1YrFr2W9Cd+/5tgsPnwQor6///gucqpUtAB4CEQ1H45+pFC7O8O8NWC9U
         QWA09EwiCNs1El6NxGqC5tnHvfVbTUtSidx1f/wfOYib0Sqmv7MWBL8qqeFGEYPDX2Ra
         vu45b+L13CyUIGYQAYWef8h0zpj4qWJKkTHO+McEwWm9JXNWJ7WoiQ7IJSjiMhpbZ67I
         GozeHwl0TxaS61gTmWyTULXMHdGQek0xN+RfIz0BZZfyl41ywHHwgRf48J7RdJtfDkDc
         nlaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7cLeU01iMrKTQSb7NiGqblMUa6KGJs2t7KVkHL7EHQk=;
        b=JYQiw7g5xWoTAvWk2v9Uu9xnCtlfudlFgKti6DPBDa5WyXAqqy0Jt4lhJBt4QItxjU
         RKPGx9p9/bsOE+/onM6VNw7cSj/iN6cM8CLTRh0jhYd/3X82ZUhMLSMrNZbJlVuZh6dK
         6TKyjyb/9451TUOCH4M9D0ZWKrno7Pdskp1Ep/5Mt5Jjc+JoUKQ2pSLle2tCiYJvjN2K
         FLozN8i8PyOCYTBpgD2cUVVEg+EnrA3YhW5nRlXC/2LBVPFYShFU6PuOiEF9i/EZb012
         1uvPcj0O5Iw0jeHRVFLhKpth1VQgjx4QinQbDx0AgVArFWPPrDKLaUoZ0JIKApgxzXBd
         YFNA==
X-Gm-Message-State: AO0yUKW6s531a6ZA+oMUKjOPrZYxcnQT7pCKoTl+paQaXly4UMpumz/u
	AyPuh78WmUWxhwe4BHHbQ17FIg==
X-Google-Smtp-Source: AK7set98jhEGSGk80D+eEr7eD6Owem9Ck1coSHfJWvUYUEw5nAybGY8DOyPTrpJ/86nlYwAYwgU+gw==
X-Received: by 2002:a5d:6ac5:0:b0:2c3:ea7e:be24 with SMTP id u5-20020a5d6ac5000000b002c3ea7ebe24mr7723349wrw.28.1675876271530;
        Wed, 08 Feb 2023 09:11:11 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600002ab00b002bfb5ebf8cfsm14879545wry.21.2023.02.08.09.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 09:11:10 -0800 (PST)
Date: Wed, 8 Feb 2023 19:11:08 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
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
Message-ID: <Y+PXrFxobTf/+X+U@linaro.org>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
 <20230203081807.2248625-11-abel.vesa@linaro.org>
 <Y9zYpE/GnxUqnIyq@hovoldconsulting.com>
 <Y+EYhe/xYSFpI1Yn@linaro.org>
 <Y+PQYxh4t/ytOe3+@hovoldconsulting.com>
 <Y+PXeYrBBL3QaznM@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y+PXeYrBBL3QaznM@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_091115_304008_2B47C273 
X-CRM114-Status: GOOD (  30.45  )
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

On 23-02-08 19:10:17, Abel Vesa wrote:
> On 23-02-08 17:40:03, Johan Hovold wrote:
> > On Mon, Feb 06, 2023 at 05:11:01PM +0200, Abel Vesa wrote:
> > > On 23-02-03 10:49:24, Johan Hovold wrote:
> > > > On Fri, Feb 03, 2023 at 10:18:05AM +0200, Abel Vesa wrote:
> > > > > Add compatible for both PCIe found on SM8550.
> > > > > Also add the cnoc_pcie_sf_axi clock needed by the SM8550.
> > > > 
> > > > nit: You're now also adding 'noc_aggr'
> > > > 
> > > > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > > > Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > > > > Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
> > > > > ---
> > 
> > > > > @@ -182,10 +182,10 @@ struct qcom_pcie_resources_2_3_3 {
> > > > >  
> > > > >  /* 6 clocks typically, 7 for sm8250 */
> > > > >  struct qcom_pcie_resources_2_7_0 {
> > > > > -	struct clk_bulk_data clks[12];
> > > > > +	struct clk_bulk_data clks[14];
> > > > >  	int num_clks;
> > > > >  	struct regulator_bulk_data supplies[2];
> > > > > -	struct reset_control *pci_reset;
> > > > > +	struct reset_control *rst;
> > > > 
> > > > Please name this one 'reset' or 'resets' (e.g. to avoid hard to parse
> > > > things like res->rst below).
> > > 
> > > Well, it would then be inconsitent with 2_3_3 and 2_9_0, which both use
> > > rst.
> > 
> > Yeah, I saw that. Fortunately these resources are completely
> > independent, but whatever.
> 
> Will do it in the next version then.
> 
> >  
> > > > >  };
> > > > >  
> > > > >  struct qcom_pcie_resources_2_9_0 {
> > > > > @@ -1177,9 +1177,9 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
> > > > >  	unsigned int idx;
> > > > >  	int ret;
> > > > >  
> > > > > -	res->pci_reset = devm_reset_control_get_exclusive(dev, "pci");
> > > > > -	if (IS_ERR(res->pci_reset))
> > > > > -		return PTR_ERR(res->pci_reset);
> > > > > +	res->rst = devm_reset_control_array_get_exclusive(dev);
> > > > > +	if (IS_ERR(res->rst))
> > > > > +		return PTR_ERR(res->rst);
> > > > 
> > > > So the reset array implementation apparently both asserts and deasserts
> > > > the resets in the order specified in DT (i.e. does not deassert in
> > > > reverse order).
> > > > 
> > > > Is that ok also for the new "pci" and "link_down" resets?
> > > 
> > > According to the HPG, yes, this is perfectly fine. It specifically says
> > > to assert the pcie reset and then continues saying to assert the
> > > link_down reset.
> > 
> > Ok, but that doesn't really say anything about whether it's ok to
> > *deassert* them in the same order, which was what I asked about.
> 
> Actually, what I wanted to say is that the HPG says something like this:
> 
> "assert pcie reset, then assert link_down"
> 
> and then at the end it literaly repeats the same phrase.

but uses deassert instead of assert ...

> 
> 
> 
> 
> 
> > 
> > Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
