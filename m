Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5711AC76196
	for <linux-phy@archiver.kernel.org>; Sat,  1 Apr 2023 19:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYI5wcY6dGZBhhUNrJYJ92GhuK9h6862432XVPulKWw=; b=2TfIpIulKLITz3
	sUxO5YrgPrXEQGIYTzeS3daoPLOjtKSOuedcZMiQcv7C4Jhzf8ymarU1wu0vg7GcZB9DChLz1MLke
	YvOUplN8g3whyTt9Q6QLaDQ5Uqz89bfO4Va5aQFS4qVVYVhVradH8xhYZOkJRwzI8VeoBe2MgzqsT
	Izw8aedT29yYwsaGSVvfPEtuViHef93yLxDOBX/mMRRew99eqWu9lO9/KmTZE2TiPpMKz5xyHaQ1Y
	xNwWcNciMLqi9Xm3+OdM8UIdCvy0OPnTtFgDrUun9EFBkHdnMRxDWPwTvoNIwRrVmeyzSC4d/R8+M
	4qSXD+SdEyyQiSe2h3QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pigoh-00BCS0-2B;
	Sat, 01 Apr 2023 19:23:11 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pigof-00BCRD-0K
	for linux-phy@lists.infradead.org;
	Sat, 01 Apr 2023 19:23:10 +0000
Received: by mail-ed1-x52f.google.com with SMTP id r11so102536611edd.5
        for <linux-phy@lists.infradead.org>; Sat, 01 Apr 2023 12:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680376986;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SxubnhYm3jfKN0Ni+OwaWHmeJgo11h1uYRx+ExBZagg=;
        b=dxGgfjhp7yW18ErPJ6AtgVqAzDIKJQBiQp9bXFdKCfFwCnISVqC8opflw9rCXmYjCd
         RLa7u/LNPZ3qjvkSDwON62jF3LJF3iM3o1GDWaeD2p/O7fMXIVkorf+x88cGetUPpAXV
         uqjRltcX9nI9LNhHjEk0yecNraB4BT4OojWFICsI+qH3rg0K3pETyCX4KPt71KMeeTxt
         9azGohH0AfqtLIRSozBJD6lP0J6+uIUj3ARQXF03f1BK18qNjVPs0FP7JcnYWRXVyC7O
         VeulW1gwCXuA9MtxFyZmRJOJdNV0E16wE+limzxOk7pnJL4SoKAnVaPKh5TqYiQcPl2U
         CWpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680376986;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SxubnhYm3jfKN0Ni+OwaWHmeJgo11h1uYRx+ExBZagg=;
        b=XNW612fnBJNf5+b4hvhu0erSEvPafWtbH/RuCkeDH+CTgqtLjE5dzd6se5OZ+ig4Ls
         2cVc5kN2gsTgPM59tdpn4i0IIBYiSVDoSqdiQ+fUbqLX+g/fkCAYTYDXAv64oLJ6sWA4
         wSvBWJDDUFfLViA19nBp8SNtmBhiSb2YP7Sa85ZKKDlNCklNSvmTrcTIUICESzy57O9W
         YP66D2Vfu9bW7YZxCtaXIDA/9DNQ5Z3CFynZve5CUulryz7L5Ykt596LKKnxy4uWzFfb
         nqmJcfqEmNxT89rHxhRe/CWUZhWPoX2MOotOzDZSTPNrVB3ArKVhKnsKx63emG3fU/KK
         49PQ==
X-Gm-Message-State: AAQBX9dcs1mz3krn7wAdQ2t5fJbqBB+gmx5bmQJBJxRm8RdqKO/OPt06
	bm7quGyAz72H3e3nw2S5fe7U0g==
X-Google-Smtp-Source: AKy350b0NXjR/U8vfwo3A5JtmgyMjcISvzCcUb2nQvie/SWSShZk997o5fmaRBVBxusyDmayNttG2Q==
X-Received: by 2002:a17:907:2d29:b0:8fa:b2b:9de with SMTP id gs41-20020a1709072d2900b008fa0b2b09demr38707076ejc.25.1680376986626;
        Sat, 01 Apr 2023 12:23:06 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ec00:3acd:519:c7c2? ([2a02:810d:15c0:828:ec00:3acd:519:c7c2])
        by smtp.gmail.com with ESMTPSA id d20-20020a170906c21400b00947792df079sm2385584ejz.115.2023.04.01.12.23.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Apr 2023 12:23:06 -0700 (PDT)
Message-ID: <fdfc3914-ea61-a281-53ce-7271fab61dad@linaro.org>
Date: Sat, 1 Apr 2023 21:23:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/5] dt-bindings: ufs: qcom: add compatible for sa8775p
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Manivannan Sadhasivam
 <mani@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230331195920.582620-1-brgl@bgdev.pl>
 <20230331195920.582620-2-brgl@bgdev.pl>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230331195920.582620-2-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230401_122309_144163_00CEF6DC 
X-CRM114-Status: GOOD (  13.11  )
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

On 31/03/2023 21:59, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add the compatible string for the UFS on sa8775p platforms.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> index c5a06c048389..4abd3c0950e2 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> @@ -27,6 +27,7 @@ properties:
>            - qcom,msm8996-ufshc
>            - qcom,msm8998-ufshc
>            - qcom,sc8280xp-ufshc
> +          - qcom,sa8775p-ufshc

Please keep the alphabetical order (also in your second hunk).

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
