Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C6F5C7EE20
	for <linux-phy@archiver.kernel.org>; Fri, 21 Apr 2023 16:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lFAJLu3w7zNhBg4KgTXECPqlNq07uuEw6em6zgBZ0M=; b=CRsNEeXgXoRyJ4
	s60498PLywPQyHQG9MO0Yfj+HWFvgp2XdWb6ChJqmphDhlqnRW0qF0Auq8IEBTqVV/aaMshETua8l
	yPStwCF3uNuVEP1f3VjIcdRUHMNDL7XyeYr59REegVWKy+l0SniNZX6J9KS6s8ZYPJHb83Jc556DM
	Vh1yAS0gA25hZIhGXM1UCR3koEltNLVz3dTMtQTVdDkuqWszJVzMrBwIfFXJ9hH9u/XC3oXLYVXwf
	+PYtkQh0jGoBD8PZLq5XIzrL/8H5EdBBzbDASb65E1RDc4yQ/t7ovHBum+SnO2MKKEukSjy8uGTE7
	wFOmyG36MEPPkv5GXomQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pptKB-00BLbB-0k;
	Fri, 21 Apr 2023 16:09:27 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pptK8-00BLaX-2o
	for linux-phy@lists.infradead.org;
	Fri, 21 Apr 2023 16:09:26 +0000
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-38c0a331d3cso1346632b6e.1
        for <linux-phy@lists.infradead.org>; Fri, 21 Apr 2023 09:09:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682093363; x=1684685363;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Dy8PONCFIhkTcUEPgQ+0ISj/L7cH8cV88i3Z2JVEn8I=;
        b=DzgzBzD1ymkgw1VmBWRFF3rBSe14k4OV8OsUFrKu7XBz3v/JOYg5ZfhMLWPG8oUMkN
         CvLOM1s4K4s/LuHkAnwlvepP3PvCoX/rEqdGM29UhozOL6lZgPZP4yQleue4tyPOxpTi
         TimuHcpWa/cbkMY8lRlenJB93kBXfQFk4Ys5lWhqyCAiguqejr2cFHTCSKsXlwObfe+7
         BHBykCoFB4Zw9tBe0fXEz/6RxNm/mKP/XMi4k9TjvOTPMmAwSBZHi4pW1TnlUULaon8R
         mKOZNEbZv/iKdXW10hywSxVxkP13pHSIxyyUy35D5NeGXsf8FjnSvXXn7PPTt1W10ubi
         nq/Q==
X-Gm-Message-State: AAQBX9cLK/eoauGSwaylElo68bLpFbQ5hhomdPYd+KGT+MXs/TwopjO2
	0RgZvd9rZkJ+sSf5cnOqcQ==
X-Google-Smtp-Source: AKy350by7amp0emL+mL2CpzJ0zhDlakUU2+NGUL4HO/d07ZTE3P2I7Im/lYMDDV6YK4JiOm2Espbyw==
X-Received: by 2002:a05:6808:151:b0:38e:46ed:7738 with SMTP id h17-20020a056808015100b0038e46ed7738mr2927007oie.0.1682093363590;
        Fri, 21 Apr 2023 09:09:23 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a38-20020a4a98a9000000b0053a7aaa85a0sm1916335ooj.0.2023.04.21.09.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 09:09:23 -0700 (PDT)
Received: (nullmailer pid 1412184 invoked by uid 1000);
	Fri, 21 Apr 2023 16:09:21 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Devi Priya <quic_devipriy@quicinc.com>
Cc: linux-phy@lists.infradead.org, quic_arajkuma@quicinc.com, linux-arm-msm@vger.kernel.org, quic_kathirav@quicinc.com, quic_srichara@quicinc.com, linux-kernel@vger.kernel.org, agross@kernel.org, quic_ipkumar@quicinc.com, quic_anusha@quicinc.com, konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, andersson@kernel.org, quic_sjaganat@quicinc.com
In-Reply-To: <20230421124150.21190-2-quic_devipriy@quicinc.com>
References: <20230421124150.21190-1-quic_devipriy@quicinc.com>
 <20230421124150.21190-2-quic_devipriy@quicinc.com>
Message-Id: <168209295793.1394458.6036002891116983900.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp-pcie: Add ipq9574
 bindings
Date: Fri, 21 Apr 2023 11:09:21 -0500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_090924_909160_4F7AB3AE 
X-CRM114-Status: GOOD (  12.47  )
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


On Fri, 21 Apr 2023 18:11:49 +0530, Devi Priya wrote:
> Add bindings for the PCIe QMP PHYs found on IPQ9574.
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes in V1:
> 	- Introduced a new binding for ipq9574 as suggested by Krzysztof
> 
>  .../phy/qcom,ipq9574-qmp-pcie-phy.yaml        | 90 +++++++++++++++++++
>  1 file changed, 90 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.example.dts:18:18: fatal error: dt-bindings/clock/qcom,ipq9574-gcc.h: No such file or directory
   18 |         #include <dt-bindings/clock/qcom,ipq9574-gcc.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1512: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230421124150.21190-2-quic_devipriy@quicinc.com

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
