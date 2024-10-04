Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 912D8CF884F
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 23:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZw0grHHeyabmN2sYFwhfLqNtPoaYiUppwl3EFnJh+c=; b=pGQTPst2Utnxbq
	QBcn3sDBYRJ1YYqLJKetNWg2oUxLVllR5kU+qgzoHEfM9tcjTQOpDSjiMV6cbXGjJjNE6ZwxiI1kL
	cHBQ36vfup3UG5aCBlrgy94ypVT4/bAe4l/o5A+j64Ye191T8aDW3vpQ9gvc1RcJ1n9nAw2SDhN7V
	btGbl2BXEIwxyrYZzNUn9UMwpqUjMD2MV3D8yP13qGyrYAME4qNK2Hz9uHu5hDtCYBmQo7NA18kvD
	x+ZPdG4U8B49ZBYdhhApu/uxHlVMT8E88CItVzhwDjL87dPxqvtu/NPb0uReQWun7ve3eElQymx37
	9JqVJzIq9kYYVLPLy90w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swrso-0000000ESqU-1FAX;
	Fri, 04 Oct 2024 23:38:50 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swrrS-0000000ESbk-0ygq
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 23:37:27 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-2e0a74ce880so2279308a91.2
        for <linux-phy@lists.infradead.org>; Fri, 04 Oct 2024 16:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1728085045; x=1728689845; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Bhp01HYVejj6s0Evn+kBYf3ZUQxgKuSRHFNAaxqr3Gk=;
        b=XZ9CChwnEPfluFt1+T3zacYVzHg1sz//YcgRh2fTjxqaQRDFstqXI0yDaou6xrfsSH
         otLzlJzt51VtzBXIIVi3b9wpMRVk/cLykt6NCXdOsxX8Cep4SZZd3EzE0XWccFPv1DU1
         mANLdUSmYF5Mg3pgIEf8Z9JZSlYR24qID51Kg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728085045; x=1728689845;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bhp01HYVejj6s0Evn+kBYf3ZUQxgKuSRHFNAaxqr3Gk=;
        b=Rx8BPOr9D1yvcD7UJwtzVjpqKr1LUX+uBVkA0OVgnZzdpFuEiULf+pIpgPXv1SdvXl
         cNbD6zlmrLWLURCzk3yitNcmrIJJLUzLy7pohIdKOpnMYndwyjlIUYpvF2u/AazDJQT/
         RlohsnHwDbb9pLjNKyOpDoFRM9dRJU+CTWfLyYT+TLj8uzDZKNF1JgMdJhZCffz5QVO8
         MssS08aLFfxOxijiR4NBEBuGABBW0svj/5HITp7dEKOVbWf34FpIMNrNaphcu78HANAL
         5/HR7XQ4NAi9EXgw6HwuCn4m9EqhdzqoCsUHQwifk9w9g7bLi2u8HfVuC85JhIEfdcp3
         ZMkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmLfg0GHymAZZcw7oP+f1OS+yAA4LbgvxqtKCD/ZCOaldLXbhDmmsA2I3cGUXUAUOF5n0NHZmS21U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxgl9Z9qrnZGN9BH1b9jPACnDDTomcooynnLSWu4MakLSAwKTaK
	5mtZqfemmyX7pceswVqR67wQ85V2MUoXdZnDVo8nQ9byDXMfILea2Lva6IE/yQ==
X-Google-Smtp-Source: AGHT+IEhlzK5IHTBl+qrDyISD/4EVrdhG7yxtyo4+sxfL8etrSGCYN8a21N/ORT9K0H84Xvr6f7q4w==
X-Received: by 2002:a17:90a:4805:b0:2e0:7b2b:f76 with SMTP id 98e67ed59e1d1-2e1e62675b8mr6183625a91.19.1728085045184;
        Fri, 04 Oct 2024 16:37:25 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e1e85da3f0sm2248715a91.30.2024.10.04.16.37.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2024 16:37:24 -0700 (PDT)
Message-ID: <4b8302db-be90-48aa-8d10-16b961458a2d@broadcom.com>
Date: Fri, 4 Oct 2024 16:37:23 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] phy: usb: Fix missing elements in BCM4908 USB init
 array
