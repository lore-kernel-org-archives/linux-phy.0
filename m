Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63923C54E94
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 15:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdqOHv89rkLkX9c9AjOTc7xY/tbnT8dsFgneq6gg18I=; b=ljuLKmgFUBbC5N
	0DqX+yHrVpzt2hYi3ymIvk7YgHz9jwzs0xLmmDIjt9m9j6aaNPGmElJkMngoo8Kayn6sW+LhGU+WR
	mu0YBDHFkuEFXCRMSO/PfxvihAxLyT6lpD/jCeUDIn9PB5uAu8r2bZGSuwstTedR34GALh45As/UU
	EV6TQnpzV2HQAyXG+6ifX5JFIhvuUVK37vrACATQqIk38d6BLyLcvcobr8pg/PqtQjQ8EMoZDJVtw
	r0LlR6ewpgkqTsEclQofQ0Wq6PWeVTFPyajkptF3j9ajNKvURgp8bE2zzW3A8xEFKvK5QdLIiV1bw
	tK6WzwQfy2qNDa7MlgPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL4Ld-00BZwq-HV; Thu, 26 Jan 2023 15:39:33 +0000
Received: from mail-oo1-f42.google.com ([209.85.161.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL4LZ-00BZuE-AZ
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 15:39:30 +0000
Received: by mail-oo1-f42.google.com with SMTP id z12-20020a4a490c000000b004f21c72be42so272168ooa.8
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 07:39:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3eXVcz1aWMWvEL81Aq0ojYY8G729mnAF/bOUjUUr3zQ=;
        b=QaQqpQcn3QgZudtEoF1uB8MPSsP9m/g7kKKCKY6lp9WHE4y2dBNcg3Lzh8iZR38jDE
         PaCMQtq5gf99cXgCIu3ycleLmeEv80swRUUch0oA3xThQEcgxkOzLBzpHtnwQyV8kJFN
         ohOppJSXzy7u05pZXq5WZvKIeKpUNquGC3k/15MbvQobbdHXCD8x9OM4BuchOlK6u3SR
         qKAMCYBkybQEedKc4EWpl/hbpW86gu7y7FCYE/mDsdn889AgDb8EDgpT2RtW6tNe44Le
         sUmx9Pm/1yLjRfEdcda6e5d/hVR0wWbpqnxlYqCsH0DmCeNXW+81UBahhW/HlYdwT7eJ
         EPRw==
X-Gm-Message-State: AFqh2koYbBct+hOMFaPRTSFCYFn3WERUX8COCfvXOVt19eboHE1nqmxS
	LsFM+fHx84tk7RbLu2hRJw==
X-Google-Smtp-Source: AMrXdXv71xtxYai5bEupVaQg3h+vYl/Y8MKgVR1kwvXabc9mt3Kbcy1UsGCvyzFhu8FjwxC6WWjNmQ==
X-Received: by 2002:a4a:e744:0:b0:503:1693:4b0f with SMTP id n4-20020a4ae744000000b0050316934b0fmr10195896oov.8.1674747567116;
        Thu, 26 Jan 2023 07:39:27 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z7-20020a4ab607000000b004a8eb1d8f1bsm624825oon.39.2023.01.26.07.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 07:39:26 -0800 (PST)
Received: (nullmailer pid 1544996 invoked by uid 1000);
	Thu, 26 Jan 2023 15:39:25 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org" <vkoul@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>
In-Reply-To: <20230126131415.1453741-2-abel.vesa@linaro.org>
References: <20230126131415.1453741-1-abel.vesa@linaro.org>
 <20230126131415.1453741-2-abel.vesa@linaro.org>
Message-Id: <167474700298.1532391.8847992552740606457.robh@kernel.org>
Subject:  Re: [PATCH v3 1/8] dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
Date: Thu, 26 Jan 2023 09:39:25 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_073929_415166_2A156FD3 
X-CRM114-Status: GOOD (  15.81  )
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


On Thu, 26 Jan 2023 15:14:08 +0200, Abel Vesa wrote:
> The SM8550 SoC uses Synopsis eUSB2 PHY. Add a dt-binding schema
> for the new driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> The v2 version of this patch was here:
> https://lore.kernel.org/all/20230126124651.1362533-2-abel.vesa@linaro.org/
> 
> Changes since v2:
>  * none
> 
> Changes since v1:
>  * dropped the "ref src" clock
>  * dropped the usb-repeater property
> 
>  .../bindings/phy/qcom,snps-eusb2-phy.yaml     | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.example.dts:18:18: fatal error: dt-bindings/clock/qcom,gcc-sm8550.h: No such file or directory
   18 |         #include <dt-bindings/clock/qcom,gcc-sm8550.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:434: Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1508: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230126131415.1453741-2-abel.vesa@linaro.org

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
