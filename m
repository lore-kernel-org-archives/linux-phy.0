Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 724C6CFB44D
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 17:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXoMLw/gYTJZVQr6Z8BJ3K+27aJTJFlegqz2lTzaylo=; b=rJ9a+7S3K+toxh
	KMqUg35zBQ4bp6ry6eyJTNZU67qcPxVuPgPlppD1pVqGIB5m852JgXfz1jpPV29Fya0+sCPEtAI1b
	8j2KscVi7jRVVm1tDoPL0GMAFKnL77of4cH1w22KdICyNwg2Y1522/xks7olKzl+x8s2wJqrL5JRF
	twUl2sfpApQcm8+pWcmNYOksHX2xWTz45L1sbtRscix6lZD/VNQysbCU4oY/UbHTBZM95ISM1/Xc6
	5OE2jPAY3QAwt9yMgfavM0VHIF0JXnsE6QXQNIqxilGciYROZAVdzZz+A+palrvFcBlvnLHTBDrkf
	OsnfYYJX1rcmok5IThKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxrDg-00000003Hfj-0dub;
	Mon, 07 Oct 2024 17:08:28 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxrBX-00000003HID-0FQs
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 17:06:16 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-2e0af6e5da9so3456678a91.2
        for <linux-phy@lists.infradead.org>; Mon, 07 Oct 2024 10:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1728320774; x=1728925574; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=w3dKnbp+ul7Hd8TY2t1UblH9+oLc+IM3YRFlz/wkkwA=;
        b=C36Bapm+9KNjkGLp+tgN9LIiV9eEokb3j+2HAY/VJmwptOPDIfHHDBnvJL0nIvaYPV
         hiCmbhuL2SrSrNDxh6IMTZTHzhskv+gdrzyWL9eDQ3dbuXvWDx81IqvdJwC7cXOfF5ni
         e9EP9M7Nf653cKM55GvrpU6bEKD/lE7qjDr6w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728320774; x=1728925574;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w3dKnbp+ul7Hd8TY2t1UblH9+oLc+IM3YRFlz/wkkwA=;
        b=WhhcBY3vX5pW+hArUh1XwjHJcwnVI1bTLPYspHfSqTxFcSelkUwDdQfMsv28TQFVME
         dPkTXI883VfyQ0W7vGVWqLUpIZdVIeiRh9WiRNxVz5f7twHSAp7dq33PXEh75f1om184
         z8vDcI6//arvvKdzsbAm2U4Lsd9zYa+dujZ9vgca83VMZZzU73TeOZvHUepMNInuJzuI
         /3hqurOXRNwxj3jm1rkUiIwRN64GhowJ8xDCnJr4Ny+4ujaePI2WIoEOaTNS24R7LdOc
         ryJLcwBwQKZ3fg24IudaPn4UFy4wu70nKx+QEMSlr6edPBPc8SqS0R9MnrEROO2E0SqU
         4Hzw==
X-Forwarded-Encrypted: i=1; AJvYcCV3LhMUTcmBkSoV0WLisY7trcm8zkp/SLHAmdkRZ73GBtOTJ2H23VsrdtZpEKj0Z07lzYLVNsWnE68=@lists.infradead.org
X-Gm-Message-State: AOJu0YwPmDwtgTjfkCy/Dj2hsUAtH7E0dAhW05PaeaIu/mw+VzW83e13
	2/Kgf9PfYswGm5rx2COD7tDu1z97idWwxrTev3+I6LCACUHmBnm4Qm2+9zYD9A==
X-Google-Smtp-Source: AGHT+IHu0ieKAwZ9GWz0XksXyMokN3WZBcdcx6rzGNoXhpTLFK46e2YKF1n5YwLVRs686AVL1EDY2g==
X-Received: by 2002:a17:90a:6003:b0:2e0:7560:9338 with SMTP id 98e67ed59e1d1-2e1e63222c3mr14612732a91.25.1728320773812;
        Mon, 07 Oct 2024 10:06:13 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e1e83ca394sm7442483a91.1.2024.10.07.10.06.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2024 10:06:13 -0700 (PDT)
Message-ID: <d20fbf91-e7e9-4f0d-8e4a-0c5364f73bc5@broadcom.com>
Date: Mon, 7 Oct 2024 10:06:11 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v2 0/2] phy: usb: Broadcom BCM4908 USB init fixes
To: Vinod Koul <vkoul@kernel.org>, Justin Chen <justin.chen@broadcom.com>,
 Al Cooper <alcooperx@gmail.com>, Sam Edwards <cfsworks@gmail.com>
Cc: Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20241004034131.1363813-1-CFSworks@gmail.com>
 <172831613316.134526.5485203085922304367.b4-ty@kernel.org>
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
In-Reply-To: <172831613316.134526.5485203085922304367.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_100615_177812_7F77FA1B 
X-CRM114-Status: GOOD (  10.80  )
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

On 10/7/24 08:48, Vinod Koul wrote:
> 
> On Thu, 03 Oct 2024 20:41:29 -0700, Sam Edwards wrote:
>> This is v2 of my previous patch [1] targeted at resolving a crash-on-boot on
>> the BCM4908 family due to a missized table.
>>
>> Changes v1->v2:
>> - Florian requested this change be broken into an immediate bugfix (w/ the
>>    'fixes' tag) and a second patch containing the coding change aimed at
>>    preventing this problem from happening again
>>
>> [...]
> 
> Applied, thanks!
> 
> [2/2] phy: usb: update Broadcom driver table to use designated initializers
>        commit: d3712b35f3c694cb932f87194caafc714109ea08

I looked at your tree and both patches are applied in the "next" branch 
and the first one is also in the "fixes" branch, thanks Vinod!
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
