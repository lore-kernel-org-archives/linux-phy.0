Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A1C6C77B70
	for <linux-phy@archiver.kernel.org>; Sun,  9 Apr 2023 21:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ru8cUlb890WVihlirex6x3FjYdIRwb1kZ1W+Pq090W8=; b=G1uDanlsRNwUr2
	tXomQ/Tzp5zInnZL+Y0uEIRPKUiJtI//1ww1F/1f3gAl7UhjKQb9Yd+R2NJ5sryPn7l3CwTRp+sis
	UwOyEVaxrlh3Svdrp7hSceScIXyEj2bNRaWvn7ceAz82vvw8j3QmbqGk5Yhbi2C1MOE5FpZtmuLFy
	DzXOdqk2nAFq+qxOKnrjX80FzB21x901jIjDuzUVrCmw3QNdWGsKomhCbL9bvWTMZSrU0YZKhuFNr
	meEn781ECDzNio1j3CWUMw/9VXdmTRFlxLS1Nstp3LvfhSNiYbIF3D2hoXd/JvmW5KQNdKRMUYEit
	zkMTn5QENYrf+29psXJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1plcxe-00EJSf-1t;
	Sun, 09 Apr 2023 21:52:34 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1plcxb-00EJRq-2D
	for linux-phy@lists.infradead.org;
	Sun, 09 Apr 2023 21:52:33 +0000
Received: by mail-yb1-xb33.google.com with SMTP id y69so9938493ybe.2
        for <linux-phy@lists.infradead.org>; Sun, 09 Apr 2023 14:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681077149;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y/jGq0FSTDv2xs7Sa4DaEoj/KRSBV0zzZOnL8RRZyzs=;
        b=VRJKTFO0pTMrIZtoQtEXotwF56H4bqNgQ4Le2wiZ8tLwkVx/wFakYLYiDn/C7nmMNq
         U8Q2KEjl22QNLv8IgdK9N8PaOW3bW2XRrQFTpW65K9tgB6nDrg3uEaGJeYsK5UlSIhpy
         b9laQWz10lHkDLLhjR7UFOSimrQeDy/236NR8O+OiRBW5kPlqqyEplDwBbWQkWPY20oO
         YFRS4AWMOdKnShB/QbcG58U6YthHh414YeenLp79g0aAKh+G6gbh4S8yjynjIxLUk1gx
         R6vLUmfOZiirs/S5jxI2scBVJl5DjhzBeyQvd4+iprVLsOCIJFnTSbrLN5joF+0mrRXi
         uZzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681077149;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y/jGq0FSTDv2xs7Sa4DaEoj/KRSBV0zzZOnL8RRZyzs=;
        b=a6vMNlHd2Dwb9qo5bGquXLYc25rXz300lL2yw6lo7mbdkYJ4p8/QFL73FRYfT3wYLe
         T5s9EVzDX/2zAIjftZRvgUfVx3EMeoSpqWdOZr7hDy2gpHU0EpAU6S/j81cTl0Lig2sH
         5AbXIgB7MAp592/AbUSuQFARtMtTFLhcEx7Zc2f0jDYUL8xc3WdRQO4U4XdCPxOA9JJ5
         WbNOuaNFrawR5Sl4Z2VV4u6D+tOsuk9U+2DHx+2DaXBEG6nl342EEwg2A7TOO2ZcXjxm
         DlCNSR/+7/rjzRt1DX2fWMfT7Ij+bQU6snegOzifyw7lKM6x50mt/LWlOaBaFUsTNPCd
         AMgw==
X-Gm-Message-State: AAQBX9dtO4X8DXzXEvU0Z4chauYy+YFerXpQPKCM+3O9Wbac+L/4n+0d
	/2FcJpuHxfRskSiUMh9lbwNT41hzvQYw6Uabv780kw==
X-Google-Smtp-Source: AKy350YNUGymoPDIvC+b0gHPeU80xXcrFegU+jP+3S0MjlIY6eHRoJ3nja98sEY/CKrzdBlcfdINW7cbB5v7w2/Dfvg=
X-Received: by 2002:a25:c905:0:b0:b86:92c0:6433 with SMTP id
 z5-20020a25c905000000b00b8692c06433mr5938891ybf.9.1681077148876; Sun, 09 Apr
 2023 14:52:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230409200934.2329297-1-bhupesh.sharma@linaro.org> <20230409200934.2329297-2-bhupesh.sharma@linaro.org>
