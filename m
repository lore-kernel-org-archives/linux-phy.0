Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0D2AC3DA6F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Aug 2023 10:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZihqUMsKrnYF9MF1iwUrOCtC9LLhs8lpCTJ12S7m3o=; b=W6UEgF/q1Ul5ct
	xHA/4vlOe6HwJCbKVA8bzc+21cYym0fWtHY2B2zGcuLRfBkobvrNRbLTM7tHJsPXTIqL+VWoSJRdo
	NJHLO8GAgZyJQ3Kg2+fpTfuPNrpnUT+1xPFnv9iF6/uesCHIyE/mj7L2xd1Hkks2FWiLGTRhrLRgU
	qv2hpW7N+YIGZmLJR28PT5S87pO0sLPY4BuAO3aWxCiQNM2GBW6SMw/gv7Z0GGpfDIBr6YknWVjVj
	5IaVkfX9givrpXIOH43iWTXYB1WToQo9KSqK30m9EpNLYRFFmqiwQHXS56mqG87Xlt4lrGj17srNc
	FkyFRWqc+t4gUgg6bKfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZUB3-004pX0-0u;
	Fri, 25 Aug 2023 10:36:29 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZUAz-004pWf-2j
	for linux-phy@lists.infradead.org;
	Fri, 25 Aug 2023 10:36:27 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-52889bc61b6so1211481a12.0
        for <linux-phy@lists.infradead.org>; Fri, 25 Aug 2023 03:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692959780; x=1693564580;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HnnnISbb0TpSgVVoJ28XkZwpDRboyHLlXiKPbTL7hTM=;
        b=gQr0rDQubo0vt+T3kQEfvxXbYnO3u4tqp0eSB/24hKCYPMIhgi9Hj5Mc5o8DTuoKVf
         Urn+u3CN7WT7D+x3JqxgcJxsq6VUhd8IZ6i/bbi1ORWxyfGqXDJP27OwvAnAkXKM6CLc
         aobuvdLeKwHlI6wP1tagEijCFNxgEl4iNvzPhTb2V5dyCIBPMAZeeHW5Qxd2BXOEr1pL
         NDZDobQQt5Bf6x+ZRZnagleF8aMj5TO3XUe/T5foDC6Vua0mNlX5BM4BNxDQlgHawnCR
         EhmYsTRzCqAPo3JCtgoe6H1BV0W2o+kPDZZQkHZluFEvXNKuXgEDMOEo+7QZ7O4UWt5F
         RXxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692959780; x=1693564580;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HnnnISbb0TpSgVVoJ28XkZwpDRboyHLlXiKPbTL7hTM=;
        b=cbtKE8iwamN0zronmOp/9gmWZok83eRjoG9UxIQNsjnBL2NvKwKClm2a7HjdxcF4RF
         tJcISLXW5Gt0yh7R3VPER4eMrfixvwr+0krMYtnAS8zm/gSPtVexs9TEsblOeQ/+Cy8j
         rvXtBbxVHLB4DapTLnuvS+MQsL+aoU+VpDO94xbWB0x0ke32RFGhmzIsI79mq2dZp0AW
         MvhYt7w8J9I0U1Ilx5c9ZG8hQwjIVDiXEVqu6lVoejzzpSqMD0ytzr+jiTb+YwjI0uOa
         DY0lf4n9UsaY6iIMk8CNqngG07GTijO7Q1/bXTZg844nL6ayh7pv+XbTNKFxt0bcjgUk
         03Dw==
X-Gm-Message-State: AOJu0YwLsHm1YDgpRx6clZQ0fyy3WiaJiLYbe6KQuNUnQsO6uq+lbMPh
	wGEs4AK/gDptjXE0ejuZcZtZQTJFJbFPhFwstTQ=
X-Google-Smtp-Source: AGHT+IEBSo8fqbVupT4baEDRXyQBUSAT9CmB5VJ/QCzRSBh/BQZlcPS9Pv24c3T722NR4Kf3psq9dw==
X-Received: by 2002:a05:6402:658:b0:52a:1d54:2530 with SMTP id u24-20020a056402065800b0052a1d542530mr7509242edx.27.1692959780184;
        Fri, 25 Aug 2023 03:36:20 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id m15-20020a50ef0f000000b005254b41f507sm867671eds.32.2023.08.25.03.36.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Aug 2023 03:36:19 -0700 (PDT)
Message-ID: <24113913-7756-6d9b-70a2-aeeed9ecf4e7@linaro.org>
Date: Fri, 25 Aug 2023 12:36:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/5] dt-bindings: phy: qcom,m31: Add IPQ5018 compatible
Content-Language: en-US
To: Nitheesh Sekar <quic_nsekar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, quic_srichara@quicinc.com,
 quic_varada@quicinc.com, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20230825093531.7399-1-quic_nsekar@quicinc.com>
 <20230825093531.7399-2-quic_nsekar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230825093531.7399-2-quic_nsekar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_033625_932386_E617C2A9 
X-CRM114-Status: UNSURE (   6.35  )
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

On 25/08/2023 11:35, Nitheesh Sekar wrote:
> IPQ5332 qcom,m31 phy driver can support IPQ5018.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
