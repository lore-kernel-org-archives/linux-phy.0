Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A3DBC61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 11:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHkw7gduW7S7+P4cOUCDLSNUkXrszzd6xdYwwxIThgU=; b=eJQohSakaKIfFW
	tCWeZYneIyg7YxCZNlS3FnhN9TYt5QcmqQndXJvd61CPNXB0YH4MtTqwHa0Goyj8vJGtmBOEKgmOc
	7zH5jThx71GWNMJYP0GaK2krMjN9YbG5IgJizq5AgLuadXaDCaIeC5wmWcHWX0ZjB8NGBHUVrrGOC
	HeaXDqwd747m1/oflkMl+UWyk2TCBwmT7Z0VZLHMOw6MLI9Dbensa/PgGHNP0dC1p5MPW8uHDIUi7
	aoCCbwqQeUA13NKksTokmqW1osWLzUA5G2KbJ8lAinn2OLfKEJB1aDT2S/l+HFmDhSEJKzmqekIdN
	Ie/2w8HjKJHmp976i/AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kyf-001V3m-37;
	Wed, 22 Nov 2023 11:01:05 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kyd-001V2p-0J
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 11:01:04 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5cc86fcea4fso3451467b3.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 03:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700650861; x=1701255661; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E1ksGzAKOZZ19DHQumvLnarTHkKv0swz0fHk1UYxyII=;
        b=X79J58ne2+ZBOl3uW4L22pup9kjRqHZX5LOk4SFA/pWher2ODM6OYQOqlnEbwShX1W
         JzPDAWyuRLJ2ol0wWkEat6V0wTJ9N5pXjeH2ZFUHpgHMuMy6+qABMK7rC9kkjb2EO2IJ
         /rTVNY+QgmrXq1kEObwfua7fnK3hb62rk6rXNiuNK37tlEoyEAmRtT4c9fK2HPdqK2ND
         czd+05SOzGn/L4Fu574ckTqB+fejNedKyaOKT4p7eT1Escegkig8OdqqpXRFcLh6MAjQ
         AB414mQR3t+0PQXEG8PFChOudXYsye4hlPK5vzTpXWOxZ3Y98FcvUv51Lf7Fc+gmKail
         C4HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700650861; x=1701255661;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E1ksGzAKOZZ19DHQumvLnarTHkKv0swz0fHk1UYxyII=;
        b=pWkmfz8LIHZsOjtmVN4bxgyxFumBWyytuF7UP4AunErJM+zZ8R5OGo2gYwMYtMbcQv
         dhFBPI52ipDivvikdtgxrOYjaLRk9mYqyR44V0Kw7oEMCNcfxVXKRZXqdEB6UIuhGVzG
         tay/GgaFmZlge3vcR39Qfo9LQxahAjpgzdx8n7jKuEkvq2TICaf3S9N4SnY3WzhLXCY2
         GGyPBz7fqYP6j15TTtKAHZJxxlnKkDExQyzpkYxIb+qQ1zA5j+3wjZRFs09z44HMld8Y
         1H5ZRk6d2h1gWaeGwMtqXRt3gwdackNcVDfbRsXCXetnKFvTuw4v7IgwvsZ6ajMYLmt8
         pIxw==
X-Gm-Message-State: AOJu0YxAdHuimA6M6Xt5/MId92YbGE69A5/8tAN7IejKz4lxN4WJ70zh
	NVYpoEFfqTkn7OJF630ZbDXxy+AgCWbjKJgSzrs0uNue5SS9wQGx
X-Google-Smtp-Source: AGHT+IHoRdzbQlu0J8Ssj0glEYZDjALA6nej4rxbVshhp+npDmWQzumr5ZaFvsNUewuRReubm7cet2KDcTxS3Tt9Xfw=
X-Received: by 2002:a0d:d045:0:b0:592:1bab:52bd with SMTP id
 s66-20020a0dd045000000b005921bab52bdmr1639347ywd.39.1700650855657; Wed, 22
 Nov 2023 03:00:55 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-edp-x1e80100-v1-0-a9938990edb3@linaro.org> <20231122-phy-qualcomm-edp-x1e80100-v1-1-a9938990edb3@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-edp-x1e80100-v1-1-a9938990edb3@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 13:00:44 +0200
Message-ID: <CAA8EJpp=dpN+v7pxPMAzbH9xSHgydk+39GkjmuFA5yfPcCzqow@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_030103_301776_4C3F4A56 
X-CRM114-Status: GOOD (  13.25  )
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

On Wed, 22 Nov 2023 at 12:56, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The Qualcomm X1E80100 platform has both eDP and DP PHYs, add compatibles
> for these.

Are those two distinct PHYs or is it a same PHY working in either of the modes?

>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index 6566353f1a02..190f61c1d0f9 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -21,6 +21,8 @@ properties:
>        - qcom,sc8180x-edp-phy
>        - qcom,sc8280xp-dp-phy
>        - qcom,sc8280xp-edp-phy
> +      - qcom,x1e80100-dp-phy
> +      - qcom,x1e80100-edp-phy
>
>    reg:
>      items:
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
