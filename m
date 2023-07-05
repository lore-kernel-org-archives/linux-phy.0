Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAF5BC001DF
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 19:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/BgLA77TNuTlddpN5Ztr1lgIH3qtir+XOSATchJEQY=; b=msRYt51HKh1NCG
	SkljRDVHmqUraG4JfX59/OUip6vPQhGeoewJvyPmITHwJxi/vUJqqW+zhPAHYi42LvgMCr118NseK
	KhQWmZCYtk1iBFzXHSenHvM6S2urkudNCC/9KhugKf9FEO3so9a6dDAfz1UmNBfs/uL9DNTzQt264
	ztFVLmSZ5pTcDhTrkTtgvlKXqlQD7Gz5b8T9p9RTJ4GgXpo8FiJBntnDL3gQ02sYAtYCYpuHC2/TX
	Kf6HMO0H4xUKYs8nLZJyHaWzsLwfpO857PzmJhXYsaZYOgefXEVnWqMv74w/P7NwBZJeHr1RhDgSF
	B9fCvRo6ZA6yi2IRdyow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH8Lm-00GvKC-1c;
	Wed, 05 Jul 2023 19:39:42 +0000
Received: from mail-il1-f172.google.com ([209.85.166.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH8Lk-00GvIv-0z;
	Wed, 05 Jul 2023 19:39:41 +0000
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-3457cba78f3so37132225ab.3;
        Wed, 05 Jul 2023 12:39:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688585978; x=1691177978;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=n9XXXuHpMOQBfJPbmDE208zmHNLuLmJ5W06p0NFVR4Q=;
        b=WhhzEyrfxqV9epICesjcZebl6B7g1KN4nDsbrtj4jNdsnw6UFjnPMcKIlQhVlcGyAm
         gXZWdjYQsVgh0CCLMkP011npnM/lORVDFPEgF00Ag3XHykc2aPPbgocjIq53NzX7Yl/A
         rJoF9c6aKmKfw6zWBBrlbR+34uYk6wAaXeZXMyI3YdTNK9VeMnPSeKbYc2j7BdR3r7pd
         7B0zYXb/LerCDtU7HWlDX1IKkdNWEdJZjXnA0S8tkgTFdMZAu63PHI7yQH1HpSGRXZm5
         cZC19rkDBPZFj0cL535DFa03x0edlr2WrzT2rIUe9mQn4VxtrIHi2xFxDab8rkQdmWkC
         RtXA==
X-Gm-Message-State: ABy/qLb7kXqVKCBTNKQLcswTDzVdlWWtUJzaBEnzpKc80ln1dbSmvh4m
	xO5THTH9FDrKRTBSfesNxA==
X-Google-Smtp-Source: APBJJlHeCCgfywEkTbD8TaGxOES0xf6LHwH4LNaopQfeQ1Mlc+0XwkrXc56AMYZDW2D01Tl0iYFNfw==
X-Received: by 2002:a92:c70d:0:b0:345:af3e:3aa8 with SMTP id a13-20020a92c70d000000b00345af3e3aa8mr110268ilp.25.1688585978167;
        Wed, 05 Jul 2023 12:39:38 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id n24-20020a5e8c18000000b007835686237asm7580752ioj.27.2023.07.05.12.39.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 12:39:37 -0700 (PDT)
Received: (nullmailer pid 1714647 invoked by uid 1000);
	Wed, 05 Jul 2023 19:39:32 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, lee@kernel.org, davem@davemloft.net, 
	pabeni@redhat.com, linux-stm32@st-md-mailman.stormreply.com, 
	linux-media@vger.kernel.org, mchehab@kernel.org, robh+dt@kernel.org, 
	alexandre.torgue@foss.st.com, will@kernel.org, dmaengine@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-phy@lists.infradead.org, 
	catalin.marinas@arm.com, Oleksii Moisieiev <oleksii_moisieiev@epam.com>, arnd@kernel.org, 
	devicetree@vger.kernel.org, netdev@vger.kernel.org, 
	fabrice.gasnier@foss.st.com, edumazet@google.com, hugues.fruchet@foss.st.com, 
	gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, 
	herbert@gondor.apana.org.au, Oleksii_Moisieiev@epam.com, 
	andi.shyti@kernel.org, linux-crypto@vger.kernel.org, kuba@kernel.org, 
	linux-mmc@vger.kernel.org, conor+dt@kernel.org, olivier.moysan@foss.st.com, 
	linux-i2c@vger.kernel.org, alsa-devel@alsa-project.org, jic23@kernel.org, 
	linux-arm-kernel@lists.infradead.org, richardcochran@gmail.com, 
	vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org, ulf.hansson@linaro.org, 
	arnaud.pouliquen@foss.st.com
In-Reply-To: <20230705172759.1610753-2-gatien.chevallier@foss.st.com>
References: <20230705172759.1610753-1-gatien.chevallier@foss.st.com>
 <20230705172759.1610753-2-gatien.chevallier@foss.st.com>
Message-Id: <168858597047.1714514.3836923282073685393.robh@kernel.org>
Subject: Re: [IGNORE][PATCH 01/10] dt-bindings: Document common device
 controller bindings
Date: Wed, 05 Jul 2023 13:39:32 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_123940_349702_140A2F2F 
X-CRM114-Status: GOOD (  12.78  )
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


On Wed, 05 Jul 2023 19:27:50 +0200, Gatien Chevallier wrote:
> From: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>
> 
> Introducing of the common device controller bindings for the controller
> provider and consumer devices. Those bindings are intended to allow
> divided system on chip into muliple domains, that can be used to
> configure hardware permissions.
> 
> Signed-off-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
> ---
> 
> Depends-on: https://lore.kernel.org/lkml/c869d2751125181a55bc8a88c96e3a892b42f37a.1668070216.git.oleksii_moisieiev@epam.com/
> 
>  .../feature-domain-controller.yaml            | 84 +++++++++++++++++++
>  1 file changed, 84 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/feature-controllers/feature-domain-controller.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/feature-controllers/feature-domain-controller.yaml: title: 'Generic Domain Controller bindings' should not be valid under {'pattern': '([Bb]inding| [Ss]chema)'}
	hint: Everything is a binding/schema, no need to say it. Describe what hardware the binding is for.
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230705172759.1610753-2-gatien.chevallier@foss.st.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
