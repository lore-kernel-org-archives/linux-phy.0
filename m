Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FE4606A320
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 19:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tE9d4Wuq;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=QHR6kgUV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dtxDUHaqvU1FUh5diDO+OZS9w7W+5aW6a+NeEXQQTUM=; b=tE9d4Wuqj/gqeeAmnD4B65PmW1
	u1qnl+T78H9y3p7z/bBiFuK5kuGYrpSDYDzJ/2O2EKPhOR7tFez4bwoFt6FLaYo0QIaxksbaxYjo5
	57ozuTHDi5LchEH72Pg1747YooYUcbMyg6N3LjqmFAeMqUe6t2ZEUNvatBgDHmrYXGy3s1bOZM+wR
	ick2ljSqv5aUtdPYL+ZMn/Nt/UeB3OKiMfRswCdHlMRlH1yrV6E+hx8hW84cuV2yo+1vvVkoalbvX
	9mOcgxKVAoOXlmfvuaXJPkbTsJmZHjEczBiheTNfwCcF7a6t93hHcjqG8lDWDiqZ8gF3PEpC0Z1Zi
	3IbuORpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMs47-0000000CTOx-1jDe;
	Fri, 30 Oct 2026 19:15:03 +0000
Received: from mail-pl1-x663.google.com ([2607:f8b0:4864:20::663])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMs43-0000000CTNi-3USw
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 19:15:02 +0000
Received: by mail-pl1-x663.google.com with SMTP id d9443c01a7336-2e5378b281aso6465725ad.2
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 12:14:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793387698; x=1793992498;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=DFrEXZTm+iWrPConGaRa1dN06L+AXpLuI1/eZZLz7wQ=;
        b=KU2qhmaoiH54KUhJQeRc8S8zxxnq/FulRSBekSWPZGr9KVKUGPCJDv79W4viuABSAM
         V5QeHJ+vfLEKemHDuljewOFobnXMOSx5c65aeblHSEbBjX0hMvXcGRgId0LVm5HcRqSG
         FD4nxG69TtHxN3kjA3Brs+8agtD6JR3fD5HqZCrJRCvtrMe6TOoyrjgulyE4wCuwEMDA
         yxBPmK6xMcw702LruovGfqqQSdihdKdUKb+zjGZZMhWjMQC7mnmZx36FmOi9XoeCRL2i
         eZVSRems3aYFWPbYkfASStHxDvoYQyKYRFvnVJ03U++4Qee7HlQKbgLC17CfRqyob4pE
         GacA==
X-Forwarded-Encrypted: i=1; AKwUvBzdoWPbghmbfeJE1ULHwLDJglW5w2irtb5hDZRQFevvb52pRmLODUIZtmwP8zbAbqwyZwF6iGgoALU=@lists.infradead.org
X-Gm-Message-State: AFq9FYLY1gn1JPyt4l8QRcw3mp7QWAX5uxZJFckffwAV35X7qTYUdGUn
	8yNbgTkl/IbnLXnKeG8aSJh2Vh/6GJPo/loEIjpp0mkvpEw9Is4BcLl4KOrUfAHc93IU6yoamxZ
	mmY2YejlIfORLM9Gb4rKzsGhOp+EW5ffm5wYKZW5d/8Ltsamr8K11v96XNQHCLfGmEfsrfAaZXW
	whIj+5hxumPi5sWSddIHDJrbfPQNoG9u3q/ctifS4S4CyyO3W1lTNz8kZTdHVRxhZqKlOFgzYGn
	Zkip+itq3m0egP5WHDbNHe/Aet/
