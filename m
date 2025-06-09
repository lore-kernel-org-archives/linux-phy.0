Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A03C8C5B552
	for <linux-phy@archiver.kernel.org>; Mon,  9 Jun 2025 18:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kEPNaL+Dk1p4uLcPAHLB7v1qSmUgAIaprqMZ+hE+F8=; b=Vlhe9xYfUbIRWU
	YQcJynU7gScupoiE0FgsI7KbZ3g9PAfBb7l/5gYdpV39F6wAjvLUl/2unoroB7zhZOHKMFWIzUI+s
	S30eVJ4/nk5/ok/s88/PW6AlGm2ZwdWzaLEwVETJ/fa7+96MenTGQN8pbCdIcG1EC78LVl6PAK2tA
	QEiUFF9GD9NBUtyk/nRrrigyxW6houGSDo/hgxQ4F7ZSCq70yALT9qejENbEXm7x1g0TW3j3cX8S2
	6kjzN84zWvWGdtX4ovrerja88MFvlV+hyNlDetqSNt0JGz+iZStOkP4+ZYK41bf4imtPO3StYw0Ib
	6lbSH40ki+bfsSFCIPsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOh8y-00000004tEj-1NSy;
	Mon, 09 Jun 2025 18:22:48 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOfwT-00000004kxq-49el
	for linux-phy@lists.infradead.org;
	Mon, 09 Jun 2025 17:05:51 +0000
Received: by mail-pg1-x543.google.com with SMTP id 41be03b00d2f7-afc857702d1so3760742a12.3
        for <linux-phy@lists.infradead.org>; Mon, 09 Jun 2025 10:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1749488748; x=1750093548; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bpUhLELyP7p8RhE4vCfB2tyhBHP3IonfUXHeFb/uNaI=;
        b=Z+wnBry/T6FyFtxu2s0VC7XLgSrBDNSnEAiWCGQDYU8zUzIj9/p9+As7wGsjpc9xqn
         nmshudhREPobj+TczZlGSrM3rOzgW+xykXIAbcs+FfOh5IlmROgbm5/YYk7TGBElKnvT
         0TeMxFFwiPepZemCq3iHggf6mQZ/fb3lzg790=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749488748; x=1750093548;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpUhLELyP7p8RhE4vCfB2tyhBHP3IonfUXHeFb/uNaI=;
        b=wQytgjPapv/VQoy5RcioayztVdPaF5yWeP5X8eaPoaiNz6GKjq1NytsvU5ewnXFAox
         8mV5zWDxGYFbqoXioXrPmDu4X8TUhR1i3MH1QindJPLx+03UOK8eURf0A9M3QE8fsvhX
         prmjnK2jlfWQTh1giL8BZ+y0FuWCEY0lj8423d0SsibcUcuLzo5iObxSosn2ti/pGjQ7
         zJJ6vqFORXwjA+wJDz1rmmaxYJZN+ai3dCybk4BYHKgjfytR2ti/Nsjxoon5ufYgm++O
         /6lsdsL13sj49d2gYCe4l1FjqdLv+ue9HOxJnR3dRmRFR4vjnyxwX/wM8qEoZUl9vzGt
         8QCg==
X-Gm-Message-State: AOJu0YxRzPbwMu4nUb1utKZgeoeUGLdsYJrzajfxOB/ilcxyGD6XbEG5
	XQE10wQnyQLpO3URs05O/6Vzxjn5iyVIPCdeqVuMO2fvpyK/z0WXSvgKOoG0O2ZEhjCxDV8Ox3w
	9jqEej50mkUY=
X-Gm-Gg: ASbGncvKQCHDQEJt0wlhbEjLtO6HRQSDZlb8KqVVTbWv45fdXu9oo2Tac2mMslm5YCB
	bsMlNA0NSerBszUmbwc423dqopbC1YGcn2s0taOvXIWmDl1VvyDl3wU2CMeV53dqqTB5ceSLHCZ
	Xpa6udaUCZZgWWjr6t/HoPZN7wdbJd9kea8LRhvw1AV1gSBaQLFVFsUl+clEW2ObkVtsfDJzZGB
	GmXRk+9k5n4UKfvUvfsk99J1MKu9nzIs+S4J/v7L3OZkMsnSj7ExddtaQCSWFV2Dz8uTE3IA7+K
	TPzC6wSG+ekjTn5Of3KpYRmOT6FywHuII01rHRqX+wrE1CUK1LrEJ4iQaaK1G4upcKoRJBPLrpi
	EA+Iyl6uZ6AJOWCI=
X-Google-Smtp-Source: AGHT+IFg3mi4AXKwWCaQj9OKbnJUga0CFNcbyFNnTtTiLkcVN0H5XUu3mCUv8IWhktn/JA1FpeC/mg==
X-Received: by 2002:a05:6a20:d80a:b0:21a:efe4:5c6f with SMTP id adf61e73a8af0-21ee24e7774mr23117445637.2.1749488748570;
        Mon, 09 Jun 2025 10:05:48 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7482af7af0csm6187704b3a.62.2025.06.09.10.05.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jun 2025 10:05:47 -0700 (PDT)
Message-ID: <85e921fb-af2a-4ed6-acd8-ad8c88e1d9a2@broadcom.com>
Date: Mon, 9 Jun 2025 10:05:46 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: phy: Convert brcm,sr-usb-combo-phy to DT
 schema
To: "Rob Herring (Arm)" <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250607212515.741397-1-robh@kernel.org>
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
In-Reply-To: <20250607212515.741397-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_100550_069391_FE076448 
X-CRM114-Status: GOOD (  12.12  )
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

On 6/7/25 14:25, 'Rob Herring (Arm)' via BCM-KERNEL-FEEDBACK-LIST,PDL wrote:
> Convert the Broadcom Stingray USB PHY binding to DT schema format. It's
> a straight forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>   .../bindings/phy/brcm,sr-usb-combo-phy.yaml   | 64 +++++++++++++++++++
>   .../bindings/phy/brcm,stingray-usb-phy.txt    | 32 ----------
>   2 files changed, 64 insertions(+), 32 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/phy/brcm,sr-usb-combo-phy.yaml
>   delete mode 100644 Documentation/devicetree/bindings/phy/brcm,stingray-usb-phy.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/brcm,sr-usb-combo-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,sr-usb-combo-phy.yaml
> new file mode 100644
> index 000000000000..b9aeaab02ef3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/brcm,sr-usb-combo-phy.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/brcm,sr-usb-combo-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom Stingray USB PHY
> +
> +maintainers:
> +  - Srinath Mannam <srinath.mannam@broadcom.com>

Would suggest putting Scott and Ray as maintainers here, Srinath's email 
is bouncing.

-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
