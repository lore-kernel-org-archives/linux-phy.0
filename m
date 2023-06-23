Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA057C001B0
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jun 2023 08:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpBHzJ4FfYeKTdtKNUVmR+hI2Yg/Jgivxxe9cbLlV/c=; b=bK6QK1txtbR3Sq
	fDKchoAZuaP9ZhUH4kWQTS+8kX+e1Cvq9gEkHSNQZlUbXywCatnlBZ/MWdDyB43sH563lqMnLfLVc
	mmh7sJRmSnmG35j6e4R6mEukCfPs63sD/1qL6IlPGT7xcob+Izsf6o1vxVmwNxRzC3qKwCm0dva60
	wZLe5mfBVDfGNMe6YNZi3eEDJ9BZpAjFc352R39bIlKgmmv+hN9hDlSyZWLLY0mQrvLAYwVQE2P7F
	6OJgRpkHJM97XJMCrpfsQ2V47kZ/tgCPRUmIR67JlcQ3ViFJ1EsP/IBomHSj5CnuW3kkQafzPl7yf
	EF3qqWKizXGpN0zuuiCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCbqM-002sBH-0e;
	Fri, 23 Jun 2023 08:08:34 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCbqJ-002sAR-1c
	for linux-phy@lists.infradead.org;
	Fri, 23 Jun 2023 08:08:32 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-988f066f665so34907466b.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Jun 2023 01:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687507709; x=1690099709;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mp20BGhs0XvV3lIs6JOjcLuOy8WK9QGNJZoe3Xf5rIg=;
        b=ZuX9fp5CkoOW74bUtib5WMACzLBOIBzsjYDxwjXU9I9gGQqNRjKE38M5lnhJntWefh
         iHTW1LRaKgQ2du1Jbi66pq4vcvKnBuNcsXRBMvdcBXCTOSZjIbsJNrtaBPuhZfN8ZDz3
         LvklX67c+DTQe3DcZI8w+f6dM+bLJhR1bD+wBG7iFTYrtAkdYPKEIRnuLOYDnOBU7+tB
         S/on9kE6OXNvIPDFffB5vFdiUtFs09S7bgv8obp4eCrdXakQ3CcPNXY19FK38f3LvBI0
         b1nocMlVWGiU0I+dsTwIwrRd2TSy9YYhIEQNadlqrfOpu22Zm6Y84j9xnvABM1814kPb
         3oJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687507709; x=1690099709;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mp20BGhs0XvV3lIs6JOjcLuOy8WK9QGNJZoe3Xf5rIg=;
        b=Y760bw0TUIKHCG4OFqYzyKIL8AAtcQreOJQfnLzc6LXMQgQ9Hy0yyDKqsP/51c5Uf/
         N/RAPnFArrl0HkKQS/xiH4lQtRRyZoD41DKFkSG+D8kxZ8PjIEprdC20XTDNn9UZIRvz
         0TAy3IgP+kqNfszLKNSmgK28q4anqe/dEvXlPH0yser/ofocIwQxB+RRUXW5qx/nUOR6
         CCMMXt1nBmEeu9lb1tpU9Ua0FYmQ8EyvhthuwIY7zaidV7SlMaLot6PB84lwL8OkOwEA
         YEr3MQKeJ3cBNw09n8NTVgBAYo2WG+csyeEXZ32E2UNo4JS3UAmzNzwKzdIzbPCIwNyd
         2VaQ==
X-Gm-Message-State: AC+VfDw/fJlhQSz4Dgo9Que0Gpn/ALRuffDotoifpowTz9fo6ZMR65ah
	jAyIlD36izqTzFzcKL/t6ytCnw==
X-Google-Smtp-Source: ACHHUZ4bdgTVBJHUBS8Eb40jSpl9xmaCaFpPY+WUFySk47we5BeGwuNXlRZGzFalcblrjeyGrqaorA==
X-Received: by 2002:a17:907:8a08:b0:987:ae30:4b8c with SMTP id sc8-20020a1709078a0800b00987ae304b8cmr16007348ejc.70.1687507709385;
        Fri, 23 Jun 2023 01:08:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id r16-20020a1709062cd000b00982c5bc1e8asm5644025ejr.114.2023.06.23.01.08.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jun 2023 01:08:28 -0700 (PDT)
Message-ID: <fffa4486-1f76-f7e3-2bc9-21dbe40a606e@linaro.org>
Date: Fri, 23 Jun 2023 10:08:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 2/6] dt-bindings: phy: qcom,m31: Document qcom,m31 USB
 phy
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>,
 Rob Herring <robh@kernel.org>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
 vkoul@kernel.org, kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de,
 geert+renesas@glider.be, neil.armstrong@linaro.org, nfraprado@collabora.com,
 broonie@kernel.org, rafal@milecki.pl, quic_srichara@quicinc.com,
 quic_varada@quicinc.org, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1687414716.git.quic_varada@quicinc.com>
 <4f4136a91b24d3ad35fa12bd19fe14b83da9affe.1687414716.git.quic_varada@quicinc.com>
 <20230622144627.GA1672260-robh@kernel.org>
 <20230623054508.GA13261@varda-linux.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230623054508.GA13261@varda-linux.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230623_010831_559706_F32741FD 
X-CRM114-Status: UNSURE (   9.53  )
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

On 23/06/2023 07:45, Varadarajan Narayanan wrote:
> 
>>> +
>>> +description:
>>> +  USB M31 PHY found in Qualcomm IPQ5018, IPQ5332 SoCs.
>>
>> Where's the IPQ5018 compatible?
> 
> In the previous version had a default and IPQ5332 specific
> compatible. IPQ5018 would have used the default compatible.
> However, in the review was asked to drop the default compatible.
> Hence planned to include ipq5018 compatible and post it in
> separate patchset while enabling IPQ5018 USB. IPQ5018 init is
> also diffferent from the init used here.

Your previous patch did not have ipq5018 compatible. There was nothing
indicating that some default means ipq5018...

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
