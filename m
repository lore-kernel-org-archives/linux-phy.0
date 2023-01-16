Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C515C54EBE
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jan 2023 19:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7nMS2r3DsBpHf1+FKg9cQfgujZTxuHv+cuRN2X5Ut9c=; b=cmuaOCixthBb5c
	42HbkazjZKANePvgEDNFt9LeRP55ACBLrd+zxEDsnUkTtIBeqxl80GXR/Rd8ICK1/gMp+eOrLjS7F
	MFPQxGrnMpsLYg4jH4grvCJ6Diq0COD937uz+IZY41WkTnH3rbCyjDj4pZNQJPSfjKbihj7GD/7Jq
	M2jgrKGMt/yAU220rGL3N1fE2aMnGu9COPkeAf99zRx4Ff6nS4gmA0rM/kNQ/ur0QEb2UzY+xzuEp
	vwKrqBUHKyEckPb4RaZiMzV7b3IW6OacK6o0KrFEtKaHvIfsaJwkdGgs9vFxx8mMsjqYcehxi1SYO
	EwR+2nNmDAIrEIJ846EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHUjn-00Bo0t-P0; Mon, 16 Jan 2023 19:01:43 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHUjl-00BnzN-IZ
	for linux-phy@lists.infradead.org; Mon, 16 Jan 2023 19:01:42 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 18so41934505edw.7
        for <linux-phy@lists.infradead.org>; Mon, 16 Jan 2023 11:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gV8YKiyC4XQgkQ8HT5ZnhD72I1bcdeHNkkR8d7l2kAc=;
        b=wz590QBZ9n7SqAT6woa8JJ7aMqVrAi1iq7PTbO49b5ZEoG5TTC5TO+CM6KFQcBIz9R
         Jz2Lx5t/3kRWyvalT6zFMM41kM3ZNuIoyYFOK4HWFNhGG72+Eu0L7woT0PJ7SzsBGOBu
         1kaA02IcS9qNf/qWPDheFuy/wOQSc5R//+zuXI2dd9Vty5vc/9CgRuBNLVQ+AAnCt8RK
         8Vqx7V5PJJOy9Ay/qhJHNTkywSqF1theCFkxlMlB3eh8xRWRjaqajxEEYNbAbvDBRhkD
         zym5L9urPFU8uILfNUNPJwGkpqFMefnZGUNtdVc7EDPV0v3J8c5JWjP6JV0KBqrESkmj
         Y6+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gV8YKiyC4XQgkQ8HT5ZnhD72I1bcdeHNkkR8d7l2kAc=;
        b=jua7MPZE/ZVgrZS1oOLFtm1vIrJ0RU63DjdohKaFvOqEG7yjFBnLcO5kO2s4VZUmyV
         gW/fnyR5YVdZN+YTmhqJ+T53ZoKisgW9doyANy8mPed4EhVvowoH2X93B5yx070XidPZ
         MsuAhaEqQGnCqNgB43YX8Yow1rfJJhMa6/dZUdKQHbdfFzVB1frIH75UkMeL5Q8iaUQO
         svY9RTF0dInXtuVJcejyW/ab7J8qD/SYujlGuuXKnUzg4RiGDLnRyvHfNz36mb6snJHC
         PZoVGvFnfR3kh+CN3oN//g6InsmhLAvF+0iRvr+yNd0On4YAdOyerp1zmWNvCq9W9iq7
         Qcxg==
X-Gm-Message-State: AFqh2kqAcwlGnpF+whdM12OZrC4P14Ig9hlPe7EREjsQr0qpRIOPBpGd
	ghqHJ9+0iNb3jDpXEkafjEQEZw==
X-Google-Smtp-Source: AMrXdXsmXfiFB/4Secti9mKyegCCIxsGpBAPMb+KlSGitXE5MGm6OdBqWGLVy1ca67ivp1/3f/1I8Q==
X-Received: by 2002:a05:6402:35c1:b0:46f:f36b:a471 with SMTP id z1-20020a05640235c100b0046ff36ba471mr469094edc.22.1673895698702;
        Mon, 16 Jan 2023 11:01:38 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l12-20020aa7cacc000000b0048a31c1743asm11686821edt.25.2023.01.16.11.01.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 11:01:38 -0800 (PST)
Message-ID: <ecb38da8-ce40-7b26-2fb3-088d859af814@linaro.org>
Date: Mon, 16 Jan 2023 20:01:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] dt-bindings: phy: g12a-usb2-phy: fix compatible string
 documentation
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Heiner Kallweit <hkallweit1@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-phy@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <fae86fd4-40f0-ce6f-f3ab-d5e0cff019c4@gmail.com>
 <ba8104e3-efb0-e092-573c-0e1ac57f1052@linaro.org>
In-Reply-To: <ba8104e3-efb0-e092-573c-0e1ac57f1052@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_110141_662221_A1B752EC 
X-CRM114-Status: UNSURE (   8.82  )
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

On 15/01/2023 15:53, Krzysztof Kozlowski wrote:
> On 15/01/2023 15:19, Heiner Kallweit wrote:
>> The compatible strings in the driver don't have the meson prefix.
>> Fix this in the documentation and rename the file accordingly.
>>
>> Fixes: da86d286cce8 ("dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>> ---
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

and un-reviewed. As robot pointed - please test the bindings before
sending. :(

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
