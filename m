Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76316C76196
	for <linux-phy@archiver.kernel.org>; Mon, 10 Apr 2023 11:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79ay9Uo8n3xdXRIR3rOpxlG/mly+GkRUB7nKhsXnFQQ=; b=qIaCIdac0WsyK8
	qpc9SRRDy0PKboZZgtqIIgaP3qTQ+hETcn1R8UtGFfvPgRvZ/j3H09oNpU1ILXo5tnsg3Pk91t07D
	hcdV9EOKxSBfD7PIzTsM9ZocEOwh7CXHygOc6ZFMgEgVzpBE9OAsNfynqVcn8iPlq2+zAZ+tSSEF/
	PtDAEWNk6CvOo+je/oXjWFMmagDJDdJd7LiWvLwfnAYEh0rICKJ9QCCf9s5oJ5dbYpPGnAMKnjIlq
	EDgSiOQqraKLheS5lC6T2zvLuQgEV6OSSHSGvONwbD8GwVd6N+VTBsECZmlHE4DXCtNi9B3RUvm42
	Dzy3PBBVmM8BoOB4De/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1plpRO-00F8so-05;
	Mon, 10 Apr 2023 11:12:06 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1plpRK-00F8rE-1r
	for linux-phy@lists.infradead.org;
	Mon, 10 Apr 2023 11:12:04 +0000
Received: by mail-wm1-x336.google.com with SMTP id l16so2148058wms.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Apr 2023 04:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681125112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5vw3rPx8qPoVV+ZCefrSXLLOTppZ03b9eO3gHDNkOlU=;
        b=WJ0n5aFqPN+jVAKQnNNajIqNjUgn3QltySN1k5WS3wSO6SaRKrAG75X9dQZmtwQspF
         RPADakqsOrWbFfVqdrer5RHhQu127EFf+WPNYCER/PJQ0kyO/apPCW7FLVtUAtWMnDjR
         IayL/cDymxMTPConEoTzW37L7FRQJuBXdpmM3VVYKYeK0+YkJOVw/Yoj8hcYF7iYDuJk
         eX5VCQ88869h/mSE5hv7NoJ+7ia4aHp8lLeHPsJI3/Q6HIh4d6msUaM+/s1wpU7mumHP
         cDAUVF+dAo4a9T+pSOnhoYXxlxPatZ6mu7jB1Dx/ScVlkbVlgbpi7YjcDboSwRfw3fdz
         L/yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681125112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5vw3rPx8qPoVV+ZCefrSXLLOTppZ03b9eO3gHDNkOlU=;
        b=t+6SG1ZHIBejbQe5a6mR9XikG3fMhW3uIvep976dvGr/zxHIOgY4NmQPhOoZn0rYGf
         Eo3LSALXYXXb08WDMpCDcAcQ8KhIp5LEHN0oGmytgh8eb4vuIJRC/DAuZ62GatzgC3QX
         t2Azwiz9+GjbwszHcLdGXbOUxrFUVwNVkRP1jruQMYtESbHUWiCdSSd8j0MRHMXbVYTp
         s5zr4e6ov3/Yc4o2jo4a5Ef1IphARrM1XCg3YKcgbXYs0PqU+i+FVBd7EdC1vv/EMnJi
         ZaH0y7ib/7vnGxNmx+FbrtuRs5oxIqUdRGIV8StvggeAloeSzLXYPfEtX20dDrcgG2gu
         jD1Q==
X-Gm-Message-State: AAQBX9daEvwNhc0xakx9a5145/6T9wJrwpvsK4bImuNlePVQP8XpF0vZ
	XvH84dIEr8YrsLPgXViUo4F9NevfmCJ88gfSkqj6Bw==
X-Google-Smtp-Source: AKy350aOS7wP+kJ9LG8FW6aR97EAkthiZxJ1BEMkPVvCJ0CZeZCLC43rpwgUmeMLt7MRzbA3stZTNHEYWuHikX/td5Y=
X-Received: by 2002:a05:600c:ad4:b0:3ee:10fb:56f8 with SMTP id
 c20-20020a05600c0ad400b003ee10fb56f8mr2026954wmr.8.1681125112223; Mon, 10 Apr
 2023 04:11:52 -0700 (PDT)
MIME-Version: 1.0
References: <20230409200934.2329297-1-bhupesh.sharma@linaro.org>
 <20230409200934.2329297-2-bhupesh.sharma@linaro.org> <CAA8EJpp8LMab+bXWd5p_8SZ_-Oa18WGYaqG0_6=phreL_LvteA@mail.gmail.com>
In-Reply-To: <CAA8EJpp8LMab+bXWd5p_8SZ_-Oa18WGYaqG0_6=phreL_LvteA@mail.gmail.com>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Mon, 10 Apr 2023 16:41:41 +0530
Message-ID: <CAH=2NtyMm5bDWZZBtbtzwvpq2gZEowDp--qfd-AnF2nvHuDaNg@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] dt-bindings: phy: qcom,qmp-usb: Drop legacy
 bindings and move to newer one (SM6115 & QCM2290)
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, agross@kernel.org, 
	linux-kernel@vger.kernel.org, andersson@kernel.org, bhupesh.linux@gmail.com, 
	krzysztof.kozlowski@linaro.org, robh+dt@kernel.org, konrad.dybcio@linaro.org, 
	kishon@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230410_041202_770575_6ABA57B0 