To: Sam Edwards <cfsworks@gmail.com>
Cc: Justin Chen <justin.chen@broadcom.com>, Al Cooper <alcooperx@gmail.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20241004034131.1363813-1-CFSworks@gmail.com>
 <20241004034131.1363813-2-CFSworks@gmail.com>
 <d8e12243-20d2-4a37-92d1-df6b9b32dc63@broadcom.com>
 <CAH5Ym4jTidgY9MdWzHN1=30DpOSUKf_h8nXBw21XR1VFuXn6fw@mail.gmail.com>
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
In-Reply-To: <CAH5Ym4jTidgY9MdWzHN1=30DpOSUKf_h8nXBw21XR1VFuXn6fw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241004_163726_296712_BDA71506 
X-CRM114-Status: GOOD (  15.92  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTAvNC8yNCAxNjozNSwgU2FtIEVkd2FyZHMgd3JvdGU6Cj4gT24gRnJpLCBPY3QgNCwgMjAy
NCBhdCA5OjE04oCvQU0gRmxvcmlhbiBGYWluZWxsaQo+IDxmbG9yaWFuLmZhaW5lbGxpQGJyb2Fk
Y29tLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIDEwLzMvMjQgMjA6NDEsIFNhbSBFZHdhcmRzIHdyb3Rl
Ogo+Pj4gVGhlIEJyb2FkY29tIFVTQiBQSFkgZHJpdmVyIGNvbnRhaW5zIGEgbG9va3VwIHRhYmxl
Cj4+PiAoYHJlZ19iaXRzX21hcF90YWJsZXNgKSB0byByZXNvbHZlIHJlZ2lzdGVyIGJpdG1hcHMg
dW5pcXVlIHRvIGNlcnRhaW4KPj4+IHZlcnNpb25zIG9mIHRoZSBVU0IgUEhZIGFzIGZvdW5kIGlu
IHZhcmlvdXMgQnJvYWRjb20gY2hpcCBmYW1pbGllcy4gQQo+Pj4gcmVjZW50IGNvbW1pdCAoc2Vl
ICdmaXhlcycgdGFnKSBpbnRyb2R1Y2VkIHR3byBuZXcgZWxlbWVudHMgdG8gZWFjaCBjaGlwCj4+
PiBmYW1pbHkgaW4gdGhpcyB0YWJsZSAtLSBleGNlcHQgZm9yIG9uZTogQkNNNDkwOC4gVGhpcyBy
ZXN1bHRlZCBpbiB0aGUKPj4+IHhIQ0kgY29udHJvbGxlciBub3QgYmVpbmcgaW5pdGlhbGl6ZWQg
Y29ycmVjdGx5LCBjYXVzaW5nIGEgcGFuaWMgb24KPj4+IGJvb3QuCj4+Cj4+IFllcywgSSB0aGlu
ayBJIHNlZSB3aGF0IGhhcHBlbmVkIGhlcmUsIHdlIHRvb2sgdGhlIHBhdGNoIGluIHRoZSAiZml4
ZXMiCj4+IHRhZyBmcm9tIHRoZSBvdXIgZG93bnN0cmVhbSB0cmVlLCBhbmQgaXQgYXBwbGllZCBq
dXN0IGZpbmUsIHdlIHdpbGwga2VlcAo+PiBhIGNsb3NlciBleWUgb24gb3RoZXIgZW50cmllcyBp
biB0aGUgZnV0dXJlLgo+Pgo+Pj4KPj4+IFRoZSBuZXh0IHBhdGNoIHdpbGwgdXBkYXRlIHRoaXMg
dGFibGUgdG8gdXNlIGRlc2lnbmF0ZWQgaW5pdGlhbGl6ZXJzIGluCj4+PiBvcmRlciB0byBwcmV2
ZW50IHRoaXMgZnJvbSBoYXBwZW5pbmcgYWdhaW4uIEZvciBub3csIGp1c3QgYWRkIGJhY2sgdGhl
Cj4+PiBtaXNzaW5nIGFycmF5IGVsZW1lbnRzIHRvIHJlc29sdmUgdGhlIHJlZ3Jlc3Npb24uCj4+
Cj4+IE91dCBvZiBjdXJpb3NpdHksIGNhbiB5b3UgY2hlY2sgd2hldGhlciBidWlsZGluZyB3aXRo
Cj4+IC1XbWlzc2luZy1maWVsZC1pbml0aWFsaXplcnMgd291bGQgaGF2ZSBjYXVnaHQgdGhpcz8K
PiAKPiBJdCBhcHBlYXJzIHRoYXQgdGhlIGFuc3dlciBpcyBubywgYXQgbGVhc3QgaGVyZSBvbiBD
bGFuZy4gSSBhbHNvIGp1c3QKPiB0cmllZCAtV2V4dHJhIHRvIHNlZSBpZiBhbnkgd2FybmluZyB3
b3VsZCBjYXRjaCBpdCBhbmQgZGlkbid0IHNlZSBvbmUuCj4gTXkgdW5kZXJzdGFuZGluZyBpcyB0
aGF0IC1XbWlzc2luZy1maWVsZC1pbml0aWFsaXplcnMgaXMgZm9yIHN0cnVjdAo+IGZpZWxkcywg
YW5kIGEgY29uc3RydWN0IGxpa2U6Cj4gaW50IGFycmF5WzNdID0gezEsIDJ9Owo+IC4uLmRvZXMg
bm90IHJlc3VsdCBpbiBhIHdhcm5pbmcgYmVjYXVzZSBpdCdzIGNvbnNpZGVyZWQgcGVyZmVjdGx5
Cj4gdmFsaWQgc3RhbmRhcmRzLWNvbXBsaWFudCBDIHBlciBDJ3MgZGVmYXVsdCBpbml0aWFsaXph
dGlvbiBydWxlLgoKSSBzdXNwZWN0ZWQgdGhhdCBtdWNoLCB0aGFua3MgZm9yIGhhdmluZyBjaGVj
a2VkIQotLSAKRmxvcmlhbgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
