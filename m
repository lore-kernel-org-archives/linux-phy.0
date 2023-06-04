Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1681C77B73
	for <linux-phy@archiver.kernel.org>; Sun,  4 Jun 2023 07:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wi0zw3mlZtsGaH/o+iSPAuwkkePaESdPeiaHUklIM78=; b=anaW9PRxkcLO7m
	Z+m9qBqDVjRGUxLnki3ggjnthYvNCR/qeMeJvS02tvX9qh7dIyAKuVwLq6p+JVaXyBX++QI7RmoNN
	V3/NX2Gqg9yEwR55avfgZSNY2Ivw1eXG3Xp+oUtYroUgZskVhaJjYZhU+/O6aPTcYmPTp7j+ijKIi
	rhGJsOS4IVGAtR0z2x8L7j1GGY0ndzQ3h3fKsvBoC4xQb0nhCcRwdxymHTQ8XrpEmIyqfHlbqMiRf
	g35vrP3EooJU5EnHpEUqEOY/IMK8dvadhOYAdatgHO3j2bL4TVsQ6w+5/W/3joCWFMumlVDfwmovR
	JJDmkZbfg5Q7gmHBnWNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5i5O-00BXbu-14;
	Sun, 04 Jun 2023 07:23:34 +0000
Received: from mail-il1-f171.google.com ([209.85.166.171])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5i5K-00BXaj-38;
	Sun, 04 Jun 2023 07:23:32 +0000
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-33aa60f4094so12024035ab.1;
        Sun, 04 Jun 2023 00:23:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685863408; x=1688455408;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zgPKCKVWGaVP4PRgO+7v9O84nNu7FFnZbyDG2O38/nk=;
        b=jCMhXCEHRfOid93YhWJ66qq6PIj6OZwqpU4pqawgxbjeQus4bLYm7cIbiKxEf2O7cY
         8w7WyLWKo3bdx91kupzXlCmVeK8ecHmBfGxUfTZvCHjnM4OttOTy+7VzqaStjEIZlJYo
         KJ3y8htTNzQX6sxcW11cU/XaBgJDQzGyNiRkUwJTt8y0Lx91Kkq1T3yj2KL/0wpo3gqy
         e1etululXagruu5qUdWijQYz7Mm30EMCmZqkCEyC1u4H2nVnSDOhah6t90m5rFkKPnpr
         7xtb+KHzxyg9CZLn7iyYTbbHotncm7HI4C78hDAwuZ5L/7Q/TRRF67LWKdJthRl6JAwc
         L+vw==
X-Gm-Message-State: AC+VfDwj6nWcJ18LqAQsg3YxYaLvqcsjmJf2A4nhGklRjRGbmLuCm3tS
	SxI8enSsdN/EG67duA6B0w==
X-Google-Smtp-Source: ACHHUZ5mPo1CZA0UQUsgNUIwwXRnjWLAemMxRkV8hskeXDFwOSorGRHi5TrEITG+gXvs83p52nltEA==
X-Received: by 2002:a92:2808:0:b0:331:acc9:b554 with SMTP id l8-20020a922808000000b00331acc9b554mr8701509ilf.14.1685863408372;
        Sun, 04 Jun 2023 00:23:28 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id m13-20020a924b0d000000b003231580e8e2sm1529159ilg.6.2023.06.04.00.23.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jun 2023 00:23:27 -0700 (PDT)
Received: (nullmailer pid 3052774 invoked by uid 1000);
	Sun, 04 Jun 2023 07:23:25 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, Olof Johansson <olof@lixom.net>, Vinod Koul <vkoul@kernel.org>, Arnd Bergmann <arnd@arndb.de>, soc@kernel.org, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org
In-Reply-To: <20230604063032.365775-3-guptarud@gmail.com>
References: <20230604063032.365775-1-guptarud@gmail.com>
 <20230604063032.365775-3-guptarud@gmail.com>
Message-Id: <168586340547.3052749.2763112173580157119.robh@kernel.org>
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: qcom,usb-hs-phy: Add
 compatible
Date: Sun, 04 Jun 2023 01:23:25 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_002331_030480_5C898252 
X-CRM114-Status: GOOD (  10.83  )
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


On Sun, 04 Jun 2023 02:30:19 -0400, Rudraksha Gupta wrote:
> Adds qcom,usb-hs-phy-msm8960 compatible
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.example.dtb: phy: resets: [[4294967295, 10], [1, 0]] is too long
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.example.dtb: phy: reset-names:0: 'por' was expected
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.example.dtb: phy: reset-names: ['phy', 'por'] is too long
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230604063032.365775-3-guptarud@gmail.com

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
