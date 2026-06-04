Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F117CD6E57
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 08:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLnqmSBCjt7X5JCytm1OkfDY/LHvbfO5T2PZi+i+diI=; b=TaKWQZRqlT0dKj
	Ot+OqmNSEpP46X/Xwu8H5ORmDZwYDsH5Gq9UCE5EP0fIfx3UhVH1RFhfxWKOK1IMo3a9Mf8JT9Rk5
	bwIwstMq00lQvuv4g7s/lTV3Q7xnI2L5QtJSkjMXtqSefjbq6yHnCqkwKW0sf19SD2MH8GQJZiA3N
	n4QTn4AlCHwhuYbXTo/6f67/1BzCzk1zlAb1LZWSlaRC2eGf28Iy98gxWx+cdF6VoGcw7ZhU1lbQx
	X73Fk1SYqJhE+v+57dUzjvtjGPGAlw0mRayOArCBPC97Bg+wBxH/J/TrFQwWJukkz0j1lOKfiu1mj
	Yq923bzhlpVmzZjUGKQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV3iW-0000000GQ1z-0Ya1;
	Thu, 04 Jun 2026 08:46:20 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV3iT-0000000GQ1A-3Zby
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 08:46:19 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5aa68daa847so11460e87.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 01:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780562776; x=1781167576; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ysCy4i0ZuZGHTLV0NNKNvTSVjrjWNaqQ7rMKNBVAW0s=;
        b=E+o6kisJvRECgu1FbqWVeyUoqnyXOQPCHRwk+BSnNBgZQqGUrpYVj1vYss89zMcoFC
         be3FxQ8T2bOvaSVPEvHdaog5LXRD/wBVBYav0wXgLKtRFZk3hH7W+2AmQIuX9GwJGJH6
         JCkRcfQj2oFLVWuxSd6c0jxHYJ4Gety6jS+4Ww6u8Cb//CCxcO2SrRpX7sCwIBFXUqUE
         OeeqMay+gkGuFfXmqdO7+xM+R/HtHc8uwvathF7hEffefQFfP+ppoFQDcL3UKZD8kOrW
         oeljfY9/BA2m9bZHOMdxyE1FHO5M+ovZch7HrLbgaT8frVJIrsznGs1UUqNFNsVFdiQC
         VZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780562776; x=1781167576;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ysCy4i0ZuZGHTLV0NNKNvTSVjrjWNaqQ7rMKNBVAW0s=;
        b=pXd2KN0Q7oM9+cXHVnsi+qsKW26xmvrif92oI2iAhKds1/ng8+P2lS8kh5I8Oss+fO
         mwZLfw1f/KfdpboT7ZbM84ChSKDf7WQJzs/mcsKsu4aw8jUbtUG6YGBm3PDymtUjnJak
         F48UlAPNRooU2gYrwGtTN/u+5QkV0sxmmCeISbrO8tsRF4sGWA2KyadCRunChrgDnSkD
         vJPR4rfJ9Ok2ODQW3lSVzKMZBNZmnCVvEfVM+aMPWw3kJwFmVLQbgondAk/udgMOxm9r
         9AtP5dj2N/soBqsJfRb8DgaKg76k2vpK7UD/CksJQFl5itsNAiqwr2Aas/EWo2OW9kNK
         IueQ==
X-Forwarded-Encrypted: i=1; AFNElJ/TlscZWW934nKfhqmTi7RykDMFTj56k3iD5ZCXd9ertdx7q6/3CavpO/E46rJcCcjl33xxnBzI0K8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxXwBjgiouV/p/Xyw+zr3Zl9Sr38VEjr4BGO+VjrhJdG3InvdMV
	f/oICZHnx+KiEuEi9o50Z45+B+38C6eG7sG5CaXe+F7Y9kgfNVcJyhg5POsBBdtbdpQ=
X-Gm-Gg: Acq92OGfTezD0U82dxLw2NecAYyG4w9LOiwHrNGRg0ctc18sXt5gd6/pOqxnGChYYNT
	x/paRwHUBbjdSJhkJR+K2OE/t8yadUjUtm+g/7E3J96LYUODelK9eT4tUBUaCnBEKrBOFYNE0lb
	25PPZfk/OAlpcsbAvNwp+rKDZYOnSrNXeCUU/N7Jk80dk43RqZK17jWFhvgPyxUA7ynwlj+nfth
	An8L+QosPaSJMrwJ4bJ7BG4E0v4UFNAYnBIyq/nkPtO+vJv2y3Dik3E7V0vKeCly8zo8ZGHM5vC
	2pCeYNKKhYETxqv0qojHgO1676SVTqTwuY7iZPB3bnN1XP9/1ZRNXhsP/YeX5t1vzjhFSFRLEOL
	v37Xn81mBEFvVOJ8Izc17rWygieOlQ6uNpdRxACh4WQOBfy4uunQiCWSJqBytpyWaFI3fs75jY/
	7hAosmlMl4ILhz5Y6EBksFFhAQY9+AFMBGEHM6OSmttPxK/OxvnQgVnLPUBVuR25UaHS6kSDyuH
	43OjGWNxUSnjfw7
