Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 562B4EF5859
	for <linux-phy@archiver.kernel.org>; Sun, 15 Feb 2026 05:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWbZmUwHKa18iaRpPMqIUXgtj5w+9hqZK3oVqJg3T4U=; b=YZFMJ+ImruYSvG
	MRDTTtluTrIyi8Lia5w23FX1uyVfHzPc8qA5yi0bgimcezFIFze6ZNWyg74echSw9IlOf186m/8g4
	EedKV60yJMBlHWJawgvcFZq3oYcxusSwBvH7YE1+l8IFWxeDHavWTc41Sa3mOftXon6OaIDtFvpjm
	vcqeYN9Qyj6T7n7nx4xbEjhbJjcPiSqP6fu71Ec6npNDFkLHzgB/mIA63m91IBNBT+hYXsLDA7n18
	mjcURBxcDYGEPHxMjvSW2pto7BYOJvpIeJyHWVqp++hTn4ueaPu4C6mPd9zuNZodsCiq7KzdeOgKo
	mygFKR/NmK3dpk5j4MFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrUzV-00000005C4R-1kpN;
	Sun, 15 Feb 2026 05:48:21 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrUzT-00000005C3z-0KVw
	for linux-phy@lists.infradead.org;
	Sun, 15 Feb 2026 05:48:20 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-824b5f015bcso2533604b3a.1
        for <linux-phy@lists.infradead.org>; Sat, 14 Feb 2026 21:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771134497; x=1771739297; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B48NNf1YJcuHdmdFyYwGz74LGN+blqEWKGYew4mmQ3Y=;
        b=famP+gfZCA58TkbBj7159IAfqVG6t3jXRuUImdwUVB1mZBqtIgNrVBf4hwGUaGiIsR
         oGaNmBcff9aicfm2u8Bx9S5oDYAyyZ50SeerLgCP5Vblp0ftoumGqa/jMkkKwkE136uP
         fxRryyd2sbD4Mt/fTM6e57outpYovgGUiQbF4oiPBSSBNVckiEtYe94gLJ42FPwkB6Dh
         rNOEW5GN1IRW4+qV5E0l5/DPo3ItGMrQJmrVWiGV+YP8QkefLh+TSZy5vAGAX43/ITGc
         CIrkAV0aeEAzYb28MnsCz4Yq+QDrQ+VX7yUkk8FODNIaKxeiYaIIDawIx+Nj2Zyh9bZB
         Byzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771134497; x=1771739297;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B48NNf1YJcuHdmdFyYwGz74LGN+blqEWKGYew4mmQ3Y=;
        b=uQ0/EPE5MDfRt8kaLqpWw3gFPxXYouoF0iGOSoFePCbmduIhmhohaveunruM1kRKJu
         lXzEsrg7tpzq4n2oOICyAFtCbkiu4nkArrHQM1dAOdT0fgnMEWv79831OyO9wilTWMLP
         SN0uTIP7LC1u+O9MxoFjVQG4N55FXo9L4gYK/EOKNHrco6h9wGcK4mzwXMxuC8HkClBe
         Ci8yo7+ao55812COX8f/k2zeGmWhnDRAMi0CfrxjWAqvAUrNwHSRb8pucqeBOm5uM7zC
         u85xpErhYI/AWXR/v4nxGJmcKPsIUYnUdvyGdE3tZbnGfJa2O2o0D40+207hmC8fNL7D
         gbXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfBmDyVQxvt0x/Q4+Xwu3NryCK1KjfpDh9JJml3eGWvdbwtgSDthtKapWnL3SIeW0JRUnY1fNR3ZM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2N8yQnn+KxfJaqduDz/wv5ju9HOboAMV1OBUk+ZgMynGAYsa3
	wUTUPghKbDsPpoflZ6keazDDsuAttEvn33SSTJEXKFPNuTu7pk7W/8UM