X-Gm-Gg: AYBFou03VxXQza0yZg7MvTENoV0WsMFk+L5zR6VfzO4OpbTP28mJWNXLxQT7p+Dtr3k
	bzZKzXa/8uU6AI7kAX3UBeV55gqNmyZivo+8UcnPBawdhQyIHX7JnWgZPfHYR+VD3P61Ygk7zV9
	OVM0YhMSBklhEhWpjix0LYUvsUYgmh2czTJpUMX6UQ4Bw2Jhulmdft0bSHKLanGKoM4Ie7nrxvZ
	Wszhgo4uTERrqYkKirLabQku6MHLddtuUs5sUuz0njNBwXFwgdWy1lqXnCuZh1oUOUvzB63slFz
	7za5IBSUgHY3yMgoVp2wIV0st6LgMnVZ9eTEBTWOwiOdhlKCoQHypesD/rFNJkcj7JDEOnFE1v+
	2eNCkjfGJ6X/gQNZbYevyJ12tg9Kpviydxmc1ivmTXOyHZ3UXjJPiSZJPrKBr66hIa4EV+nOvJ5
	+2sfJ9tQfTZKJVWvgPHhVT8p/jtTciCCeQlLZJaGvt
X-Received: by 2002:a17:90b:3b85:b0:3ac:a11a:7c84 with SMTP id 98e67ed59e1d1-3ae897d6a13mr2697975a91.65.1793387698363;
        Fri, 30 Oct 2026 12:14:58 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-13.dlp.protect.broadcom.com. [144.49.247.13])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3ae85eb5999sm772391a91.1.2026.10.30.12.14.57
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2026 12:14:58 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-91b4bf686ceso29718316d6.3
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 12:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793387696; x=1793992496; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DFrEXZTm+iWrPConGaRa1dN06L+AXpLuI1/eZZLz7wQ=;
        b=QHR6kgUVjYqRTA1ovZZt2rx2KxV+8jbkxNULm+y+ZjKypyhppbDvWThc71neKbr7w5
         hp5PxTCRZ8sJj7/2In3tkhVN/qvmbPKFDvv2rx5dVClDB9zzLYyJgN1NLucAH7SCury+
         Zx/P0c/C8sI8j6cyf/lKhoXD9XLl6JTZe7Gs0=
X-Forwarded-Encrypted: i=1; AKwUvBxLJJu4hk9YlTWu0kMA605127C3vgezcnjajXOejyIcTMSx2y8TzCVs/YVIy3SsWRXYL4dKZv+ldjw=@lists.infradead.org
X-Received: by 2002:ad4:5c61:0:b0:91b:5d39:e13b with SMTP id 6a1803df08f44-91ca4bda1d7mr54317446d6.48.1793387696573;
        Fri, 30 Oct 2026 12:14:56 -0700 (PDT)
X-Received: by 2002:ad4:5c61:0:b0:91b:5d39:e13b with SMTP id 6a1803df08f44-91ca4bda1d7mr54316986d6.48.1793387696200;
        Fri, 30 Oct 2026 12:14:56 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91ca7f3db1asm23125436d6.16.2026.10.30.12.14.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2026 12:14:55 -0700 (PDT)
Message-ID: <e25714a5-98b3-4a0e-ad9a-a644b5485749@broadcom.com>
Date: Fri, 30 Oct 2026 12:14:52 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] dt-bindings: phy: bcm-ns-usb3-phy: Describe the NSP
 variant
