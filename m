Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E15D4C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 18 Apr 2022 22:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VV2Hm0JJRgBeAz1EJibzIQ+lgA4ZPHYRToHZ+AJDFE=; b=K7OQ156mK864Ht
	M5Ox2i2nZwNAh6WBZex0hNsBrL4f9ZwNVPfP2V10GnPkvuz3ggMH6Xfc5z0dMQF9HIaxS1di+hWme
	lXjKJQIhIZVQrpg0UWDz2HxMXNi8Ih+fY8DNBfkOBgsa43Uj9hoDAUOXCaMb1xQGjEhpomsdWl19f
	Chx2oaVClCaY5y8ONYunScP0IZMOW89Vv9CPD7XQHjl1hRuohXe6vO7iV66eXPHek8yCg3GsR9vgk
	OaQjkjQUGLDgC2nURhHqjXsx9h42X+CMNmTVvDdn0u3sTA8fzoQ13SnNaVbt9WrFjMN9M03wWBys4
	Ns5MzH1CsPGuyjQGpL4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngZx5-000jJq-KI; Mon, 18 Apr 2022 22:34:35 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngZx3-000jIg-1H
 for linux-phy@lists.infradead.org; Mon, 18 Apr 2022 22:34:34 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id p65so27957860ybp.9
 for <linux-phy@lists.infradead.org>; Mon, 18 Apr 2022 15:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K4bp7iL2yyspTqvnvsBL/XA5iBMINfoj3Y9MqEf5ias=;
 b=XdZ6lm3r6iGJEWoX2xq3dAAIzSePIvfMd+0qhDZi9Eu+cByTIUZXD8xXzbt8FjLMeX
 kJ6OWM/IMrZBDIfcG3ZYOoSufnV9NFcdStTZZEnaPQ2yF5n+QHyrigww7uw2R1k5qRqF
 31x27LkiOOsSxvtf2ai4WlCSF+zVPTv2f7Byz5gr5r2HAnBN3i7QCvHDDPEhx9t5DD2W
 w23OW+bllYbf10kRb4nreZ2LQyFYreVyTeRmCLeW3Tl9vVQADUjuPpvVy12e+ROnaxeI
 yvFXGNxiGQLhaKKLz0wnxTQX1YDlAKosP8us1rlaVKrA2hD5yPjZ6JZSPynBk2cuhREs
 IAeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K4bp7iL2yyspTqvnvsBL/XA5iBMINfoj3Y9MqEf5ias=;
 b=7EOAt2LfeIR+bVcog8zO7B79tEc+xAruZsQkNRnygu20XvQg1ldSl+WgUrLmNUWB1T
 +az5pnF0qJ9EdP53kq8i7ryRQFnthczguxBV6pPQn4a8/i13qUVH41APVG7fRKrogoYm
 rYubuH7N/YsBTjwFeVkBaZcmRy9wsPzPYjpXcdV1J8nULwnCZtKICRIPjAaNvXZwwHoY
 K1/2RZWJKvAP9GdRIX+cQ/U2RGnPsuzAIV2PpM/b+M62KJzgTGAvQalj9QnXF5psXAfk
 k/zEhnuWfrbGSWBJXnxjB86pUBAiJVZPzAkdOLDHkDY2O24WZ+G9nwMdRZWqXZWPMKDF
 hKhQ==
X-Gm-Message-State: AOAM531iR9GMpeOK/6fXmKurF+j3cYPdMNOCSVdcn2pLVkSrP67QOtHG
 RhyXObyvPA+a8b12JOaWMDWwunoZlBJ9JRrA2rIA8Q==
X-Google-Smtp-Source: ABdhPJwpC2AeuDc6EDutWUIMPkpQ03faH9GU9Uc9JsUqK7xQEFvl1zcCNPXqdBezv2UU/sFi5kHmUekjVpiyAfONTkI=
X-Received: by 2002:a25:2e45:0:b0:642:875d:c9a5 with SMTP id
 b5-20020a252e45000000b00642875dc9a5mr11488600ybn.314.1650321270240; Mon, 18
 Apr 2022 15:34:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
 <20220418205509.1102109-3-bhupesh.sharma@linaro.org>
In-Reply-To: <20220418205509.1102109-3-bhupesh.sharma@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Apr 2022 01:34:19 +0300
Message-ID: <CAA8EJpqh1pTfNR2Qd7p69i4VvqPNtbd5gOjO-TYdWTTG1rKrrA@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: qcom,qmp: Describe
 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 bhupesh.linux@gmail.com, agross@kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, robh+dt@kernel.org, vkoul@kernel.org, 
 bjorn.andersson@linaro.org, Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_153433_178807_4308579C 
X-CRM114-Status: GOOD (  16.77  )
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

On Mon, 18 Apr 2022 at 23:55, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
>
> Since a few boards based on QCoM qmp phy use the
> 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties to
> describe the ufs phy nodes, add them to the dt-bindings doc as well.

Ugh. They give a false sense that they are supported. I think in
reality they are not used by the kernel.
So, ideally, this patch should be accompanied with regulator core change.
Or (better) drop them completely.

>
> This fixes the following '$ make dtbs_check' warning(s):
>
> sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
>   'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of
>    the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Vinod Koul <vkoul@kernel.org>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index c39ead81ecd7..411c79dbfa15 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -90,6 +90,14 @@ properties:
>      minItems: 1
>      maxItems: 3
>
> +  vdda-max-microamp:
> +    description:
> +      Specifies max. load that can be drawn from phy supply.
> +
> +  vdda-pll-max-microamp:
> +    description:
> +      Specifies max. load that can be drawn from pll supply.
> +
>    vdda-phy-supply:
>      description:
>        Phandle to a regulator supply to PHY core block.
> --
> 2.35.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
