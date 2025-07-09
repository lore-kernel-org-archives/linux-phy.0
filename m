Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CD19C83F03
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 14:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfVANb8D8qn+HPXDiX5T/wKFLGXmyKuNgCR4rA9hjlk=; b=GdV5M3b5VCucZK
	FWe1NITTHcK3QhLhfB4DnhyS5qKo6PEgWVGsokx1HM1Xt0mBXzGLS9gy/Xnk8rKaTqAv8hBGmZZ+K
	46ZGEKBCWhK7rJH0pSkVB6SF1ZYRN5miSW8kFGMJKUAXiCTgS/XJ64sM0WvZfntHjn3cNH3Hdr40I
	lSBk9gif1G8USOf2N5GHr5NxmKtsiN7UKfDC+p2lnJQvYiI10MFq7GaLJFs9zWtpjGH2ocfm30Acr
	BiJH+3HekZIsHdHTytgo2MrlyKFf3l6a6N5JH7UoFNtP04z0Urvtaxpzes/qpPFMmC9HBCBghOawk
	BUbvlUQ0cFzpqx7WJl/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZW7f-000000092sw-3bno;
	Wed, 09 Jul 2025 14:50:11 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZTpF-00000008cH0-3se2
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 12:23:03 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-ae0de0c03e9so941394266b.2
        for <linux-phy@lists.infradead.org>; Wed, 09 Jul 2025 05:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752063780; x=1752668580; darn=lists.infradead.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ROuluNw4/vejFJBCXsSXIQySN8U2GYIufRUS7I5ilA8=;
        b=3xHgTyQ0DnTR8+PVti40W5mHc4nROpv0v3kLrzrwu0e9rp0PeuXt1hN3+6IQupXPfS
         483/BglydVN/B9wJ+++U1z3sGpp5812/D2ofhFVvhahtOhsn9NxB/NljTNea2PppKtMf
         642u7fAh6C6RyxIV9YaUcl9sIOM5RYXwjAP6E2hc5Dt1/w0cT7Ct+QoeKvyxAXzrYuYA
         v7R4Zwkvpm5JCE3mTAanDJQS/GmHsVR4XcDvdmdtiJFbp3akoOVc7ernWrmsb53mAwfT
         SVcSXmIFO/xjI3ptxHtR79LtN4mo6gfd1vi5WX3YJug+Pp928C3lMxZAdv17Uh4c0K/d
         spSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752063780; x=1752668580;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ROuluNw4/vejFJBCXsSXIQySN8U2GYIufRUS7I5ilA8=;
        b=mh1LTHL3+Yl53MYk7GI7g9M+LzQMeb24JoiD1kwWnE0rtpIRBi8V0xuaoVXrf7vluN
         yiYFRa28EC95NpYyrued7b5crX/2g5SEF8i4DOQ8pO+ofTCaFX4WbSuCuiYzL8uLNHlp
         k0mKEGqyVM/yZARy3pWmxH9ZDOUXkiz8GvLRAC5q/kv/5XW8sRdEyIqyA9ZMiWtvvcWs
         Dnd71BdmLzKSaMAGb9jm8Jmw9FQO3yeUt/wsKBt0B9DT6mDag1XNHodNUaQx6/6bjOWJ
         Azp1rHbQyGxpPR8cZ39LoP3vwAjpQkrN7h+xqpib7TWcE3p9uV9nUTAaughUDG8BW9fn
         zvpQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPP214Yf+9h4yuck5V326atwZg7EhhvJoP6ChBZanL/Ea//TrDI9Y8aUcoot7c3KdUFepT4pskFgs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxL/jnQhDyX1/DmJm14g5QliijmnNXoSwzavy97c4K+l19JjKca
	bUQA2jClsi+zbalzYoHUsvGngNYp5gZXmFxXv3Mjho96TDM/zFJyVm3PppQw/MzSlGo=
X-Gm-Gg: ASbGncu+n/WBNVaFq7SNzeuW9Mq6RZCJjb7sDM40IOPhZowrqCCRQZQmZK/7fOeXwmG
	++RE1/VAy8Lamo+waAZS+H5QwT7RFqg1MZHylZF28Yfecb5ruBQuTs1tx7+YF4SMssIINBnBqRP
	LR0ZgkqgW9c6s1DTVoSKGNbssChbNWnHm80p2Vboqq3ZWP9OJ2Gdg2RRLVDsv5fG6CiaKuJjNxl
	lMiCcUJBDu6/q3ePXerViPuuDO3cGAUmJqhI1tIa/8+nXelfi65GSc3MDCcUfSXS0fHocVf4Rf5
	a5rhtVGzuCYcXKz4cW+XccxrRAdibVnRQLwN0COWFAi4j2A0gS1NYIMdb1T2lyHmaoik7wksJt7
	ioW8gt4iIl8knvqdb8UUdaBj9AQoeLXU=
X-Google-Smtp-Source: AGHT+IFoNmrlnmfODsFWZlCW/cQmQ6VYP8ewayBQbqu+4gVzC+PMHw17LB0EaYf/AmeXCy2KQcHZJg==
X-Received: by 2002:a17:906:c045:b0:ae0:d7c7:97ee with SMTP id a640c23a62f3a-ae6cf79a055mr227716066b.41.1752063780327;
        Wed, 09 Jul 2025 05:23:00 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b04d5csm1074482666b.120.2025.07.09.05.22.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jul 2025 05:23:00 -0700 (PDT)
