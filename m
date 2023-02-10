Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 742F8C05027
	for <linux-phy@archiver.kernel.org>; Fri, 10 Feb 2023 11:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TsQKI1m7txPnOJH0dK7viLxiBl7aYbIQRQjNO4FzCVQ=; b=zGSF6cqKMhBnxL
	uWAumShXsp5jZV8j/EttJQW8MAbXRbWpQdU2WH0FcIqYs16WAcTlYXvBVClqUqeIVRW0k0ke5bUm3
	6SodcKvafm2uMlf6Ctiu2CDmELA/n8uM2JtJRJXryJlipCvskQ52EqxthMYVc4Fzc3LhEn6Ykddjg
	2i71S3TrkSClkrlRtoB+tEI7w2wnXnX5WEpajBmXhR/LOnLKqPksnFd0jz0K3EhFkzMCzHsRCE+MC
	HRhC6gn9IlHBCImNLuKYlU4T/2nG9MGxbynbmW3z4AWgHIPq3UBP6nStoek9I+1gBXk94FKJCuhFW
	u/APUFhzuSRfQCTxFF+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQRof-005XAK-UY; Fri, 10 Feb 2023 11:43:45 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQRod-005X9a-Gu
	for linux-phy@lists.infradead.org; Fri, 10 Feb 2023 11:43:44 +0000
Received: by mail-wm1-x334.google.com with SMTP id z13so3629031wmp.2
        for <linux-phy@lists.infradead.org>; Fri, 10 Feb 2023 03:43:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZpJmB+ETEmIvVLEPcQCzpqfP31qhd1j/4sBxO0QaEzs=;
        b=dbdZNnwpGU6CqMUBUuO0dM7pxm7zPSFS4kfdvqDcT2WKSuXt91QGQHb7Xf5uCMhaDi
         fQmS64YvYzR+LutejL1ndam6j1BJB9zvF/CTUe0LkhIpsGJ7hazQcltCiQ9YdJPfI6Zf
         XpNUEVdJlkSINo2ZMzEo/99z1W0B6B4KygKJ2LNY6s47j6avOgd5SW2yvJa+1iJ2EOWd
         9jFwz5ZwwVPmQmr/mgrizJOjKjGRox40gunUNUYqnKpGDFvnf5ujJ6lgGpCSPReIby7n
         30gn0HqB+1/Gu8Rqs+dKyPs9DEVHsPOq+dxqT/n/kTGwnP/80WWgQSpASHF77dZljlzE
         G1PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZpJmB+ETEmIvVLEPcQCzpqfP31qhd1j/4sBxO0QaEzs=;
        b=iz6fW3YhhkcySJQvjlPdpAdiLpLI2yu9DCRC5MiCFPMlNzFPn3h3QgijRJYNYWfhql
         oyGtUSnRMFk7828OrB0MPpg5NPV/ttoIEpKqE7qYz//WLKH2suiWv8xI/EvLLXVwB8iW
         biE7K9dmUUmwBJMqdU4H3Z3yuIrxvesxw2lt5V7kx4KnZm38rDjKTbrAcG/rpViSrQeI
         jJdiYtD6/6a1yyyePil0rjD8Bn1hI+nK+xAMCK7iuGk0g+fZrijRBtGiiGeHlhipL0Hg
         LEtdnbWQQpVGlo/AG+oKdSMALh1o0kUiqARSnUhmZNrqcUYs77iLhTaAledhm1NTilfq
         wk5w==
X-Gm-Message-State: AO0yUKWzBC8yS2iBRIxFwoUUrbOSAMvweGjlF8pIMTbGXwSMdp+fnHBg
	QELlDf2BHb6wsik7s426hG2E6Q==
X-Google-Smtp-Source: AK7set+Rco9Ht8woHgwauIhMlB1a7EFxs3tW2SDCkzBKeiLgGfEX0DoqvL34Vr5XVJcp5q4xsxy00g==
X-Received: by 2002:a05:600c:4b1b:b0:3dc:5987:fe9 with SMTP id i27-20020a05600c4b1b00b003dc59870fe9mr13941504wmp.2.1676029421562;
        Fri, 10 Feb 2023 03:43:41 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t8-20020a7bc3c8000000b003e00c9888besm7920156wmj.30.2023.02.10.03.43.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Feb 2023 03:43:41 -0800 (PST)
Message-ID: <8cd6cf2b-834a-bcfe-d440-5c9795cd1f0b@linaro.org>
Date: Fri, 10 Feb 2023 12:43:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v5 2/7] dt-bindings: mfd: qcom,spmi-pmic: Add pattern
 property for phy
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20230208190200.2966723-1-abel.vesa@linaro.org>
 <20230208190200.2966723-3-abel.vesa@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230208190200.2966723-3-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_034343_655361_E1F1A80A 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
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

On 08/02/2023 20:01, Abel Vesa wrote:
> The phy pattern property will be used for providing eUSB2 repeater
> functionality. This will be modelled as a Qualcomm PHY driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