X-Gm-Gg: AZuq6aKN1i9ON/409iq2ZN94f4oAiF99dYA9KQQDd1FRAY5yM6ttiV8+xbcxkwKQH+q
	G/DLf0oLnKn1bbOO5EX49B1X7HyOicVOHJwDh7Sudl5SC9RpalzHApBi4YiS8UheS6BjXqqrun6
	wfCbHPc1yXJ+V//LeCHKcr6oX2jQa9QAWm+TqHtXe/4pCzSnZh91wd6RocXd+XlrBxWlGz/VBmb
	dHDqz7u/pSjo2oRdgrMLaKctJo057fg8NGlvgGIKqQZBez+ErTyK2p5O/2ScLcu7/peKPYic7t/
	u8ik7MzL9wc0HDOamJ4gcb0XRRA5ojZManiYAZQLrhcThoSWPvSie0G9QgCZk5N5h1NsAOdIJhJ
	VLOYPtezz/kxSgm+ImAgtU9WC/D2z8CoHk3zUFZKoZOHFtFaU2mPSAH1tbb6QOj9Bd63Rkqt5vm
	zceO8xUUtNGeBrV+PrdcueFjtfWuApBt6nCFu+59HJ3mo=
X-Received: by 2002:a05:6a00:a883:b0:81f:22ca:257 with SMTP id d2e1a72fcca58-824c5ef0916mr7245870b3a.20.1771134497374;
        Sat, 14 Feb 2026 21:48:17 -0800 (PST)
Received: from [192.168.1.4] ([27.7.171.51])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6b6a17fsm8677833b3a.34.2026.02.14.21.48.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Feb 2026 21:48:16 -0800 (PST)
Message-ID: <26b05fa5-b985-4e21-b848-7427044b04c0@gmail.com>
Date: Sun, 15 Feb 2026 11:18:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v4 0/3] dt-bindings: phy: Convert TI OMAP control
 and PIPE3 PHY to DT schema
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade
 <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>,
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Roger Quadros <rogerq@ti.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
 <177021985530.133434.13436195442562231016.b4-ty@kernel.org>
 <f60156a6-58af-4548-9dc3-71c71b822343@gmail.com>
 <20260213190054.ezblztj3blmhtywr@skbuf>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260213190054.ezblztj3blmhtywr@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260214_214819_130438_E8742011 
X-CRM114-Status: GOOD (  20.45  )
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



On 14-02-2026 00:30, Vladimir Oltean wrote:
> Hi Charan,
> 
> On Fri, Feb 13, 2026 at 10:06:16PM +0530, Charan Pedumuru wrote:
>> On 04-02-2026 21:14, Vinod Koul wrote:
>>>
>>> On Fri, 23 Jan 2026 15:39:01 +0000, Charan Pedumuru wrote:
>>>> This series converts the old text-based DeviceTree bindings for TI OMAP
>>>> Control PHY and TI PIPE3 PHY to modern JSON-schema (YAML) format.
>>>>
>>>>
>>>
>>> Applied, thanks!
>>>
>>> [2/3] dt-bindings: phy: ti,phy-usb3: convert to DT schema
>>>       commit: 62c9ff8fc20d23c0dc36be1330734fdafb3e8585
>>> [3/3] dt-bindings: phy: ti,control-phy-otghs: convert to DT schema
>>>       commit: 7878306d182a1750583a325a29e5ccab9ce0235b
>>
>> Hi Vinod,
>>
>> You missed to apply the first patch which has DT node pattern changes
>> and now this dtb check fails in linux-next as these YAML patches use
>> the updated node pattern. I got a report of errors from kernel test
>> robot.
> 
> If there was any request formulated to Vinod to pick up patch 1, then I
> also missed it while reading this series.
> 
> Usually, dt-bindings patches are picked up by the subsystem maintainer
> while DTS patches are picked up by the platform maintainer. If you know
> that there is any dependency then it would greatly help if you could
> mention that upfront, or even specify how you expect the patches to be
> merged.
> 
> In this case, I expect the warnings will get eventually resolved when
> Kevin picks up patch 1.

Yes.

> 
> To avoid warnings from being introduced in the first place, you could
> have
> - requested all patches to be taken through a single tree (requires
>   maintainer coordination with ACK from the other one, more complicated
>   if the files touched are under heavy development)
> - requested a stable tag from the first maintainer, to be pulled in the
>   second tree
> - send patch 1, wait for a merge window to pass, send patches 2-3

Sure, next time I will follow this procedure. Thanks.

-- 
Best Regards,
Charan.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