X-CRM114-Status: GOOD (  16.98  )
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

On Mon, 10 Apr 2023 at 03:22, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Sun, 9 Apr 2023 at 23:09, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
> >
> > 'qcom,msm8996-qmp-usb3-phy.yaml' defines bindings for several PHYs
> > which predate USB -> USB+DP migration. Since SM6115 and QCM2290
> > nodes for USB QMP phy are being added to dtsi files by followup patches,
> > move these bindings instead to the newer style
> > 'qcom,sc8280xp-qmp-usb3-uni-phy.yaml' file.
> >
> > Since no device trees use these bindings presently, so we have no ABI breakages
> > with this patch.
> >
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 27 -----------
> >  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 45 ++++++++++++++++---
> >  2 files changed, 40 insertions(+), 32 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > index e81a38281f8c..4c96dab5b9e3 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > @@ -23,14 +23,12 @@ properties:
> >        - qcom,ipq8074-qmp-usb3-phy
> >        - qcom,msm8996-qmp-usb3-phy
> >        - qcom,msm8998-qmp-usb3-phy
> > -      - qcom,qcm2290-qmp-usb3-phy
> >        - qcom,sc7180-qmp-usb3-phy
> >        - qcom,sc8180x-qmp-usb3-phy
> >        - qcom,sdm845-qmp-usb3-phy
> >        - qcom,sdm845-qmp-usb3-uni-phy
> >        - qcom,sdx55-qmp-usb3-uni-phy
> >        - qcom,sdx65-qmp-usb3-uni-phy
> > -      - qcom,sm6115-qmp-usb3-phy
> >        - qcom,sm8150-qmp-usb3-phy
> >        - qcom,sm8150-qmp-usb3-uni-phy
> >        - qcom,sm8250-qmp-usb3-phy
> > @@ -248,29 +246,6 @@ allOf:
> >              - const: phy
> >              - const: common
> >
> > -  - if:
> > -      properties:
> > -        compatible:
> > -          contains:
> > -            enum:
> > -              - qcom,qcm2290-qmp-usb3-phy
> > -              - qcom,sm6115-qmp-usb3-phy
> > -    then:
> > -      properties:
> > -        clocks:
> > -          maxItems: 3
> > -        clock-names:
> > -          items:
> > -            - const: cfg_ahb
> > -            - const: ref
> > -            - const: com_aux
> > -        resets:
> > -          maxItems: 2
> > -        reset-names:
> > -          items:
> > -            - const: phy_phy
> > -            - const: phy
> > -
> >    - if:
> >        properties:
> >          compatible:
> > @@ -318,12 +293,10 @@ allOf:
> >              enum:
> >                - qcom,ipq6018-qmp-usb3-phy
> >                - qcom,ipq8074-qmp-usb3-phy
> > -              - qcom,qcm2290-qmp-usb3-phy
> >                - qcom,sc7180-qmp-usb3-phy
> >                - qcom,sc8180x-qmp-usb3-phy
> >                - qcom,sdx55-qmp-usb3-uni-phy
> >                - qcom,sdx65-qmp-usb3-uni-phy
> > -              - qcom,sm6115-qmp-usb3-phy
> >                - qcom,sm8150-qmp-usb3-uni-phy
> >                - qcom,sm8250-qmp-usb3-phy
> >      then:
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > index 16fce1038285..aa16d50c7c4e 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > @@ -16,20 +16,20 @@ description:
> >  properties:
> >    compatible:
> >      enum:
> > +      - qcom,qcm2290-qmp-usb3-phy
> >        - qcom,sc8280xp-qmp-usb3-uni-phy
> > +      - qcom,sm6115-qmp-usb3-phy
> >
> >    reg:
> >      maxItems: 1
> >
> >    clocks:
> > +    minItems: 3
> >      maxItems: 4
> >
> >    clock-names:
> > -    items:
> > -      - const: aux
> > -      - const: ref
> > -      - const: com_aux
> > -      - const: pipe
> > +    minItems: 3
> > +    maxItems: 4
> >
> >    power-domains:
> >      maxItems: 1
> > @@ -71,6 +71,41 @@ required:
> >
> >  additionalProperties: false
> >
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,qcm2290-qmp-usb3-phy
> > +              - qcom,sm6115-qmp-usb3-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 3
> > +        clock-names:
> > +          items:
> > +            - const: cfg_ahb
> > +            - const: ref
> > +            - const: com_aux
>
> Doesn't it also need a pipe clock? It surely does: gcc_usb3_prim_phy_pipe_clk

Ok, let me add it in v8.

Thanks.

> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,sc8280xp-qmp-usb3-uni-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 4
> > +        clock-names:
> > +          items:
> > +            - const: aux
> > +            - const: ref
> > +            - const: com_aux
> > +            - const: pipe
> > +
> >  examples:
> >    - |
> >      #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
> > --
> > 2.38.1
> >
>
>
> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
