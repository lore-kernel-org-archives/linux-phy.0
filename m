Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8478AC3DA7A
	for <linux-phy@archiver.kernel.org>; Sat, 31 Dec 2022 15:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHCWJG6Fr251WauxDAjSmgAE3vXz2zZlilu/g1MvL54=; b=OrqYgkxuB8Tln5
	3i6KSYI+1hloZBNIW/V8LcyBZUqI/d6f7Y9BQgrmUORr+lm8nSiywIpzr3BcW8YcDgDIJHEdpHnvz
	LIvvpa+LDG1/+NEtlfRGDO9wa0vk64kd/FQnprp9fMMUD4hedqOjGCwWfhsGNeLqTHkluaav7qQVV
	Ks12jID/9v7ILoKmwfHTj0ewkhOWQYxx5TMg1iEVzqYEw6gnvbqD5BeRkHm38B3E/qEanGYqp+DEM
	SdOsxsZ3bB+bu3Pt/3OCWLJpI0hhtjCIB4wPik6vIlJGBC+NVFezh4QoLfFpxV+FaT8bC1GTSkogU
	mXZICF0rd8vYs0GsJrqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBdQy-006oml-Fk; Sat, 31 Dec 2022 15:06:04 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBdQf-006ocv-Sm
	for linux-phy@lists.infradead.org; Sat, 31 Dec 2022 15:05:53 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-466c5fb1c39so320785297b3.10
        for <linux-phy@lists.infradead.org>; Sat, 31 Dec 2022 07:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=otCJd+mbWKew73SAuEiOsVxEPv8TQTUETo28KN4US0M=;
        b=YL5L8alik3IIWKSY2wXmnkmJjxNQcZTzSY5wbniTbbdAo6rd0gfxqh5v9dnsXfRd46
         QkdhjoVLpeUZXfVUZqCOUER31lHNXSIwx8ctZvpJTf1t4dFaFmkIYcgNIpK6RpSRN4Ql
         wIB2tdYKrx5E0VSNaGW39Nv+p5jeVLuAqKSEdzU2NW0AmZPDlrgEt1PDgyFH95j5Ua2W
         BjOie02Uh2Di975rx7dANxuy5tGc/NmL9HMHvrRkRzKL23mR1TKv38eE1nLGOb4Nzx6C
         vkBXkciBjJ1ydiuOVmkb/lHXpvaa8qvNlYVLp3LuA5TE1b0o9ZIxT2BBPLe02kNADyzX
         cXuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=otCJd+mbWKew73SAuEiOsVxEPv8TQTUETo28KN4US0M=;
        b=3EwshZMmkF+zfdVOl43kAMgGHcdRI1ZHANHy3BaukdH+oR3iUgoYIYznzTao9VeVk+
         bZwmyscSCwiA+2PKVwqCvlh9fxX5dNl4f87yrJrqEkhIbKeuFgCfiLJtov1JA94gWVC1
         8TE1zhuBKXqNqks302Bis0KraCdH013lGxPpeBza4czAyX37+77arMRRU8qpH3RNzeSs
         ork+P3v+E6I2OtiJXeBmpQxykK+Dpcl+d5wAzF31X1CP8abIGeueB6/V30EW/4eGJPCu
         Cl3A9PRxR2ccDOVEHNnlT+BN7wQMmHTDMm3Z9cQM1ybUf7AVvkO0L3YBQBKXMq082vD/
         wF7A==
X-Gm-Message-State: AFqh2kqzwS+v1CdHTLIHLbsaAwz0zepRaN6j7d/EwMWuuAQi1T/MIKbM
	JyIGZ1MV+3XaouDE7aQPEKOzMhUZlt6Wk3XxOjtQEg==
X-Google-Smtp-Source: AMrXdXvuKogl+BhNjHR9CEtgpZ8sliM6Bymjhqy9uSGsUaQrKltCMlksICHuv702289b6mmp6Cdca9QOijpc1MTeWEw=
X-Received: by 2002:a0d:dc86:0:b0:3d5:ecbb:2923 with SMTP id
 f128-20020a0ddc86000000b003d5ecbb2923mr4536583ywe.485.1672499140811; Sat, 31
 Dec 2022 07:05:40 -0800 (PST)
MIME-Version: 1.0
References: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
 <20221229115932.3312318-2-dmitry.baryshkov@linaro.org> <167241774332.1928179.4447846135439331544.robh@kernel.org>
In-Reply-To: <167241774332.1928179.4447846135439331544.robh@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 31 Dec 2022 17:05:30 +0200
Message-ID: <CAA8EJpr2nEq3XYNmvWRcHBxS7mZjphXpSw=tfLb7oJwXQGRYAA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom,pcie2-phy: convert to YAML format
To: Rob Herring <robh@kernel.org>
Cc: Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, 
	Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-phy@lists.infradead.org, 
	Kishon Vijay Abraham I <kishon@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221231_070550_386007_57B68536 
X-CRM114-Status: GOOD (  15.25  )
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

On Fri, 30 Dec 2022 at 18:34, Rob Herring <robh@kernel.org> wrote:
>
>
> On Thu, 29 Dec 2022 13:59:31 +0200, Dmitry Baryshkov wrote:
> > Convert the bindings for the Qualcomm PCIe2 PHY into the YAML format
> > from the text description.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../bindings/phy/qcom,pcie2-phy.yaml          | 86 +++++++++++++++++++
> >  .../bindings/phy/qcom-pcie2-phy.txt           | 42 ---------
> >  2 files changed, 86 insertions(+), 42 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt
> >
>
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
>
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
>
> Full log is available here: https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20221229115932.3312318-2-dmitry.baryshkov@linaro.org
>
> phy@7786000: '#clock-cells' is a required property
>         arch/arm64/boot/dts/qcom/qcs404-evb-1000.dtb
>         arch/arm64/boot/dts/qcom/qcs404-evb-4000.dtb

The fix was a part of the v1 of the series and was picked by Bjorn already:

https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git/commit/?h=arm64-for-6.3&id=977e9262c3542e87b513d4dad4c57b2c85e16c8c


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