Mime-Version: 1.0
Date: Wed, 09 Jul 2025 14:22:59 +0200
Message-Id: <DB7IRWJ1AFCT.2CVF97683XYEO@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Abel Vesa"
 <abel.vesa@linaro.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 <phone-devel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater:
 Document qcom,tune-res-fsdif
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
 <20250625-sm7635-eusb-repeater-v1-1-19d85541eb4c@fairphone.com>
 <20250708-unicorn-of-ancient-excellence-e8945c@krzk-bin>
 <20250708-stoic-slim-bison-ac55ee@krzk-bin>
 <DB6J86NHFTNT.31MFYDTZ6B4O0@fairphone.com>
 <DB7FBNQ0TYFZ.3GGPN8XXJXGRW@fairphone.com>
 <1c7fdeca-d531-4f90-9e4c-4d8bfac67fae@kernel.org>
In-Reply-To: <1c7fdeca-d531-4f90-9e4c-4d8bfac67fae@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_052301_978096_FC12E869 
X-CRM114-Status: GOOD (  28.05  )
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

On Wed Jul 9, 2025 at 12:16 PM CEST, Krzysztof Kozlowski wrote:
> On 09/07/2025 11:40, Luca Weiss wrote:
>> Hi Krzysztof,
>> 
>> On Tue Jul 8, 2025 at 10:31 AM CEST, Luca Weiss wrote:
>>> On Tue Jul 8, 2025 at 10:21 AM CEST, Krzysztof Kozlowski wrote:
>>>> On Tue, Jul 08, 2025 at 10:13:24AM +0200, Krzysztof Kozlowski wrote:
>>>>> On Wed, Jun 25, 2025 at 11:14:56AM +0200, Luca Weiss wrote:
>>>>>> Document the FS Differential TX Output Resistance Tuning value found on
>>>>>> the eUSB2 repeater on Qualcomm PMICs.
>>>>>>
>>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>>>> ---
>>>>>>  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 6 ++++++
>>>>>>  1 file changed, 6 insertions(+)
>>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>>>>> index 27f064a71c9fb8cb60e8333fb285f0510a4af94f..6bfd11657e2992735998063b3ca390e04a03930d 100644
>>>>>> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>>>>> @@ -52,6 +52,12 @@ properties:
>>>>>>      minimum: 0
>>>>>>      maximum: 7
>>>>>>  
>>>>>> +  qcom,tune-res-fsdif:
>>>>>> +    $ref: /schemas/types.yaml#/definitions/uint8
>>>>>> +    description: FS Differential TX Output Resistance Tuning
>>>>>
>>>>> Resistance is in Ohms, tuning could be in dB, so I wonder what are the
>>>>> actual units here. Neither commit msg nor this description helps me to
>>>>> understand that.
>>>>
>>>> I checked and the values are in Ohms.
>>>
>>> Yes it's Ohms but not 0x00 = 0 ohms, and it's also an offset in ohms
>>> from the nominal value according to the Hardware Register Description I
>>> have, e.g. 0x7 = -12.1ohm from the default
>>>
>>> I can try and create bindings using these Ohm offset values, I didn't
>>> worry about it too much since the other tuning values in these bindings
>>> are also just register values, presumably from before Konrad had access
>>> to the docs.
>> 
>> I've taken some more looks, and checked how similar tuning is handled in
>> qcom,usb-snps-femto-v2.yaml and phy-qcom-snps-femto-v2.c, and changing up
>> the concept of tuning in the eUSB2-repeater bindings+driver is not a
>> trivial task.
>> 
>> Since this is adding just one more property in-line with the already
>> supported properties in the bindings+driver, can we get this in as-is,
>> and deprecate all 4 qcom,tune-* properties later with a replacement that
>> describes the values better?
>
> This is a new property, so other existing properties do not matter here.
> We cannot take new code which you already think should be deprecated.
>
> register-like values are acceptable for vendor properties, but that does
> not make them usually more readable. The question is whether this should
> be more readable for hardware engineers or anyone writing/validating
> DTS. Is the actual resistance important or no one ever cares because you
> paste whatever qcom told you and you do not know what should be actually
> there?
>
> I can imagine the first - that some document explains you should have
> resistance of foo because of bar, which would mean the property should
> be more readable. But I can also imagine the second. Make your claim in
> commit msg.

Would this text in the commit message work for you?

---
Document the FS Differential TX Output Resistance Tuning value found on
the eUSB2 repeater on Qualcomm PMICs. The tuning values have special
meanings, being different offsets of the resistance to the default value
in Ohms but the exact meaning is not relevant here, as the correct
tuning is determined by hardware engineers to make sure the electrical
properties are as expected.
---

I'm trying to avoid resending the whole series if we're not yet aligned
on the wording.

Regards
Luca

>
>> We have enough people at Qualcomm by now that should be able to do that,
>> and have the required resources to answer any potential questions.
> They are busy sending vendor/downstream tree patches...
>
> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
