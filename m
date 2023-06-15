Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8397AEB64D9
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 13:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LCh0V/gHpFsi3TCM5NFQSIcHXPh94b3SQJL3ICwNm6s=; b=Yhgv75Ywmgxxlp
	8dvDx9UMhwr3tOTGgos4M3teuZUqZAKDkx54tbTq+jOw0YbhK3GehWVYCJXVfOYd0+dh80FFVKdN4
	YiXw5j7xImr8xMHUkn5CqsFZib7osyV7/pgE17GGqBSxVukR9BUTp8TKWkZ5u7A5ZFvmxgxvpd0a3
	b/mH2KkuVYupHJBjXMhas7SL+v9NopuaQjfw+tK0mIxkJ2v16CNrjvtD005UC+jc0eqy7F4sfNPEg
	5+dqK82kLP5l0Wa17ubizuDGniuvQ3WhGoMHDiKsAAfSpBuPsw/joRtdOAktHOefJPX7NRSs7Ds4d
	xCUeN0bHEfvmzIfqfboA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9nAS-00F1qt-0g;
	Thu, 15 Jun 2023 13:37:40 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9nAO-00F1ph-0e
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 13:37:37 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-970056276acso264615566b.2
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 06:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686836253; x=1689428253;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mYo4mo9LxJ5Bb1u21M6AxJhHfaaBpi4Yfj8oS2RZGik=;
        b=gwnpCAL+9XD9YTcrhW22JHHze+0ln59G79fG0PbzPCPkUume7cpPMe9N1MpVazB8T0
         1VNcvHhrMsDbjcPaCwwELzdmSj2CInEWwxUmLYNOwRUXECqbkD21NOCA6zL0LkId1xTe
         Jmz5KNhEGQlTF8AQJe7uUwDQ4+pi/99NutlpmFMGKD3/SppKORWaGtI+PmV14ZbcTUXg
         SQ/xFGrRUrJug8frUn3FxCFoHdEvGjOv0zxfZtED6wTv76W+YYbrOe0XjczsTNc6FnX6
         BTbrSi6sWw9Hr8PLExxfqiIVT6LsvR3Q/5vN6OlV0JnK2Yv0FbMnNpMYEzZJu4bCBpMD
         RaPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686836253; x=1689428253;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mYo4mo9LxJ5Bb1u21M6AxJhHfaaBpi4Yfj8oS2RZGik=;
        b=TSX/sykDadAbQ+P1aRqGiM91evas+22z3tq2rRnKogu4g4qnqbU0Y0yB23ofjykKMu
         FRX5+Q0aw1CFiDGcf766xnYMyTY02kyIAUfWwhYeuJRFzhzKfhhuzn7La9nwe/3rTuPL
         j0amOl4kNb0wvIH8hCge9gn+BTVngcuZo2+153qu6mwCxRs7PD7yf1VCy2pV9wjgs6/Q
         HfOsvtWyX1XBkeqS1zTIXLCu3X4rAj7xH6uoz1NvCC4Yy4YjfNnVFFfYNll3eBlLxAqv
         /DjD8rwZtWPIv6L2EkA4Jtdb142ZstkK2Q28kKmzMUuN2Q/Nma/bQNGhQZ/HCMtQpCEH
         2+ag==
X-Gm-Message-State: AC+VfDyvQbGU32pVv+0vlyVbUEQxtur8HBBA7qOK3e3hRyBe+W37CsNa
	1sKfumi4h6RXMidmPhbSMfVayw==
X-Google-Smtp-Source: ACHHUZ4+n13L4jhgYrrrc4ptTI3RmwMq1dwvCZV4MDbjtdu4sLMN7fnVBOOcDFGxP2/w6+shDoBlfg==
X-Received: by 2002:a17:906:6a07:b0:982:a376:1d3f with SMTP id qw7-20020a1709066a0700b00982a3761d3fmr1542823ejc.41.1686836253221;
        Thu, 15 Jun 2023 06:37:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id d23-20020a17090648d700b00982c84e5dadsm196414ejt.170.2023.06.15.06.37.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jun 2023 06:37:32 -0700 (PDT)
Message-ID: <b326151c-24ed-e603-d1c7-3ebe8dbaa6c4@linaro.org>
Date: Thu, 15 Jun 2023 15:37:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 17/23] dt-bindings: net: qcom,ethqos: add description
 for sa8775p
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>, Vinod Koul <vkoul@kernel.org>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230615121419.175862-1-brgl@bgdev.pl>
 <20230615121419.175862-18-brgl@bgdev.pl>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230615121419.175862-18-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_063736_238573_99752EA7 
X-CRM114-Status: UNSURE (   9.77  )
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

On 15/06/2023 14:14, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add the compatible for the MAC controller on sa8775p platforms. This MAC
> works with a single interrupt so add minItems to the interrupts property.
> The fourth clock's name is different here so change it. Enable relevant
> PHY properties. Add the relevant compatibles to the binding document for
> snps,dwmac as well.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
