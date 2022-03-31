Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA0BCC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 31 Mar 2022 20:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcAZI9ah88emNAzyeVFBnDbMrpckJZNwYqJZKoLIBnw=; b=p9HVNpvkpBt9RB
	hF4slyFcSn+NZshaN+Yo5697KtZdkyyXi2zj2wqEmeitQC6aPC52Tpcrgr+itx2jHoVPuKygNpTkA
	U4a4qMwRwhNuNtFQD0KoLOIVwOAVafI+HPzOKyEiO40gabT/9HlQTrTewjFKnciMrgjFKPo6X3WLF
	cM8PIbkv1Y1kSEs8aU5kMW2q+Iu7hjsJoe0xkwwNykgAAae/2nbr3VH6uJHets11t/CnaPi3hUoXA
	nzh5gudvIRn8f8CPSFML5b7SDkfvxykV6jtQdXIA+WXMTbz2jW+j8dTh6nBoGs4BJfczfXUCxfDh2
	a/4bvPpFVdJxPsofTgFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1na1Vb-003bxr-89; Thu, 31 Mar 2022 20:35:07 +0000
Received: from mail-oa1-f43.google.com ([209.85.160.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1na1VY-003bvt-IS
 for linux-phy@lists.infradead.org; Thu, 31 Mar 2022 20:35:05 +0000
Received: by mail-oa1-f43.google.com with SMTP id
 586e51a60fabf-dacc470e03so534467fac.5
 for <linux-phy@lists.infradead.org>; Thu, 31 Mar 2022 13:35:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7o8q97xCtSsryTgEf+sdFsnMX0/U036sQhYghPoefl4=;
 b=YzgSkAFD6Ovb6c/BYi80acSgRaujDD3wtklNvtDoURPaprTMos/D7Iumr/Gj/BulFh
 fZM+zvm00O68I3nhHHYlRmQlqkQjXQ94t24LL7TaYF4kcs+VQDNsydPVeuTVOS6A6urg
 CHke1NRZIef4heKF3AC6LMZgviSOCYFoNDNRh3uujrifOXrUmLDJZ2IWU3/1ZpLhC0bh
 BGiwHz1rDkRqApdpSAc54Kvn1058AR/EsMvpNQnqHx4fTlp0eoSPdlJp6xwhqe+eooYu
 bcUVitKJLvxfzRhFwB0vL+4IghnvkFt0rbbS2TKgBuqZDqJ3P1zOOsEkoxjhr5mTUcoO
 e26g==
X-Gm-Message-State: AOAM532gQKIyz/2dEfC7p/sxpr9kjLJOhRQBzFZbOJ1NK1JSgUp8MRkM
 4wfhRlfB9pSdQc8wpFDp6fLhD860bA==
X-Google-Smtp-Source: ABdhPJyOtg9v8M3rgMoWnDenrT80lRaoyYQt7XKsnQHhmcrqEG9E/JNZKDO/sxj1EcCQH8b9oxX0lA==
X-Received: by 2002:a05:6870:79d:b0:da:56e3:fe99 with SMTP id
 en29-20020a056870079d00b000da56e3fe99mr3441337oab.95.1648758902507; 
 Thu, 31 Mar 2022 13:35:02 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 r35-20020a056870582300b000df0dc42ff5sm219227oap.0.2022.03.31.13.34.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Mar 2022 13:35:00 -0700 (PDT)
Received: (nullmailer pid 1446207 invoked by uid 1000);
 Thu, 31 Mar 2022 20:34:59 -0000
Date: Thu, 31 Mar 2022 15:34:59 -0500
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Vinod Koul <vkoul@kernel.org>, alsa-devel@alsa-project.org, 
 Georgi Djakov <djakov@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Mark Brown <broonie@kernel.org>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Jonathan Cameron <jic23@kernel.org>, 
 "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, 
 linux-mmc@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-tegra@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Dmitry Osipenko <digetx@gmail.com>, 
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>, 
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
Subject: Re: [PATCH] dt-bindings: Fix incomplete if/then/else schemas
Message-ID: <YkYQc/r8P5LYI6dt@robh.at.kernel.org>
References: <20220330145741.3044896-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220330145741.3044896-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_133504_650908_58DC3840 
X-CRM114-Status: GOOD (  12.59  )
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

On Wed, 30 Mar 2022 09:57:41 -0500, Rob Herring wrote:
> A recent review highlighted that the json-schema meta-schema allows any
> combination of if/then/else schema keywords even though if, then or else
> by themselves makes little sense. With an added meta-schema to only
> allow valid combinations, there's a handful of schemas found which need
> fixing in a variety of ways. Incorrect indentation is the most common
> issue.
> 
> Cc: Lars-Peter Clausen <lars@metafoo.de>
> Cc: Michael Hennerich <Michael.Hennerich@analog.com>
> Cc: Jonathan Cameron <jic23@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Olivier Moysan <olivier.moysan@foss.st.com>
> Cc: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Georgi Djakov <djakov@kernel.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Jonathan Hunter <jonathanh@nvidia.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Paolo Abeni <pabeni@redhat.com>
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
> Cc: Grygorii Strashko <grygorii.strashko@ti.com>
> Cc: Dmitry Osipenko <digetx@gmail.com>
> Cc: linux-iio@vger.kernel.org
> Cc: alsa-devel@alsa-project.org
> Cc: linux-mmc@vger.kernel.org
> Cc: linux-tegra@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Cc: linux-phy@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/iio/adc/adi,ad7476.yaml          |  1 +
>  .../bindings/iio/adc/st,stm32-dfsdm-adc.yaml  |  8 +-
>  .../bindings/iio/dac/adi,ad5360.yaml          |  6 +-
>  .../bindings/interconnect/qcom,rpm.yaml       | 84 +++++++++----------
>  .../bindings/mmc/nvidia,tegra20-sdhci.yaml    |  2 +
>  .../bindings/net/ti,davinci-mdio.yaml         |  1 +
>  .../bindings/phy/nvidia,tegra20-usb-phy.yaml  | 20 ++---
>  .../bindings/phy/qcom,usb-hs-phy.yaml         | 36 ++++----
>  .../bindings/regulator/fixed-regulator.yaml   | 34 ++++----
>  .../bindings/sound/st,stm32-sai.yaml          |  6 +-
>  .../devicetree/bindings/sram/sram.yaml        | 16 ++--
>  11 files changed, 108 insertions(+), 106 deletions(-)
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
