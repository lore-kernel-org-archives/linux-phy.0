Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 698CEC6FA99
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 12:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHFl9xb6si9aY22S6QA9oMss4RG8mgySpf1pcmlDH+c=; b=02OJ0Q/f8xYG21
	oqqRDxEZNoLc7noyWGBNvDHG1+d9e/pdNXoPSmt1Z5vRdfJvE4TxPSkm48gqbwvQ+foKn9WEBQaE2
	G/7QREmlyaChfgsIhkh8f3T8+dhM1eyz5hJJiEsWw4bFBh9V1NV6FKu0Ws+qu4/uZjfjR3syLeKt3
	TJBG0es+Wu/3HLpp3Kbs1AUwnLOD4hmgVR2lLC92uRWzbdQT/GJNgdMifr+Q5gBLwY0hYIIpP10Ao
	pl9LhsXMfX0Wqr+4BZJJv6UZcx726oZ6jn99YGIQ9rRzMhSrk2SEuxghvQ5gV1Z2NqT1I9OxhGdV+
	gY17FJjyYHK2wJCGl5PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZ9u9-00CgmC-NF; Mon, 06 Mar 2023 12:25:25 +0000
Received: from mail-qt1-f172.google.com ([209.85.160.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZ9u6-00CglJ-F1
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 12:25:23 +0000
Received: by mail-qt1-f172.google.com with SMTP id r5so10194901qtp.4
        for <linux-phy@lists.infradead.org>; Mon, 06 Mar 2023 04:25:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678105519;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=go08yN8ZO/E8IL+UZzsM8Ypz4ifwLeuitk1Dpvtflhg=;
        b=EVCZvYz7nT7Jh1ylAjVznnfngG5o9HCkRXuqC7XqpRzCQ/zioy6xMcQcpthUExGXqJ
         w79QgbeOkFxSyeAvGlPb52ddwibRfwavtThOWhnhACjokdaQ4Ua6XD+VG46WQNrT7qUK
         eeZJfz24tPnN+QphAcIrhFpa3cOvFKTwvsuzbyzEFgWxpNskXVNe+mWukrSM05KY4pOg
         +z+A5MOME2vsrupdWQb9sOQLzqKduMzD5cm8ArmTTxLMg3AMCCw7Zwzm58VGuQuftLnW
         81TS9q1fnhjvi5gsYjuWvFShjpo/mV3L+jutwZt4xhNiYNSkadauSrkQVDymCOpXahPg
         g1aA==
X-Gm-Message-State: AO0yUKUF/8r4Aw/pPxx2STJcPa5tdBVWQSzoHstgyIR9bERlzBJu54Uw
	uWYzbr6s44KXhFjg0sj93w==
X-Google-Smtp-Source: AK7set9PTrNQli3SGEVrUKOSYgH4tGMPmdZVopkIMoc0rL2EVX/XmqG4LHiVP695Fy0kaUkbWU8B6w==
X-Received: by 2002:ac8:5bc9:0:b0:3bf:cd81:3a31 with SMTP id b9-20020ac85bc9000000b003bfcd813a31mr18660401qtb.65.1678105519378;
        Mon, 06 Mar 2023 04:25:19 -0800 (PST)
Received: from robh_at_kernel.org ([209.91.220.210])
        by smtp.gmail.com with ESMTPSA id y8-20020ac85248000000b003b86b962030sm7518717qtn.72.2023.03.06.04.25.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 04:25:18 -0800 (PST)
Received: (nullmailer pid 31427 invoked by uid 1000);
	Mon, 06 Mar 2023 12:25:17 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Minda Chen <minda.chen@starfivetech.com>
Cc: linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>
In-Reply-To: <20230306095257.25957-1-minda.chen@starfivetech.com>
References: <20230306095257.25957-1-minda.chen@starfivetech.com>
Message-Id: <167810459782.12203.9014682894570874393.robh@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: phy: Add StarFive JH7110 USB
 dt-binding
Date: Mon, 06 Mar 2023 06:25:17 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_042522_555845_6FFBB31B 
X-CRM114-Status: GOOD (  11.35  )
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


On Mon, 06 Mar 2023 17:52:57 +0800, Minda Chen wrote:
> Add StarFive JH7110 SoC USB 3.0 phy dt-binding.
> USB controller is cadence USB 3.0 IP.
> 
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> ---
>  .../bindings/phy/starfive,jh7110-usb-phy.yaml | 116 ++++++++++++++++++
>  1 file changed, 116 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml:30:8: [warning] wrong indentation: expected 6 but found 7 (indentation)
./Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml:40:8: [warning] wrong indentation: expected 6 but found 7 (indentation)
./Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml:57:12: [error] syntax error: mapping values are not allowed here (syntax)

dtschema/dtc warnings/errors:
make[1]: *** Deleting file 'Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.example.dts'
Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml:57:12: mapping values are not allowed in this context
make[1]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml:57:12: mapping values are not allowed in this context
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml: ignoring, error parsing file
make: *** [Makefile:1512: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):


See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230306095257.25957-1-minda.chen@starfivetech.com

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
