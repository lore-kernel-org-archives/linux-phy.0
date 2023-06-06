Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A3C2C7EE2F
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jun 2023 02:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gfGR392ABUGHn5sja3L5lBTQkKL6qOz136x5gW0gDXE=; b=nyZw3+6Srup44y
	qLPkJ1/kLzWbs6sNljAPaz6ExdLWwxsV82cPEb7eNovIrPPI3Rzd/vFrwZoPnHZIckEF/4twHBjiK
	0rDwDTA3hyrby1SmUS+16EU7QBHgDEsrR9K5XmRDLurYjENUXbZ1SJdqteJ655x1XqxIcR7W66udc
	5cMekIdD0/lvVnL2thHQDM0sFwYEa8mLSsKEjJVZ4zMLhyibDANWKkw3jHyn1/aLCG2Z23LwG/fUT
	2hTF4wez1pEXvPRt7uJzUDnaLO0MWJJzsBfT9LQQ+kPXMnm4nmkOBStlePT/CoKceK7A/JtORQl1z
	B+D95RlQvCyHQ2uoSlWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6M5d-00HPOA-2x;
	Tue, 06 Jun 2023 02:06:29 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6M5b-00HPN6-2k;
	Tue, 06 Jun 2023 02:06:29 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-75d4df773b4so220514385a.0;
        Mon, 05 Jun 2023 19:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686017186; x=1688609186;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fHxYxgoeO4Fz6rNQej/wSf+qvSfbEPqyAolfpowpldM=;
        b=acthjTFnSNF5zKRRlhGw+vu3sBJkQfXpmpXAoiZAvL7d24CZE6ZABgRhPubR/9PFEU
         bM3XFVjFd+D8kAZrZs7FwT4ohc3FMIDX1HcpQm8G+1XhEY90fk+RYl2XPyTMNrWGt/UT
         dOCFIn0mguhJ4RgtpFXtp6JsxXig1i41Z09BWYzkjB9kabDK/K2KA8VgVB+aD+qNcG2N
         cDjIs98Mnbc7YvvyGXtQZ8SttnUO0QJLWVkTTu4Tn7HSxf7K022xiC3UUy60PEyhy732
         hWNRKp6OLIYnq9iSZIbDk5MyDtr3YbSo0LHulc+HB3YEgGGJeu8oGFWGsZq+TvwahBXP
         X6Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686017186; x=1688609186;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fHxYxgoeO4Fz6rNQej/wSf+qvSfbEPqyAolfpowpldM=;
        b=NJCwh3iMFTtMQ0amvHLLPY81onZaZe+axaf7RgJ2X2UZBElAA6TokYQ6jkGZqC6P8k
         58f3GdGlzx3qKiK3gBrjELNYOq6OiQxuwTTovyeEYi1z+TbVYzmxsrHL1O892YDpODF8
         XqnQ3FK3wCfuhZAG/sQxogL7HVrsqPdPALa/0XGrZfxih19OOnFkDhzaVueJlIwce3RA
         3g27Jkc2pqJPI324M4iJIfnK/NrxEjXVcr7VlTphkuOqVIAXOiNT4uzowOUQ3sbs2LbF
         VjJqMAmLJdf0Q/y2jJbI379xLbOqkT1LGMSR8NAtqvv2uJrn5UZg3EYeyRCItURQVZL3
         p2qA==
X-Gm-Message-State: AC+VfDwLd3xCGvzSfFZpcg1LRQCRBV1AtPYyLwyF9uBE0LU+jXoPpLyH
	2JSJ2/JsWOpt+qaTSo/MQhs=
X-Google-Smtp-Source: ACHHUZ40R/7DwONJjQlPcqGT36cqBtgKGygl2J4alUiZu16uhr29ahIhA1q8+RczUQBCu26cwcVQvA==
X-Received: by 2002:a05:6214:f25:b0:623:a5d0:1daf with SMTP id iw5-20020a0562140f2500b00623a5d01dafmr767371qvb.48.1686017185826;
        Mon, 05 Jun 2023 19:06:25 -0700 (PDT)
Received: from localhost ([2600:4040:2007:9800:ab:4faa:880f:7b91])
        by smtp.gmail.com with ESMTPSA id v6-20020ad45286000000b006257e64474asm5022256qvr.113.2023.06.05.19.06.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jun 2023 19:06:25 -0700 (PDT)
Mime-Version: 1.0
Date: Mon, 05 Jun 2023 22:06:23 -0400
Message-Id: <CT577LF6NJLX.3OVACDQO6WGDE@Latitude-E6420>
From: "Rudraksha Gupta" <guptarud@gmail.com>
To: "Rob Herring" <robh@kernel.org>
Cc: "Kishon Vijay Abraham I" <kishon@kernel.org>,
 <linux-phy@lists.infradead.org>, "Olof Johansson" <olof@lixom.net>, "Vinod
 Koul" <vkoul@kernel.org>, "Arnd Bergmann" <arnd@arndb.de>,
 <soc@kernel.org>, <devicetree@vger.kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>,
 <linux-arm-kernel@lists.infradead.org>, "Rob Herring" <robh+dt@kernel.org>,
 "Bjorn Andersson" <andersson@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, <linux-kernel@vger.kernel.org>, "Konrad Dybcio"
 <konrad.dybcio@linaro.org>, "Andy Gross" <agross@kernel.org>,
 <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: qcom,usb-hs-phy: Add
 compatible
X-Mailer: aerc 0.8.2
References: <20230604063032.365775-1-guptarud@gmail.com>
 <20230604063032.365775-3-guptarud@gmail.com>
 <168586340547.3052749.2763112173580157119.robh@kernel.org>
In-Reply-To: <168586340547.3052749.2763112173580157119.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_190627_892685_C490B1C6 
X-CRM114-Status: GOOD (  17.71  )
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

On Sun Jun 4, 2023 at 3:23 AM EDT, Rob Herring wrote:
>
> On Sun, 04 Jun 2023 02:30:19 -0400, Rudraksha Gupta wrote:
> > Adds qcom,usb-hs-phy-msm8960 compatible
> > 
> > Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
>
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.example.dtb: phy: resets: [[4294967295, 10], [1, 0]] is too long
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.example.dtb: phy: reset-names:0: 'por' was expected
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.example.dtb: phy: reset-names: ['phy', 'por'] is too long
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230604063032.365775-3-guptarud@gmail.com
>
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
I see. Why is it off the latest rc1 and not off the latest commit?

>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
Thanks. I didn't see these errors as I was only looking for expressatt
binding errors.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
