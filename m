Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F712606A326
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 19:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xnpirl6N;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=NHyLiowQ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6a8DcSBBFuygQvn1vti/aiCyVUTEHTXAbt5gyX0q4iw=; b=xnpirl6NWOCTj/w9TaEz/PEKCB
	5FuMOwrxGChVDW+1MS7TBFOoOY4o9vF8N0TtAAL9uNbkjwEjnYDLtIalE2nrYlYye4L/WBws8f1NH
	zOU17xCQhHECAr9IFQ/RdK9S6u7SVnmlpkL5B6d4OOFwfpJvj+WuQW7On79vu9b/dU4SNEzJmwFPL
	ATX/43G2KfSb8qNDv9SeWEV4b/VCK42pS9iqS2vljrQZajNQXfC9UUTxzLLCjQpPLAysUDcThYBPJ
	+Y3lFJxp5wdXajbsDuqrb9rYkaSa8L6H4HTM6/Llg0d3ffc0qprKAlGS8hj7DyFrKGyoWCXiHPsjq
	Gs+JG/bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQVRo-00000001afH-1F93;
	Mon, 09 Nov 2026 19:54:32 +0000
Received: from mail-pg1-x563.google.com ([2607:f8b0:4864:20::563])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQVRj-00000001add-2VjU
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 19:54:31 +0000
Received: by mail-pg1-x563.google.com with SMTP id 41be03b00d2f7-cdba1bbde0bso452518a12.2
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 11:54:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794254066; x=1794858866;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=uQVB3943pYHcY0t4AyG05/dvIpxyl2oT97ja0CIlRK8=;
        b=NMYf6eZiyaKzly4of5xYlZl1Czqpyg/5VTXIwVdj2NqUPiZg2ZxRaD7H95xV5GwUY6
         WBBK+Ep2lNujY458OuOnHvUSZTVcyntdHGpy9E5I46zMxFrFfdUpRvHvLTigwoiIiwmt
         nwpOzmr+fA6lSZlTVlQuyIT0WOiszwiIVInj5aGHZW7jp5nHaSnnKNUbqgX/Vh+hAIbJ
         Hbuzit4rPAmdjnhm8cN58YmKhtt7o8w+yOEZXRGFbDztgzCexm+C5C1wUNEyqFAY3hA8
         pRm5vBjMj477jh/QbhYG7cn87yfRecBU6nYVjaVfnvpLbyiky945y/IEyE5Qs+buyOqC
         j0pA==
X-Forwarded-Encrypted: i=1; AL+hErEAtStj0cs9QRmjfIC/q8plGuDxmHAjopv9XvvNdu/FS7QMxYLFA1aMhD0XiXL8XTcV17pMDJDHgcU=@lists.infradead.org
X-Gm-Message-State: APuU4Z/yBAcyA0hgKamdr9jsole1xl8cu2qKt4BV5wHnpFwrcFXXw1lf
	XuCssglGErAOFEVg+OUI8SnxCiLLB7V+Av2luTsFrLuzZMKtiQ9FkXCVjtYJ4z43DFOUQeU16tS
	prN6N/Hp/gK8VncMhQLTuvOUe4k29ZzqmRjL+FyuEZZg1C8OibJIaoxPJNaVxJHclvUQKc0iCII
	Gy/r6VPDPXA8sc9TfnGfVX3amePGgMVMBP/eK+D6PWU7d8q2ZVH3bjRC4PQBmuuLWEeXU0oC1j5
	AGx12yVkmXB5wXDhOkG56BbAw==
X-Gm-Gg: AYBFou3Tp7C/bmPmWcEiIHsigoIu1wg3F1OVYV/7XNgRFniWd+BpxpjDSBOzHpJpl5c
	qv/Ew4HXsGLBgeuclQiB0Z1CSLZPrVHE0EgQLfWmiekK+ujAlReuVZHUy1aIqXh4iwH8i1FQZyl
	QE89CcOV1XL0S89LwD4zczVfLD3XRR2ZawLQXDOIa0qObMdzkP9dmO85vMs9eU+eGZmAMD/p6cB
	AYUvA1ZD6GOj5Pe6G7ZJF2bKc7XzmNE1goQe1C5JXTsHAwigyHU9ylCbWdSSo4De/bn5gK/Bazu
	6O1HK+R53eKhezjXpgRWV+oRYnAyxRvGpejvs6xlqSxxoCsctkIn0PCMZJtD0eMfDIsT7wlTWzG
	5lHMfOjAH0ZeBrSy+7OHO64uUc7Ugsep2jNz2m07onZGDHb7UO2fIB03ltqH7sAbTb726CAfX/O
	N37XxJ+hdy3+FszWIYVqpybeY0tzJOWx3LN/Mg8abd
