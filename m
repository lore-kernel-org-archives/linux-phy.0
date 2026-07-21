Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8D56C4451C
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 11:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQUdN+TCxG5OMt9S43QQKej8AlVZcZOXumGWBbWjdRo=; b=o0UeTFjWfAFvkp
	AG1sM8j+77duF01XJG5K9wpKJGFvsV7XN7uDNkcrijMh4Y8br61jpBcWF7MDjGWkOHgyvrAxK9Jks
	ukeAZtszb94G/43tpi/jv3xSfGcRP9m9TVfjZBWk+fnfz/HvBKcPEG4bMCMqldaHlHGnmQWCWNFVj
	sxPmgna2ZytJ77A8LLtXBiAibEKMVrESpRNTa7j0gcgVj4Gn86zoo8hHSsfSSp0ZDVEjZ4npVg+p+
	Wnf4iXWc+qjO6Z8D2944i6OzNB1xlh//IeQ7OZaNaijEj7DvqRS9fX0OJOUhn1cnz3UjVTTRN4A5I
	mG5mpJqsbMt8FWMbDGAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm8IW-00000009HHq-2bHw;
	Tue, 21 Jul 2026 11:06:04 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm8IU-00000009HGn-1jlq
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 11:06:03 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-39c68f34133so5746211fa.3
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 04:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784631959; x=1785236759; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=daaEWwYjuzuJkBkBAdQ53LZVOTQeD5CURewSiZvT43s=;
        b=u8gRFwSdYIOAVXIVwArKjtpo0FRDJJJGwqnOITrh6ZAEDMHrTjPNqQZXp3vzY7hx5O
         l+Z1PTc2EhPnYj+i6nIU0LeyMZVNxzwyKe+drE8JnoHu3Il4aH5goe/ukln4ewKvxfto
         OqTPxn3MOUQ7St0EsuQyVx1rivG3lqL/sbQUwRey/dJmcsihZi+y8ZPe/AmbPvQgYizc
         neVg3GXeIg/7FjrB2ie75HwFa4wj5bM5LERF0aJWtH2T9mFtXmpXzCIB5ORR1/Tl/SQq
         tvbECSnXHk6Td4dA/IhxuJ/upx7ioXAuskbq5rRdf9+2GKG+jFuG6ZEM4AdFkyyf04oj
         b/Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784631959; x=1785236759;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=daaEWwYjuzuJkBkBAdQ53LZVOTQeD5CURewSiZvT43s=;
        b=bnsUgH3MgK+q+Ifr5ql71TDwtzy4Jep4aQHEFjKO7YjmAHAwFtMI32eMgbxwx5rdZR
         wS6c6fkybGIsFO0Omx9pjajQbT+a1hnZqkyHcoMxW4BirKRpt/cCvq3C82hJtNzPtbdv
         Li1kJIHL1vD2nnB4iEPvo64X2LPKb5uy5ea6kxtjBq7KkhxRTxESrgcQOMgnWDoNTcIc
         XPyPhCuus+Hp/A1rnstBixmkz2sUJX1xk3QhB1HcRaMq5En6701oP6iyDAC3NOC3ySre
         OoFWwNItGwHiX+gC0fb2kwXNeGMQlckO9fsIfh1t3t2XEPAq6VlTq1NvlHU4qin45i56
         cYdQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro4HaIHQmnfYJdWAwJnAg0UvCjzuyyAdYy+LIMVGsBzM5iUGn6lZEmPgGSawGgoHFYNgPUwXmwutTQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKc5IZBUbqjIkQFNmGNouY0JTk/FIgwqrzyyg8cHp7p1mYrVgj
	gsZXZ4rA2jj12KdZUUShNZjVqoMZWOT1drBH6B4foFa8GclmJlBQbp3qNFaX8d++NWo=
X-Gm-Gg: AR+sD13JQwFC2EugHDY6HtXk91/HR7coD3VJ6yDwLizxsbodI36ey/v9wNTBpXiWZLZ
	i7/MG/SmCA+DqrANWexVlPMvhMPR194sLTmeipUeiziivMFcKvJ+GvVxejqTxa4FnwvBOYyq2y9
	O/wCFrKqPIS5Q4drKbbPzzybMR/RaAipT+pM4tyZK1CafwSjYUnd5s91YzriRXWO2PzTH8DQpqL
	jjQpEt3+AIV6qwMkrjga0HyK3g9jQ17nh0NNS8c8Pmg4H3ysdnmgLyUvJitc+/gSTFVVmENXKnt
	4ML1pII8f2Uu432sdymcMDFt8eDLWujwv+gsYYsv0HqTzEwIQav8tBmoKj286l0Du+qrHFWtn52
	D2NidNy3wClyloyK5fCiGw5YtUcgij9ASWtTXOeERhW9Ff+qxB3rjaqdeDXy57u45ScFc7J3EnN
	zGRBGoHKf7jSqYWX3ZX1xVBfAtUGlMMv8i+quMr8ogdrjPceCBJsXpqqlT