X-Received: by 2002:a05:6512:24d8:10b0:5a8:7317:540b with SMTP id 2adb3069b0e04-5aa81f36e3dmr159818e87.7.1780562775465;
        Thu, 04 Jun 2026 01:46:15 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b99c74esm1075006e87.81.2026.06.04.01.46.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2026 01:46:14 -0700 (PDT)
Message-ID: <1b107aca-a857-4e58-a763-39c82af67747@linaro.org>
Date: Thu, 4 Jun 2026 11:46:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <478df3ed-d4ef-43aa-bb84-e2075798542b@kernel.org>
 <ec98ef2f-02b4-4086-8b4b-07b6953dbd20@oss.qualcomm.com>
 <514cf213-5778-45e1-8d70-d3fe27991fcc@oss.qualcomm.com>
 <7JNJ4dUNz4ennJ5dkzhfLSuVo72JpfZAbprICPRqlRYnSzVDJw6x3h-1nESd_PK-3us9f1V3qOiLiywsTqP8vQ==@protonmail.internalid>
 <f01c0e22-4e5c-44e7-9ea4-4bc8d53aea2e@linaro.org>
 <29e8491f-20e8-4082-8943-66bee7e3af1d@kernel.org>
 <5ca611b1-0663-4975-bd56-b1343851e5fd@linaro.org>
 <83c12dc5-fcb4-4089-9917-9f0fcc4f940d@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <83c12dc5-fcb4-4089-9917-9f0fcc4f940d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_014617_966792_005FF93C 
X-CRM114-Status: GOOD (  21.49  )
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

On 6/4/26 03:30, Bryan O'Donoghue wrote:
> On 04/06/2026 01:07, Vladimir Zapolskiy wrote:
>> On 6/4/26 00:18, Bryan O'Donoghue wrote:
>>> On 03/06/2026 21:51, Vladimir Zapolskiy wrote:
>>>>> Actually, one more thing, Why isn't TITAN TOP GDSC here?>>>> +
>>>> If CSIPHYs are true subdevices under the umbrella CAMSS device and well
>>>> described as subnodes, then likely none of power domains are needed
>>>> to be
>>>> repeatedly described in the children device nodes, since this
>>>> information
>>>> can be obtained from the parent device by the driver.
>>>>
>>>> Technically 'power-domains' property can be safely removed, I believe.
>>>
>>> The policy is to describe the power-domain dependency fully since DT
>>> describes hardware not software architecture.
>>
>> It brings no contardiction to the statement I've given above, the needed
>> power domans will be properly described in the parent device, and there
>> is no
>> sense to repeat the properties it again and again in every child subdevice.
>>
>>> Also for a very practical reason a sub-devices can probe/run
>>> asynchronously of the parent device being active so in fact we do need
>>> to describe the PDs fully.
>>
>> In opposite to the above this one is precisely a software centric argument,
>> which should be excluded from the consideration, as well it's not a big
>> deal to make a proper async initialization, removing excessive dt
>> properties
>> is worth it.
>>
> 
> Right look forget about that.
> 
> - DT requires you to describe your hardware. You're not entitled to have
>     some other device vote for a clock or a PD you rely on.
> 

Above are two uncorrelated between each other sentences.

A device ("consumer") can ask another device ("provider") to behave in
one or another way, this is the only possible and thus natually selected
system design, and nothing behind it was asked. There is no justification
for the proposed flood of multiply repeated data, it's avoidable.

>     That's exactly the type of downstream short cut we are trying to zap.
> 
> - In our case we also need to vote on PDs individually when the PHY
>     is active.
> 
> In extremis say we are only running the TPG then we have no reason to
> vote for CSIPHY specific rails or operating points in the parent device.

So, TPG shall communicate with CAMSS, there is no CSIPHY in the equation.

> We could make the parent power-domain argument for CAMSS and CCI but we
> have TITAN_TOP_GDSC in CCI specifically because we have to model the
> hardware - including the PDs for that device.

CCI is not described as a child of CAMSS, here the situation is different.

> If tomorrow we put CCI as a sub-device of top-level CAMSS, that won't
> negate the need to include that GDSC.

Of course in this case a phandle to Titan GDSC will be marked as obsolete
or unused for CCI, no problem here.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
