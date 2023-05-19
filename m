Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BA42C77B7A
	for <linux-phy@archiver.kernel.org>; Fri, 19 May 2023 09:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cN1PkR+S5zDIbbIVIJ6ZKlAoWdguu1SrniDiI60Bbc=; b=cb/9HlyG/drW1x
	5A3CK5l5d15WoyELw5ZyftdVYsyYyUdZNPmfR/no51ZuuK6XfTmRHzqcp1ZYsZBiaBGX5DlHdi3fv
	wNoEQIw7mKDL/5VylNnAL85BJy+vos6cjJawymrjVONf8lFMuJ29b5VebXLh8nuuMP9HF5QtOkCv6
	JXY/U5OKNHTcbG2//gcTIhwLTtXCaDbLrpHxn/QDr/0hrvIAWugKkGNbtjymN7e/LQbj5oXUx/2lO
	0xw2CiA6XutG8+TrmijacYJ20c+JlMR2YD/OmHnkO0HsF3Gn3xo2rB9E0Ykf91On+m2xtYMTXX5T7
	vfokjcDnJR8WdXUlDYQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwKO-00FhKg-0J;
	Fri, 19 May 2023 09:23:12 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwKL-00FhJr-2f
	for linux-phy@lists.infradead.org;
	Fri, 19 May 2023 09:23:11 +0000
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-38e3228d120so1813527b6e.3
        for <linux-phy@lists.infradead.org>; Fri, 19 May 2023 02:23:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684488187; x=1687080187;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RrRs7m1C9m+EmWKO0WMeaCgh3OJPLA5+BvKvd2/4zcI=;
        b=S5vwsCqWjKZ2kRunpL7zf/New36Fp5dRiC3OR/Zxok26/vKsxNwXfogN/ccUZVJvxc
         bgHJngJJEhHn0mVmkHRrG3+08CNeCFjbX/4ZCbZD/mIHcucYqkLBXHOMrnp3tp0KkgFJ
         uWcG+K374uvG/I1We4PsBzQhC6M+W+AanVGNuq1+xqi7QnK56bLbtR4Q8Y6TGg88l1p3
         4No4HvoaM45cXI3C379hP5UahZzwkJkxmw5h2ZdfJu4EvnFHyTaXnQufWEgLyxVx/M6u
         NxTrLI7CowaVwt8Uf5xjijPz/LQDXyHwz/aLtcZpQCz1X7AGSFSwCWRP4N/LuzABCv8c
         RVmA==
X-Gm-Message-State: AC+VfDxzYTTJmgUOB/+YifOiP67397lDOH+D9P1bp1mzuf4bffZ6Q2Uf
	Pi6JdQEMvFYUmE20eWx9Kw==
X-Google-Smtp-Source: ACHHUZ57u3i+SSbVtqMNZMI6jUmfxGleHemSqI5RU40IgUoQx0IFUvSu7hfhjcMeFaohQaq83RSbgg==
X-Received: by 2002:a05:6808:4c4:b0:394:2868:d51f with SMTP id a4-20020a05680804c400b003942868d51fmr787182oie.4.1684488186007;
        Fri, 19 May 2023 02:23:06 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c24-20020aca1c18000000b00397c03854edsm837946oic.17.2023.05.19.02.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 02:23:05 -0700 (PDT)
Received: (nullmailer pid 3014366 invoked by uid 1000);
	Fri, 19 May 2023 09:23:02 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Devi Priya <quic_devipriy@quicinc.com>
Cc: andersson@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org, quic_srichara@quicinc.com, krzysztof.kozlowski+dt@linaro.org, quic_sjaganat@quicinc.com, quic_anusha@quicinc.com, linux-arm-msm@vger.kernel.org, quic_ipkumar@quicinc.com, kishon@kernel.org, quic_arajkuma@quicinc.com, conor+dt@kernel.org, quic_kathirav@quicinc.com, konrad.dybcio@linaro.org, linux-phy@lists.infradead.org, robh+dt@kernel.org, agross@kernel.org
In-Reply-To: <20230519085723.15601-2-quic_devipriy@quicinc.com>
References: <20230519085723.15601-1-quic_devipriy@quicinc.com>
 <20230519085723.15601-2-quic_devipriy@quicinc.com>
Message-Id: <168448818232.3014347.12687378726384996026.robh@kernel.org>
Subject: Re: [PATCH V2 1/2] dt-bindings: phy: qcom,qmp-pcie: Add ipq9574
 bindings
Date: Fri, 19 May 2023 04:23:02 -0500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_022309_869416_B2B191B3 
X-CRM114-Status: GOOD (  13.32  )
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


On Fri, 19 May 2023 14:27:22 +0530, Devi Priya wrote:
> Add bindings for the PCIe QMP PHYs found on IPQ9574.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes in V2:
> 	- Picked up the R-b tag
> 	- Did not convert the clock IDs to numerical values as the clock
> 	  header (dependent patch) is merged in latest rc1.
> 
>  .../phy/qcom,ipq9574-qmp-pcie-phy.yaml        | 90 +++++++++++++++++++
>  1 file changed, 90 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.example.dts:29.26-27 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1512: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230519085723.15601-2-quic_devipriy@quicinc.com

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
