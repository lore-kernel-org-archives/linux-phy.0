Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31C0DC761AF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Mar 2023 09:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dy9XOnOZ29hCQslsVzjDAs4TLOooYBonesGimJdYzGk=; b=BlpA7Fkzf9/Kd5
	iDhl4a1BxLJ1PXwDH1O4F2Xu4jsIp2cp9Z4E+hKWrkllq23TO52Rs5UQpURQ9xc/x8ulhxSTxc4/I
	4JJr8SoIfqH4bSO7uRkranoqH28an0QmHSRg2A6C4XOJoxdn9MARXAeu4JAegB6G+iYyCSYS0yPyF
	wXZjf/jUvm3YP6XlSUeoYuotFG0KiFK9GTpZeENwdfNaV6SChoJHyz9WKuXt3JsLq9HJrLTMJkDp4
	LlwByDct9hPpa5E4esRsuc2gTOUYdpMW+OvZap2sFG5zFVwTVq0JXfFrQSLhReFGWijPJ4obLlS6q
	ZiKLco3XNPJewFSwU3dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phol1-003JSm-2h;
	Thu, 30 Mar 2023 09:39:47 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phoky-003JRq-2H
	for linux-phy@lists.infradead.org;
	Thu, 30 Mar 2023 09:39:46 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-545cb3c9898so268679187b3.7
        for <linux-phy@lists.infradead.org>; Thu, 30 Mar 2023 02:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680169181;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+KF3Ej0zA5vUsAy03E3uvbCGHCj2rR2h+cgAo56vcSY=;
        b=XMzC2GHrO/8LfQ2aF3jdBJuAoAavxiNQuWfxljRs8SSZB223Vy6gKXq8lIxlvbo5Rh
         61k6tYXlbAGXehWTjVPqLri1D03gVJoGcUXUOH3PsPIHJc/noOjuYYqooeFFg70dSNjo
         J8X8pl4w2xqanq7XlhVxGBqwbB39cp4zM3CYYGZ3A6180YwGKiXfkRrFVRSEeEMxllvf
         BH83sjDB5BmtIX7D/eKKrPxH3sAEqcldv4ha47iuHa7Z3Tf3JV7WlJnqKJ42NY0SShVq
         bO4jsOO7inoRCS2pNoUY+O3iSCI+0NqnrtUaX3tZobzpuU/fM2EXaflsdDLgvfQkpeRp
         b18g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680169181;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+KF3Ej0zA5vUsAy03E3uvbCGHCj2rR2h+cgAo56vcSY=;
        b=tVb2F+zoaOKQd3Gt6dkYMnK8aKW1VqqLuO1fcGwBrb+lpxRIDMmu3/ma4GFE3pH5XF
         r2XHtBkVgUts1LT/d4cYfTK5WYxN8Iza46bwhMdxXFkMAPQX/wd02VbUbBRhmH+AxPiW
         fTfL+0XyqjygNxT/la67jxv7AT5zaNqsnbfpg4XwSPMHHakd4mj+b3JhNz3HtR2cL27I
         vSwbRxmFuzYHcZxlKMC5+nSpcHLtVV+qedf1QYgRbQmols8wfAMsNOmmTbVNDDK8btpM
         aIj2o8e6RBhnoqPxOulNXQQEAgaIGEIPHVmjCeFLf+mf2wfXGn5ueldW5gk8bPY7f03t
         tnCQ==
X-Gm-Message-State: AAQBX9dUKdtKASNTMeE1TOIVygCZ4BCFDrkMLoypGe09CFpq8RqkixIF
	w84Zs1xCmDIXHJKeoGU/p6LTltdoCJI6uKpP1Eppzg==
X-Google-Smtp-Source: AKy350Y9NxPb3viIr2gzUpn3/4183c/Hd9fNIbqB/+mt9JjjNP5tyVonZiZsUTV2u+aJtwZ2ZC3uPbmUCiAJfBuAGXU=
X-Received: by 2002:a81:ae4f:0:b0:545:ed8e:f4f6 with SMTP id
 g15-20020a81ae4f000000b00545ed8ef4f6mr7051275ywk.5.1680169180845; Thu, 30 Mar
 2023 02:39:40 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1680162377.git.quic_varada@quicinc.com> <cb8f2ba0ff39951aeada479ed3895d19c9f72617.1680162377.git.quic_varada@quicinc.com>
In-Reply-To: <cb8f2ba0ff39951aeada479ed3895d19c9f72617.1680162377.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 30 Mar 2023 12:39:30 +0300
Message-ID: <CAA8EJprQhrqWo5s8hNq=z4DL=hw9wde4ZHHwb+JoKCMQk3rU7w@mail.gmail.com>
Subject: Re: [PATCH v5 3/8] dt-bindings: usb: dwc3: Add IPQ9574 compatible
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org, 
	mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_023944_768081_2B554889 
X-CRM114-Status: GOOD (  13.38  )
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

On Thu, 30 Mar 2023 at 11:42, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Document the IPQ9574 dwc3 compatible.
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v5:
>         - Restore removed constraints
>
>  Changes in v4:
>         - Update other relevant sections
>         - Remove constraints not applicable to IPQ9574
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index a2aabda..8def6a3 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -17,6 +17,7 @@ properties:
>            - qcom,ipq6018-dwc3
>            - qcom,ipq8064-dwc3
>            - qcom,ipq8074-dwc3
> +          - qcom,ipq9574-dwc3
>            - qcom,msm8953-dwc3
>            - qcom,msm8994-dwc3
>            - qcom,msm8996-dwc3
> @@ -242,6 +243,24 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,ipq9574-dwc3
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 5
> +        clock-names:
> +          items:
> +            - const: sys_noc_axi
> +            - const: anoc_axi
> +            - const: master
> +            - const: sleep
> +            - const: mock_utmi

Is there any chance of using clock names that are close to the names
used by existing platforms?

I think this fits into the third 'if' bucket:

cfg_noc = sys_noc_axi
core = master
iface = anoc_axi
sleep = sleep
mock_utmi = mock_utmi

> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
>                - qcom,msm8994-dwc3
>                - qcom,qcs404-dwc3
>      then:
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
