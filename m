Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56FE2C636D4
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 15:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uaCDcL6+aVDHVV58MaN4Lt+19kAZqgHMQa+F1GycJzE=; b=2+e0+9Li0WX9yZ
	HOsX/RFhY5TLqeHk/z2Ju+Z0AWS49ntFv+JdV4ltJBxC6VDh9CkK+C5ORUPzu6MVj1Ahg4NwfFD5v
	E1OZaIe2fKtdY3UxTlxeYxNawQATR5io9eCxtLv/HpyTwS8kFoTlGY/Skls9doCKmpwx2LGgFmNjV
	h9Uzm8FY0GwE73/QPRUtd5HkEekuT9IGIxpdGc9rxpWy+Mer00tAcvj+jXEFldUIWR/4uMEXALh39
	O0855Vbqf7/wLsQhE5OsgSLSv/BTFpvPwAposVds7UrU8OVHn3Qke81ygeIWrwCLZlYv+b6x8m5Tt
	QvLXgtDd7wpTcqMz5/1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNb7j-00GEbJ-OK; Thu, 02 Feb 2023 15:03:39 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNb7h-00GEYl-H7
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 15:03:39 +0000
Received: by mail-oi1-f174.google.com with SMTP id r28so1652030oiw.3
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 07:03:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rXX0hqbNxibIh9MCxkXiGg/t9DnespCyPGgD3gIO8QQ=;
        b=ugfWAIp/tlizcCRCRFXVhEBDCubzwRrD5/MkOr52P7bD6jSQDXhKOkkgmL7bcTsYsC
         ww4dUhiMcU+TspcOhvf/EIFIenGrSYWZylr9NjB2qJyV4pMVoPev/CYHoT6VznsYK6v4
         wAWpKtkRKn8UEWlRuusTvAuIyUSJHMf/QIR5QBCOQPx3t1Uu8SPw2vUS+ZD4KDzdt+Qr
         Z3UgQcMoZ4DfhN89AVHam6BbhJCe4rnXABPV3BCloy3DyRmUS+YW101OEZFX7Y/yLOBq
         Lh9qGO9W3TsureEC/SZvvbf3ILikCjzREeKhc7tTjCsp4VNp83e9dAKra6w4adcK/8zz
         /fZw==
X-Gm-Message-State: AO0yUKUHaC7wUAEGMxLWNjGWNYeaE4y1hDku64g4JszwAxfMy0BfDrMt
	OVvG2NSWY13zXgbFoZJ0zB25sZ4wxg==
X-Google-Smtp-Source: AK7set9jNto6EojA583eGeA1isZbtX7sjgvWYxC8CJplWmCLVZcK+yXGfL/11mry6PSTtH6mv+VMNw==
X-Received: by 2002:a05:6808:694:b0:378:bf7:84bb with SMTP id k20-20020a056808069400b003780bf784bbmr2840657oig.1.1675350213907;
        Thu, 02 Feb 2023 07:03:33 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id du24-20020a056808629800b003781a8bcb64sm5717528oib.36.2023.02.02.07.03.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 07:03:33 -0800 (PST)
Received: (nullmailer pid 1858080 invoked by uid 1000);
	Thu, 02 Feb 2023 15:03:31 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-phy@lists.infradead.org, Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Lee Jones <lee@kernel.org>, linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20230202133816.4026990-2-abel.vesa@linaro.org>
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
 <20230202133816.4026990-2-abel.vesa@linaro.org>
Message-Id: <167535003829.1854190.10009935343094706498.robh@kernel.org>
Subject: Re: [RFC v3 1/7] dt-bindings: mfd: qcom,spmi-pmic: Add pattern
 property for phy
Date: Thu, 02 Feb 2023 09:03:31 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_070337_588885_C436FECB 
X-CRM114-Status: GOOD (  13.05  )
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


On Thu, 02 Feb 2023 15:38:10 +0200, Abel Vesa wrote:
> The phy pattern property will be used for providing eUSB2 repeater
> functionality. This will be modelled as a Qualcomm PHY driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/phy/qcom,snps-eusb2-repeater.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230202133816.4026990-2-abel.vesa@linaro.org

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