In-Reply-To: <20230409200934.2329297-2-bhupesh.sharma@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 10 Apr 2023 00:52:18 +0300
Message-ID: <CAA8EJpp8LMab+bXWd5p_8SZ_-Oa18WGYaqG0_6=phreL_LvteA@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] dt-bindings: phy: qcom,qmp-usb: Drop legacy
 bindings and move to newer one (SM6115 & QCM2290)
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, agross@kernel.org, 
	linux-kernel@vger.kernel.org, andersson@kernel.org, bhupesh.linux@gmail.com, 
	krzysztof.kozlowski@linaro.org, robh+dt@kernel.org, konrad.dybcio@linaro.org, 
	kishon@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230409_145231_775257_5E2C09F4 
X-CRM114-Status: GOOD (  14.14  )
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

On Sun, 9 Apr 2023 at 23:09, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
>
> 'qcom,msm8996-qmp-usb3-phy.yaml' defines bindings for several PHYs
> which predate USB -> USB+DP migration. Since SM6115 and QCM2290
> nodes for USB QMP phy are being added to dtsi files by followup patches,
> move these bindings instead to the newer style
> 'qcom,sc8280xp-qmp-usb3-uni-phy.yaml' file.
>
> Since no device trees use these bindings presently, so we have no ABI breakages
> with this patch.
>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 27 -----------
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 45 ++++++++++++++++---
>  2 files changed, 40 insertions(+), 32 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> index e81a38281f8c..4c96dab5b9e3 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> @@ -23,14 +23,12 @@ properties:
>        - qcom,ipq8074-qmp-usb3-phy
>        - qcom,msm8996-qmp-usb3-phy
>        - qcom,msm8998-qmp-usb3-phy
> -      - qcom,qcm2290-qmp-usb3-phy
>        - qcom,sc7180-qmp-usb3-phy
>        - qcom,sc8180x-qmp-usb3-phy
>        - qcom,sdm845-qmp-usb3-phy
>        - qcom,sdm845-qmp-usb3-uni-phy
>        - qcom,sdx55-qmp-usb3-uni-phy
>        - qcom,sdx65-qmp-usb3-uni-phy
> -      - qcom,sm6115-qmp-usb3-phy
>        - qcom,sm8150-qmp-usb3-phy
>        - qcom,sm8150-qmp-usb3-uni-phy
>        - qcom,sm8250-qmp-usb3-phy
> @@ -248,29 +246,6 @@ allOf:
>              - const: phy
>              - const: common
>
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - qcom,qcm2290-qmp-usb3-phy
> -              - qcom,sm6115-qmp-usb3-phy
> -    then:
> -      properties:
> -        clocks:
> -          maxItems: 3
> -        clock-names:
> -          items:
> -            - const: cfg_ahb
> -            - const: ref
> -            - const: com_aux
> -        resets:
> -          maxItems: 2
> -        reset-names:
> -          items:
> -            - const: phy_phy
> -            - const: phy
> -
>    - if:
>        properties:
>          compatible:
> @@ -318,12 +293,10 @@ allOf:
>              enum:
>                - qcom,ipq6018-qmp-usb3-phy
>                - qcom,ipq8074-qmp-usb3-phy
> -              - qcom,qcm2290-qmp-usb3-phy
>                - qcom,sc7180-qmp-usb3-phy
>                - qcom,sc8180x-qmp-usb3-phy
>                - qcom,sdx55-qmp-usb3-uni-phy
>                - qcom,sdx65-qmp-usb3-uni-phy
> -              - qcom,sm6115-qmp-usb3-phy
>                - qcom,sm8150-qmp-usb3-uni-phy
>                - qcom,sm8250-qmp-usb3-phy
>      then:
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> index 16fce1038285..aa16d50c7c4e 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> @@ -16,20 +16,20 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,qcm2290-qmp-usb3-phy
>        - qcom,sc8280xp-qmp-usb3-uni-phy
> +      - qcom,sm6115-qmp-usb3-phy
>
>    reg:
>      maxItems: 1
>
>    clocks:
> +    minItems: 3
>      maxItems: 4
>
>    clock-names:
> -    items:
> -      - const: aux
> -      - const: ref
> -      - const: com_aux
> -      - const: pipe
> +    minItems: 3
> +    maxItems: 4
>
>    power-domains:
>      maxItems: 1
> @@ -71,6 +71,41 @@ required:
>
>  additionalProperties: false
>
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,qcm2290-qmp-usb3-phy
> +              - qcom,sm6115-qmp-usb3-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: cfg_ahb
> +            - const: ref
> +            - const: com_aux

Doesn't it also need a pipe clock? It surely does: gcc_usb3_prim_phy_pipe_clk

> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sc8280xp-qmp-usb3-uni-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: ref
> +            - const: com_aux
> +            - const: pipe
> +
>  examples:
>    - |
>      #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
> --
> 2.38.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
