Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1391BCF8840
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 17:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZSJuobaRVpc/u2h0woJz3iplYW4c01NyDFtAr0oEjY=; b=qk0T3kERRUOVgK
	GojxCzWRCpRHb3VcGKC0qvYi+Ph99vpFyNsol2lqA+dYd2IfpxFH/P9Pf9oULdm1FgJQ6OCxJv0zk
	0Xjr5Ygcg262WZfGcWLDj52pGuZAh3w4iMiw7ANB1E2IU6FBgdmydi+RTJY1J3TjswI0WGwI0fZ1a
	zxdfU7tZWDxgi2aKSfV129CtEjsNw4LeEr/hoq5mcK/1k7Zrn4AUSmf/gdpuCmJnxexFC5HFaH4gD
	RxVVTeezKcgtUoKDLFqqMtmqc1Ghzf/jnxGqazppfOytmWx9yNk+p/yE9jq/k7W7zIY9hRKJJBbug
	etQ6lgDKNSNo8qKu5HcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swlq7-0000000DRo0-0PLN;
	Fri, 04 Oct 2024 17:11:39 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swkwm-0000000DCL0-2kgf
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 16:14:29 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-7db54269325so1729090a12.2
        for <linux-phy@lists.infradead.org>; Fri, 04 Oct 2024 09:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1728058467; x=1728663267; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cvJQhMmZpu/noxTEa/v4JGbaLrcquCziF/BJJZjakIc=;
        b=CXuba62BVZ4qQqmsG1jSVbw93xE5VqxdNuZ2nFV+JYACXnPIicACgDJIxdghpwBwz0
         /zzmvG5hwBTywqbcNMGal5da5mqh++iLBLiujKcaUM7NWymO7myJEoWHOzxFrhlpTEYX
         CzKEvHHT1aeDwYA193gLSSEPYT7hktq69hXS4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728058467; x=1728663267;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cvJQhMmZpu/noxTEa/v4JGbaLrcquCziF/BJJZjakIc=;
        b=pjKNMvZJdmqSFU503tNgB5FKGR/vo0QVcsNdkEC+23paAH4T7c32UO3LcAeN2Bh8zc
         5ypb9D6+bfisXcLmKX8PGqrNHTG83Y0UiDUarSAS0aQ4Q7h9gZk03R2bOyLIfMHL46Ge
         BAGOXunytOYqIBiJIfcKCr1y6AVEmVmaJ3VuqTdYCXgl9xcFuKCz3YvfAk8D5XO/IQyP
         4AHd2Cb5UX3tIylopbZWi/Be0Q5qvYZsemdvb9yR1ViGC9iiQsoz7/Z6uSwcOIt/XeQB
         dFmCE0+mrIXGb7WmcldJUGInLNLhd5E6Iql7Y5WX9Z0LDJ6t39AUF6cm43AzyA1aukgg
         9ntQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYppgSYbkV9uP7O0o18QUhBX2dAby2KX/qsJHBLJnThu5tmV6ln2nehM1xncpkXS24VT5Vgbl6mgQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwPDk6+II81WnjXdO5ehtuTVgfpZepyo68rOiySybGbXDVFF9Yv
	0f4CMrSdpDI2vV4kiepmleM6o2jUkZhtqojVQCgx/eDtVVjQ8vNMe6AVvrhLLA==
X-Google-Smtp-Source: AGHT+IEFoiiVZajezV5lhU/ioE1/Z8frXx96mckNFqpZWWYZBHeV2kOr0uTpbDhzIPCXufPpa3SVpw==
X-Received: by 2002:a05:6a21:10b:b0:1d3:292a:2f7c with SMTP id adf61e73a8af0-1d6dfae2978mr5573933637.49.1728058467527;
        Fri, 04 Oct 2024 09:14:27 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0cd0ae9sm30588b3a.82.2024.10.04.09.14.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2024 09:14:26 -0700 (PDT)
Message-ID: <d8e12243-20d2-4a37-92d1-df6b9b32dc63@broadcom.com>
Date: Fri, 4 Oct 2024 09:14:25 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] phy: usb: Fix missing elements in BCM4908 USB init
 array
To: Sam Edwards <cfsworks@gmail.com>, Justin Chen <justin.chen@broadcom.com>,
 Al Cooper <alcooperx@gmail.com>
Cc: Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20241004034131.1363813-1-CFSworks@gmail.com>
 <20241004034131.1363813-2-CFSworks@gmail.com>
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
In-Reply-To: <20241004034131.1363813-2-CFSworks@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241004_091428_731586_5DA60B63 
X-CRM114-Status: GOOD (  18.47  )
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
> versions of the USB PHY as found in various Broadcom chip families. A
> recent commit (see 'fixes' tag) introduced two new elements to each chip
> family in this table -- except for one: BCM4908. This resulted in the
> xHCI controller not being initialized correctly, causing a panic on
> boot.

Yes, I think I see what happened here, we took the patch in the "fixes" 
tag from the our downstream tree, and it applied just fine, we will keep 
a closer eye on other entries in the future.

> 
> The next patch will update this table to use designated initializers in
> order to prevent this from happening again. For now, just add back the
> missing array elements to resolve the regression.

Out of curiosity, can you check whether building with 
-Wmissing-field-initializers would have caught this?

> 
> Fixes: 4536fe9640b6 ("phy: usb: suppress OC condition for 7439b2")
> Signed-off-by: Sam Edwards <CFSworks@gmail.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>

> ---
>   drivers/phy/broadcom/phy-brcm-usb-init.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.c b/drivers/phy/broadcom/phy-brcm-usb-init.c
> index 39536b6d96a9..5ebb3a616115 100644
> --- a/drivers/phy/broadcom/phy-brcm-usb-init.c
> +++ b/drivers/phy/broadcom/phy-brcm-usb-init.c
> @@ -220,6 +220,8 @@ usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
>   		0, /* USB_CTRL_SETUP_SCB2_EN_MASK */
>   		0, /* USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK */
>   		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
> +		0, /* USB_CTRL_SETUP_OC3_DISABLE_PORT0_MASK */
> +		0, /* USB_CTRL_SETUP_OC3_DISABLE_PORT1_MASK */
>   		0, /* USB_CTRL_SETUP_OC3_DISABLE_MASK */
>   		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
>   		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */


-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
