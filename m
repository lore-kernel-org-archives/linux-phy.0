Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0126BC77B7C
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 19:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fijWhVIhfiaq/PobYtvrH+B5nXlz2ZsLnRtJewwwldU=; b=VgzQJQz4q69wXA
	vXSy8PLOwRx2zXEvFHcziBUEk/jGUfhetqsnlPKQxsaNtl95SWQNMUK184X21FAWrnzk4wSc4md0i
	33GUrQj7X/9OD2N5MjXQZcx8Z9KVcrgDE+Pu51UfKSpVc34+ibUUt3fS0WJKEYHJfUO/zEbCJpicC
	PE7nxLGuqG/enHXfDV7jqCEP9OioTF40ASxB6ZnRaLXspO5Zce7f5m064yb4BhKW23A7J8wuYiySN
	kKwx5wQjufPgNio7kfW6Uw2OmShfB85iebD7hbgD4B+4AmX4qssBJtxO8P8m6/e0rbKDBOMtdtpyC
	tjGC6U4kUJ41uHJN98cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pv0sw-00BbYB-28;
	Fri, 05 May 2023 19:14:30 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pv0st-00BbX6-2Z;
	Fri, 05 May 2023 19:14:29 +0000
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-6a5f765d595so1362222a34.0;
        Fri, 05 May 2023 12:14:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683314065; x=1685906065;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ob/tYM63KWmpHL+MbVncyNEUjCaAQy3a3Q0ZpHwG/qc=;
        b=Zsk7sEBY9fkBgQ9LAXUDPstK82gr1ExGKrakDFSp9aoA/A9shFou5pEjjA8I1SXJrX
         KFfZXJpDEBFvdwq34A9K3hFIq3bYtAY/gX49Wc5MSI1f3kb7aIybGyPfaHw64oHiV0bu
         j8q8BInxIwyXQN1AW62iz7yAhV8Tnc93fnI2LmrVRiNro9r6nd7z5pdXfUdC7DXr+o2R
         tZJ5zcj+M96ZuOAjVdX/ZefTodptGZn62DOa0ZXmGFmREcuGNvbkcJFLRlZ+nrJZqK+M
         HL1MN5CbQU/aH953C8J1T5v+/HoKFUpu0ZEfa2L4Nfd9rC4dmUGFrtUcaB6kybixX11y
         BN/w==
X-Gm-Message-State: AC+VfDxCmjDRXuNO9NJ6ji0IE8cU5dlHTKPexJ9U0RN7u234/IclWUaf
	XvjspdW+aNICY0/q35kN1g==
X-Google-Smtp-Source: ACHHUZ6FK7GAnvCJYewkHMMfv4Kk0sJFerm0OriIL32hAr3N87hUS6kt7QUf+IvQqrQPQ3I++KfXOA==
X-Received: by 2002:a05:6871:40f:b0:180:2a5e:7f8f with SMTP id d15-20020a056871040f00b001802a5e7f8fmr1374449oag.22.1683314062575;
        Fri, 05 May 2023 12:14:22 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id ec51-20020a0568708c3300b001727d67f2dbsm2153520oab.40.2023.05.05.12.14.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 12:14:21 -0700 (PDT)
Received: (nullmailer pid 3406638 invoked by uid 1000);
	Fri, 05 May 2023 19:14:20 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: shawnguo@kernel.org, devicetree@vger.kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, imx@lists.linux.dev, fushi.peng@nxp.com, krzysztof.kozlowski+dt@linaro.org, linux-phy@lists.infradead.org, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org, kishon@kernel.org, vkoul@kernel.org, robh+dt@kernel.org
In-Reply-To: <20230505185247.1854677-2-Frank.Li@nxp.com>
References: <20230505185247.1854677-1-Frank.Li@nxp.com>
 <20230505185247.1854677-2-Frank.Li@nxp.com>
Message-Id: <168331406075.3406622.9380633591504481297.robh@kernel.org>
Subject: Re: [PATCH 2/2] doc: dt-binding: cdns-salvo-phy: add property
 usb2-disconnect-threshold-microvolt
Date: Fri, 05 May 2023 14:14:20 -0500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_121427_831674_441AD2D6 
X-CRM114-Status: GOOD (  10.31  )
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


On Fri, 05 May 2023 14:52:47 -0400, Frank Li wrote:
> Add usb2-disconnect-threshold-microvolt property to address fake USB
> disconnection issue during enumeration or suspend state for difference
> platform.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml: properties:usb2-disconnect-threshold-microvolt: '$ref' should not be valid under {'const': '$ref'}
	hint: Standard unit suffix properties don't need a type $ref
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230505185247.1854677-2-Frank.Li@nxp.com

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
