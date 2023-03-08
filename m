Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85121C64EC4
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 14:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5AJl/M71P3eKj/xmNli9i6s9S7SJwc/lJxjQDhnKdM=; b=KdewY83Q7aLS0i
	tWIk28A48u9wAfV1+31JnE4Sbtlxfz/LQoQUg/IZJWcSlDbgjsXmODS1tDe/Xi5Y15Icp6bT/MrAA
	K+Sl0H1ZyHjoILxP9PuBWpD49AoiDk/zSuFAotjzr73wTHB2nJgsXNZzdlUlAiXVStF46kjIOF7Vr
	mdNWUWrXmsKtPs5CljMtRiqnMGOEk4MwJUQD0gyBqLyPPFcWOPLYD4j/kkyDC87M1GK9+faPBT5EA
	KbbHQC+G33GwrO3di+zFlYOuCkf+9jWh6qljes7XRu5jKQTns5TgDpO30c2wNrlCFVYOtHviUcgPD
	N7O0mR/XxhbsIYDn/x3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZuR8-005NIE-VE; Wed, 08 Mar 2023 14:06:34 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZuR4-005NFQ-Gd; Wed, 08 Mar 2023 14:06:32 +0000
Received: by mail-ot1-f52.google.com with SMTP id r23-20020a05683001d700b00690eb18529fso9032011ota.1;
        Wed, 08 Mar 2023 06:06:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678284387;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=W3V1JTSU4mAasV6Yy4rBnCyWxykGtCx/CwR52o/KvEc=;
        b=arMMqNBBseCSyLknjmFYzCZX2TlwdHZ/DipiZaUHxFXmT2V9Q1zwPpndCxilJeeJb6
         xc7wkJYqgeZ58dHFJ98cie4w6ugNhWR0vLaVV6yoH+NtNMO5lUYau+yJxmUt6ACVsmXc
         NQPQfICPWbsM727vtxH/wxeOLgtSVEdvj15xayHE2VUrMPyGcoD7BwMbNek6BIMXmRD9
         s4vcEOGpxTxdp930JTATw27iJKOeCRLdW5Mw3eSE/+NLiyEEHmUl6UD2I8OdoPTF9ju3
         cyNdQ3R6iISnjjuBYvsy6Lh0IqY6E0kN1LEQpla8ZRYUtHRzuNk0EIojssnIU7HqHLua
         YLZA==
X-Gm-Message-State: AO0yUKXG2uDL7uoPPhUZzZnT5eRKQgt+uFfC0J0tnpI2PPYgRXrheiGU
	if7sDxHnfvXRWO6oQt4VP5KHEO581g==
X-Google-Smtp-Source: AK7set+6pXcrDnyjZYZJ0PqF6YB97KGKOLOLPb2e+N3hu1Ms1rlAgf+tDK3agSRy0jFFRDTN4/rVRQ==
X-Received: by 2002:a9d:18f:0:b0:690:e7f9:bb61 with SMTP id e15-20020a9d018f000000b00690e7f9bb61mr8863276ote.26.1678284387420;
        Wed, 08 Mar 2023 06:06:27 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y22-20020a056830071600b0068d4dda3d61sm6434064ots.39.2023.03.08.06.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 06:06:26 -0800 (PST)
Received: (nullmailer pid 2666451 invoked by uid 1000);
	Wed, 08 Mar 2023 14:06:21 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Minda Chen <minda.chen@starfivetech.com>
Cc: Pawel Laszczak <pawell@cadence.com>, Vinod Koul <vkoul@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Kishon Vijay Abraham I <kishon@kernel.org>, Peter Chen <peter.chen@kernel.org>, Roger Quadros <rogerq@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-phy@lists.infradead.org, Emil Renner Berthing <emil.renner.berthing@canonical.com>, linux-usb@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Conor Dooley <conor@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
In-Reply-To: <20230308082800.3008-2-minda.chen@starfivetech.com>
References: <20230308082800.3008-1-minda.chen@starfivetech.com>
 <20230308082800.3008-2-minda.chen@starfivetech.com>
Message-Id: <167828360080.2613078.14112010625330944896.robh@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: Add StarFive JH7110 USB
 dt-binding
Date: Wed, 08 Mar 2023 08:06:21 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_060630_591104_594B0C05 
X-CRM114-Status: GOOD (  11.21  )
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


On Wed, 08 Mar 2023 16:27:58 +0800, Minda Chen wrote:
> Add StarFive JH7110 SoC USB 3.0 phy dt-binding.
> USB controller is cadence USB 3.0 IP.
> 
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> ---
>  .../bindings/phy/starfive,jh7110-usb-phy.yaml | 158 ++++++++++++++++++
>  1 file changed, 158 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.example.dtb: usb@10100000: phy-names:1: 'anyOf' conditional failed, one must be fixed:
	'cdns3,usb2-phy' was expected
	'cdns3,usb3-phy' was expected
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/usb/cdns,usb3.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.example.dtb: usb@10100000: 'phys' is a dependency of 'phy-names'
	From schema: /usr/local/lib/python3.10/dist-packages/dtschema/schemas/phy/phy-consumer.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230308082800.3008-2-minda.chen@starfivetech.com

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
