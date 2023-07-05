Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC0A5EB64DD
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 19:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrbe3G4KVgWId1qAKFbnPO3ld20YPYhWtIsELp0zZtE=; b=W1HxPOmiHVPV7D
	5XavdqDiulDlZS4uMBiWoLYWqSOfH9ASWSuFSTWBo43RCoWcimMOFinVM2F0pwoFrD6xR+7AsZre5
	LZg1SR5TiAXVn2lXNjQsyAp6BpDgH/fZr9wtoHubNrgwtiMPxCOb+YfQhEWZuhhhIyagdi1QDO0ma
	lpQMj91jBx2PR4PVYuaA6KWDCrz5aYjIv0f/YF46j1LYlhuzgnYtmEcf3xDPbz4bfTyA2z1Wm4jnM
	EqcCgMWceZCqcp5qBSHmqSd4J+qQvfYh8hOwZSbaE6pdvVl4Xk/NlpnDMLvzEdGOxGeGVsAJSW43g
	HNb48XW7BfGsC5ZeHMnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH8Ls-00GvMn-1Z;
	Wed, 05 Jul 2023 19:39:48 +0000
Received: from mail-io1-f47.google.com ([209.85.166.47])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH8Lp-00GvKw-16;
	Wed, 05 Jul 2023 19:39:46 +0000
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-783698a37beso355098739f.0;
        Wed, 05 Jul 2023 12:39:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688585983; x=1691177983;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OR44xsl8dcDDRHket6JLRoRPh10jvQanfxZD4Qq5o5A=;
        b=Ur1NDwbbC3nTP0pIygYCbKxxiLF5hRYyfW9JHp4FNz2hhWItlebKX5scGOy3fELeyD
         K1kmXrFceE1pUL8LGanp3KhLoDkTpSUCs3gNRDKRNaIrW5YjvyVnqrGDcFSJZ/kmSpgK
         sl/q1CE49aUfTUXxybjL1GF36xwUyQTx5s1tcYo/9r5qgMjWULbYEu3NWAQV4GXBB3vm
         F5+U1JxB3n0yR02MkaTNk4MNYaV37lEkWaXsrnZm9+QBsOliMFgAFXiNv8YokHPub4cm
         IxPH2+gDv8RDw5Ob3UXn+hALXTDr6Og34yiYvOZpFCx3oCSsTEagJvkwQhbu+2wewpxL
         OnIQ==
X-Gm-Message-State: ABy/qLZLFFeZSwh2RkYdYiDcAnLp0UrMbYH2smY1gk0cveK0MVfzLkYz
	/b4dNSZSeaYf089vyPSYiA==
X-Google-Smtp-Source: APBJJlFTsATQZZbeDYi05vWkxMhLO+2kIHQFYrmGtwqcASMsu98qNuBpLmP0dT/ZyPLVLU0YF4GwxA==
X-Received: by 2002:a6b:f208:0:b0:77e:3598:e511 with SMTP id q8-20020a6bf208000000b0077e3598e511mr177308ioh.2.1688585983078;
        Wed, 05 Jul 2023 12:39:43 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id l10-20020a056638220a00b0042b1cd4c096sm3797893jas.74.2023.07.05.12.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 12:39:42 -0700 (PDT)
Received: (nullmailer pid 1714650 invoked by uid 1000);
	Wed, 05 Jul 2023 19:39:32 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: hugues.fruchet@foss.st.com, vkoul@kernel.org, linux-media@vger.kernel.org, 
	gregkh@linuxfoundation.org, linux-phy@lists.infradead.org, lee@kernel.org, 
	linux-kernel@vger.kernel.org, arnd@kernel.org, linux-serial@vger.kernel.org, 
	mchehab@kernel.org, edumazet@google.com, arnaud.pouliquen@foss.st.com, 
	herbert@gondor.apana.org.au, davem@davemloft.net, 
	linux-crypto@vger.kernel.org, jic23@kernel.org, pabeni@redhat.com, 
	linux-usb@vger.kernel.org, alsa-devel@alsa-project.org, 
	olivier.moysan@foss.st.com, fabrice.gasnier@foss.st.com, kuba@kernel.org, 
	andi.shyti@kernel.org, alexandre.torgue@foss.st.com, conor+dt@kernel.org, 
	richardcochran@gmail.com, will@kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-mmc@vger.kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, 
	catalin.marinas@arm.com, dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org, 
	Oleksii_Moisieiev@epam.com, linux-spi@vger.kernel.org, 
	linux-iio@vger.kernel.org, netdev@vger.kernel.org, ulf.hansson@linaro.org, 
	devicetree@vger.kernel.org, robh+dt@kernel.org
In-Reply-To: <20230705172759.1610753-3-gatien.chevallier@foss.st.com>
References: <20230705172759.1610753-1-gatien.chevallier@foss.st.com>
 <20230705172759.1610753-3-gatien.chevallier@foss.st.com>
Message-Id: <168858597155.1714560.12250834903693245143.robh@kernel.org>
Subject: Re: [PATCH 02/10] dt-bindings: bus: add device tree bindings for
 RIFSC
Date: Wed, 05 Jul 2023 13:39:32 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_123945_375824_9B0574C4 
X-CRM114-Status: GOOD (  10.99  )
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


On Wed, 05 Jul 2023 19:27:51 +0200, Gatien Chevallier wrote:
> Document RIFSC (RIF security controller). RIFSC is a firewall controller
> composed of different kinds of hardware resources.
> 
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> ---
>  .../bindings/bus/st,stm32-rifsc.yaml          | 101 ++++++++++++++++++
>  1 file changed, 101 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/st,stm32-rifsc.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/bus/st,stm32-rifsc.yaml: title: 'STM32 Resource isolation framework security controller bindings' should not be valid under {'pattern': '([Bb]inding| [Ss]chema)'}
	hint: Everything is a binding/schema, no need to say it. Describe what hardware the binding is for.
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230705172759.1610753-3-gatien.chevallier@foss.st.com

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
