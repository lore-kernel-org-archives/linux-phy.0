Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0F0DE668BC
	for <linux-phy@archiver.kernel.org>; Sun, 24 Nov 2024 17:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VccoDt0ymMJxCJOp5bpkNlMVzIPhp0qNVlznNqZPFaQ=; b=SAabT37w2WDzUL
	zikmZT+thTX4S+xQqObDgJVj57jmJrH2lcq6QF/zI1pndZzVPzYX69Iqiqu7/JU03g/QiCuA0f9rX
	Eg43ZisOURcBV3tp44Lf1Xw3qFiPU18+KFW+PkCdLDzLnlWX/l23m6gggMTiVO8jlmWVYCyuU7CKo
	a3qCxubiVj6Ab421avImWC+Yr3CdyrXF6YLkbLLNcrZ+odGnEIBXF2rFw5kySj/rJPHRsvGcK8js5
	bTb0TO3qs9tJa0MlJxS3+gdAXa4ZQXw+ojG84NZ1aHUcZOWmjxKRP6SP5ObZaQMpIXY9/TD9gLY8z
	67enpmkaheGdBHfUQDhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFGlw-00000006Rl7-499U;
	Sun, 24 Nov 2024 17:51:48 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFGlt-00000006RkR-3nyx
	for linux-phy@lists.infradead.org;
	Sun, 24 Nov 2024 17:51:48 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-21271dc4084so34048895ad.2
        for <linux-phy@lists.infradead.org>; Sun, 24 Nov 2024 09:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1732470705; x=1733075505; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=W36L36Z7loQVg5kfJcNl2xAjXd9CUQZLdQogbzE9Z1I=;
        b=HyDLrBREoBBpzDGR0NdhndIWhFCut2OQr/YTuAkeRnvrYeleV4iC57horqoV6IyKwo
         9bZVIlQdhNGbxKVlLKLTfrKNj6fx/og0ErTSeOWA4/Qk2FbiJ3U26jLgx6I8MCS2QJvn
         OhDV+aRluEZ95rRf+T56t24oLNjTDBwU3umP8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732470705; x=1733075505;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W36L36Z7loQVg5kfJcNl2xAjXd9CUQZLdQogbzE9Z1I=;
        b=KeoBtDfcgk7Ga4V35LhVi537XAY+Xr0vLO3ojJ/NggkdXTefMzxNwbAV9dXnAKgFkC
         SnQZA+qc1RmW3NqWjopM3LB6fU2n2gVUf1VutpaQ8CVEbzQHoU/A8Bt33iACvBEiTR2k
         jVp3X1mK+QN05L1ESmBf2CZJWknhv+S6O44NAPSsJ5JMs01hFeUniTRF6eQ0nCOcDZQI
         VSLHuViLKf+x35dG3am5HK6lM2zzp5VxzBC2Ywou+fXB4uXnOgRWjWAKu4TbLqZ5AY22
         nobnqBTFVR6q/oPp6FVzLGHazA6HfBjPP8Nu55Y9EdG4UV5C0roplSz05Q6Y5jFNPcTO
         W8zQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzJ2gCL9NDf/CrKFfl9uvyDIe5ottdTSTr6PR/ae+9G71PlRBTLr01Rx7wOtY/cZZ1R44A9SdFrkQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzGfSdX58vewVPnZLm3h3Y5RTRAAKhwjTiDmqeB+jgOoA6TVcaE
	PDSqkbRSodvg7egDTR7cv+VfI2ukybUffUWl8sTFnvqrTyCi8d08iBb9KdGeKg==
X-Gm-Gg: ASbGncvxif6jXPyT9eYg9WFce/56YdD7Cc5qUWUWuenG1lGtBCevF+EdRxG2j6I3oaq
	XRO3GDoEzBQnqB2oAbVbTTRpDrbtoHV0Muyv/sP6fw8YYXB/wqpksQXcfZpZnjsukd/16wFUCVn
	Uk7YAae0MIIpi8F3+kdijEDl5GVsuewXBsBTmy3fibHDpKYwZaBDbhYy7rT4Pfi9Ks/rhRWb5Oa
	F0mDXFPEW4+nXe9jWqHPD9Zrx22R4AOZjUeE43WxAHOyAxn1/RM9xrwitMLoHT/2JM0eCO7rl+z
	gFX4R75WGSSGzSG7a88aO/nd
X-Google-Smtp-Source: AGHT+IGIfGmfyaXDD0f7GM/kPxVRtfrZ5nTdb7qw++bxaXIQntPwPxZ3S7Ox7kt+6unEh7uAJXyNxw==
X-Received: by 2002:a17:903:230e:b0:212:655c:cad with SMTP id d9443c01a7336-2129f5d8548mr129442145ad.14.1732470704982;
        Sun, 24 Nov 2024 09:51:44 -0800 (PST)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2129dc2c5fcsm47832155ad.280.2024.11.24.09.51.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Nov 2024 09:51:43 -0800 (PST)
Message-ID: <edc87dfd-9025-4040-b541-73a180c9a08d@broadcom.com>
Date: Sun, 24 Nov 2024 09:51:43 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: usb: Toggle the PHY power during init
To: Justin Chen <justin.chen@broadcom.com>, linux-phy@lists.infradead.org
Cc: f.fainelli@gmail.com, kishon@kernel.org, vkoul@kernel.org,
 bcm-kernel-feedback-list@broadcom.com
References: <20241024213540.1059412-1-justin.chen@broadcom.com>
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
In-Reply-To: <20241024213540.1059412-1-justin.chen@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241124_095146_022798_5638BA94 
X-CRM114-Status: UNSURE (   6.99  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 10/24/2024 2:35 PM, Justin Chen wrote:
> When bringing up the PHY, it might be in a bad state if left powered.
> One case is we lose the PLL lock if the PLL is gated while the PHY
> is powered. Toggle the PHY power so we can start from a known state.
> 
> Fixes: 4e5b9c9a73b3 ("phy: usb: Add support for new Synopsys USB controller on the 7216")
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>

Acked-by: Florian Fainelli <florian.fainelli@broadcom.com>

Vinod, can you take this one? Thanks!
-- 
Florian


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
