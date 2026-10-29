Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E16E606A31A
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 17:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fFu/+GoI;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=YgiZ0/A5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7h1lFdOhzQMqsPo60BYbZ5U3DO8YNJf5X0OCXm/d+6A=; b=fFu/+GoIfaMyOt/jPuSV2uDrLC
	ccF0IWXFreu1mm79I5mV418F7QfhVjD/uyCazfEfnZxjfCU11+i3cBvbhOnHP5QBh2esvjXhVZHfc
	7ei9+Q6VS5Y/y3P8IcCYirlyI9cQ+JDiRqRJIhYwXUIaHd/dIMAu2DJ5aJaT3RDceUcWMRRG5RLcO
	Gchfo/AaZtgK/dEjwyTGbBf7LcgYlKZnJgd4Pinpt60tppE6c7tE26pMDRG5D5CsuiOccEseHmTyg
	5f4agSepf1+wxq8jbmrDNYlhkGhXCJ8hQ3692lm20bdqpTeUc61K4PpXT7PgrZBf1nTcZ21aO5lMp
	9mUrG8hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMTjk-00000009whO-3Mue;
	Thu, 29 Oct 2026 17:16:24 +0000
Received: from mail-pf1-x461.google.com ([2607:f8b0:4864:20::461])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMTjg-00000009wfj-3CQe
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 17:16:23 +0000
Received: by mail-pf1-x461.google.com with SMTP id d2e1a72fcca58-89f28c3ac7bso1064131b3a.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 10:16:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793294179; x=1793898979;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=lE2uSXffLzacbrPa786MlXxJ3B9g3YGKriI1oE9ksSc=;
        b=UBF8+AUiJtir2VS83wWY/pHDrNKDhJeuSx0y2T+xUNKteYt7Tm/4TCU5KKr4BG7SAa
         dRkzLpyf+bqtOtw3cbWzbQIikUeU1MD2ORtdxPgw+VKITnJcepS3QHP7QMBSXGsNWQ7k
         Gj3ffbJeq2ZgBKEjUQA8S0Gq2wfd5Wv3v+lpP8EJPfk6jExxce7Ogei7v3ochmrXuFAu
         rlEedkH8Gt5Qw7Xw897juOyIeuT9Fq3JBlDLg0tKST+EfLowxenDERnikaQqs/k2argu
         qaJDboxXUK01mJv+7bFHRaEsr5d+ry9Q5JpfXoWapYdPchYCHJ/GRBmic9rmFoLWjE7a
         4uRg==
X-Forwarded-Encrypted: i=1; AKwUvBxJ5CCv8srMyBk25HRXR9T3niOrmO0dr1KQyvurWudJC7HlxXDfawsTxGDU0e67/alvIa+RTEQtZio=@lists.infradead.org
X-Gm-Message-State: AFq9FYL9GDfRHWvwJ9TZJOFRdz2iEIC6WiGdwNESB9P+owqDNIA7WtKC
	g2RBqcJfAxQHVWw1ez8IRJuvs9g/s4Rqi+kDaqW0SX8W86acDdWMaZavljls5jV4tk3JMqFns2d
	pN3lgtSaQzPzUtPT6XClNWr90vL+72JsUQuFe8FOgevvdQB6tNfhYaAGILSgVNUuuJ3QLyABodB
	2TPmJE4W/ldWZX2jvz3SjkWgve76Iu59maMf63RjkXc2QBSB04/AQfHHsz6Jp3A0Z716C16eTYi
	c0puc+UnYKKj/xXS1IYixgP5XsU
X-Gm-Gg: AYBFou10HvdK2OQDc5Oi+TPQs7vrxfU3s4qe4oNi+85nTFJEbvjAJ3TCUvqnannHBJk
	3PLfPYjYOMX7azKHK3lK5XpT7kAj5lZtjN8H+7UgYgTxlL4Sp8W/xZCR96QFSG96WvhhDCMzpNu
	ZPaNyrV4qtqR6IS/EI9leetoK2OJQDOGceUPOi0VHfiA813jui32G8E/l+Q4BGfp0NKJ5MQfrjf
	RAwbj7GTYcRDBE2WqUgpk8LIvM1vxyeSYmErqerZmm4n2TP5u6wXIQwdm1ZatlQX0M3E1injR9f
	SYNB7usSu/el157cG8ATIpt/spkgZMMw/21JoVuzRec+jhRTXfg7hvAm5rt+KBOWozI5fCwy1v2
	bx9eRGxxmiIguQHhv2UBaBYza7JeWne6dEgBn5IRce5ghfeqXvqfFDR3fCd7BzKC2Jxoe5Cpvz2
	nB9kQzGn30z4XUSKvbMWhZu7fE5mzZlRIXyrjC11sq
