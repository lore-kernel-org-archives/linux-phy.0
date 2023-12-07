Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6820C4167B
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 19:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3pEuigAmddnCwYGzKGdv4KMY5ly3CvVleQK4fLEeKg=; b=vNft8Fwnwd/vr3
	Zxbz6AUn/Y1IY6wYPCKq50pGpTdgawUC5FKJOFp8yEMU8TDbBw3WziG/nLHljuve4+O/seqtDJhac
	DUDj3WSFOtpLV8dlf3oNxwzUrB5r3WAWd1Wxq4FgbeRUxAOGcwEuINMR5+6ml0zd/j0Wi/QHzF+Rl
	8lB/aWvrdDwXceXi4StGQJvfhfDCcf9Gqpx2fKfKPlanBpArHKFr/snRQWl2KL7YxzJO+I3qARKsY
	s4EsMNBZXWjXYwHD1renGl2gkqi8bR7nHWXeAcmYsrmbvuIroN2KhkZiDJAyeSk3EYIkcOgO2jYAO
	vA5yaGUPJoJWWa0xKEmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBJrL-00DiJi-1F;
	Thu, 07 Dec 2023 19:16:31 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBJrI-00DiJB-1v
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 19:16:29 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50bf82f4409so1120724e87.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 11:16:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701976586; x=1702581386; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9Njx3DTvexbkSox5QqyKZyNLg2RSJfBg1X63hFLY1KM=;
        b=R4oWTVk4VXhapE64lxw1e/vBMK9ay7KoTHDOZyUpCBA5ZTEBts+ng1ulCgMNjE2N9c
         Arribch4Wi1uDPxqazOaE5kRa+aMADKmHBZ/kGWYfxZDIdrs3Wr+Lfts9f3iu09Pft0f
         hmT4A6+W7kdnSXAr7y6wbDIl6Jcdslpl3PUGPKLwxsKToQDZeXVLQLPUEEKkwiLmDEBp
         5DuTKvRdAmJBj2HwG4hCXUpfhudx4TXpFfsAzuxGemDeVP390F3IhEuf4RGgtNUVyjWG
         LZoqTFoRbttFKMLEdLffkWvMCJFrtAYge20sMSR/dlhYYWSonRfTsPogFbw/TLpKl8su
         rIww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701976586; x=1702581386;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9Njx3DTvexbkSox5QqyKZyNLg2RSJfBg1X63hFLY1KM=;
        b=Odb61zO9RZfTeUjLTwCwjfcfHkGX6JzjPFFs1kGLAN6xfEo/2fk6Ut5UUoktEx1Rjq
         ZS910OXQGeKp8P7ZS0NxGe8n8+yB9dm71xm5uVK6sN2bmvZL2P96MjhbTYyMFkMPw+XQ
         GtN3Y4zBUygX9dr7BWwizPDbiCio03MxJyhnr8O02xHSeUsCCm3JyW+2aOR+cYOCTQvI
         wWb/oG4ek1+UyfwGVAmwvLKYCQlSAiT/aRZ4V133E7NYHj5BOMIYMq0O/KBc+dkSHjuL
         b4ckgTChKkljCcbg9UTF16bOh4IKbewLl5GXFE2idBaPgjs+a5d9t/mCveV61AV3DqF1
         gzNQ==
X-Gm-Message-State: AOJu0YxTkCTgDGnGM2D+DnVniK+AI/rL9D4+5Y4UbtH8l4v9OCq3tg3t
	d0ju1nZ4rbWhD64GwXSRFxs8QA==
X-Google-Smtp-Source: AGHT+IGaN3FmyZNrLbkDLl2aF5fW0Mr4v/txXTd2hd8fE41nJB/ar2K2hjxM7QHkmGusyTiDEXZ88g==
X-Received: by 2002:a05:6512:4d0:b0:50b:fa6e:e386 with SMTP id w16-20020a05651204d000b0050bfa6ee386mr3129058lfq.30.1701976585818;
        Thu, 07 Dec 2023 11:16:25 -0800 (PST)
Received: from [172.30.205.181] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f20-20020a193814000000b0050c219545efsm23109lfa.200.2023.12.07.11.16.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Dec 2023 11:16:25 -0800 (PST)
Message-ID: <545d3ace-66e5-4470-b3a4-cbdac5ae473d@linaro.org>
Date: Thu, 7 Dec 2023 20:16:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: qcom-edp: Add X1E80100 PHY
 compatibles
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Johan Hovold <johan@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org>
 <20231122-phy-qualcomm-edp-x1e80100-v3-2-576fc4e9559d@linaro.org>
 <b6d3928c-75ba-47a3-93fc-a60729be2e35@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <b6d3928c-75ba-47a3-93fc-a60729be2e35@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_111628_659152_BF3F8A91 
X-CRM114-Status: UNSURE (   9.72  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 12/7/23 17:51, Krzysztof Kozlowski wrote:

[...]

>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,x1e80100-dp-phy
>> +    then:
>> +      properties:
>> +        phy-type:
>> +          description: DP (default) or eDP type
> 
> Properties must be defined in top-level "properties:" block. In
> allOf:if:then you only disallow them for other variants.
> 
>> +          enum: [ 6, 13 ]
>> +          default: 6
> 
> Anyway, I was thinking this should be rather argument to phy-cells.
I'm not sure I'm for this, because the results would be:

--- device.dts ---
&dp_controller0 {
     phys = <&dp_phy0 PHY_EDP>;
};

&dp_controller1 {
     phys = <&dp_phy1 PHY_DP>;
};
------------------

as opposed to:

--- device.dts ---
&dp_phy0 {
     phy-type <PHY_EDP>;
};

&dp_phy1 {
     phy-type = <PHY_DP>;
};
------------------

i.e., we would be saying "this board is connected to this phy
instead" vs "this phy is of this type on this board".

While none of them really fit the "same hw, different config"
situation, I'd vote for the latter one being closer to the
truth

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
