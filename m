Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85689C83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 17:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTt92IrE19FBoeAgQuPJYofiSBlXKdygxRXsiV+2APY=; b=lrHa5X9Qllkvve
	jdL3I1kJwLnyvM3A9VMhOWChAsuhRSxBIlBVFMcrD7I+o+BeSwcsYsanQKeRxei/+AVoda8tigERo
	krv1c6gYFJBegwR3iagFe01BBVR/+pYilD0PvAo7w1K7U1QEGW9hnBDV7ktE+z+eeE/M9h6yq+bTk
	1jNgzBTvGAy7GrDHEkX0AxbqEMXRXehrZA9zs9tGSbecLdJuJqn3nsaav7zs//U8m0zGEh033s79F
	w23ILiZ1D/+7gIbP4UrSMxR3pD9hCzDbsPfL5IyKCmaGrSOnNDI0VVHlU6qwOPVI6li8LnhShor/p
	On8eb8fmcBrsIbRZThbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Cu-00Buer-0v;
	Tue, 29 Aug 2023 17:08:48 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Cr-00BudO-1B
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 17:08:46 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99bc9e3cbf1so354366b.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 10:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693328921; x=1693933721;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Y6xwhXZeIWCEXZ5vr7dzE9G7VScMJ9tEufwZ22ual4=;
        b=ozq42sOrus8s+QMO4NSh1vtz+nHirPwWGbxi5qYgBx+XhrDq2ALaEsNKHws7toBrFx
         jkqYdbMuQXHMTwRshBmPUbmwwQaox0aHmb82gBbDiOavYFrWjKb1l8tZGJTt45LKu6Kw
         lV0apf1CkpqTzW4D48zIfek/TFTo8yDqjlhUiVUXi7a8Jh50VSx4l0IWac0SViiFPceR
         ko6j+yPFyPQI9N+Cx/6AL5pV9le7Q5L5F8XvgBtg0XyZ13Zr0VRpOG8kmVMF4U8FW7Jk
         mRMPHpSawyd+HlFezW+LxUNzo0mwkpL5+sn0PPmEUudjEA82ATFRESR+XB4Wl1nvKhOr
         qebw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693328921; x=1693933721;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Y6xwhXZeIWCEXZ5vr7dzE9G7VScMJ9tEufwZ22ual4=;
        b=PErTDO7GKmA+ocIQEgzGFCHlrm/zg6ZHEKFq7IrE4kOHDkCI5LuNxHjqJnzbG433jg
         5YzMAB1tfUjtKnOMBFfef28cpH0GDFm+cEsVmqVwEuozi0+bSCInmuieB1Z2Bo9aXvzJ
         mHAkCzWcHdm1YG6K6kHiygipTgxRGAkDvx0iJoaULYpAUTg6nxAviPDOb8DLOGEtfCDi
         HIPvpTzehWEQxzWasNFnDvn2XKARP2FfuvIyikAAKOMFtonOCdEkrUPMafbqfkbmrPEf
         QOiVPgJsBGGXrPHcQLGYp0G0pj/PefW+ujMqypa12avoQakGXZux5DUU/f57Uh2guj3l
         37EA==
X-Gm-Message-State: AOJu0Yxg4srFWO3RZZg4KkGL/9V3vrce+m2QYxjy733pgfKjizuOPAAA
	vqFTXGIFEo+kHl/fTOI2oeolFg==
X-Google-Smtp-Source: AGHT+IGR+OgfkxR/pvgIU4IfhbqLmZPUFloowFJ2WgFHwAD/wIDoUIxefynrgHh9HHoOQH0l6a8GqQ==
X-Received: by 2002:a17:907:9051:b0:9a2:474:4aa1 with SMTP id az17-20020a170907905100b009a204744aa1mr3352763ejc.10.1693328921676;
        Tue, 29 Aug 2023 10:08:41 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id x8-20020a170906710800b0099c971ba285sm6143766ejj.5.2023.08.29.10.08.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:08:41 -0700 (PDT)
Message-ID: <17e2413b-6d06-a113-e35b-30cc078a6e83@linaro.org>
Date: Tue, 29 Aug 2023 19:08:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 4/9] dt-bindings: phy: qcom,uniphy: Add ipq5332 USB3 SS
 UNIPHY
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 kishon@kernel.org, robert.marko@sartura.hr, robh+dt@kernel.org,
 geert+renesas@glider.be, peng.fan@nxp.com, konrad.dybcio@linaro.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org, will@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, quic_varada@quicinc.com,
 vkoul@kernel.org, nfraprado@collabora.com,
 krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org,
 quic_wcheng@quicinc.com, rafal@milecki.pl, gregkh@linuxfoundation.org,
 luka.perkov@sartura.hr, andersson@kernel.org, arnd@arndb.de,
 linux-usb@vger.kernel.org, agross@kernel.org, catalin.marinas@arm.com
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <20230829135818.2219438-5-quic_ipkumar@quicinc.com>
 <169331975886.2142011.7345682428392154402.robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <169331975886.2142011.7345682428392154402.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_100845_406170_F8BC9F19 
X-CRM114-Status: GOOD (  12.29  )
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

On 29/08/2023 16:35, Rob Herring wrote:
> 
> On Tue, 29 Aug 2023 19:28:13 +0530, Praveenkumar I wrote:
>> Add ipq5332 USB3 SS UNIPHY support.
>>
>> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
>> ---
>>  .../devicetree/bindings/phy/qcom,uniphy.yaml  | 117 +++++++++++++++++-
>>  1 file changed, 114 insertions(+), 3 deletions(-)
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> In file included from Documentation/devicetree/bindings/phy/qcom,uniphy.example.dts:45:
> ./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:19: warning: "GCC_BLSP1_AHB_CLK" redefined
>    19 | #define GCC_BLSP1_AHB_CLK                               10
>       | 

So the only patch which actually needed dependency information did not
have it. All other patches have something, even defconfig (!). Confusing.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
