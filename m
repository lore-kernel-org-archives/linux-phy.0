Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7528C742A7
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 08:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVj9un+g9Je28h/MGMnwRFAgEmtPU7/3qkEx7alkKd4=; b=mn6vaE7K1y24p5
	SkoNA6p3rdNkFaMhTxZhPscfebXHre1VtH5hggoliP0+TYV1b6hxvbgdr7aBHZYceFqabROBHdesV
	3IXexlltqNikRrP4/1vqSIiPArsxyNZRvZ7b5CR4jxeY4MGN9bo1Um2hxda9wAMXtZKM2WYhyNnsl
	l53sDOu/HHOPTZrYz7IkRV2pUXgixjEgmErwqAVhc+1xycx0UUSNnYYKB2gwfE+XxHlK2piCmbcww
	FNce489GkXKR9RMmGdh9FP6TeIS4e8ZP61zHXMkBbvL3ltNmpExhmoHo14sAQuBjBzpq24Eh/n2d5
	QvArVfm3z7I/bv5EXpMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paC1P-008eEO-3t; Thu, 09 Mar 2023 08:53:11 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paC1N-008eD3-74
	for linux-phy@lists.infradead.org; Thu, 09 Mar 2023 08:53:10 +0000
Received: by mail-ed1-x535.google.com with SMTP id o12so3995720edb.9
        for <linux-phy@lists.infradead.org>; Thu, 09 Mar 2023 00:53:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678351987;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C/wZHW13/mQxhk8emF0uZdwKLstd4GE6HEzP/De9WH0=;
        b=BG/dRpZ/NUnb1+JWPtygo8p1kSQMRnFW2N3kkWid/xyc/HkSTvmUk9LYLANpCKlu80
         ijlTDK8PShVim5FqfPNEuvWWWlOQWrA5H8sQ8aIU48nfJcHbFNJf29KTMZuo+qQeW7bg
         wBs8egBzAiYlDjlOXI+qwiNk9uASGbvRxSSXVujkHK+hc46k7l1Dev7tCEmh8dErpPaL
         jr9rUJyU36yKdte7YsogC0NVMti0qtH9f5zTxw4vMzecpYwhRX5UA8j91xiswZBuZ23D
         9uG3OR0bxFLXKVCXeyqf67frBAGwLSGKyYGl4TrQHd4vNDHPELSYELIQFaVQzOWMxrg6
         lcOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678351987;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C/wZHW13/mQxhk8emF0uZdwKLstd4GE6HEzP/De9WH0=;
        b=lkK7Y2nSE4rW/iduIbvpUvqXt9AYcGzKlVKyBQ8Fkl6CM1sIlqSoWG5Yt/qqC95/zV
         t0irxXBom8BqR6QYKJOzEbw24VFLhYCXIoNLmKLJoavO+yDkG8RegGk+jYzcJEL/3aGw
         vVy9Jce1xWbcoBrfWQ8uza0YykY7XJrkQ8sLJ+tIBtXL6NXvvEdjll89RgkG09JAiY5G
         hsxtzt9cNflj8ttV2yUfOTf9HVd3JjeBJSGaQjar2u2o+outlk4E6+CQRiidZ/WxOqPu
         nFddStkx67KeAzS2ELGySTZ7zLY8rc2YF2IkUtRhKSjypuqUndcQUTa8QAzgLnnDGFzL
         HgZw==
X-Gm-Message-State: AO0yUKWWHUA5JoI3RHx7RH3jZGYa5jJeEZGWy8KUij2fo7M4hroSHHa6
	rWqQ0DtHhED4ySUtnpYNZ42Pcg==
X-Google-Smtp-Source: AK7set/N0j1iC6/UdLiys36rU0s0N5NOAh+G6YeJK2n83X4YAfEBPymjnqnnbCLmls9KsXDe+7w+Gg==
X-Received: by 2002:a17:906:eecb:b0:8f1:4bef:b0e7 with SMTP id wu11-20020a170906eecb00b008f14befb0e7mr32604866ejb.1.1678351987755;
        Thu, 09 Mar 2023 00:53:07 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:7ee2:e73e:802e:45c1? ([2a02:810d:15c0:828:7ee2:e73e:802e:45c1])
        by smtp.gmail.com with ESMTPSA id s26-20020a50ab1a000000b004bf999f8e57sm9194133edc.19.2023.03.09.00.53.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 00:53:07 -0800 (PST)
Message-ID: <192a29e3-86d7-5592-f9b7-932e07e5f7bb@linaro.org>
Date: Thu, 9 Mar 2023 09:53:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom,qmp: Add SDX65 QMP PHY
 binding
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 manivannan.sadhasivam@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <1678283688-4020-1-git-send-email-quic_rohiagar@quicinc.com>
 <1678283688-4020-2-git-send-email-quic_rohiagar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1678283688-4020-2-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_005309_286919_DDC95976 
X-CRM114-Status: UNSURE (   6.48  )
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

On 08/03/2023 14:54, Rohit Agarwal wrote:
> Add devicetree YAML binding for Qualcomm QMP Super Speed (SS) PHY found

Subject: drop second/last, redundant "binding". The "dt-bindings" prefix
is already stating that these are bindings.

> in SDX65.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>

With above:
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
