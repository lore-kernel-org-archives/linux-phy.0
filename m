Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE215C83F17
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 06:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sL03R7GYmHCCnRy8uIGenuvfhftPwH/GTaTVFLgswRk=; b=HwNg2W2+h6UTqC
	JVHwxFOekp+GBFmCZu3jVmViaGhh1sa3gnBW6HTLudKHoeMkZEXCITfR9lll5aymns2JixTqnUdRp
	whjghpk2bvkvfJ6XBOrxxx4dn4D3GLCJ9BQvq79BPXW8GFhcx3yTbCuGATfyfkJvb3s3g+xcmt8II
	Vd60h5YYh45d+x6JMA/U+lBKE8yBhAA1VGLmx9YfLKPdV0SUoxgA+CDkYgcTlY0bHxJP357zjxSXU
	+kdhhQvyJ5Jk4Imwi9iw0NVL9xQv9LyomJwG0wLjbjiszV4ODSj9/g/SrM5JZUPL1V8nQ8nm1y1ym
	TzsFplRNh/GYEEuYq/xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubZJ4-00000004ENp-1sjt;
	Tue, 15 Jul 2025 06:38:26 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubZG3-00000004DoG-06nG
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 06:35:20 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-32b4a0915b1so8320101fa.0
        for <linux-phy@lists.infradead.org>; Mon, 14 Jul 2025 23:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752561317; x=1753166117; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QWk+3HwoE658WoVjEcyuNKZKmpUhfuUyOmAf2RcohLk=;
        b=f70cusfF/1xaIOan9T6LvCUy/KnlbE/yJtmxAw67J7JuUrR9N6UCu0Me/89swMGTZu
         9A7djmLRBXOGTiGn7vVhCyk+Nj2AuNqOdP4XANHysUivJFVyC9yUz9+2xX/NWE+PZ3UC
         oxW8rABL8+K0Ovjwm4rXyM3I3AH2WMd9pRjHHV9qU7P0XJj75t80v8xvNRbUPyCuenpF
         I8CrwF4EcuWSwDpobisSpR7w5qu0StFe1O9QSDYUqvq8qn74yIFr37MbbOjiakBzBaK/
         MuIm4kjiPbaXfn9mfpvK+FT3aW4j1oUTDpbe/7aNXzAEJV6wJcunsN1D9sH7gZtrJXyG
         LR9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752561317; x=1753166117;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QWk+3HwoE658WoVjEcyuNKZKmpUhfuUyOmAf2RcohLk=;
        b=vvoyjeEULx255K0vPeQRumw74IgfMdye9pUL9mJKRRIZ1XZDu7zwMya3dSUPVRB1g2
         ZQcK2pQhyhy70vl+cgvtuoroMIX9sQ4VeMhMJbpgjHjoT43OGKNVyZPPCWN1SNzXwx1D
         Y7SXPjvHI0jdH89bZ+2U5qNrUx02yxX032+sNIV2e2B2LaedFa1wjF6yXA4gkoddf6AB
         MUKsvkW9LxF5Km0MzLhB3wvJrVKfpCmE2BDbg8zjysfHxqlbl5oIjV3TOykcSuJbNu9y
         puGzFZirAiF3QlCwJrXd69LkW0XAxFxk4HSueZ2WeU8ndoh6H2CZcifYfvw//2P1t68v
         puJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAiMqWwSL3xtawkbxUm0vYk7as5SNOucT0ru/+bb0CVJJD4yx/p/WtwVhNqSQ7m6wLKno5dZCWvT8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/oeQ6RTBvbGhkM950T5Zy1i8gaapxKUh3iFkoJc2P1uOzL5D9
	R3Bg0OgB8mInYEvZx/sJHiw9iIgnoYvhiq784/KUvYBUkG26cm+4EIPnb8T+DBjURC0=
X-Gm-Gg: ASbGncvfSHi1JmSlDWijHhtj9GauzHxRmI0l1IuqMzQ8EBeY3eOdUTMf6QkIxW+f6LD
	FtWynfPgBZ/HTlMF/rCmQJAMMynMxIHbdQzGXwK5WUpLXXe/9pxETp/R1OUOizJWe5cRhIjxoN1
	EbKVqSn0AtkDZR0RmyEBR1+OrRPR2XZFgi36/QPst7xfo2Rfq4ruaEo4lPx1VNUSIVtdDtDKzDl
	HGvDlVLtqUM1N7r8FShei9C6UyF9xC2uaR8b0OSM8F+sG+MRFug6BcgoOyOSJlrRJXtsfYD9wgl
	H3I8g0m00NZ/QuDEHst829FHtssYZ0ZddvHp2/xwa6m5Tp/plwhreNeg0HS04PqwaoJPpfjUdVI
	Pz8W+V5V6Z2Y6OR7xgRWFv7ZvMwctG52eOsRstfQPaowwCTZ7/k3rAyrW4/TK/Zr5JpuJT8bmm4
	C6
X-Google-Smtp-Source: AGHT+IG21/AaIAze5CnrFzbotIk5+WCyNnr4M3ziM12QE2WUONELVSCj8ppEhywifIeaLqF5Jft+XA==
X-Received: by 2002:a05:6512:3b24:b0:558:f60d:d4a1 with SMTP id 2adb3069b0e04-55a1fd758c0mr46377e87.5.1752561316877;
        Mon, 14 Jul 2025 23:35:16 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55943b736d5sm2167082e87.213.2025.07.14.23.35.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 23:35:16 -0700 (PDT)
Message-ID: <53a19b1d-5665-4937-a07c-5dd1fcde06c5@linaro.org>
Date: Tue, 15 Jul 2025 09:35:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
 <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
 <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_233519_075114_9E469E96 
X-CRM114-Status: GOOD (  15.27  )
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

On 7/15/25 03:13, Bryan O'Donoghue wrote:
> On 14/07/2025 16:30, Vladimir Zapolskiy wrote:
>>>
>>> I think that is genuinely something we should handle in camss-csid.c
>>> maybe with some meta-data inside of the ports/endpoints..
>>>
>>
>> This is a CSIPHY property, a CSIPHY hardware configuration and a wiring
>> of sensors to a CSIPHY. Where is the relation to CSID here? There is no.
> 
> All the PHY really needs to know is the # of lanes in aggregate, which
> physical lanes to map to which logical lanes and the pixel clock.
> 
> We should add additional support to the Kernel's D-PHY API parameters
> mechanism to support that physical-to-logical mapping but, that's not
> required for this series or for any currently know upstream user of CAMSS.
> 
>> Please share at least a device tree node description, which supports
>> a connection of two sensors to a single CSIPHY, like it shall be done
>> expectedly.
> &camss {
>       port@0 {
>           csiphy0_lanes01_ep: endpoint0 {
>               data-lanes = <0 1>;
>               remote-endpoint = <&sensor0_ep>;
>           };
> 
>           csiphy0_lanes23_ep: endpoint0 {
>               data-lanes = <2 3>;
>               remote-endpoint = <&sensor1_ep>;
>           };
>        };
> };

Don't you understand that this is broken?.. That's no good.

Please listen and reread the messages given to you above, your proposed
"solution" does not support by design a valid hardware setup of two
sensors connected to the same CSIPHY.

I would propose to stop force pushing an uncorrectable dt scheme, it
makes no sense.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
