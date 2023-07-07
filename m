Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13A7AC04E69
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jul 2023 15:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlzAiGGyc+GAdidqOqAj8zj8FajcpbaM5ryVYaG9wDA=; b=sseG3kBC63Zs82
	qZ34j8NTA1NSIaOk6lLHdjUbu3jFsFdl8zJ6Ac+yOvpFiLkqeJYPSiKxTk/yLdkYyR9VyL3j4OnbM
	X58izGW4uK/vsc0l91UlPZp5j30kXL8tuYVpnpuM4AC5Epcgz8tCTcM2mIOnXfH+6qxyLg+4RRjSH
	hB5U9GOD9+xS40BmJiCpoust2adxj3D26qOtcEbo7VL3sEwwxSOtN30ICaFZMpE3UAou3ZzR87J8P
	k14bJtrLkx+2K+ExF9ZR45rOZu4no050OpjHC9Z8MUiNqe3oDB2DvoR/PqAoYEbR6++jrdELDzr4i
	0Gk7fheTPmlXRJSxOqOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHnGf-00514a-24;
	Fri, 07 Jul 2023 15:21:09 +0000
Received: from mail-il1-f174.google.com ([209.85.166.174])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHnGc-005118-0i;
	Fri, 07 Jul 2023 15:21:07 +0000
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3464c774f23so1030305ab.1;
        Fri, 07 Jul 2023 08:21:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688743263; x=1691335263;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rL/IqSliQWE/k5qHxsNvvh1YZrhQdGRZyr99h97/eUY=;
        b=V2k20plFMvsXtfJRWZkfTuulsdXdPL7PNEv4z45gzyjtQExOHDDlz138y2Bi7djpT4
         TYnSGugwlrxnx+a1eM3iePO0ATRKhwajoen/4UaSbMyv7PjszlF7RSOsirKOG6+NmVI9
         GHra+LK9VUiHL2zk6wfWR3F0sfS/s9R818MNdN9SW0TYhmpGzOYNiFB4eQfva+nQ1k6K
         rSNjOJUzKrXgqT51hvR5eRBCxUwwIh8PXiMh8FF6+QS6nKD6xckyz4tFgBpAE+mC9bON
         IZCPoq6kBKbg/aX3zsCzwKJLoUy5fxmabw3afJScvkFaSivHpIHPwlzoknpOIGkpsyII
         aLkA==
X-Gm-Message-State: ABy/qLbAq82ucjx8UT743fR/kA1Kox1YpdM9weL51YR+h1KIASLX0kM6
	IuMMq3NhFNJvzHepEUYrvQ==
X-Google-Smtp-Source: APBJJlFyYg4jsqLMtrZwdHhLv4pwfC6duMAPrAIt71GIj1jKSnKNUViqYaVUZmofZqUjjxCTBsm9Mg==
X-Received: by 2002:a92:de12:0:b0:346:b85:5f2 with SMTP id x18-20020a92de12000000b003460b8505f2mr5198421ilm.23.1688743262706;
        Fri, 07 Jul 2023 08:21:02 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id b11-20020a92dccb000000b00325e56c1cdcsm1386377ilr.49.2023.07.07.08.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 08:21:01 -0700 (PDT)
Received: (nullmailer pid 327561 invoked by uid 1000);
	Fri, 07 Jul 2023 15:20:56 -0000
Date: Fri, 7 Jul 2023 09:20:56 -0600
From: Rob Herring <robh@kernel.org>
To: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
Cc: Oleksii_Moisieiev@epam.com, gregkh@linuxfoundation.org, 
	herbert@gondor.apana.org.au, davem@davemloft.net, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	alexandre.torgue@foss.st.com, vkoul@kernel.org, jic23@kernel.org, 
	olivier.moysan@foss.st.com, arnaud.pouliquen@foss.st.com, mchehab@kernel.org, 
	fabrice.gasnier@foss.st.com, andi.shyti@kernel.org, ulf.hansson@linaro.org, 
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
	hugues.fruchet@foss.st.com, lee@kernel.org, will@kernel.org, 
	catalin.marinas@arm.com, arnd@kernel.org, richardcochran@gmail.com, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-iio@vger.kernel.org, alsa-devel@alsa-project.org, 
	linux-media@vger.kernel.org, linux-mmc@vger.kernel.org, 
	netdev@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 04/10] dt-bindings: treewide: add feature-domains
 description in binding files
