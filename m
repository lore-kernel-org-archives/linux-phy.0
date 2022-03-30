Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 130D4C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 16:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CeJ7VNlRgOUJv2yGWWc/PlRhol4hJsAxy8uzz402OsA=; b=neYHMTe+LbefRp
	7Y9575cilyaLu/DmELVk7rOfZ32G3ik0vAX7XOSyYGYSiQbr+UjWx4jR80adlH0HxMUx5o8s4An5e
	naMFtCgbHtgnq3uxzzLNZ4Ab084UcrjDivtGlt5qS/NyiIo5uAkjYGfwjGZCd6NQskkW+VneJcOBY
	LcyG+PMEmlG8AWoHfJoqsvdKqlVbfwBbZmfjJF/blEjRCHY9VixQ8+rKY32jZ4Gcs8OfD2L2BjvA3
	Sy899nKUu4WwRkeCrmy25lFeUZGgJUpqGb/qNp+Y+k3f+HZ89ubXXNaB7RCfoqXYT4CTTBSjKUX2S
	7eGyG58fIPDPPY3ZS2Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZbd7-00Guw3-F5; Wed, 30 Mar 2022 16:57:09 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZbd2-00Guuf-DN
 for linux-phy@lists.infradead.org; Wed, 30 Mar 2022 16:57:07 +0000
Received: by mail-ed1-x529.google.com with SMTP id y10so25146801edv.7
 for <linux-phy@lists.infradead.org>; Wed, 30 Mar 2022 09:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=fEzld4oIJa86hl09sRy64K2e8LGIGCRfWuc+U0PWYOs=;
 b=pz8Axq5e3iFbz7Jw0eIdKg+hWyV0eg5X/OrzwVODe4qALsVNW5P6XCIffz7jZBls1S
 Ay8G4ifJkD57k5cn7sKOqZqcX8jZz7AiV0A+xfY0usJu+I228VzlXlRNwtFfpvWDYChT
 tCTa4NX0jot2hZU9MZto6acQS6j1L5ezvPVFwjTq5mozRXGJ/05EDtzB/X0fdtun30yf
 E7wrNN00iG4bycxxZuXuO6Zu97SotlzoyB98sU++D3zFCPA3T7stPpKNzWvbRrSL+Hzq
 CLmsL7H9fVbfmMMXR72/C2K+zdLRiND4Sk71buZAy/vXVdCalN6MK04NuIfO07hJu1FF
 XYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=fEzld4oIJa86hl09sRy64K2e8LGIGCRfWuc+U0PWYOs=;
 b=xc5XSbVIs9ij6nTmdTx8jLaPaCZ3uc7eNzJXvri9G4rfXHE8fko81kK3jYyBFqJsn4
 zMhAT3bCv1q2E8Ew/M323IU85Nj622xNGPKV0N4ozTk87VgLMeAfQwTikbiS0gqGpfan
 bswydVaFIU8aLPySFSXPlcPvpMK0qvj2Aw1PHnAz7gKw/gyp5kq3X4qZwFrR8Co0ymvc
 GSgRz6gfJ+SZ/BumqLnFaBfrwpJ1PGaLsfze81bmRexD/GlOnd+pTLe7KW3OvjdsAu8x
 1gOY5ZpvUA/CDjIX+Xq+I6SqU8G75+96ppE09vzSqKPVDPweJufKxTsuENUmZStj2slI
 niQQ==
X-Gm-Message-State: AOAM533hcFZJ+xX1O5qu6GfZeuh5nz/EmYCSRvneXdNLkZvtEZoXSYvW
 oBGYMVmPAASKq8QP7yLZ5F40WA==
X-Google-Smtp-Source: ABdhPJyCpxyw7R6T+pFO1zsX01vbrvk5lvAApJ9RbFPs/LdEa4c5G+bltActTe6FNicQwS1ouiR2cg==
X-Received: by 2002:a05:6402:d67:b0:419:48b:a762 with SMTP id
 ec39-20020a0564020d6700b00419048ba762mr11695300edb.291.1648659422507; 
 Wed, 30 Mar 2022 09:57:02 -0700 (PDT)
Received: from [192.168.0.164] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 q15-20020a1709060e4f00b006cdf4535cf2sm8394201eji.67.2022.03.30.09.57.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 09:57:01 -0700 (PDT)
Message-ID: <e13ceaad-d5f7-3c50-774e-28cabb2e1fe6@linaro.org>
Date: Wed, 30 Mar 2022 18:57:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: Fix incomplete if/then/else schemas
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Georgi Djakov <djakov@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Mark Brown <broonie@kernel.org>,
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Dmitry Osipenko <digetx@gmail.com>, linux-iio@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-mmc@vger.kernel.org,
 linux-tegra@vger.kernel.org, netdev@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20220330145741.3044896-1-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330145741.3044896-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_095704_513669_19634DD2 
X-CRM114-Status: GOOD (  12.34  )
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

On 30/03/2022 16:57, Rob Herring wrote:
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

Looks good:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
