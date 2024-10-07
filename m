Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36A59CFB450
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 18:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fjj5Q/d6cnpzcoIr/+iBagid1h2XfTM/NKFDhJ2ppvw=; b=tfrNxsv/9dxUnW
	fiXaMDIZCcQw1t4T2NDQzAfXuGagZ9VbWkz3ogFOafrcgRkipcMHx8iTZ4mvBGuuwC1QNLa+PZ6X0
	POsa8VvcroIRrpmi3aiVSf0PNMA2ftG45iu8rbPs8wPtIKEK4sR7r74GffT5WImH8n9/UkAcY86OS
	BF6PXOC1M/iPESsH7xx++bnRnW8hn8Xg1sRt9s0n39EJPSDDPR1saOXbvWlUm2azmpvF6Md3mPKEn
	KPHToWuUFkYIpCbBomcxipJn1Yz90IR2e89xMYu5Y3HdnbDv2Al8AlCdOFFO3JQ93Pqh6LBjw2474
	6wclI0OxDbvSS/bDeorg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxsIU-00000003Rvy-3pl8;
	Mon, 07 Oct 2024 18:17:30 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxsIS-00000003RvV-0o3C
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 18:17:29 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-7ac83a98e5eso418762985a.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Oct 2024 11:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1728325046; x=1728929846; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=UbsFDaR7v+/oiyxl30AahMevLCDbWMg7zXOhg9Y+w/Q=;
        b=Ym3Q10Qh0Yc8MLeqi8UizzuHxmkCOsYz8t+XeOR7YNY5ZrAT/WJRX44rA8Fk8d32SC
         jtP5j25AnM0BsHrSvLM5a1Bcd3UkqUnlSr1eZghCvp8PIC99O7bTxiFYOY13fblNANLF
         5Phv6JLMUeAE7yJNxBx5fjX9mMSewSyWrQdD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728325046; x=1728929846;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UbsFDaR7v+/oiyxl30AahMevLCDbWMg7zXOhg9Y+w/Q=;
        b=AB4TFX09nHep8ZP8HN2KjgwUZYDQ+KxxExFfFyRNH62YnTLovyq6QL9b8NaM6IRwol
         0oHp70auKhdUGzlwAQOps39iF+Fyp+VPUUT/nrS+f0sATpzjkw+AT8wNlhosNZt91UI0
         VKzOucV3ELAJPvnn9KvTjLDfg37oLkx4K0w/JLOaJbSsquz0SdzRW2lsWIwU2zOnyDy7
         //E69eglvbFnKrjcVGOv71QdWs6cDq8o5bjJ3LKQv5tfYnW68xrIw2b9WIqIK3r9DdqS
         rIBOjJ1IsPkPzfzYy8ppK9qakQrx2KSL65IW5dQGd5L1HNrabu3xuJQ/dOahLlsZub5r
         78Hw==
X-Forwarded-Encrypted: i=1; AJvYcCULklF9Wfvrt6zLq5mJ2HTQlTj5Xf8FxuJyAIbw6qpOc6Xa5vM9lTM2DHL0lk5LuIXSKwf0Pn/iKeg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEW1QPX6wAScERMGW6Ovg5hQwGsYMadNs4XhkgJCSfBg1AZjDS
	GPXHolAw1+1YBjKBP6gZI/cpRcpoYBOsp+K76ecdQOlUd0kX++2jV/4p/YHBlpLhKefSlfr5zl4
	=
X-Google-Smtp-Source: AGHT+IFj3PM7fVXOu4zxxkXitcx59F4uG6ddCEWg50DU1XSH206HVA93m1BnZSLzA0HXhKQ4sQNZ3Q==
X-Received: by 2002:a05:620a:1a1a:b0:7ac:a9b2:9374 with SMTP id af79cd13be357-7ae85f022fbmr88784685a.4.1728325046319;
        Mon, 07 Oct 2024 11:17:26 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7ae757628e4sm279069385a.125.2024.10.07.11.17.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2024 11:17:25 -0700 (PDT)
Message-ID: <c1d1c6fa-9d5c-4dc2-92bd-4deac333a568@broadcom.com>
Date: Mon, 7 Oct 2024 11:17:23 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v2 0/2] phy: usb: Broadcom BCM4908 USB init fixes
To: Vinod Koul <vkoul@kernel.org>
Cc: Justin Chen <justin.chen@broadcom.com>, Al Cooper <alcooperx@gmail.com>,
 Sam Edwards <cfsworks@gmail.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20241004034131.1363813-1-CFSworks@gmail.com>
 <172831613316.134526.5485203085922304367.b4-ty@kernel.org>
 <d20fbf91-e7e9-4f0d-8e4a-0c5364f73bc5@broadcom.com> <ZwQkh6Vg+RgpXZdm@vaman>
