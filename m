Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12C62ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 20:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwwH7FKihwRwWRf+QKU5jvoS8izuiyNR+E6DtTScbUk=; b=NT2CXTzvRELsEc
	DQwy54k/i8qKdUiXhUC7BH/lVHfGkCTQmM3eBZg5TDzub9SoqrN0wizGaGK4c4lBvwVUbW/VtESX/
	f1a8iYqTHReqha4y8+iq1qUmyjjawKaDkKsmyMJhScNJJZkXVdlJZG+ZljiPMELm1cxU3gbjWizqF
	RIf0jhQ9eHNJPfOnEHHmWkYa/plrE6WQa5gt4qsxR3lsnyx/451eK+6F54lg47fvWfnyrIZ4udw0g
	wRTYujHUgEUBj88HaI7DiHcZvX2jd8h6z6k/LWBK2lEVhENzMqKtfOsj+364MSaEI+kCahyIrNMkD
	gBmopGlSRePbGoh8VITw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWkd5-002btg-GP; Fri, 09 Sep 2022 20:29:35 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWkd3-002bsh-07
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 20:29:34 +0000
Received: by mail-lj1-x22c.google.com with SMTP id p5so3206443ljc.13
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 13:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date;
        bh=7mncvRGcLH9K5FkmOMOVFO3Rj69zLNEP9S2+OC8gmCI=;
        b=lvWyWcld2sfU8O05DsaycEYPSkOZRrbgTbt8RyraZCg91Re7sQO0u1I+IK4HMZFDZe
         l8v3boa5CHlaq4/rLeN2PTKOR9SQP91vCxNf7XoI9tPyCN+u+OZoUSeKyf3UwF1ucM73
         7CEPwpYalfNr4x6BF2Krzfa/xd+EnW4kfFYqugywqSN3/KR0wkZve4qY7EmLZE4SB/Ys
         Ty/qcPU3CdWLlOLxDuEig9712dvYYHJtEAjz/ofnE29zImBVG49ItSFUF6SlMiaKnCmd
         TZXyt126NMqmAlqHR1e7Nh08mkgqSg79M1DF5MOhL1//LkBTNTV4j+lHAqy7PsrWfU90
         TWXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date;
        bh=7mncvRGcLH9K5FkmOMOVFO3Rj69zLNEP9S2+OC8gmCI=;
        b=Gy1R8jBedCyilL3a7iEktso3sFRKyoc0472YhNEI48+x4AbJWpjvxYqDJ/5fU7pOs2
         apFfgtkIj9z0vBerUs/c/ncAHD0uDfC730AEDmP1F7R8j0/Wkef341xr7HTrz6weD3ZL
         TsUo+V2gOa3Z2O1UdL7M6ikmpKLMa/Au3haleDkRr1u5rPuN+CmVfUi/VfIPeo6cCqTa
         gycflUQQO4DhDGjMB0Qnl0dqjdLquEW4pUSSpzJAuzu21kwEZXYw7Wo8Rp+Ejol7BCHl
         +OireJTH82PUPtFZY1KrKnb8ZZvlJNi/G9siesO29VBxa5+B+UMuSUKgmxboJBURL/X2
         Zsbg==
X-Gm-Message-State: ACgBeo2iDyfDcHYwQro7fvCT11wNxzJsYv/MMuLZMfJQlcMl1nmweLdy
	qZr1Fi6ixmgAq3KyR7a9nCkGbw==
X-Google-Smtp-Source: AA6agR7TVv6GZXR+h2N3omk/bgR55Lo5AYg+W/daJdEVtBkQ4148w0NpRInKLrdUFHL+8asR/zNYwA==
X-Received: by 2002:a05:651c:1110:b0:268:982a:8805 with SMTP id e16-20020a05651c111000b00268982a8805mr4758864ljo.394.1662755369281;
        Fri, 09 Sep 2022 13:29:29 -0700 (PDT)
Received: from [127.0.0.1] ([188.162.64.228])
        by smtp.gmail.com with ESMTPSA id p11-20020ac24ecb000000b00498f1eddad0sm48339lfr.122.2022.09.09.13.29.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Sep 2022 13:29:28 -0700 (PDT)
Date: Fri, 09 Sep 2022 23:29:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 1/6] dt-bindings: phy: qcom,hdmi-phy-other: use pxo clock
User-Agent: K-9 Mail for Android
In-Reply-To: <c3b4638e-05f7-cc73-b893-422f92909f6e@linaro.org>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org> <20220909132010.3814817-2-dmitry.baryshkov@linaro.org> <d72fc00c-85ba-8b48-1fcf-42fe9e8daeee@linaro.org> <59242592-4e3d-b7c2-e0bb-b39df780c26b@linaro.org> <c3b4638e-05f7-cc73-b893-422f92909f6e@linaro.org>
Message-ID: <3ED996B7-F1BE-4AF0-AD95-500DA0B202FB@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_132933_095061_B64D6549 
X-CRM114-Status: GOOD (  10.76  )
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



On 9 September 2022 19:44:11 GMT+03:00, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
>On 09/09/2022 17:03, Dmitry Baryshkov wrote:
>>>> +    then:
>>>> +      properties:
>>>> +        clocks:
>>>> +          minItems: 1
>>>> +          maxItems: 2
>>>> +        clock-names:
>>>> +          minItems: 1
>>>> +          items:
>>>> +            - const: slave_iface
>>>> +            - const: pxo
>>>
>>> Why pxo is optional? Commit msg does not say much here.
>> 
>> It's optional as it is not present in current DT files. The driver will 
>> fallback to 'pxo_board' if the clock is not present.
>> 
>>> It seems you also miss the DTS change adding the clock.
>> 
>> Oh, I'll add it to v2.
>
>How about adding it to DTS and making it required in the bindings? I did
>not check the driver, but isn't the driver fail if clock is missing thus
>the clock is really required?

I had the impression that we cannot make a clock mandatory of it wasn't present before. Please correct me if I'm wrong.

No, the driver will not fail. It will fallback to the lookup of the `pxo_board' clock from the system clock list.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
