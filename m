Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E469ECAAA1
	for <linux-phy@archiver.kernel.org>; Tue,  6 Sep 2022 07:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+FvHyaFgWSbKkgDumvOTQ7pOe9EjaKovtmx7PqXKdM=; b=YoWv4WFt9JRkAP
	NeNE6wKf1oqmtSWjM+e6/uLJ0VpsEPejpuUeYrY7E/4b3sV5rfhnbfJ4GPD6+ai31mPBI2khP4Gng
	0KOMDbhZ8zQRrSEt6j5vRsgLf304KVbulWFhaqeXsKLSFZu2sGc4sL6O/5vBONvK9Am0viDZe+6QX
	Obk8xSsusq41Pdvjm8Q96jKEuyrFaFqP7W5GfCqNn/77xsvn7SzkUN7aBnzY9BUd3u49nujNus61N
	dkOYYvFTz9G5h0EYjpCm3Qe7PwJz/ERS8CEVTTWwt+Uc7qmRwzG5qbwWOr6//M4aioJcAeoyeG+xc
	H412V49pOxWwqLZhHJuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVSc7-00Adii-Gd; Tue, 06 Sep 2022 07:03:15 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVSc4-00Addr-Qs
	for linux-phy@lists.infradead.org; Tue, 06 Sep 2022 07:03:14 +0000
Received: by mail-lf1-x132.google.com with SMTP id z25so15984683lfr.2
        for <linux-phy@lists.infradead.org>; Tue, 06 Sep 2022 00:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Vh5dKJp8XgybaVsAxsDRTMhVft4uU9zUN/Q42DYvyOQ=;
        b=K0mgYUOSou8QTlHcWhgwVshbgWLtJ1Eab3Sx8oxOBkZ35lLxyfk1myRr+wT9OIrm1f
         SvN4RyuEgytQQ0ubS/YvvQIU1TqX6GeWdCuiwYLZ4LanwnEOqBaL77rIgB27zfnCRjDQ
         8SA8G3pploFaxzyEC+vZEb02+7lIrGH6Cpx6Wt2kdNtIxceT4pFXZ6pwL1MBYFVOCxeY
         9VpZqwwbyDjHLawD5I74XsZSkBrtABF5/TdSBkiYhpl3Bo8ER7bi6kZt7tiURx3NQR9a
         +hfPVuGG9n25leSTr+lhBXP7Q20h/5chBiiuXWsIoyZr3YKP4nL60Zc/nczXceCMgAh5
         xjcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Vh5dKJp8XgybaVsAxsDRTMhVft4uU9zUN/Q42DYvyOQ=;
        b=5EMbDiZ81Dz4MZ9jxpY7xs8gFim06742qTC4NgyCh0+Pc3xrjJPly206MC2+Dq0H9f
         slzbvVd/ZEDF4mgj77XHtFILQ8tJ1sDAuadxwDWfe7GFYi+8sDFU6jVy9nNFKUr0jya0
         MDj7Tq2z5q5jNkXByIR/GavRdvIoy/6e49oO6Fr/YmVdGM2HanV8WXfGnz9at37CCMI2
         manYbYDBfhvU3+gQmIqxYyZcYXzAg5nmzhQgFISnVN2/Ydbo2Mo+F2sNs8Oq6hjJ1SdL
         LGVOaz/SkGFOqwP1I47Rfif5RLw9NzqxFyoUtQNKgMKajCkGNXzzEXMhpCw6yhRts628
         xIpQ==
X-Gm-Message-State: ACgBeo3beF/gEcq99/EbpvYuKgEmW7sevFlWz0tFv11G1RgNIiaCWcKU
	vQIDth8ULsUfrJW80odQg55nAA==
X-Google-Smtp-Source: AA6agR7mE1s888VxyPAUOKHJ7M6JWPPOgX1u4M252CbSe02wYFJxALmb9mClXYAbaayos/k2RVPNPQ==
X-Received: by 2002:ac2:4e15:0:b0:48b:7a5f:923c with SMTP id e21-20020ac24e15000000b0048b7a5f923cmr18784649lfr.134.1662447789099;
        Tue, 06 Sep 2022 00:03:09 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v7-20020a2ea447000000b002648152512asm1716340ljn.90.2022.09.06.00.03.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 00:03:08 -0700 (PDT)
Message-ID: <93600263-0211-9286-9043-fae5b017d15b@linaro.org>
Date: Tue, 6 Sep 2022 09:03:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: ti: phy-gmii-sel: Add bindings
 for J7200
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>,
 krzysztof.kozlowski+dt@linaro.org
Cc: robh+dt@kernel.org, lee.jones@linaro.org, kishon@ti.com,
 vkoul@kernel.org, dan.carpenter@oracle.com, grygorii.strashko@ti.com,
 rogerq@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20220901085506.138633-1-s-vadapalli@ti.com>
 <20220901085506.138633-2-s-vadapalli@ti.com>
 <4b681c03-7f5a-0234-2276-316e0bad1de5@linaro.org>
 <44339382-c4e2-26db-de5d-263ae5a585b8@ti.com>
 <4e61b63b-74ac-1682-968f-17e5d8db7ce6@linaro.org>
 <dfa9e613-054e-cffc-747f-27842e825cc8@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <dfa9e613-054e-cffc-747f-27842e825cc8@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_000312_898688_DA4A4B62 
X-CRM114-Status: GOOD (  11.44  )
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

On 06/09/2022 07:02, Siddharth Vadapalli wrote:
>>>
>>> Please let me know if the above description is fine.
>>
>> Hm, but that's a phy node, not address of register... Isn't this a phy
>> node representing the phy of the CPSW MAC ports?
> 
> Despite it being a phy node, the phy-gmii-sel driver actually uses this
> node to obtain the address of the CTRLMMR_ENETx_CTRL registers which
> correspond to the CPSW MAC configuration and are therefore unrelated to
> the PHY. Please let me know if my suggested description would be fine.

Either I miss some more pieces or this is wrong design. The phy node
should not be used to pass some addresses somewhere. It is used to
define a device which will be instantiated (as parent is simple-mfd). If
you use it only to obtain some address, not to describe child device,
then this is wrong property type.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
