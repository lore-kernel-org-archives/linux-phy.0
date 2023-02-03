Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89CACC61DA4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 10:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecLFZNmAyLXqBVWyXzHKPrSzqVn9weZxlzgFwTafHig=; b=x8MwT0yJ+bMTc/
	KUByiDFKkc3hZosQncLynt+1OBwXaDrRt9PUqkMTrJPal3BYiKkwMIpKVF3lyzH0Jy4QpaNfINMTu
	Ojd4EQsWuMGjMkL4fLNAv/L9aOsbd8p81i44G2ccx8N/D0K6eYmswSyTHcMF2X2cuJ2s+nWuKVYpP
	r+AEqkuKgco4ZuW/QjtSrpgLIEXyeP7394VG931y98bBShUhM+jLlHVIgC1H0WoptRF1m2DcO2qUl
	KiQCSYNh+9R0JKYNjs3ptigwtdm9LDsvr3UWDjHJLbepzQiOPi4Q0r2RtQQgAGwh+7+R6GcLTsNAT
	zxE3qL9K97CH5uPtCFXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNtPq-001Pl1-VM; Fri, 03 Feb 2023 10:35:34 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNtPo-001Pjx-HQ
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 10:35:34 +0000
Received: by mail-wm1-x332.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so5690579wmb.2
        for <linux-phy@lists.infradead.org>; Fri, 03 Feb 2023 02:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8nK1fKLOt07t42zA/NX2wGsyiI7WBcYF7AOE3hneo4g=;
        b=lGlrN2dLHCqbVaz9YwNXyYBxz/D4lgr1w3rTIjvH6mHtVSex/oYRqVJZSvja++c7dX
         xV7x/9Jc6K4Kf2xqpfN+ic1eERM9X/cvt+VW6AmxHUN3Hqwec7sIAhgdWQWZzJN1Hhr3
         tN0RenMHGUwpg+Q3tyWOeQZjZP+z6Yi6TsDUfiZLjaOdSk87MK/BheMPucGXmc8Hpn0z
         My3v5YVkw3WFc4Rfmx3FQSCzuU9KqW427NArdeYqNIbRD3qp9fBE3rpkjbgn7hRlf0fl
         Mwt7JC9YMg9/Ca3s8zVtCPscyNEkz8t4F0cgEioLLX4v/bZgqrKtkyNOaHlnWNo3pI91
         dhBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8nK1fKLOt07t42zA/NX2wGsyiI7WBcYF7AOE3hneo4g=;
        b=0a85+a6mbcp+Sw9/cq1ipt+1gH9nqNbnOgiI3lVFjhdLy86gQ1TVSQF9fSQL3tjGmF
         hgXf0jOF4qQ4FG/Q/YOUfShhbRlWcKYYr4ruApXLsqWgJTvrprVKS+D5Uv0tEXwGapoS
         KHyM0XNclzTMkwiNPn2UhGuSKSxySLrCKEUW28HlqywuNO/ttVdxKFgVbMHvfLsSWFVC
         rvDKQYHMFBNT5G8LrVlcwtecL4/jBQm77ca1XD+cl3ZeFaiIw08AGJd0IAaPt8ZhByeI
         eMYDxnirQL1NKKKuSpZ6RsmYezFdyPRzKQ/JpwWWMBAyl32fGIGpOLYaCWqH3IFPr0IU
         up0Q==
X-Gm-Message-State: AO0yUKUyLY1gtWVae9OS2nePaLm0Tc9XaECynZdkfMlB3SwjyWIET1gn
	5yk12/r8/i/tO+QFs/2BY73vb8bkdFLFCulk
X-Google-Smtp-Source: AK7set9RC8S35h+qhPzKZvtF5wjsR0eplkWa2WNr9zYS986q703SswD03oXnA4dKIZPQBnvNp8f3og==
X-Received: by 2002:a05:600c:cc3:b0:3dc:42d2:aeee with SMTP id fk3-20020a05600c0cc300b003dc42d2aeeemr9366732wmb.25.1675420530617;
        Fri, 03 Feb 2023 02:35:30 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id x33-20020a05600c18a100b003dd7edcc960sm2112414wmp.45.2023.02.03.02.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 02:35:30 -0800 (PST)
Date: Fri, 3 Feb 2023 12:35:28 +0200
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
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v7 09/12] dt-bindings: PCI: qcom: Add SM8550 compatible
Message-ID: <Y9zjcKkknDQWEvjH@linaro.org>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
 <20230203081807.2248625-10-abel.vesa@linaro.org>
 <Y9zb2X4w0WfIto9n@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y9zb2X4w0WfIto9n@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_023532_600804_371E896D 
X-CRM114-Status: GOOD (  22.17  )
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

On 23-02-03 11:03:05, Johan Hovold wrote:
> On Fri, Feb 03, 2023 at 10:18:04AM +0200, Abel Vesa wrote:
> > Add the SM8550 platform to the binding.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> > 
> > This patchset relies on the following patchset:
> > https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/
> > 
> > The v6 of this patch is:
> > https://lore.kernel.org/all/20230202123902.3831491-10-abel.vesa@linaro.org/
> > 
> > Changes since v6:
> >  * none
> > 
> > Changes since v5:
> >  * added Krzysztof's R-b tag
> > 
> > Changes since v4:
> >  * dropped _serdes infix from ln_shrd table name and from every ln_shrd
> >    variable name
> >  * added hyphen between "no CSR" in both places
> >  * dropped has_ln_shrd_serdes_tbl
> >  * reordered qmp_pcie_offsets_v6_20 by struct members
> >  * added rollback for no-CSR reset in qmp_pcie_init fail path
> >  * moved ln_shrd offset calculation after port_b
> >  * dropped the minItems for interconnects
> >  * made iommu related properties global
> >  * renamed noc_aggr_4 back to noc_aggr
> > 
> > Changes since v3:
> >  * renamed noc_aggr to noc_aggr_4, as found in the driver
> > 
> > Changes since v2:
> >  * dropped the pipe from clock-names
> >  * removed the pcie instance number from aggre clock-names comment
> >  * renamed aggre clock-names to noc_aggr
> >  * dropped the _pcie infix from cnoc_pcie_sf_axi
> >  * renamed pcie_1_link_down_reset to simply link_down
> >  * added enable-gpios back, since pcie1 node will use it
> > 
> > Changes since v1:
> >  * Switched to single compatible for both PCIes (qcom,pcie-sm8550)
> >  * dropped enable-gpios property
> >  * dropped interconnects related properties, the power-domains
> >  * properties
> >    and resets related properties the sm8550 specific allOf:if:then
> >  * dropped pipe_mux, phy_pipe and ref clocks from the sm8550 specific
> >    allOf:if:then clock-names array and decreased the minItems and
> >    maxItems for clocks property accordingly
> >  * added "minItems: 1" to interconnects, since sm8550 pcie uses just one,
> >    same for interconnect-names
>  
> > +  enable-gpios:
> > +    description: GPIO controlled connection to ENABLE# signal
> > +    maxItems: 1
> 
> What is this gpio used for? Describing it as "ENABLE#" looks wrong as
> AFAIK it's not part of the PCIe interface.

Oups, that should've been dropped here as well, as I did in the dts/dtsi
patches.

> 
> There's also no driver support being adding for this gpio as part of
> this series and you don't use it for either controller on the MTP.
> 
> Are you relying on firmware to enable this one currently perhaps?
> 
> > +
> >    perst-gpios:
> >      description: GPIO controlled connection to PERST# signal
> >      maxItems: 1
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
