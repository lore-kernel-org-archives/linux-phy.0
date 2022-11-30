Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FB12C4321E
	for <linux-phy@archiver.kernel.org>; Wed, 30 Nov 2022 18:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Id5tBCL+gkTrLFSX0TMQkHvg4SFe4YfNGCUvxwGrRs=; b=ddHfuUiAnQtibY
	BTnkPt2vBsD3UnwPzlA+eu5IO9BzVKMbr4mF0+mrAdMHYkdkFxTpBGl1OuO6Dlant7hKrWc8g9BHH
	xpagGBVe/6beZyLcWWf8SUO+5hHvMo2I9nSRXg1FpisUjnJMghgDqS6KV8cYr/pRsyKcFrAlUQPrJ
	JOQ3Cuim5788frf/J3lj+ocY2qO+Uh8TfNMV7uxii7huEpTdAI4IFTaQjhXZVKMkY1COYO7c6JaKZ
	r9Z5w2necalm+8VBRn0vVqdGjMKCnsWgkY6Kp5NIZ85fZzjUcDjQPTncB286vBwCdIJqlIOuWcHlQ
	JxLoI9QnAbZ0OzbRw0tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0RPr-001L10-HC; Wed, 30 Nov 2022 18:02:39 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0RGQ-001DMd-27
	for linux-phy@lists.infradead.org; Wed, 30 Nov 2022 17:53:11 +0000
Received: by mail-oi1-f172.google.com with SMTP id v13so4791802oie.3
        for <linux-phy@lists.infradead.org>; Wed, 30 Nov 2022 09:52:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RSlps2lO6kCxeY6Q9GE4IYnCWFyrr/PGTU9AP8KVTOU=;
        b=P1alOUjiBTis0uaB1ffSYRpfrRFC6XaZoW9wxkLKaQuRlpYwBej6KNFJdvUod3j0VG
         h9gXtr2X10W47KqrdgP617ereWK8z3IlW/ADy83lZQkPAhAshjVFhn+SeL2LnmLHL0et
         xfU81RuTa5aIlQepcLtZsss7glLP0wTKJAm0LTel8NtOEkUvyUL4dw8ME/GBGhm8QrXt
         3dCDLxamm7U5JLZTzoBoKja/UISwCKGH/3JMeI9gX+pioc4eGqehUIEWPixCr0Os9ETf
         ucjsTwRW8y8gMt9iTt7StEj7MD/jhvjy7zbRICf8yywmDwf+cruim+g9m1zSr7hiBodd
         x3Fw==
X-Gm-Message-State: ANoB5pmftL5ypfh0poj71b07urrY6XymnvomfAwWUJNdDD91xJdq3UT2
	XQh8mpxU/R1VU6oTQ0XLQg==
X-Google-Smtp-Source: AA0mqf6haeFjN9z5n+Ry7PT0y+LyzMDXnOYGF7JGBkzg+/Ez7jTH186tItTcf9QGXPvoZD1q9xtz1w==
X-Received: by 2002:aca:1705:0:b0:35a:528b:d6e8 with SMTP id j5-20020aca1705000000b0035a528bd6e8mr31333729oii.146.1669830770480;
        Wed, 30 Nov 2022 09:52:50 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t15-20020a056808158f00b00353fe4fb4casm858126oiw.48.2022.11.30.09.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 09:52:50 -0800 (PST)
Received: (nullmailer pid 2517901 invoked by uid 1000);
	Wed, 30 Nov 2022 17:52:49 -0000
Date: Wed, 30 Nov 2022 11:52:48 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: devicetree@vger.kernel.org, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Philipp Zabel <p.zabel@pengutronix.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-pci@vger.kernel.org, Johan Hovold <johan@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Jingoo Han <jingoohan1@gmail.com>, =?utf-8?q?=2C?=linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@somainline.org>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Andy Gross <agross@kernel.org>
Subject: Re: [PATCH v4 1/8] dt-bindings: PCI: qcom: Add sm8350 to bindings
Message-ID: <166983076821.2517843.6476270112700027226.robh@kernel.org>
References: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
 <20221118233242.2904088-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221118233242.2904088-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_095254_153065_6D05F8BE 
X-CRM114-Status: GOOD (  11.07  )
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


On Sat, 19 Nov 2022 01:32:35 +0200, Dmitry Baryshkov wrote:
> Add bindings for two PCIe hosts on SM8350 platform. The only difference
> between them is in the aggre0 clock, which warrants the oneOf clause for
> the clocks properties.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 32 +++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
