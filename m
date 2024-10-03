Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 628E5CF34CE
	for <linux-phy@archiver.kernel.org>; Thu,  3 Oct 2024 22:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aex8Dv6LYwW35qmLgOLVVPnqyG9ZMUV6weXXO19BVJ8=; b=iOiH4u/eij4eg4
	7FfSTihncgj2nmxxKIqT3mGxabeYbrL5T8psazPJfpgAYftJ149DDCscpJoqMeF+I24FF5kehdDAA
	YdSzhlLhJ+5eOvU7jpVtGeQ9ZpomT6HXhalqJ2BiLJdMcpKWhPJzQn6MqjNNpKNTuNRhaHkko3bXN
	zOnY8Tv+OqaTqLz1Jkm34IqyOICpmyx6mPj+VSYxj3iZrIf/lKjSq/fKpeb+zld7HB2l4qGMJrlwt
	pDQbMThJm1P6Eo/lxekSI6GVERwMsYhyer/T44KYrriUt7vuyDVPwR2BIhySr5viBLrCXHBJO1aJX
	kxXGxLYkfAZhPxVdFwAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swUbz-0000000AYje-0PI7;
	Thu, 03 Oct 2024 22:47:55 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swUbw-0000000AYj6-2Imd
	for linux-phy@lists.infradead.org;
	Thu, 03 Oct 2024 22:47:53 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-7a9aec89347so95254185a.0
        for <linux-phy@lists.infradead.org>; Thu, 03 Oct 2024 15:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1727995671; x=1728600471; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=BmI7J28E3beeW7Za6bfO3DcDy4O3gXqVpIn/O1z49Fc=;
        b=ZXWAdsXzU6NDjT43NVCoTBXc76NjD8O7QoklobhM5nY2mLHvRdoiDN8ZeOdT8ep0OD
         ea4HMuhQLJWVTNCBX1lAnOqfZYPVR9seTzZ2UsQ5QM8/y+fus+n2R6S+dXoxjW85PD5t
         RVFYAtGKl4QBHUpr//dfaZ0Kr7tAWr15IjlSw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727995671; x=1728600471;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BmI7J28E3beeW7Za6bfO3DcDy4O3gXqVpIn/O1z49Fc=;
        b=b0J8AbqonQf6SHVP36PLBqbK+9hLvv1ISgV6+qr2HxqoP0RMgdbWYQZ45bxjOHGEUf
         h/P7C5mYpTHrZN2wKwrTxJrrWIvbNPi7mO7egqKwp3TYcg2h28Z9Un1nmIzVsIOrcApy
         7Kh3Nk3xvMn3Hz3ePNprtcWlrFeFczurkReL+RGYk0d5B6sU7foXmwrOEMS6X4OzJE5w
         CMcwlE4A+ZkLVENcT2QobyFj/0izjyDST0fcmJTJHSGqT4e32yumboByyLFC8eOBfICE
         fTVLNL/qABbDqOjegULwJxBBZnD5wfQL2UIU5L1vYwBNCTtf4S3Wa2O515knkPlAmFsZ
         DriA==
X-Forwarded-Encrypted: i=1; AJvYcCUvp2jz9lVr8qDqV2FzHlcOHjK4ZlL8M8s0AX1vFBfOMa0YllldpmZ/Hyd1bdtd/s0e2PpS+xBsg6c=@lists.infradead.org
X-Gm-Message-State: AOJu0YxgFWIfwG0/ykdg8cvC3bonO6WM9HvRpuhdsMcHa7xDWB//ND5J
	nmtTPY8/YiIGyEHRkX1DdpHLfh6ObclGvMp7q4E4gsEwxFykukPyrOPO+iSWfg==
X-Google-Smtp-Source: AGHT+IEt7LKLogphV2L/o12c4qyB1t73zE57xNsz9cd76L1N7lwhnXI0lbod2xDOcxriUz8GrfImOQ==
X-Received: by 2002:a05:620a:1a0a:b0:7a9:d0d2:a5fd with SMTP id af79cd13be357-7ae6f4864bcmr108258785a.49.1727995670727;
        Thu, 03 Oct 2024 15:47:50 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7ae6b3a2e71sm84421185a.55.2024.10.03.15.47.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2024 15:47:49 -0700 (PDT)
Message-ID: <697604f4-ea38-4cfd-a4a8-3a346d4735db@broadcom.com>
Date: Thu, 3 Oct 2024 15:47:47 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: usb: fix Broadcom driver table indexing error
To: Sam Edwards <cfsworks@gmail.com>, Justin Chen <justin.chen@broadcom.com>,
 Al Cooper <alcooperx@gmail.com>
Cc: Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20241003211720.1339468-1-CFSworks@gmail.com>
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
In-Reply-To: <20241003211720.1339468-1-CFSworks@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_154752_623172_4F2E2E55 
X-CRM114-Status: GOOD (  13.28  )
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

On 10/3/24 14:17, Sam Edwards wrote:
> The Broadcom USB PHY driver contains a lookup table
> (`reg_bits_map_tables`) to resolve register bitmaps unique to certain
> versions of the USB PHY as found in various Broadcom chip families.
> Historically, this table was just kept carefully in sync with the
> "selector" enum every time the latter changed to ensure consistency.
> However, a recent commit (see 'fixes' tag) introduced two new
> enumerators but did not adjust the array for BCM4908, thus breaking the
> xHCI controller (and boot process) on this platform and revealing the
> fragility of this approach.
> 
> Since these arrays are a little sparse (many elements are zero) and the
> position of the array elements is significant only insofar as they agree
> with the enumerators, designated initializers are a better fit than
> positional initializers here. Convert this table accordingly, fixing the
> boot-time crash on BCM4908 in the process.
> 
> Fixes: 4536fe9640b6 ("phy: usb: suppress OC condition for 7439b2")
> Signed-off-by: Sam Edwards <CFSworks@gmail.com>

Thanks a bunch for the fix, good catch! Sorry to ask you this, but since 
this is intended to be backported to stable trees at some point, would 
you mind breaking this up in two commits:

- one which is easy to review and audit and which adjusts the BCM4908 entry
- another one which converts to using designated index constants?

Thanks!
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
