Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C9ACCF8853
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 17:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUrwBkfd9nNnnj7Y7wCadcQz1zm1Bgj6SCX1toiR9XQ=; b=jJ2xnhQYYSDU6i
	kQ5xlyepyvJXWRRXHlBEwZfVvjsbfAmAsMrYSc2LVe9Mdy1ua99uW4l4F7IjEka6Rv2Z58yzS5P+L
	ne9go4cyjtwwieHKWRdFa3RC2E9j7An1GqMPeJYyoKaCZDwrQRxPbNq0yElM8G3zlJPFTs7LTf5NE
	DILPYACWOv5KeVd2xw6iz2rCI+RM92aUvT0n10T9oGJ4AkeRBzx853SvxkD3cjcmxV7zbin3VdsYf
	y7nGDJvj5wRU/lhkNJT0k5edrG7yaAk0E/tP3n0EDKutCdpyUIABQy00JNvl2AO4pn63sfxcerXHK
	HfZMFueO8vUUtZLF9Dlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swm9i-0000000DWob-2eIe;
	Fri, 04 Oct 2024 17:31:54 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swlzk-0000000DUqr-09An
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 17:21:38 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-71de9e1f374so581998b3a.1
        for <linux-phy@lists.infradead.org>; Fri, 04 Oct 2024 10:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1728062494; x=1728667294; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=MJ4o8q5oEQS7g8KtToOJ3ZqCZToccFWxlyH+Q49ZRYo=;
        b=H/ThM7cyxJqIiHQeAQi0kBvROBnW0O1/H5Q4voHjS0TXjsgm+eBvvZa3q/ppsx/gbj
         E492hNXYemZbTRDzRkMmyq+HUaTHbCq7Z7WezR6KSqkzLLgmiWB4zZvdHj1M/VAZRBf5
         QNpOvho/CqQfTMcQ3uCQRqzA1UnOuZrHVUvos=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728062494; x=1728667294;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MJ4o8q5oEQS7g8KtToOJ3ZqCZToccFWxlyH+Q49ZRYo=;
        b=Ik4vglMzCV/b0K+XDi3LSqAR2SIuLMusmIuefU9y7c1yZOOkGDWfnSR8c2JmiOsf+K
         16QKjiyRH0n8soUxgOx75VmrGLkS7/re6UHbE16Ym5aHz6DZsYsYSLGyRZXogRMFF/eQ
         mnJNf9zGyv3A/1t3prkPTEAtOVHh08aRoWHAlRhzhcWbAxCA/1Ei9wy5n5acpr9PH+7w
         5wX5OkhklghPaB4ZC9/wJvW1L/jcVHEfC7UxaqxeYGaswy/g/rdroZ2I573yPgYquF1S
         lnbvLaGcuxaN0nZj7SjTYU/aSrTAXecJwFv4y6U0DZ8IDgs5+P9ClXxWwe6oxCQWNNXD
         YWcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZEH1YXgAxCuxa4KPFvwZWvf/YaehirZ5eDLkuQwE1aP+W2L+DPXd6Ca/9ZDkTXBVnAV2SR0wmYn4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxVhht5LJcfDBYfrgwk5RAuDWgmttwdJDmpEs+5hfhKdpxHWcQY
	xwzLL/BCC4/4ZcTgR2OFJ7TDIpUdSIAh5E5GHUtRbKe+McNyVzxS9mwp++roEw==
X-Google-Smtp-Source: AGHT+IELLRtiuNu+BB+69SzdV4WvLwhEBCEnPOGL+riehA3a4uXDke+DDE2tEOMEAhAaSJSQRUdtjQ==
X-Received: by 2002:a05:6a20:6f9c:b0:1d1:13de:68c6 with SMTP id adf61e73a8af0-1d6dfa406b7mr5682364637.29.1728062494374;
        Fri, 04 Oct 2024 10:21:34 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0d452a9sm97549b3a.123.2024.10.04.10.21.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2024 10:21:33 -0700 (PDT)
Message-ID: <1c35bb90-24f4-494d-b7f0-def4d9e598f5@broadcom.com>
Date: Fri, 4 Oct 2024 10:21:32 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: usb: update Broadcom driver table to use
 designated initializers
To: Sam Edwards <cfsworks@gmail.com>, Justin Chen <justin.chen@broadcom.com>,
 Al Cooper <alcooperx@gmail.com>
Cc: Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20241004034131.1363813-1-CFSworks@gmail.com>
 <20241004034131.1363813-3-CFSworks@gmail.com>
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
In-Reply-To: <20241004034131.1363813-3-CFSworks@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241004_102136_221809_C4734EE5 
X-CRM114-Status: GOOD (  10.58  )
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

On 10/3/24 20:41, Sam Edwards wrote:
> The Broadcom USB PHY driver contains a lookup table
> (`reg_bits_map_tables`) to resolve register bitmaps unique to certain
> versions of the USB PHY as found in various Broadcom chip families.
> Historically, this table was just kept carefully in sync with the
> "selector" enum every time the latter changed to ensure consistency.
> However, a recent commit [1] introduced two new enumerators but did not
> adjust the array for BCM4908, thus breaking the xHCI controller (and
> boot process) on this platform and revealing the fragility of this
> approach.
> 
> Since these arrays are a little sparse (many elements are zero) and the
> position of the array elements is significant only insofar as they agree
> with the enumerators, designated initializers are a better fit than
> positional initializers here. Convert this table accordingly.
> 
> [1] 4536fe9640b6 ("phy: usb: suppress OC condition for 7439b2")
> 
> Signed-off-by: Sam Edwards <CFSworks@gmail.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