Message-ID: <20230707152056.GA317056-robh@kernel.org>
References: <20230705172759.1610753-1-gatien.chevallier@foss.st.com>
 <20230705172759.1610753-5-gatien.chevallier@foss.st.com>
 <20230706145108.GA3858320-robh@kernel.org>
 <0aaace47-1bb4-82c5-57a5-6f5d27eb4d45@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0aaace47-1bb4-82c5-57a5-6f5d27eb4d45@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_082106_262935_D3C70867 
X-CRM114-Status: GOOD (  24.49  )
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

On Fri, Jul 07, 2023 at 02:28:28PM +0200, Gatien CHEVALLIER wrote:
> Hello Rob,
> 
> On 7/6/23 16:51, Rob Herring wrote:
> > On Wed, Jul 05, 2023 at 07:27:53PM +0200, Gatien Chevallier wrote:
> > > feature-domains is an optional property that allows a peripheral to
> > > refer to one or more feature domain controller(s).
> > > 
> > > Description of this property is added to all peripheral binding files of
> > > the peripheral under the STM32 firewall controllers. It allows an accurate
> > > representation of the hardware, where various peripherals are connected
> > > to this firewall bus. The firewall can then check the peripheral accesses
> > > before allowing it to probe.
> > > 
> > > Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> > > ---
> > > 
> > > Disclaimer: Some error with dtbs_check will be observed as I've
> > > considered the property to be generic, as Rob asked
> > > 
> > >   Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml  | 4 ++++
> > >   Documentation/devicetree/bindings/dma/st,stm32-dma.yaml      | 4 ++++
> > >   Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml   | 4 ++++
> > >   Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml      | 4 ++++
> > >   Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml  | 4 ++++
> > >   .../devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml      | 4 ++++
> > >   Documentation/devicetree/bindings/iio/dac/st,stm32-dac.yaml  | 4 ++++
> > >   .../devicetree/bindings/media/cec/st,stm32-cec.yaml          | 4 ++++
> > >   Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml   | 4 ++++
> > >   .../bindings/memory-controllers/st,stm32-fmc2-ebi.yaml       | 4 ++++
> > >   Documentation/devicetree/bindings/mfd/st,stm32-lptimer.yaml  | 4 ++++
> > >   Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml   | 5 +++++
> > >   Documentation/devicetree/bindings/mmc/arm,pl18x.yaml         | 4 ++++
> > >   Documentation/devicetree/bindings/net/stm32-dwmac.yaml       | 4 ++++
> > >   Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml | 4 ++++
> > >   .../devicetree/bindings/regulator/st,stm32-vrefbuf.yaml      | 4 ++++
> > >   Documentation/devicetree/bindings/rng/st,stm32-rng.yaml      | 4 ++++
> > >   Documentation/devicetree/bindings/serial/st,stm32-uart.yaml  | 4 ++++
> > >   Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml    | 4 ++++
> > >   Documentation/devicetree/bindings/sound/st,stm32-sai.yaml    | 4 ++++
> > >   .../devicetree/bindings/sound/st,stm32-spdifrx.yaml          | 4 ++++
> > >   Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml     | 4 ++++
> > >   Documentation/devicetree/bindings/spi/st,stm32-spi.yaml      | 4 ++++
> > >   Documentation/devicetree/bindings/usb/dwc2.yaml              | 4 ++++
> > >   24 files changed, 97 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml b/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
> > > index b767ec72a999..daf8dcaef627 100644
> > > --- a/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
> > > +++ b/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
> > > @@ -50,6 +50,10 @@ properties:
> > >     power-domains:
> > >       maxItems: 1
> > > +  feature-domains:
> > > +    minItems: 1
> > > +    maxItems: 3
> > 
> > What are the 3 entries?
> > 
> > Rob
> 
> I thought I was benefiting from the description of the pattern-property in
> the RIFSC YAML file. But yes anyway, it seems like it needs some description
> here as the dependency does not appear in this file.

Humm, that should limit the maximum entries to 2, so 3 would never work 
(if RIFSC is the parent). 

> I picked 3 as a maxItems for our ST needs, I'll give it some more thought
> when coming back with something clearer.

I'd expect you have 1 entry for register bus and 1 entry for DMA bus if 
there is one. It's block specific for how many entries, so the RIFSC 
schema should not be setting that. You could possibly say that 
'feature-domains' is required for all the child nodes though.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
