Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61026C25B7F
	for <linux-phy@archiver.kernel.org>; Wed, 16 Aug 2023 20:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHUqHk5iD5ygfyNpfiXGzyBf0i+UP5F5xZgttTkP2D4=; b=dX2jTXb3IPNejD
	0dEbsWabDsmfB+qdzNCcSmkDR4PFjp0xSpajENYAYtrPpdxBcykXEmRjQbqihmuVjGhuQ3itR9PVl
	qsjF4IA6Q8ZpEcfCdHGbaQf8R3BaTL7UHU+jc8+gNHzLJpAwDra+uhDb8zWVSMVFkzphzFry/GJik
	LojVLjbteNTbzUPWf1O9mkpK7Z2GpU2HsloGkuy/d0Pruaxbk41pBHXjvAptv82ZFP2xGnd6Ev5tt
	YYzHqcAF3ZPSdwSqI8WLyT/oARn7IYi+zV5OKvlJgHpkgq0j0Sj7IpIY0RWG1tgK0MLIYvAPDcZ31
	2PHTMvQi8FyZMYWnSfWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWNBL-004xQ5-39;
	Wed, 16 Aug 2023 20:31:55 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWNBJ-004xPc-0R
	for linux-phy@lists.infradead.org;
	Wed, 16 Aug 2023 20:31:54 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-d62b9bd5b03so6565421276.1
        for <linux-phy@lists.infradead.org>; Wed, 16 Aug 2023 13:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692217911; x=1692822711;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ESK9GO7mfDGeXFIUEzQzbG42Lacp21O8/Gw0HAGsBdg=;
        b=VoV3YZbJ7ItSImQ9pXkoIICPaoSt/NtxGqoRP7tZg5BcjHUOS8Tyu4GNPxpf50+nk4
         4re39STGcwHAduO6Sli7a5/kuJg/+eH7AkwyChhZMTEE5HAA0mYluaqDkMS4U3SxArw2
         0nqeL52kiBbp6xZyUWh+oj9+iH47sW+T8YmOIqqh0KjP1hHfgazv1DuuMKZlT0iK6wta
         RL4peN+pzUHztomypCQG0dx83XhnTH76XO7kfYvnG7vplylk5+I4x3nK34dHncVVrI/I
         mVAW3/1KlxVxbaSOyJKJCPdZYOQyKwOXh4kJjBNJakLC25VrciVePh/a1OL6IgNdjWH6
         qskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692217911; x=1692822711;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ESK9GO7mfDGeXFIUEzQzbG42Lacp21O8/Gw0HAGsBdg=;
        b=iOhXL6kCf0WN3UNFJ1ZwIrrSdk2vu4oA/l7e7LP1kd/2AaPKBIIJqBuhKJzFhmtcO2
         g3+7U7JcGCotstb4croMLaVccFrA/U1JKhQAlszrarn4BjkRYvh0jXSK4eVTpt5R2ekX
         8s9jQeqJJjWM6aPXfFU+BTi6Feien5SG62S6DSWmuNL3gzctSaVCz7bSiAfWKY6X6Ajt
         L2GbyBrDsqGXTfwY8H+/aY2x+XiajZ31uKaI/uIk967AtIcM6tP1NNTfS/3H6PjohhcF
         bi8o9mHGeu76tYLWPhtE8d4G8D614LSBIWHw8o58Knd+3kVlgI0hZ8pv6vk2nJiqUxrB
         TDYw==
X-Gm-Message-State: AOJu0YwS/YyhwBfjhO+eKvtsYp6Mzowm0Jv9rB3UgH/YmpkA+VZfk85H
	WDZMM0WEQf6s3fRUO3BiU9t63umt6RNYXbe/KjZ/Vg==
X-Google-Smtp-Source: AGHT+IGeMEblFueiAliICx+pZWdnIigWVze5mzQKg70Gob/XSxTKfd2Blz1Vvb5F00DOrKg4/8UUJ/9er3xfC1Xkfqo=
X-Received: by 2002:a25:7457:0:b0:d4a:f17:88 with SMTP id p84-20020a257457000000b00d4a0f170088mr2540265ybc.61.1692217911021;
 Wed, 16 Aug 2023 13:31:51 -0700 (PDT)
MIME-Version: 1.0
References: <20230816154841.2183-1-quic_nitirawa@quicinc.com> <20230816154841.2183-2-quic_nitirawa@quicinc.com>
In-Reply-To: <20230816154841.2183-2-quic_nitirawa@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 16 Aug 2023 23:31:40 +0300
Message-ID: <CAA8EJpoMFCbHuZcEN3-cxFN94QTG6wfNb52vfwuw6qLOfmdFyg@mail.gmail.com>
Subject: Re: [PATCH V1 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for SC7280
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	agross@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_133153_196952_13D04E93 
X-CRM114-Status: GOOD (  11.45  )
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

On Wed, 16 Aug 2023 at 18:50, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>
> Document the QMP UFS PHY compatible for SC7280.
>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> index d981d77e82e4..ad78da9c2c1a 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -31,6 +31,7 @@ properties:
>        - qcom,sm8350-qmp-ufs-phy
>        - qcom,sm8450-qmp-ufs-phy
>        - qcom,sm8550-qmp-ufs-phy
> +      - qcom,sc7280-qmp-ufs-phy
>
>    reg:
>      maxItems: 1
> @@ -110,6 +111,7 @@ allOf:
>                - qcom,sm8250-qmp-ufs-phy
>                - qcom,sm8350-qmp-ufs-phy
>                - qcom,sm8550-qmp-ufs-phy
> +              - qcom,sc7280-qmp-ufs-phy

Please keep both lists sorted.

>      then:
>        properties:
>          clocks:
> --
> 2.17.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
