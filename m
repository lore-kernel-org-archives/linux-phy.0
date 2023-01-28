Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3BBFC61D97
	for <linux-phy@archiver.kernel.org>; Sat, 28 Jan 2023 15:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ol6VZnSeVGm0V3dsT21glft+ErWvUWBjgzZ+SCktBcU=; b=RJ/d0D836dmS+J
	4pCQnospRxx4F979FOWar1NqowEuXrCdNJyKBohBg35g5ICVVx0XZqPZLU45V2Ycfg51JhX3f+YN/
	u6yaqTqToiRtOtN/IcYdYn2+kVXJsQBEeGiO6OEYetw3of7+KtAtulEi2bJpiLrfVhKrXKbOJzHVa
	XSliZeFNes8Q6ZV1ssEwOOePFNqyx5Vt0ZK0/MY5vjFPezDCGBnNM9bxecACRDQ1CsL2nNgRSCS+T
	py4nQIBYs4reO7K+DDHdrSfsU44qBnXoTNB8R7Zk8Fmpv8ltkAE88jJd3S2e9LpEDuUnw8Rfz1OIy
	2qdFLfMN+SHqpDpgO1ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLnEA-000Lys-Dz; Sat, 28 Jan 2023 15:34:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLnDz-000Lwf-F6; Sat, 28 Jan 2023 15:34:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 004CC60C1E;
	Sat, 28 Jan 2023 15:34:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD3AFC433D2;
	Sat, 28 Jan 2023 15:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674920078;
	bh=9p78P6cXR1b4UU7LmDHxucqXQwLRZGC/wmG/lLypzGo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Sy0kkDvx7E1gVGfY9fcdg6jg5BXRuQjvDhZ65C8k3WA9gemy6YC6wX3Gx8hJ6J27H
	 8x4NyS2i9dc7yo7IjeKLfkJbdrwJvnmDYjTa4VHC3ZyoFewAW5vk21MiodWH4XZwsX
	 hne0KUqKUSiitaWQeznzMa5EsGNKQWvl+kY3QxWw+anNiuYxGsLpiX903y2CKtuGcp
	 1fpsi44mIXd51SeVfoW/J74LAmTLYdVHs6Gm3e4i8FSUlAL+oM3JvIYVMzXpMO2fFv
	 E1feNPP7OEIcUHmrswPBcbUTonWBEPjeef08rq4yiie66P9WWGcsokUtwiNIK3F1g9
	 /JHmxQiRyr/aQ==
Date: Sat, 28 Jan 2023 15:48:27 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: <Oleksii_Moisieiev@epam.com>, <gregkh@linuxfoundation.org>,
 <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>, <alexandre.torgue@foss.st.com>,
 <vkoul@kernel.org>, <olivier.moysan@foss.st.com>,
 <arnaud.pouliquen@foss.st.com>, <mchehab@kernel.org>,
 <fabrice.gasnier@foss.st.com>, <ulf.hansson@linaro.org>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
 <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
 <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
 <linux-usb@vger.kernel.org>, Loic PALLARDY <loic.pallardy@st.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: bus: add STM32 System Bus
Message-ID: <20230128154827.4f23534e@jic23-huawei>
In-Reply-To: <20230127164040.1047583-4-gatien.chevallier@foss.st.com>
References: <20230127164040.1047583-1-gatien.chevallier@foss.st.com>
	<20230127164040.1047583-4-gatien.chevallier@foss.st.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.36; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230128_073439_577123_7049C894 
X-CRM114-Status: GOOD (  10.53  )
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

On Fri, 27 Jan 2023 17:40:37 +0100
Gatien Chevallier <gatien.chevallier@foss.st.com> wrote:

> Document STM32 System Bus. This bus is intended to control firewall
> access for the peripherals connected to it.
> 
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> Signed-off-by: Loic PALLARDY <loic.pallardy@st.com>
Trivial comment on formatting.

> +
> +examples:
> +  - |
> +    // In this example, the rng1 device refers to etzpc as its domain controller.
> +    // Same goes for fmc.
> +    // Access rights are verified before creating devices.
> +
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    #include <dt-bindings/reset/stm32mp1-resets.h>
> +
> +    etzpc: bus@5c007000 {
> +        compatible = "st,stm32mp15-sys-bus";
> +        reg = <0x5c007000 0x400>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges;
> +        feature-domain-controller;
> +        #feature-domain-cells = <1>;
> +
> +        rng1: rng@54003000 {

Odd mixture of 4 spacing and 2 spacing in this example.
I'd suggest one or the other (slight preference for 4 space indents).


> +          compatible = "st,stm32-rng";
> +          reg = <0x54003000 0x400>;
> +          clocks = <&rcc RNG1_K>;
> +          resets = <&rcc RNG1_R>;
> +          feature-domains = <&etzpc 7>;
> +          status = "disabled";
> +        };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