X-Received: by 2002:a05:6512:a81:b0:5b0:ceb3:1179 with SMTP id 2adb3069b0e04-5b2a4a98fb7mr360657e87.8.1784631959199;
        Tue, 21 Jul 2026 04:05:59 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291d981c4sm2879201e87.20.2026.07.21.04.05.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2026 04:05:58 -0700 (PDT)
Message-ID: <e8bc8ade-d699-497e-8c4a-fbdc03fcc549@linaro.org>
Date: Tue, 21 Jul 2026 14:05:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: Bryan O'Donoghue <bod@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260720-x1e-csi2-phy-v13-0-160c31958863@linaro.org>
 <20260720-x1e-csi2-phy-v13-1-160c31958863@linaro.org>
 <LyWJAb2qKsAFTMHNJUce9VqoqbkFKUQanb6z8ziA63RYZ1P9jj1XpA83uGPvz9m4QnWvEjJFK8dGD_8EtioHVQ==@protonmail.internalid>
 <0da6d314-bfa9-493a-bcc6-8c3b75751d0c@linaro.org>
 <88ae6662-cb85-4e3a-bbb5-1b536348df34@kernel.org>
 <_t1jiMTX3iIXhUkTDz0Cbh_uZhdUK_Y8vlIwxt1VNRbuKuRnpVCWabal-b4AuFrVaKrDnQSFOWtDn6-VCbS3DA==@protonmail.internalid>
 <345ca98e-09f6-4965-87bb-e64dac096498@linaro.org>
 <c236cf94-a775-4158-88db-9a337c7fa862@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <c236cf94-a775-4158-88db-9a337c7fa862@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_040602_501176_46E59696 
X-CRM114-Status: GOOD (  20.96  )
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

On 7/21/26 13:47, Bryan O'Donoghue wrote:
> On 21/07/2026 10:56, Vladimir Zapolskiy wrote:
>> On 7/21/26 12:39, Bryan O'Donoghue wrote:
>>> On 21/07/2026 09:17, Vladimir Zapolskiy wrote:
>>>>> +  "#phy-cells":
>>>>> +    const: 1
>>>>> +    description:
>>>>> +      The single cell specifies the PHY operating mode.
>>>> This has been reported before, #phy-cells shall be 0, the operation
>>>> mode is selected by bus-type of endpoints as it is described in
>>>> video-interfaces.yaml
>>>>
>>>> Two competing values are redundant and it opens a door to a wrong
>>>> hardware description, the technical discussion has not been started yet.
>>> So as I said before, I'm following Rob Herring's input on this and
>>> Krzysztof has given RB for this binding. At this stage, I don't see
>>> scope to change it.
>>>
>>> Adding endpoints was already a compromise to address your feedback,
>>> which I hoped would bring you on board with the design.
>> That's my comment dated March 27, 2026, and it says moving phy type
>> from phy cell to the endpoint property excludes the need to set any
>> phy cells:
>>
>> https://lore.kernel.org/linux-arm-msm/e37ce438-12c7-462d-
>> b2bc-1351be62b806@linaro.org/
>>
>> The technical comment is left unresponded so far since then.
>>
>> Since there is no expected phy cells to get on consumer's side, and
>> since there is another link between CSIPHY and CSID described in
>> video-interfaces.yaml, any kind of dependency of this IP on phy can
>> be just removed, which serves the purpose of hardware description
>> simplification.
> 
> Rob's v1 feedback was consumer-decides-mode via the cell; Krzysztof has
> R-b'd the binding with cells=1.

Unfortunately this is not a technical discussion to move forward
a better hardware description.

> I'm happy to lock down this binding as-is on that basis.
> 
> Are you arguing about phy-cells or are you actually arguing the entire
> instantiation of Qualcomm MIPI CSI2 as a standalone generic driver in
> drivers/phy ? Its not the same debate at all.

So far I don't review the driver, only CSIPHY IP hardware description.

In the current version of the hardware description one may find that
the exploited 'video-intefaces' interface completely covers the 'phys'
interface between CSIPHY and CSID, quite probably both are not needed
at the same time, and the simpler 'phys' can be removed without any
losses. But if it is kept, then its cell value is anyway redundant.

> As the CAMSS maintainer, I'm fully against adding more inline monolithic
> CSIPHY init sequences. That could be represented as a separate
> linux-media driver but, then that implies that _all_ upstream CSIPHY
> drivers in drivers/phy are wrong, and I just don't accept that.

Other two drivers are different and should be excluded as good
references, both of them links exactly one sensor to exactly one
CSI-2 decoder, it's not the case here. Also one of these two drivers
has no upstream users.

> The bindings have DT maintainer RB, and the driver has Qcom engineer
> tested-by, review-by.
> 
> Vinod, Kishon - Again, I'd request this merges as-is.
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
