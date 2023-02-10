Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A64CBC636CD
	for <linux-phy@archiver.kernel.org>; Fri, 10 Feb 2023 13:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PrVs7/5zMnj+mO2eksTRqzJ8EcUO61IHlhpXOsgSg4=; b=ywuU8guOmERuZA
	zxo8ZzVAf4sQDnKpK3hXcCPn8hEcEVe2xEjWqRBNK1PubAAsh6YjuKrfSVuP/J7OCQeyvLZHE6Ypp
	4+nE3cA3CxHDU4T3yDErwOe/sRuRUeOQsreuXj1yaDOvxS71cUZiwlUKpEgyIcBihInDrlb8NSEsO
	5/MjoYAdH5MJQmpjdLw1H0UfAnOcPK6Mf6a08icNvcfiVkJZb4fmI6IySncOWu8yeHVKpK7OMrKJA
	8ssI9Rr1a2k+M7HpZ7WQdRvqfQFo1RhhmsEPKvk+IhWDC4LeWfbPVCRFLbBfjXy6VhRmYjFtudwk6
	aYkjEl2HM6IzqeDQ0n+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQTvE-005uTI-0i; Fri, 10 Feb 2023 13:58:40 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQTv9-005uQH-Fb; Fri, 10 Feb 2023 13:58:36 +0000
Received: by mail-oi1-f172.google.com with SMTP id bx13so4450924oib.13;
        Fri, 10 Feb 2023 05:58:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=V67vbxDGURX5KGGQ/Srk/dGD7P3nYDL3amFEdBy6F/A=;
        b=hMcarIOOlRRUams5+8U9QKXpyIB75eM0pFJ0Wun/rEd5cV+McZLspDZDdRIoTxEqyS
         BGC0ygUujgrni43x2QXE7wiy8zjUkonpI2X+TEOWDoWgSyMri153HkbH9BdElf+8LnE6
         DUsZ7y7n2y34YOX78no59U5pfgVxo4ZVyOYeFnbj/ys0dCaiUlcL/70dSXmGncow7Spx
         jeAlFKBohkdN/MOg6ccJ+CuX67tx/GEHLZ3QZ+3j/arC+Oul26U/pZlrDSSoxYGB5HUN
         vo/oxnCLsmflb9wwnbsZ4GdLs2rgNb56K8pFGRtxyZb1VHrgxv55WwNu38RzDu/8Fnm6
         GL7A==
X-Gm-Message-State: AO0yUKW53bvcDxD05UdczoFdINo9WSqpYZJHhKbyck47wYadtZr1Gy28
	n8SKkpfPQU7AmHswKKE+Zg==
X-Google-Smtp-Source: AK7set9kP+KFFdagPIoY6xzg8MXMWQcujLvsOIf8+nHijEYW9EWe/cQ/e8tvAQEVWkwPsBVvTlNhJA==
X-Received: by 2002:a54:4492:0:b0:36b:d923:abe8 with SMTP id v18-20020a544492000000b0036bd923abe8mr6380904oiv.54.1676037512765;
        Fri, 10 Feb 2023 05:58:32 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n12-20020a9d740c000000b0068bc476d777sm1973488otk.13.2023.02.10.05.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 05:58:32 -0800 (PST)
Received: (nullmailer pid 2493632 invoked by uid 1000);
	Fri, 10 Feb 2023 13:58:31 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Conor Dooley <conor@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org, Emil Renner Berthing <kernel@esmil.dk>, linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, Kishon Vijay Abraham I <kishon@kernel.org>, Jack Zhu <jack.zhu@starfivetech.com>, Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley <paul.walmsley@sifive.com>, Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org
In-Reply-To: <20230210061713.6449-3-changhuang.liang@starfivetech.com>
References: <20230210061713.6449-1-changhuang.liang@starfivetech.com>
 <20230210061713.6449-3-changhuang.liang@starfivetech.com>
Message-Id: <167603709304.2486157.3430490619494105631.robh@kernel.org>
Subject: Re: [PATCH v1 2/4] dt-bindings: phy: Add starfive,jh7110-dphy-rx
Date: Fri, 10 Feb 2023 07:58:31 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_055835_550949_2884B99E 
X-CRM114-Status: GOOD (  13.33  )
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


On Thu, 09 Feb 2023 22:17:11 -0800, Changhuang Liang wrote:
> Starfive SoC like the jh7110 use a MIPI D-PHY RX controller based on
> a M31 IP. Add a binding for it.
> 
> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
> ---
>  .../bindings/phy/starfive,jh7110-dphy-rx.yaml | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.example.dts:18:18: fatal error: dt-bindings/clock/starfive,jh7110-crg.h: No such file or directory
   18 |         #include <dt-bindings/clock/starfive,jh7110-crg.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:434: Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1508: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230210061713.6449-3-changhuang.liang@starfivetech.com

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
