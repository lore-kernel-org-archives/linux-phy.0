Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4FC4C83F3F
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 20:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWpLMtrgaFKWUujUecYESkyydhRyEayIXpEhQWUa33Y=; b=wsPMFRREBByitM
	n2rIPORTCARIzvQpsKaYO5xF2vttu11eCtumVj63VcVOTB0aLFX8o5YZWXmDcGrAXv1IQotFZKnf6
	833QHEvC7TLmu4rLPBtLXo8qEOGkuuvAtfBelD9jD4ldcfoM4aWESSVRJIVDKgx2FKW6TvVIJikC1
	7tIvdCLU64g19selryT93+H8oTAOTTGGNzJ39+Pnq5Oh/Wv65H2LKu4OM9kE8KR7ZE+RiGzVOp3+i
	t67lW5DIJCSJSw9nUvwyeMNL4sruWHOFI+rgZwDkmiqUYn4VIxzWwsXLxwimaeARAaerDR4mMUE7F
	tfaa4fLaiOstIHKMCeXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qboTA-00Fo1g-0h;
	Thu, 31 Aug 2023 20:40:48 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qboT7-00Fo1E-18
	for linux-phy@lists.infradead.org;
	Thu, 31 Aug 2023 20:40:46 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b9d07a8d84so21730721fa.3
        for <linux-phy@lists.infradead.org>; Thu, 31 Aug 2023 13:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693514443; x=1694119243; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=jmh9FExlycgbmfRymrwXGINB5p9AMhlFKblzDNqy3Qk=;
        b=TdbDTU9jsQK0nElwgv7VJZ92JNVtUdPWbDUCNjIn2pBoBDRKOWDfCTkju/DT3Y3wGf
         yRu+5X4tUd7HxuKDVveuIOBIJVkYdORXdhe/b7ZzM/TqIm9xW6Y9AxZGtAzztPcyNlwv
         hP8qTnKbV0xjfuuaJZUa4sG2u//yqKUJAlzFVMzBSIZLc5TMhmo4N+D1L19zJYf2K5gZ
         rVfpsBAn7TT78IlihdcXyArBn6UPgW/bSKj5U7rIAfM/SvivaSB4wJ2H/3r48K3nPn6L
         H1fz54maRWqRglbia2s5A5sJnXhAWkvjoAV2tdElyshrVb3MowNYeRf8TgjTMlasi78k
         J/IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693514443; x=1694119243;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jmh9FExlycgbmfRymrwXGINB5p9AMhlFKblzDNqy3Qk=;
        b=LWq+tbtK+YLtsReY0SiZgiGu8/T1eXPjTHzzShSANyNrkv60iQRjE7mpyzZkeb00Ru
         ReZGG8tVx3Nu42O0o8XorxhHRaSRFooyRlxpNqMbIH+vTMhRQWaSilAX8xA2yKGzGFOQ
         UF8zXr/kfwD5GEBlNOd4qezNQ0Loo/9BTqMTG5psiGfvnNGldCvc96+sKD3q3DPlJgcx
         8SKT/tTYjbZwbryyTaZf5/xl1SqnpWP6z7K+3NvpzdqGph4X8s+dQn3zs/WrUqkogA+T
         if/qUJvzL43uvPau+hj2KbQ4K7pzcUufKK664aykzJOncRPKN4KfMSjPPCkOV7l9Bd+m
         nCiA==
X-Gm-Message-State: AOJu0YzybrRL2hOtvpQXT78kbwnB633gMhCdx9ErEnKlaDQlUyATD0Ja
	0ksaiR1s3C1oix8dvgJtVlrkXw==
X-Google-Smtp-Source: AGHT+IHvucSDAeT+xVwHkfOaHi/9UEs2qNN5mdDevojByrsF5+OU84HysdBunzySgfm2pK3iRiW+yw==
X-Received: by 2002:a19:5e0b:0:b0:500:8fc1:8aba with SMTP id s11-20020a195e0b000000b005008fc18abamr218772lfb.26.1693514442333;
        Thu, 31 Aug 2023 13:40:42 -0700 (PDT)
Received: from [192.168.1.101] (abxj164.neoplus.adsl.tpnet.pl. [83.9.3.164])
        by smtp.gmail.com with ESMTPSA id g23-20020ac25397000000b004ff884e9936sm409207lfh.12.2023.08.31.13.40.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Aug 2023 13:40:41 -0700 (PDT)
Message-ID: <9de94c43-5274-4eb3-96b3-a77db2822b92@linaro.org>
Date: Thu, 31 Aug 2023 22:40:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,usb-snps-femto-v2: Add REFGEN
 regulator
To: Rob Herring <robh@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20230830-topic-refgenphy-v1-0-892db196a1c0@linaro.org>
 <20230830-topic-refgenphy-v1-1-892db196a1c0@linaro.org>
 <20230831182505.GA2541736-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230831182505.GA2541736-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_134045_495513_F634DDC7 
X-CRM114-Status: GOOD (  15.97  )
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

On 31.08.2023 20:25, Rob Herring wrote:
> On Wed, Aug 30, 2023 at 11:13:51PM +0200, Konrad Dybcio wrote:
>> The HSPHY is (or at least can be) one of the users of the reference
>> voltage generating regulator. Ensure that dependency is described
>> properly.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>  Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>> index 0f200e3f97a9..e895b6c4ee49 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>> @@ -53,6 +53,9 @@ properties:
>>      items:
>>        - description: PHY core reset
>>  
>> +  refgen-supply:
>> +    description: phandle to the REFGEN regulator node
> 
> Supply names are local to the device (sink name), but this seems to be 
> named based on the supply source. Maybe hard to do if all internal 
> stuff. What is this supplying and what's the source if not REFGEN?
I don't think I have anything that would answer this question..
Though I would not at all be surprised if Qualcomm also called the
input "refgen"..

Maybe Bjorn or Dmitry would know.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
