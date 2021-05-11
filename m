Return-Path: <SRS0=RARg=KG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CFC3C433B4
	for <linux-phy@archiver.kernel.org>; Tue, 11 May 2021 17:24:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E0DE161221
	for <linux-phy@archiver.kernel.org>; Tue, 11 May 2021 17:24:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E0DE161221
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YnELn8sdbfja3Hmnnt/UoN+vojRV2sW7OkfmoCQ3zqc=; b=gLj4bSOOX57yRBPWxz0e6diG/
	N4qOzaA+rbP5u/CycGomYl581Mk8WMln3BibpN+AkqXMKmYVizcIN/ec6GDlwldBqVEH7EptX2Xd0
	L7uQc/8TMa2ESd622mlOEDbBShFVV/PVdBJjOriXQ+HjXyL/KgZ4v63Yvj+FjplgVROdDiwA4gGYs
	GEMeCOF+71UF0/1a64whQE4eAcNqNK5uYiP7hznzCN7Zd/s+9KqN0iQTivIVqS3WmC67nUvhvWmpv
	rVpYVH0yoGN0eIyQcEyv10MkvfMr4ZfXZaaEmxCuBOcUyI2xYJgoVP5JFHg377Glp6RvHCboKATYW
	XC0aqwyIg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgW7A-000udV-1j; Tue, 11 May 2021 17:24:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgW78-000udG-Uf
 for linux-phy@desiato.infradead.org; Tue, 11 May 2021 17:24:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:References:In-Reply-To:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XmrHR0LeLKDOvGPgiLH+kJ5EvGhX8fXlpAVkIlJfG5Y=; b=jmRecuh2tvrA32jB8twZcIOuqn
 J4oQn+3K/SBJT+UsSozoahes0KI/6qZ5BDIGK53+2DHMff2QV57+Ngrl0c2t2ji3GiA+LseERuR33
 DEsx2dZ9vNp29RucDkXIdVBmnp0Ba0An+9IWJz6+GQ+zjcgy6n317oSgB7yBp5XYT9/iNBDoc+b+R
 Ng1SclJkfAa6/ucVo2akHtaBwbsYl0i9YWcCqI+S2NaNmx5GoLZ4SC0KkzNwdGYuwtWrWa3ltKGlY
 oRmc58q35t/+bjbFTKC6qlClWQo2GNfy4lISrUr2puBf843LoJzyIcNN1BszgUOv3MzUJT6MJ9jQs
 /KFPdutg==;
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgW76-009oC3-4I
 for linux-phy@lists.infradead.org; Tue, 11 May 2021 17:24:09 +0000
Received: by mail-oi1-x232.google.com with SMTP id n184so19675932oia.12
 for <linux-phy@lists.infradead.org>; Tue, 11 May 2021 10:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=XmrHR0LeLKDOvGPgiLH+kJ5EvGhX8fXlpAVkIlJfG5Y=;
 b=ATUh//YBW0Kw74D+sxRJrzheCmYrLCvVYSnudw0MzUBiWvifsoq65X0GohbI/FJmLc
 wHZlQB62/PKMGGjmqnh0EqEhctNqpE+hapeWnE4mZtFedRZAlgC1lsUoA0i5ZFcOJGtI
 QaJv6IHglbHVjBIDlTl58pUY6Tj3IYxDac1W0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=XmrHR0LeLKDOvGPgiLH+kJ5EvGhX8fXlpAVkIlJfG5Y=;
 b=D87CGoqxKSm/K7G1R8A4iYctwnXE3H5rMS0YhTR7ybWYiPvMMlUhjVHOqnrVgpldVx
 HuPWZA26xgZ2myFDXqYOexx22FnqJTgrCcXJ14QphzrRtMoYaSe3WtIXhaB8jlxrAev5
 w8KZMHNBsBThVeD4CRxbWgwgA/LI5DTQswtpv5Av5lAtO9eCdRM/G8DbtkSyxsbqEGaT
 1aHD/XIXQ4bYJ4uqlLbN8vjevljqeI2zBW5b8Rj7rQAvVi5bJNap0xCCnquhRiOIAtme
 LtSgDuWG/0XdGvIyJb/+juhGZSIxQorQsV9qFDFqjMMLuQGRtFwhB50UPHM/IPenaOtH
 z4Rw==
X-Gm-Message-State: AOAM530D+RM54XwbkpLUkLVGfFGK7VE9S3fYD3Bkunfe0kZbIsQ0mtkH
 Kdbevo7697+Gn4iUTOkH8BEfB1OkYYX23xhnBCLwRQ==
X-Google-Smtp-Source: ABdhPJxusffkMJZCUwfXdGeGXpS0u/Ku8ZMHDBE3M2DepCZjKd6VqVmO6mnhU1hB5cse8s5416ajbmCkrUpyE24HNPk=
X-Received: by 2002:aca:654d:: with SMTP id j13mr4398347oiw.125.1620753846715; 
 Tue, 11 May 2021 10:24:06 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 11 May 2021 10:24:06 -0700
MIME-Version: 1.0
In-Reply-To: <20210511041930.592483-1-bjorn.andersson@linaro.org>
References: <20210511041930.592483-1-bjorn.andersson@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date: Tue, 11 May 2021 10:24:06 -0700
Message-ID: <CAE-0n53CxUfHerU68ShKiDPGRSfB-2Cwbt+aHrQsyF6XSMc=CA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: Introduce Qualcomm eDP/DP PHY
 binding
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, 
 Rob Clark <robdclark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, sbillaka@codeaurora.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_102408_187547_CDE035CF 
X-CRM114-Status: UNSURE (   9.32  )
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

Quoting Bjorn Andersson (2021-05-10 21:19:29)
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> new file mode 100644
> index 000000000000..c258e4f7e332
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Qualcomm DP/eDP PHY
> +
> +maintainers:
> +  - Bjorn Andersson <bjorn.andersson@linaro.org>
> +
> +description:
> +  The Qualcomm DP/eDP PHY is found in a number of Qualcomm platform and
> +  provides the physical interface for DisplayPort and Embedded Display Port.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,sc8180x-dp-phy
> +      - qcom,sc8180x-edp-phy
> +
> +  reg:
> +    items:
> +      - description: PHY base register block
> +      - description: tx0 register block
> +      - description: tx1 register block
> +      - description: PLL register block
> +
> +  clocks:
> +    maxItems: 2

Can this be items: - const: again? I think having maxItems means you can
have one or two items, which wouldn't match the number of clock-names
then.

> +
> +  clock-names:
> +    items:
> +      - const: aux
> +      - const: cfg_ahb
> +

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