X-Received: by 2002:a05:6a00:3d08:b0:89f:b166:bddf with SMTP id d2e1a72fcca58-8a6e8b826c0mr5874327b3a.58.1793294179193;
        Thu, 29 Oct 2026 10:16:19 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-13.dlp.protect.broadcom.com. [144.49.247.13])
        by smtp-relay.gmail.com with ESMTPS id d2e1a72fcca58-8a98ed1362asm8858b3a.3.2026.10.29.10.16.18
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2026 10:16:19 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3ab67ff8ec3so1641174a91.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 10:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1793294177; x=1793898977; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lE2uSXffLzacbrPa786MlXxJ3B9g3YGKriI1oE9ksSc=;
        b=YgiZ0/A55kz1tOLUdsEI/i3qlFUw6IkDw5RNE33/4lJ239w0kk0Bl8oToCJGoOk2Q8
         cmB72sxMfRTNDPTzwlGbAN+3K247G/cjrIiptDa0SgfddcD5/Ft/y2yoLpghfSpwHVUq
         B5rAQVDzK3z/z+X1xMQLVRYFEEIWILKuwxaUU=
X-Forwarded-Encrypted: i=1; AKwUvBxnnuR7x2YBHbYsSvZn3ElaTbwgN2ZhCulyFsQBx869yFXJSDZaqiFI3bE9t/w+jCKsXNq+baHGfXM=@lists.infradead.org
X-Received: by 2002:a17:90b:5903:b0:3ab:2d17:51c5 with SMTP id 98e67ed59e1d1-3ae57e2b52amr4762320a91.6.1793294177301;
        Thu, 29 Oct 2026 10:16:17 -0700 (PDT)
X-Received: by 2002:a17:90b:5903:b0:3ab:2d17:51c5 with SMTP id 98e67ed59e1d1-3ae57e2b52amr4762297a91.6.1793294176832;
        Thu, 29 Oct 2026 10:16:16 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ae845df666sm444813a91.14.2026.10.29.10.16.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2026 10:16:16 -0700 (PDT)
Message-ID: <fe8b7acf-b495-4202-a5f1-51950c55c037@broadcom.com>
Date: Thu, 29 Oct 2026 10:16:11 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] dt-bindings: ata: sata-brcm: Describe the NSP IDM
 registers
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: linux-kernel@vger.kernel.org, Damien Le Moal <dlemoal@kernel.org>,
 Niklas Cassel <cassel@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Tejun Heo <tj@kernel.org>,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 "open list:LIBATA SUBSYSTEM (Serial and Parallel ATA drivers)"
 <linux-ide@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
References: <20261026191618.3178830-1-florian.fainelli@broadcom.com>
 <20261026191618.3178830-3-florian.fainelli@broadcom.com>
 <20261029-versed-automatic-orangutan-43cfde@quoll>
 <e5c4ac0a-f5de-42e7-910a-cf2c9c4cabbc@kernel.org>
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
In-Reply-To: <e5c4ac0a-f5de-42e7-910a-cf2c9c4cabbc@kernel.org>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_101620_808140_1F5A271A 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/29/26 01:10, Krzysztof Kozlowski wrote:
> On 29/10/2026 09:09, Krzysztof Kozlowski wrote:
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            const: brcm,bcm-nsp-ahci
>>> +    then:
>>> +      properties:
>>> +        reg:
>>> +          description: AHCI, top control and optional IDM register regions
>>> +    else:
>>> +      properties:
>>> +        reg:
>>> +          maxItems: 2
>>> +        reg-names:
>>> +          maxItems: 2
>>
>> Please move entire allOf to the bottom, before "unevaluatedProperties"
>> line.
> 
> And you already have an if:then: block, so this should be together.

Will do, thanks!
-- 
Florian


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
