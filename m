Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8D03EB64DD
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 19:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUUiR4tdY+Tku52iElCqmtzJKj4bgwCUAbZS//4YQw4=; b=erkGf6jpqSysvN
	R+eHEBKjKNWHoFSJrI9RQ73dqYwFq7BlJTWLu2JE8QWC5TEBd16y1Hu0AN/e1hkSo5EqEvni/udhu
	qznQY1691rWunKKx8ohALOxo1F3BBEukpGn3SADYmzR4bpSuYXsJOhIED+kbg1tgzjIGgIHNxlQgI
	2G/nkPbSpKauSZbX1RsGPrhsdrg/7UXkyqwp577kVwTCu+MhTe0klP0IxFGCC2vwvmuX3ZA8zKOyq
	rAG1ijgvUDUnGRXDO/QvlHpxuNGTA3sm9JzrSXYKQH7s+eImRk7fFP4vtd/zZvQtwZmsQNlOV8gMi
	7P8paA5Cxpc7yCRL4aEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH8M2-00GvRU-1m;
	Wed, 05 Jul 2023 19:39:58 +0000
Received: from mail-io1-f52.google.com ([209.85.166.52])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH8Ly-00GvMw-37;
	Wed, 05 Jul 2023 19:39:56 +0000
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-78360b822abso277807939f.2;
        Wed, 05 Jul 2023 12:39:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688585988; x=1691177988;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EmigWppDMAwntmLPkpHMViFD3zfbB0BalUBHyRmY93I=;
        b=jLv0KbdRSAOmqFQ0yob+mWmK+f0nc6GuW5HeBRVNTltl5/JbNE7hnAjpAJrlI3x6Sz
         2qQEgzeGFfS0hEZD74aHnKIs14vrIdU0UM3EIr6qZB9Z48Zoqq08jmbrQ9dZEK+D1xxw
         HvOlEVtX/SxyQ39+d5kUV1oWynnfNibujRrbr5TuBEJ6KO4ndNy/uLgOJucM7T1upSvv
         QbSs5LeYVdrHWs8W6VjlYoiYrmYftKWldbnUF6iZYABWObNisleuM1IIozck5WJKy8Xl
         Wvh09e7QhtGCeRzYDYAbUajFJE+RcmiRcmMwR3jXx8kySVH6EWXeWW4V31rsqwcA9C76
         U0zA==
X-Gm-Message-State: ABy/qLZ0ylO4H5RtwfTqxfFyECulFxlsWx/EIdBL/H45dh2sF4+KDCIG
	ywzrdideFVhxUEiNoVx3GQ==
X-Google-Smtp-Source: APBJJlE1T+SG//kQOjsdrxPqC6WYFy+jVqYd/9wV9AIbQOA/LFJUSpnFw6o7MHDprdjfMYp8ihzVDA==
X-Received: by 2002:a6b:3c02:0:b0:786:45f7:fb7e with SMTP id k2-20020a6b3c02000000b0078645f7fb7emr58527iob.13.1688585988126;
        Wed, 05 Jul 2023 12:39:48 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id d21-20020a02a495000000b0042ad887f705sm6314042jam.143.2023.07.05.12.39.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 12:39:47 -0700 (PDT)
Received: (nullmailer pid 1714652 invoked by uid 1000);
	Wed, 05 Jul 2023 19:39:32 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: fabrice.gasnier@foss.st.com, jic23@kernel.org, conor+dt@kernel.org, 
	hugues.fruchet@foss.st.com, richardcochran@gmail.com, will@kernel.org, 
	davem@davemloft.net, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-phy@lists.infradead.org, arnd@kernel.org, gregkh@linuxfoundation.org, 
	linux-i2c@vger.kernel.org, linux-usb@vger.kernel.org, 
	arnaud.pouliquen@foss.st.com, mchehab@kernel.org, olivier.moysan@foss.st.com, 
	andi.shyti@kernel.org, alexandre.torgue@foss.st.com, kuba@kernel.org, 
	linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-serial@vger.kernel.org, 
	alsa-devel@alsa-project.org, pabeni@redhat.com, linux-media@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Oleksii_Moisieiev@epam.com, 
	lee@kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org, 
	robh+dt@kernel.org, ulf.hansson@linaro.org, catalin.marinas@arm.com, 
	edumazet@google.com, linux-spi@vger.kernel.org, herbert@gondor.apana.org.au, 
	linux-iio@vger.kernel.org, linux-crypto@vger.kernel.org
In-Reply-To: <20230705172759.1610753-4-gatien.chevallier@foss.st.com>
References: <20230705172759.1610753-1-gatien.chevallier@foss.st.com>
 <20230705172759.1610753-4-gatien.chevallier@foss.st.com>
Message-Id: <168858597253.1714602.9996873148476929300.robh@kernel.org>
Subject: Re: [PATCH 03/10] dt-bindings: bus: add device tree bindings for
 ETZPC
Date: Wed, 05 Jul 2023 13:39:32 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_123955_003034_E613EF21 
X-CRM114-Status: GOOD (  11.56  )
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


On Wed, 05 Jul 2023 19:27:52 +0200, Gatien Chevallier wrote:
> Document ETZPC (Extended TrustZone protection controller). ETZPC is a
> firewall controller.
> 
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> ---
>  .../bindings/bus/st,stm32-etzpc.yaml          | 90 +++++++++++++++++++
>  1 file changed, 90 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/st,stm32-etzpc.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/bus/st,stm32-etzpc.yaml: title: 'STM32 Extended TrustZone protection controller bindings' should not be valid under {'pattern': '([Bb]inding| [Ss]chema)'}
	hint: Everything is a binding/schema, no need to say it. Describe what hardware the binding is for.
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
Documentation/devicetree/bindings/bus/st,stm32-etzpc.example.dtb: /example-0/etzpc@5c007000: failed to match any schema with compatible: ['st,stm32mp13-sys-bus']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230705172759.1610753-4-gatien.chevallier@foss.st.com

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