To: Rob Herring <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Alan Stern <stern@rowland.harvard.edu>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>
References: <20261021172819.668120-1-florian.fainelli@broadcom.com>
 <20261021172819.668120-3-florian.fainelli@broadcom.com>
 <20261030182151.GA1206797-robh@kernel.org>
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
In-Reply-To: <20261030182151.GA1206797-robh@kernel.org>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_121459_936218_EDCD325B 
X-CRM114-Status: GOOD (  11.84  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMzAvMjYgMTE6MjEsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFdlZCwgT2N0IDIxLCAy
MDI2IGF0IDEwOjI4OjExQU0gLTA3MDAsIEZsb3JpYW4gRmFpbmVsbGkgd3JvdGU6Cj4+IE5vcnRo
c3RhciBQbHVzIHVzZXMgdGhlIE5vcnRoc3RhciBCeCBQSFkgcmVnaXN0ZXIgc2VxdWVuY2UgYnV0
IGFsc28KPj4gcmVxdWlyZXMgY29vcmRpbmF0ZWQgVVNCMiBhbmQgVVNCMyBjb3JlIHJlc2V0cyBh
bmQgYSBVU0IyIElETSBpbnRlcmZhY2UKPj4gY2xvY2sgZW5hYmxlLgo+Pgo+PiBBZGQgYW4gTlNQ
IGNvbXBhdGlibGUgd2l0aCBhIHJlcXVpcmVkIFVTQjIgRE1QIHBoYW5kbGUuIERlc2NyaWJlIHRo
ZQo+PiBzaGFyZWQgUEhZIHJlbGF0aW9uc2hpcCB3aXRoIEVIQ0ksIE9IQ0kgYW5kIHhIQ0kgc28g
aW5pdGlhbGl6YXRpb24KPj4gZmluaXNoZXMgYmVmb3JlIGFueSBob3N0IHN0YXJ0cyBvcGVyYXRp
bmcuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVs
bGlAYnJvYWRjb20uY29tPgo+PiAtLS0KPj4gICAuLi4vYmluZGluZ3MvcGh5L2JjbS1ucy11c2Iz
LXBoeS55YW1sICAgICAgICAgfCAyMyArKysrKysrKysrKysrKysrKysrCj4+ICAgMSBmaWxlIGNo
YW5nZWQsIDIzIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYmNtLW5zLXVzYjMtcGh5LnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IzLXBoeS55YW1sCj4+IGluZGV4
IDdmZDQxOWRiNDVkMC4uMDBkNjliODZjYmZmIDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IzLXBoeS55YW1sCj4+ICsrKyBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYmNtLW5zLXVzYjMtcGh5LnlhbWwK
Pj4gQEAgLTE0LDYgKzE0LDkgQEAgZGVzY3JpcHRpb246IHwKPj4gICAgIEtub3duIEIxOiBCQ000
NzA3IHJldiA2Cj4+ICAgICBLbm93biBDMDogQkNNNDcwOTQgcmV2IDAKPj4gICAKPj4gKyAgTm9y
dGhzdGFyIFBsdXMgdXNlcyB0aGUgQnggcHJvZ3JhbW1pbmcgc2VxdWVuY2UsIHdpdGggY29vcmRp
bmF0ZWQgVVNCMiBhbmQKPj4gKyAgVVNCMyByZXNldHMuIEl0cyBQSFkgaXMgc2hhcmVkIGJ5IHRo
ZSBFSENJLCBPSENJIGFuZCB4SENJIGNvbnRyb2xsZXJzLgo+PiArCj4+ICAgbWFpbnRhaW5lcnM6
Cj4+ICAgICAtIFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPj4gICAKPj4gQEAg
LTIyLDYgKzI1LDcgQEAgcHJvcGVydGllczoKPj4gICAgICAgZW51bToKPj4gICAgICAgICAtIGJy
Y20sbnMtYXgtdXNiMy1waHkKPj4gICAgICAgICAtIGJyY20sbnMtYngtdXNiMy1waHkKPj4gKyAg
ICAgIC0gYnJjbSxuc3AtdXNiMy1waHkKPj4gICAKPj4gICAgIHJlZzoKPj4gICAgICAgZGVzY3Jp
cHRpb246IGFkZHJlc3Mgb2YgTURJTyBidXMgZGV2aWNlCj4+IEBAIC0zMiw2ICszNiwxMyBAQCBw
cm9wZXJ0aWVzOgo+PiAgICAgICBkZXNjcmlwdGlvbjoKPj4gICAgICAgICBQaGFuZGxlIHRvIHRo
ZSBETVAgKERldmljZSBNYW5hZ2VtZW50IFBsdWdpbikgc3lzY29uCj4+ICAgCj4+ICsgIHVzYjIt
ZG1wLXN5c2NvbjoKPiAKPiBicmNtLHVzYjItZG1wCgpUaGF0IHdvdWxkIGJlIGluY29uc2lzdGVu
dCB3aXRoIHRoZSB1c2IzLWRtcC1zeXNjb24gcHJvcGVydHkgdGhhdCBpcyAKcHJlLWV4aXN0aW5n
LCBoZW5jZSB0aGUgbmFtZSBjaG9zZW4gaGVyZS4KLS0gCkZsb3JpYW4KCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
