Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C46CC3DA78
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 14:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tcALNFc1ALX4U+egfWV8U778TT36/rHt3JWcKRe4NH0=; b=wDjUxCI0gskhHI
	vZs6d0mLs23Ei9fHgjbbz1C7lm9HKNdemns8DOU+Tzhcp7kC9V9KX2kT6FZZMscRf2ZsYcEFVulEA
	hIlNR90E/qCYEEC/y2Ep+QL947pQeMapzhh2yPWnJ9BLcQ7bub93qM8pTguJNTaogYop7dbBl1U2l
	cEthSAgOwu9TkXkHb3ygi/ttRRQHd9bYM0WdaA4gX0qD3QXLh27JdMF1gloegYPR0tfA953jwGiDe
	2NdHUBHkiLlucu+bktXA03boDKCc0jMbBQFFmKkxSSO8ajjzUgWNhORsNyGjsXMPnI17qexicxqK9
	ZFJk7ik1tHJB2l9oeDKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmeO-00EYQA-W7; Tue, 17 Jan 2023 14:09:21 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHmeM-00EYOn-2Y
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 14:09:19 +0000
Received: by mail-ed1-x52a.google.com with SMTP id v13so11118946eda.11
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 06:09:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8lRKNEyZBQ0MEz5uWRwQDY0cEHSnPNZLloQPoR0gCIA=;
        b=Ocn4aUWP4m1u7SHcpx51JCkpswLgA9s1SPQ+8kNx8RMzL5jQL8ym9RHgpIqoauuWr3
         CumVoCg6SU99qDrSXSCy0+6uGv1Xmq4C+xvNC+NuHoGKjHMmGjC1gB65fRZXelVlJ/DU
         OEvy3SokQBpnk/vNiwM4r6j9hMLLBwCjSYUjmnuCEWaCgeGmgR1PROeq5neCTNBwJcsQ
         bfxIYrAM8xZVQi9ffgEEDGLzx96VXF4L0qULKwE0TZQm43c4wBXeMwn3Q6ObUbFh2AhG
         Z8Zp6A5Am/98qXzJM3Amna0xRaIk1oPXPcN/XnqkLR8dXoPnt5WyQPx9/0vI8xyXe8Tm
         20IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8lRKNEyZBQ0MEz5uWRwQDY0cEHSnPNZLloQPoR0gCIA=;
        b=YO8yXlbREZwSZiBB8jZKKp4E+PdEa0gHZs/Ujm+aIcteCHgVBi1ELK48nzo0ovEjWM
         rjcOMxzLHB8xr2UdbiTATx/aZDuz3glO4tkrvZp9CYPxbg2h55laVsZeb7mKpGsJ/DKE
         kKnvrktYQhn+66w/+4Ne4QRVQUUQpyO/5uoovlTM8+Sk9XT+U/zQwvAm+ISbk2ivI2hM
         umRe1JfMMNuCA6EEwO8OdTHMkQxg2cznmHrkKf8zuPHO60srkNsOcHxsLm9LgW2vyhoI
         R8weNEFX5bXcbZVO3LWUe5+C4fflqvL5atDqc1e00hU8JhEyCSCcHkqLGtmD8PttSKae
         HJqw==
X-Gm-Message-State: AFqh2kq5fJYDVAAoCKyFoiVHDWYKqiqSuzdHU2Q1fIYHDYzMeW7Am7I2
	sO6ADm6h+Eut+GhJSx/nFNjFeBeR0+v7uzhM
X-Google-Smtp-Source: AMrXdXvxKfX7GGtuIFRDSzek0Q3sa3LydURkvRpFoLSK2KCXpzVuXwChigb90MTDqNsP6enNLybzKg==
X-Received: by 2002:aa7:d310:0:b0:499:e564:a1c with SMTP id p16-20020aa7d310000000b00499e5640a1cmr2544846edq.11.1673964554809;
        Tue, 17 Jan 2023 06:09:14 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id el14-20020a056402360e00b00458b41d9460sm12376641edb.92.2023.01.17.06.09.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 06:09:14 -0800 (PST)
Message-ID: <33eda50c-c70f-1bb6-0917-22b6fdb4a2ca@linaro.org>
Date: Tue, 17 Jan 2023 16:09:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 1/6] dt-bindings: phy: Add QMP UFS PHY comptible for
 SM8550
Content-Language: en-GB
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org"
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20230117125555.163087-1-abel.vesa@linaro.org>
 <20230117125555.163087-2-abel.vesa@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230117125555.163087-2-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_060918_150434_2C8C180C 
X-CRM114-Status: GOOD (  13.26  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 17/01/2023 14:55, Abel Vesa wrote:
> Document the QMP UFS PHY compatible for SM8550.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> index 760791de0869..44745a5c64cd 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -17,6 +17,7 @@ properties:
>     compatible:
>       enum:
>         - qcom,sc8280xp-qmp-ufs-phy
> +      - qcom,sm8550-qmp-ufs-phy
>         - qcom,sm6125-qmp-ufs-phy

Please keep the list sorted

>   
>     reg:

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
