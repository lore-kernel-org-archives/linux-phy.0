Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F5D1C7EE2F
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 11:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xtbo5bHcJbFZmPe8zb78UNyL0kU4ca7x9KYzO/kpIuc=; b=GfUMAkUKnQh2qu
	gOV8Ji2EsV6OCrfkURjNjHNWU4dL/n3xtP17YssECAKDMBssi2AcboLGXPfxnAA2L7U0zXGu4Ckir
	Nbj0rk1wucwEEIBmwkoMIl/KqgCzSveCPpMpVABCnIzG2rlE3iRCEQwRN7yXUGOd1Gikir/OkuQN2
	IxgDnXSfl/GGSnb3KSgegBqiKJ174HIqy94gwgXSxRFzL+X9SuCX05lJWe4vvAYO7M39bBaklQuAL
	vx8YWpKmMsNVC4rwuiYoE6Zbk3czhExtuYTIvuFrN7237/4Gnp7MPlYR/U3spjxY/KTA3H8aK46Ri
	nvQuITHhZganhpx4WBIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rTj-005fOl-3A;
	Wed, 07 Jun 2023 11:37:27 +0000
Received: from mail-io1-f47.google.com ([209.85.166.47])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rTg-005fNj-2U;
	Wed, 07 Jun 2023 11:37:26 +0000
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-777b2af1c53so162240539f.2;
        Wed, 07 Jun 2023 04:37:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686137842; x=1688729842;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8tVLF3oo3uKUn6FMXIR+EBqzz0+rlaJwE4+IHvkQcKQ=;
        b=kNcfGBflujfZKFDJ5sUWoYl1eIFWtwYrbQ9HBNQsobuag/bEstsBPNtEWnHRK9caJA
         T1kiDmIYEZOBZNcqmRoAZmk/tuQh8wc8BJNJCT7Q/Huk2ndT5kbU0U9eVL+t2ZJz3S+6
         KKRN7xxqDlx5Qu5z7OM4zGSjfahjhmsh05CVLdjsx+I1de8vrkla+s4DpSY4jTKEbJFx
         w6HuwbYHg8OZIXBimOvcvRyQE9PhZF2BqTCwXOGcxDNUn8GaOZlKTjp4HBTUUbvZD3r4
         yIXbjDydki1hZoJG7jkqUiNzNggRT/KH3AW+OEJZ3eb72fBgRvsu4mgQFb0wm3vKkWWl
         5OXw==
X-Gm-Message-State: AC+VfDxLUPEiEnuhIHfjUvpIwMcOg9/GbYU3425J4TQ8MlqyeIueRACY
	jvhy8YolOG8YO0KvRArET5gGmyUhgw==
X-Google-Smtp-Source: ACHHUZ6P8ByJI192iIT0XJCH5ARhEmICRsd0dY/7p8qVdOEm4v8Q0JbvfTPPwjTUdaXSq+rmyhDQMg==
X-Received: by 2002:a6b:5917:0:b0:77a:c00c:1166 with SMTP id n23-20020a6b5917000000b0077ac00c1166mr2267103iob.15.1686137842688;
        Wed, 07 Jun 2023 04:37:22 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id j14-20020a02cb0e000000b0041a84d0c828sm3461406jap.87.2023.06.07.04.37.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jun 2023 04:37:21 -0700 (PDT)
Received: (nullmailer pid 2576907 invoked by uid 1000);
	Wed, 07 Jun 2023 11:37:18 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh+dt@kernel.org, rafal@milecki.pl, sboyd@kernel.org, gregkh@linuxfoundation.org, arnd@arndb.de, mturquette@baylibre.com, krzysztof.kozlowski+dt@linaro.org, agross@kernel.org, will@kernel.org, nfraprado@collabora.com, linux-clk@vger.kernel.org, andersson@kernel.org, linux-usb@vger.kernel.org, konrad.dybcio@linaro.org, p.zabel@pengutronix.de, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, quic_srichara@quicinc.com, conor+dt@kernel.org, broonie@kernel.org, geert+renesas@glider.be, quic_wcheng@quicinc.com, kishon@kernel.org, quic_varada@quicinc.org, catalin.marinas@arm.com, vkoul@kernel.org
In-Reply-To: <14f60578e2935c0844537eab162af3afa52ffe39.1686126439.git.quic_varada@quicinc.com>
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <14f60578e2935c0844537eab162af3afa52ffe39.1686126439.git.quic_varada@quicinc.com>
Message-Id: <168613783895.2576884.16624801522897027540.robh@kernel.org>
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,m31: Document qcom,m31 USB
 phy
Date: Wed, 07 Jun 2023 05:37:18 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_043724_808978_9B79612D 
X-CRM114-Status: GOOD (  10.57  )
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


On Wed, 07 Jun 2023 16:26:06 +0530, Varadarajan Narayanan wrote:
> Document the M31 USB2 phy present in IPQ5332
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,m31.yaml          | 69 ++++++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,m31.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,m31.example.dtb: hs_m31phy@5b00: status:0: 'ok' is not one of ['okay', 'disabled', 'reserved']
	From schema: /usr/local/lib/python3.10/dist-packages/dtschema/schemas/dt-core.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/14f60578e2935c0844537eab162af3afa52ffe39.1686126439.git.quic_varada@quicinc.com

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
