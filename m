Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EFC9FA3744
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 21:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iswDsucy9oMtRjalW7Cnkaji/lx2BPPLTvmoUvav8TA=; b=RZFLfcLBGvKplW
	Jb1n3ZwrU7/gEkn45cZFHnlHjGtUmSykd/SHWHjCySul3/Yh/PliCHK9en5fWjAE4E4gmygNcXmfH
	mlCfvo609hy2Ps0eMFTORrMY75PoV9tGtEC9PyqUeJnwTUXDP/OjPyKnMtgXhR++8fQz61C8fmfMw
	zrfu0EFE7W0QcN3K6TtchGXTipOlFRfVRrQm9mwZrxiRwA3xnHGG1ypMJ2PgRlLWhu/TUs58fwSr9
	bdkDwur/nIPcDsATKqhLyhLYvm/clbt8ZNcUN3pQqpR2jKiWRgt471DUSyzfrSDB4MCyJCzC+inv3
	9/C/wiSCV7CQ9jWl1QOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opcXL-00Fgrr-47; Mon, 31 Oct 2022 21:41:39 +0000
Received: from mail-oa1-f54.google.com ([209.85.160.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opcXJ-00FgrH-8P
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 21:41:38 +0000
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-1322d768ba7so14926970fac.5
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 14:41:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VcI0kyKn8cZbGuLpOtO1mv+Kxd6UqslGrJVaFZhYmE8=;
        b=4zW/a9BEknOqIt2Qmg/cdyCwgV5jRz0hoYo5tJxVwAcco7FzZIcuBXOdIkMtoagtT/
         FZDFIq5w2ie5WPJqDIX9UeSvuq27xCUPn/Kzddo+C4Qeb469Y23vEkmc0hIeRuVE9Cee
         8ppB8NBFhGROgdIlA/YsCe7n0QmUMZVjOYtfHFDH+KtbaBy2SOHqc9gZZ5vfMEjS18vh
         HIrq1I3ecYQ2wi3JJO5AGl2mN4J7a5kUtuAlVvvf6nom39PTN1O4aXIJmFAM3n+ThpcD
         OexNdYRX2cau9Le1ASvcrcVaMXSkS0N5dN6mJWMWA2DFyH4+TTpg+zOltVlaDqv2VEBH
         PMJw==
X-Gm-Message-State: ACrzQf24K3xfg2568lFL6Vv7yTsC3lhOR2Y5kOcw9vuLhNrFBvKu/6CW
	WvDcI56I/dZV7ARUX/7vEA==
X-Google-Smtp-Source: AMsMyM5gEDn+v8FtcjVtTsmNxCqAjnGMCDqmiyURwxRSwgQ0L/lI8gWwRhVd0bJSL60yRW2+0Zja+g==
X-Received: by 2002:a05:6870:4798:b0:12c:fdf7:e948 with SMTP id c24-20020a056870479800b0012cfdf7e948mr8606870oaq.247.1667252495847;
        Mon, 31 Oct 2022 14:41:35 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x32-20020a05683040a000b0066aba96addbsm3200540ott.81.2022.10.31.14.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 14:41:35 -0700 (PDT)
Received: (nullmailer pid 3618755 invoked by uid 1000);
	Mon, 31 Oct 2022 21:41:37 -0000
Date: Mon, 31 Oct 2022 16:41:37 -0500
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@somainline.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, Andy Gross <agross@kernel.org>, linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, linux-pci@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v1 2/7] dt-bindings: phy: qcom,qmp-pcie: add sm8350
 bindings
Message-ID: <166725249648.3618701.17839968861509422583.robh@kernel.org>
References: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
 <20221029211312.929862-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221029211312.929862-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_144137_310069_342B589A 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
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


On Sun, 30 Oct 2022 00:13:07 +0300, Dmitry Baryshkov wrote:
> Add bindings for the PCIe QMP PHYs found on SM8350.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