X-Received: by 2002:a17:90b:35cb:b0:3ac:9ed8:f310 with SMTP id 98e67ed59e1d1-3b166d273d1mr626283a91.49.1794254066417;
        Mon, 09 Nov 2026 11:54:26 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-13.dlp.protect.broadcom.com. [144.49.247.13])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3b1670876fcsm327229a91.8.2026.11.09.11.54.26
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2026 11:54:26 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5363fa3d3e4so26680481cf.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 11:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1794254065; x=1794858865; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uQVB3943pYHcY0t4AyG05/dvIpxyl2oT97ja0CIlRK8=;
        b=NHyLiowQVFm/Uld7JpA8MbLEcFpf3sxeIhIqUHkvW/B8RBmaRhmc+TWTmYicgK0CZb
         4awNxO25HmCkIxLuqu/xlWHKzMGOs4ooNDgukJ+WYsK3hUZ/otCKDS3oF9Ffz0BAR8R+
         BJPmfUeITfqIUUZTA/ecBwM2J4fUy0fFxRT8M=
X-Forwarded-Encrypted: i=1; AL+hErFHiiWNEs2Cuiwx3eqtmlrRBgj6yU3TXaxclTfeKcTKKI5G5Ml7bzWAGr97+TtxQ85knoqvH7TIK/M=@lists.infradead.org
X-Received: by 2002:a05:622a:13d3:b0:535:a5fb:67f6 with SMTP id d75a77b69052e-5552b54d50emr5422631cf.66.1794254064852;
        Mon, 09 Nov 2026 11:54:24 -0800 (PST)
X-Received: by 2002:a05:622a:13d3:b0:535:a5fb:67f6 with SMTP id d75a77b69052e-5552b54d50emr5422271cf.66.1794254064457;
        Mon, 09 Nov 2026 11:54:24 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91ef04d8397sm3718296d6.18.2026.11.09.11.54.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2026 11:54:23 -0800 (PST)
Message-ID: <41d87d75-9fb7-4537-bfcf-c00831da5401@broadcom.com>
Date: Mon, 9 Nov 2026 11:54:19 -0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v4 0/6] Fix SATA support for NSP SoCs
To: Niklas Cassel <cassel@kernel.org>, linux-kernel@vger.kernel.org
Cc: Damien Le Moal <dlemoal@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Tejun Heo <tj@kernel.org>,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
References: <20261029212513.4126083-1-florian.fainelli@broadcom.com>
 <179405555432.938034.8271032337892944854.b4-ty@kernel.org>
Content-Language: en-US, fr-FR
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
In-Reply-To: <179405555432.938034.8271032337892944854.b4-ty@kernel.org>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_115427_639548_29605F15 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/7/26 04:45, Niklas Cassel wrote:
> On Thu, 29 Oct 2026 14:25:07 -0700, Florian Fainelli wrote:
>> This patch series fixes SATA on the Northstar Plus (BCM58xxx/8831x)
>> which was broken due to a number of things:
>>
>> - the SATA PHY assumed separate PCB windows when a shared one is used
>>    for this generation of SoCs
>> - the clock/reset (IDM) was not being configured by the driver which
>>    meant that depending upon what the boot loader did, or did not, we
>>    could have had the AHCI controller still in reset by then
>> - on some reference boards, the AHCI controller is not DMA coherent,
>>    assuming so leads to all sorts of timeouts, data corruption, etc.
>>
>> [...]
> 
> Applied to libata/linux.git (for-7.5), thanks!
> 
> [2/6] dt-bindings: ata: sata-brcm: Describe the NSP IDM registers
>        https://git.kernel.org/libata/linux/c/262e3bbc
> [3/6] ata: ahci_brcm: Initialize the NSP interface clock and reset
>        https://git.kernel.org/libata/linux/c/14d30246

Thank you Niklas, Kishon, can you take patch #1 through your PHY tree 
and I will take patches 4-6 through the broadcom ARM SoC trees. Thanks!
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
