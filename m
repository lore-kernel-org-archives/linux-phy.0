Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54AC6C6FD19
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 20:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtZqLCuzwq10W8UPfqOzgq/NsP60yYE00CjKv4U5VgM=; b=dbqjrYEbDMbjXS
	h5fjFp7kWciS34zFceAAfE0WoKLMawf120X+ZpUwBRHqpVOleoOzu2vnoFILztgnQbmY1cnFUc1sN
	WicFnx0Mc6g8u6u63Y8NiAALfVQlQHlIDkpeO5nBWD11pOAmLz4QQ4eL1foSiGDlCfJgUBtbJnBI1
	W4wxXgoVBcM6+NRRljtplC7zwx5DFVq2+1rH4zzJkizMshKD6M0YHpJ+4DfvYH9qBW8n3yUBEsmhv
	KrKrpwsJ2xlKo93RyxPA1xEHDzjd5k1b1KpQoAwb6B/tYzbWoX0FvYx8mnVS9AQjH6RSCzi+rfFbT
	4EVViLvfUZZM7k3hYEWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paN8D-00BnqL-L4
	for linux-phy@archiver.kernel.org; Thu, 09 Mar 2023 20:44:57 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paN8A-00BnpE-QH
	for linux-phy@lists.infradead.org; Thu, 09 Mar 2023 20:44:56 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-536bbef1c5eso57724977b3.9
        for <linux-phy@lists.infradead.org>; Thu, 09 Mar 2023 12:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678394686;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zsg12oEDEiCGQizPiB6v1VIIN7ssVMwVI7Jn0aroOOo=;
        b=ZCLScd7RtY51SvqL7NHWLqy4Glcw6iBOxfIAay6Bv5sSfTGNVrMhIwU8/UGS+AxbUc
         41OyUUhJb8BcpdDcxFLsHJl7NhO8VYM8821xQXifPwRfcAS1bSr6sIUKxOJDB/qmONT7
         RrwOOknXTK6hxA5T9x5K/64JBOeM4YlTIg4qQNljLRVEn4j3voI+y/niVOmvi2QRkpfc
         Y5HM6y0UerdnWMhoXM3IiDiRcx8a/3HwaRR+ThZfWJz4RYD+wD+yTAFDcrPgMBDOgPCK
         ZAaL+IMiuRdipHgvzv3b5MvojXm+YiY3kOMNqKo9kwyYhp+iRQPhKDhDSFjPfzbvtNlA
         V2MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678394686;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zsg12oEDEiCGQizPiB6v1VIIN7ssVMwVI7Jn0aroOOo=;
        b=BL96v2bnDZha4Udd4tvF9+YKLdtCIMTc+2ujwXaWAbv+wHXF3r04DJ5L752MJy1Mm3
         xBaJojVSyKBjriaYWThIYXn8ghGxlcdxuJCWnN3yDQ/VzfAClsptjzSyuj/j7ZdjJnbj
         5ftRnW3R8EfEG0vyaGJkwFsiGOXofsEsbc5iOc/b2Mm8URlqM1DKcyrat5y9Yu5eJh5n
         8JOggMHoJXrAeNvKLI1JZe6Yr3uWjSu2JmvqaOtcJ6hIuxsrKU+XGTijm/RU1RShTD2F
         3Y4lotjvcimXZ+btLaoRD0E7+wNeSri6nVlMkGvOCMK4dddfBL8Huir4Kfkv0Xe91PnA
         pJnw==
X-Gm-Message-State: AO0yUKW2dCrp1QH0ARKGHltmtwQ51QMaO8gPWBMRQIDAfPt7bOi5x4x0
	HvqkJAJO+2iUbkQPhl+l62fBmX/HhMyBBLN8hlnR7w==
X-Google-Smtp-Source: AK7set8N216joVB3r3L/ek5sz4l8MebjRQuwEsbDMvXnhoeYi2e66BnSt5ysXC+4If5k5wgiHNaCZIFLJZo+xq9gy1U=
X-Received: by 2002:a81:b285:0:b0:533:99bb:c296 with SMTP id
 q127-20020a81b285000000b0053399bbc296mr14224207ywh.5.1678394686599; Thu, 09
 Mar 2023 12:44:46 -0800 (PST)
MIME-Version: 1.0
References: <20230309185049.170878-1-danila@jiaxyga.com> <20230309185049.170878-2-danila@jiaxyga.com>
In-Reply-To: <20230309185049.170878-2-danila@jiaxyga.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 9 Mar 2023 22:44:35 +0200
Message-ID: <CAA8EJpr866ejThuXkqEABST_awZkbuk+vtPAW_WAn3CoyYhfRA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for SM7150
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, davidwronek@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_124454_874412_0FFFA12D 
X-CRM114-Status: GOOD (  12.37  )
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

On Thu, 9 Mar 2023 at 20:51, Danila Tikhonov <danila@jiaxyga.com> wrote:
>
> From: David Wronek <davidwronek@gmail.com>
>
> Document the QMP UFS PHY compatible for SM7150.

Please switch to using new bindings (see
Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml).

>
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  .../devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml      | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
> index 80a5348dbfde..da223abaa3a2 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml
> @@ -25,6 +25,7 @@ properties:
>        - qcom,sdm845-qmp-ufs-phy
>        - qcom,sm6115-qmp-ufs-phy
>        - qcom,sm6350-qmp-ufs-phy
> +      - qcom,sm7150-qmp-ufs-phy
>        - qcom,sm8150-qmp-ufs-phy
>        - qcom,sm8250-qmp-ufs-phy
>        - qcom,sm8350-qmp-ufs-phy
> @@ -127,6 +128,7 @@ allOf:
>                - qcom,sdm845-qmp-ufs-phy
>                - qcom,sm6115-qmp-ufs-phy
>                - qcom,sm6350-qmp-ufs-phy
> +              - qcom,sm7150-qmp-ufs-phy
>                - qcom,sm8150-qmp-ufs-phy
>                - qcom,sm8250-qmp-ufs-phy
>      then:
> @@ -162,6 +164,7 @@ allOf:
>                - qcom,msm8998-qmp-ufs-phy
>                - qcom,sdm845-qmp-ufs-phy
>                - qcom,sm6350-qmp-ufs-phy
> +              - qcom,sm7150-qmp-ufs-phy
>                - qcom,sm8150-qmp-ufs-phy
>                - qcom,sm8250-qmp-ufs-phy
>                - qcom,sm8350-qmp-ufs-phy
> --
> 2.39.2
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