Content-Language: en-US
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 xsBNBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAHNMEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPsLB
 IQQQAQgAywUCZWl41AUJI+Jo+hcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFr
 ZXktdXNhZ2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2Rp
 bmdAcGdwLmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29t
 Lm5ldAUbAwAAAAMWAgEFHgEAAAAEFQgJChYhBNXZKpfnkVze1+R8aIExtcQpvGagAAoJEIEx
 tcQpvGagWPEH/2l0DNr9QkTwJUxOoP9wgHfmVhqc0ZlDsBFv91I3BbhGKI5UATbipKNqG13Z
 TsBrJHcrnCqnTRS+8n9/myOF0ng2A4YT0EJnayzHugXm+hrkO5O9UEPJ8a+0553VqyoFhHqA
 zjxj8fUu1px5cbb4R9G4UAySqyeLLeqnYLCKb4+GklGSBGsLMYvLmIDNYlkhMdnnzsSUAS61
 WJYW6jjnzMwuKJ0ZHv7xZvSHyhIsFRiYiEs44kiYjbUUMcXor/uLEuTIazGrE3MahuGdjpT2
 IOjoMiTsbMc0yfhHp6G/2E769oDXMVxCCbMVpA+LUtVIQEA+8Zr6mX0Yk4nDS7OiBlvOwE0E
 U8AbwQEIAKxr71oqe+0+MYCc7WafWEcpQHFUwvYLcdBoOnmJPxDwDRpvU5LhqSPvk/yJdh9k
 4xUDQu3rm1qIW2I9Puk5n/Jz/lZsqGw8T13DKyu8eMcvaA/irm9lX9El27DPHy/0qsxmxVmU
 pu9y9S+BmaMb2CM9IuyxMWEl9ruWFS2jAWh/R8CrdnL6+zLk60R7XGzmSJqF09vYNlJ6Bdbs
 MWDXkYWWP5Ub1ZJGNJQ4qT7g8IN0qXxzLQsmz6tbgLMEHYBGx80bBF8AkdThd6SLhreCN7Uh
 IR/5NXGqotAZao2xlDpJLuOMQtoH9WVNuuxQQZHVd8if+yp6yRJ5DAmIUt5CCPcAEQEAAcLB
 gQQYAQIBKwUCU8AbwgUbDAAAAMBdIAQZAQgABgUCU8AbwQAKCRCTYAaomC8PVQ0VCACWk3n+
 obFABEp5Rg6Qvspi9kWXcwCcfZV41OIYWhXMoc57ssjCand5noZi8bKg0bxw4qsg+9cNgZ3P
 N/DFWcNKcAT3Z2/4fTnJqdJS//YcEhlr8uGs+ZWFcqAPbteFCM4dGDRruo69IrHfyyQGx16s
 CcFlrN8vD066RKevFepb/ml7eYEdN5SRALyEdQMKeCSf3mectdoECEqdF/MWpfWIYQ1hEfdm
 C2Kztm+h3Nkt9ZQLqc3wsPJZmbD9T0c9Rphfypgw/SfTf2/CHoYVkKqwUIzI59itl5Lze+R5
 wDByhWHx2Ud2R7SudmT9XK1e0x7W7a5z11Q6vrzuED5nQvkhAAoJEIExtcQpvGagugcIAJd5
 EYe6KM6Y6RvI6TvHp+QgbU5dxvjqSiSvam0Ms3QrLidCtantcGT2Wz/2PlbZqkoJxMQc40rb
 fXa4xQSvJYj0GWpadrDJUvUu3LEsunDCxdWrmbmwGRKqZraV2oG7YEddmDqOe0Xm/NxeSobc
 MIlnaE6V0U8f5zNHB7Y46yJjjYT/Ds1TJo3pvwevDWPvv6rdBeV07D9s43frUS6xYd1uFxHC
 7dZYWJjZmyUf5evr1W1gCgwLXG0PEi9n3qmz1lelQ8lSocmvxBKtMbX/OKhAfuP/iIwnTsww
 95A2SaPiQZA51NywV8OFgsN0ITl2PlZ4Tp9hHERDe6nQCsNI/Us=
In-Reply-To: <ZwQkh6Vg+RgpXZdm@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_111728_265889_D7F5F2CD 
X-CRM114-Status: GOOD (  10.98  )
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

On 10/7/24 11:12, Vinod Koul wrote:
> On 07-10-24, 10:06, Florian Fainelli wrote:
>> On 10/7/24 08:48, Vinod Koul wrote:
>>>
>>> On Thu, 03 Oct 2024 20:41:29 -0700, Sam Edwards wrote:
>>>> This is v2 of my previous patch [1] targeted at resolving a crash-on-boot on
>>>> the BCM4908 family due to a missized table.
>>>>
>>>> Changes v1->v2:
>>>> - Florian requested this change be broken into an immediate bugfix (w/ the
>>>>     'fixes' tag) and a second patch containing the coding change aimed at
>>>>     preventing this problem from happening again
>>>>
>>>> [...]
>>>
>>> Applied, thanks!
>>>
>>> [2/2] phy: usb: update Broadcom driver table to use designated initializers
>>>         commit: d3712b35f3c694cb932f87194caafc714109ea08
>>
>> I looked at your tree and both patches are applied in the "next" branch and
>> the first one is also in the "fixes" branch, thanks Vinod!
> 
> First one should go into fixes, whereas second on next (due to
> dependency merged fixes into next)

Yes that makes sense and is what I would have expected. I got worried 
about your git hook responding to this patch series and indicating that 
only the second patch had been applied, thus making me look into your 
tree to double check this had not been the case.
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
