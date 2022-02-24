Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BADD4C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 24 Feb 2022 14:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbs+Z+hVFBZHAsDnkNQt78l3uwGdEtJqBwo2G2M246Q=; b=cSJpVwqwzDgylv
	i3Gb1V4qRQGzHuq5oStVdb3xcPD06ZAUK332YcrIc8X27pzqMfogN7Uv7cQ3iuSKIe22h+h5GiiA3
	CQj6KRJwWbqelEEdAdSeU+rtnX3I8/ck84POG2UeNUqoXibxcyyZu0ElG9Z14hibFKiPEuCSKEi3n
	Tob6ZObCu8t2QsbeAlLuRf8HP/qTaJa3XqHGPAWXQ6sZs4qS5J/+2lVCMHIm22WGtmu1PiRzIh/AB
	UIOsnZFEPQIDm/KhxnIvsNW6FBvbS+gX/X3lmf8GJqnpegyF5xHTNV5oin0TY04gNa71II7fhNnJV
	U2UBOpdaO9uUhlTwbWfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNFUL-001AUX-8W; Thu, 24 Feb 2022 14:53:01 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNFUI-001ATU-OX
 for linux-phy@lists.infradead.org; Thu, 24 Feb 2022 14:53:00 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id fc19so3912249qvb.7
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 06:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tI8CvWg+ssaQJOFIxe9Ug9FFFdfMXmAocHJte6H9sd8=;
 b=L+2YgQH+bKNqze7jBfAY65lTykr+fyqXwFDfq4qmu87DLjRqZShxhlIhZHzUudkU8H
 etIUeZYJweFhWZrxn+YWHuJYij9oGbnZIG2HCtkkGT/XUeUimOaHjMCJi3f/VpvEePr6
 zntfT9yIfCBvSOUEmsPIYussYZzW7EZpe/C0i/CUYTmDq9GGyHKg8TRRmTmtszJUShyp
 e+PBf8Otcyb0a/mJM9AdMp9LmtVAxYpqg+AykkEDeCnqxdyGsbHvIa0Wat6ydjU31jQO
 t7xo8T4J9EuwFJ/x+xNNOsiDjtVYtATHzx8hrJqyObtjG+Gb6ejUgAjYguuXo3Mv4+dx
 JcAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tI8CvWg+ssaQJOFIxe9Ug9FFFdfMXmAocHJte6H9sd8=;
 b=zb8TpCx8hzACnlhfiDrNSNEslT6fMp0PWY/4BGljnUbWw9Nk/sSUy9/7uNRsrI53dO
 aLWarvBK3Cy56A0QmJ6nJkpuu4khXSjBi4rn/i+O4KH1J8es0fthsBGGrEffFysqfpeQ
 LyfynbSMtyqqCKWxX306klSiIqIucA8k0h8cKYngzhWgknJk71TjtlE7D2PX1d28mSSx
 kFUCcgDXk6cH5MOhPHPYtJVJtSqBQHpiBKzgV0fekgwTyd1EOxZt11t5stFpNO+NJQd+
 xVVPtJbzTVq/BqJW8KKy2v/Xrt+NVa9K1z/Ll4QApM8ny9QtIzAbcDGdipppJVkAMPfn
 V70w==
X-Gm-Message-State: AOAM532EwMqM80f1O8QhDBuvpLRE6l2KZI+IY2HxLU+HIdN9GQIzYkDt
 Xh7mXX21z1zGK7iQNtvJRvPdi1JNc/gtw0tT5GRQmQ==
X-Google-Smtp-Source: ABdhPJyipTRKZTc+dDLKioP00ztl/m1yyc6CIiZX/LXNRpWTBXH6mmehjqQNSw5u2Ap+TGvrEpB+JURvzQCFTP3QfT8=
X-Received: by 2002:ac8:5cc9:0:b0:2de:8838:5888 with SMTP id
 s9-20020ac85cc9000000b002de88385888mr2646241qta.370.1645714376485; Thu, 24
 Feb 2022 06:52:56 -0800 (PST)
MIME-Version: 1.0
References: <20220224123248.67073-1-bhupesh.sharma@linaro.org>
In-Reply-To: <20220224123248.67073-1-bhupesh.sharma@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 24 Feb 2022 17:52:45 +0300
Message-ID: <CAA8EJprRgsZRSXBQumveAn029j+w6xO8K2kZUO4rzZaefuYe7Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom, qmp: Mark '#clock-cells' as a
 'optional' property
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com, agross@kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, robh+dt@kernel.org, 
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_065258_826822_CF5CE1B3 
X-CRM114-Status: GOOD (  16.54  )
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

On Thu, 24 Feb 2022 at 15:33, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
>
> Since '#clock-cells' is not a required property for several
> QCoM boards supporting qmp-phy(s) (for e.g. sm8150, sm8250 or sm8350 SoC
> based boards), mark it as an optional property instead.

I believe the description is not correct. the clock-cells should not
be used at all, so it should be removed from the root node.
Also we should describe phy@ properties.

>
> This fixes the following '$ make dtbs_check' warning(s):
>
> sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
>   '#clock-cells' is a required property
>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index 9e0f60e682c4..746a929c63bb 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -115,7 +115,6 @@ patternProperties:
>  required:
>    - compatible
>    - reg
> -  - "#clock-cells"
>    - "#address-cells"
>    - "#size-cells"
>    - ranges
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
