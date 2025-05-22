Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46530C54ED0
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 14:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVA43HODwPz1k2gLLAbGapuGAzafYmFPR7bIDCW0MYM=; b=2AlIqvnqTAcVHO
	t2aTJ4S9K1KwKmQy6WBON5eH38Tt7CQojCAuW6W6dDF3Gl0JOYkG155oER+y1IVUT+NRgDlWZi2Df
	iB9G56Q8ShLz0Hln81lc/x1EpKVYvbhwz4/RKaEGjE2+pvsIMibFzKDoEE89xsAE64Y07T08PGeXP
	99/LzjwVhg02QWYdCLhBfDMIieZR/Vd9Jg70tGTJxURl/tI3QDRPF5doc3tR7ks+Ww91nkb/8vsHP
	K9eR1dgLNYxWAzvR7w1nLan0vguFYabo3f49yWLNdLH71ADOrXTOKFrrynTmAAoisBEhmoCRca0ul
	MFL753W5Wsv0jL/EC94w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI7Ns-00000001LxV-0APN;
	Thu, 22 May 2025 14:59:00 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI75M-00000001Hsf-146s
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 14:39:53 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-601956fa3beso9278651a12.0
        for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 07:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747924791; x=1748529591; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5dUW3XcT56QSO6IzrjYqsZTqvCBor25DIllhfgnMqf8=;
        b=pKQxsa8wutM/7HT9Ow7lClDdd1GkscKHZuUloE6qluYRVezHWr+8xSShHzr8ytnWdy
         KbWV1r9zTBgtq76HOikzT8kcyUUOl3gI/BHIoki2KBhkkPRzdi0GlGj3rw8Cpvn++ZGV
         NWClrX7aqNXZdsM+9Xd2LapzS2fD9jFgMaUjXcyKYtxXg2ws/HqeQVPLb84MPP5uAZCC
         R8os/fcQGZvJa2H+qLrqATKHJf/cB6i9kYlwgCLI8sv/ZtzZoAsIu11LZpUXyWzjzbcY
         mG8kO4OveZhDyxd/Ar4ZQxJv/gpkTZRIhZ4o0KikS9JtTYgLsvzBp/7M9FCgjpCtaqdk
         t/2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747924791; x=1748529591;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5dUW3XcT56QSO6IzrjYqsZTqvCBor25DIllhfgnMqf8=;
        b=hfIiTl5094fR2w5iXjZ/M9Q6i+S2NhoNBnpaS6+O+Rhnds0+I9tDeFYUQ00pyYu8Sj
         IFAtchz3fpU93vLwQ+rar4w42BrGuy4HXLfAcBuCeVaDKuz4CDUrp2q7veAHde1BJCzS
         nCvxvfQf5YugXwRQkT5p4xtDyWUt/mIAUQn2ySZT+m40W2wM0KDMlD28NbbDYRwcf5Qn
         MzQXhcfGPtRy6TtDqkhp+poNqQL/TnwPJSkOjstjNvM+L0J+NhwwnLG896Bw4jKGUH67
         850v+ay2/rVxiMN73e9QsLwpFJIjMOK/S+eAfXXbV6CwFHt4kBqwD1yqRvO/ANmiOZRW
         o3Ng==
X-Forwarded-Encrypted: i=1; AJvYcCXU/mxxNPCpxrwwW6tQ1oAR7Nz1i3gQNqBuFhpVoi9gJhPSYtUVVILXfnBt1eJsjYEU1pS98Bff4Aw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjM9yxPuoN/hRk11iqiIOmeqW8y89lGcQONyFbPN/9xZG0ENWz
	xC/WJOS++j/znawEDXckNjk7tciFKrFsLIeBrhXi7zWfpkLuRSL6Omk0JCQHKe7F1S8=
X-Gm-Gg: ASbGnct5anbpxdDGs1bODtybWGXAvXmVzFzBgBVWa745lVugGttOfynYnn7otfDebGh
	8gIKXwA/n+LSFN7qwnjjY0lSL3SzF6noR8PziAvOihmxO2CVdad4D7x5QnbSh5kg0lY/k2Bx910
	z4COmC+9NvOJijJuGemRJYzNed9/3usVNonZot0Jrg3aiUHul7LrgBhDOsz1QN55LwnZWegyh7U
	XNu58iuO04n/na0onLYiH3pP/14ANYFD1ANgb3k1gpj6bbhosQ3muTJHXewzKqKzYdZQYLe0d8w
	5PnrIHLQoPupa6id2LlBQJ6fuZxQFfFixTvOnlmOh9mc97ZVZ831fe3Tdnw=
X-Google-Smtp-Source: AGHT+IE/RdKTMZdYx9F6yx1Kzprvz+cSKkMQRkLYiOsz7mEXFrIWg/Hdk4IKesUgJcilzgg+XPJrLQ==
X-Received: by 2002:a05:6402:34c8:b0:602:4405:777b with SMTP id 4fb4d7f45d1cf-602440578f8mr5149377a12.24.1747924790721;
        Thu, 22 May 2025 07:39:50 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6004d4f1c7esm10543212a12.14.2025.05.22.07.39.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 07:39:50 -0700 (PDT)
Message-ID: <797611e1-3786-45c4-9103-3ee8f96cec6d@tuxon.dev>
Date: Thu, 22 May 2025 17:39:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/12] dt-bindings: phy: renesas,usb2-phy: Add
 renesas,sysc-signals
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com, kees@kernel.org,
 gustavoars@kernel.org, biju.das.jz@bp.renesas.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-hardening@vger.kernel.org, john.madieu.xa@bp.renesas.com,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
 <20250521140943.3830195-6-claudiu.beznea.uj@bp.renesas.com>
 <20250522-evasive-unyielding-quoll-dbc9b2@kuoka>
 <b22e7a46-7e35-4840-aae3-a855c97fbde4@tuxon.dev>
 <4a07048a-c55a-4fd3-b4e5-7f9d218de76f@kernel.org>
 <68d83aaf-280a-4c19-becf-c6e1d9c2432b@kernel.org>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <68d83aaf-280a-4c19-becf-c6e1d9c2432b@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_073952_291228_3D43FC58 
X-CRM114-Status: UNSURE (   8.81  )
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



On 22.05.2025 15:48, Krzysztof Kozlowski wrote:
> On 22/05/2025 14:46, Krzysztof Kozlowski wrote:
>>>>>  
>>>>> +  - if:
>>>>> +      properties:
>>>>> +        compatible:
>>>>> +          contains:
>>>>> +            const: renesas,usb2-phy-r9a08g045
>>>>> +    then:
>>>>> +      required:
>>>>> +        - renesas,sysc-signals
>>>>
>>>> That's ABI break.
>>>
>>> There is no in kernel device tree users of "renesas,usb2-phy-r9a08g045"
>>> compatible. It is introduced in patch 11/12 from this series. With this do
>>> you still consider it ABI break?
>>
>> Then this patch cannot be split from binding introducing the user. Don't
>> add unused/undocumented compatibles.
>>
> Or you meant DTS?

Yes, I meant in tree DTS.

> I asked about ABI which is not about in-kernel users.
> You can always change in-kernel users, so what would be any point of a
> binding and its ABI?
> 
> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
