Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43BC4CA5FFC
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 10:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efvDpnGBw7AQ7ogxzaqzix73jcufLvmIvmcDgLB8Jp4=; b=cJ1mkoLfE4pIGL
	9hOJrZu0kh4HY0utQ9rnBNtVHhl9iuzSwL1rfupRptDzkMZHqfevkMp3q+SOefbBcrtEpD++TFAYT
	5Zn8PKAWDCO/txri5alMXEgMrqM4hQj9TFU6EYuoqO9wF02y/e4S0gTMPer4x12sem0MSXNrNyCb0
	kw3ofPD4iy+FZkKw58kGelbIiMLSY1FpbP+3cJe1P3SqBvG5JROEYMb2Vnkx0PvWr3r13Nd4/HlMu
	y4hOr/xTVYjkAk3MSiIV1PP/8K3lpKjKudedCp1YQq+gdRhp81QWm6p6/V1EYekFy+dfodceV3ANx
	8TBZnFCMCuz71ZkA9Vbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2dc-00000000Xke-3qEB;
	Tue, 06 Oct 2026 10:43:12 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2dZ-00000000XjX-3k4K
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 10:43:10 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-3964dfb5b9aso883477a91.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 03:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791283389; x=1791888189; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WgOz8LzlE3w3VKFtUPRYULU7lY8WNBCIqyynChuXNxU=;
        b=qV52DGiCpA307MnP4aFPfpuFQNAhw+BRDcfSy9XKLsBgpmdzWQ9IZyF6XJc+lU6jOj
         rdlnR1lzWUr+7E+0lyDGYBFrcrkuH3bIY9I/trrtkCF+jrdNBWoGWTwrD8kl+D/iGlTJ
         xIAiZ52j0K2PvKwRQvbMIdbbVm/f3CyBxfypSqOvGSGiR72D9j48crOwbo9OEpOo6vx1
         yZnTbGFIF3QwTfhrggkYBRBrmgTx7158K6G4Oq4GVtas03XVT/VgS2hDislxl9gcCNgj
         OHro6xG05zcLfex5WehWJIt1wo1q+mC8+W8UuNy29sMdZpMRaFNbWLK6FvhZHuJEu121
         9kXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791283389; x=1791888189;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WgOz8LzlE3w3VKFtUPRYULU7lY8WNBCIqyynChuXNxU=;
        b=TiycGTbYkC2j3Lwdepnv905tJe8ouT+ZlA6baX8IX0NYWjyE/x2ftWbly7s+v2b7R2
         lIce7GxJDrJtqcveSGONPWY1xBbBn9+OY/gocTmkppmb+bspoFhnaWaMQEMXRbsXBnFC
         1mpFSUlrGkQaOd25kAdIuNDInWK1zNUr9gK1TmRU1vruCbe8R/vuQQFsjIudtEnGg64Q
         fkrtirIcI1U6f7TvBCiCWBZA9AyhnDy0EyzMct8+A8c2RvjOj1cgxSlpKtFc46d74+oO
         yA0zDLtnHNTNgcSpoUn3PE0WiryQXbHJMh1OY7plcZ3pJaYHmLka+D7JtnDzCF/218u3
         VNig==
X-Forwarded-Encrypted: i=1; AKwUvBzxXan/WhByMlVOwtsPJptCvE5P9moVD0wmRS+zxS0WwAE+0x1QLkmmxAOHSEJ1o2/Cpjz1O8VjLUM=@lists.infradead.org
X-Gm-Message-State: AFq9FYIBV8dzXukg9ixcqa8lt60bZj0xsqqpSCrE1zoabCS6LmEp5X4U
	7hjtP66P9Rz1EBt3IZ23CJj3GYMlUOXM0Wu1YBQdaIegUNt04xg7RRCD
X-Gm-Gg: AYBFou3x7QlNl0yGfvZm0+ehiyThr8GFlKPBNeC45qvtnkqG96DfvG08WoFHNGYQMvi
	4fnvczIo3P7Z9KYceVJRpoOop9e7SKAVzkstY/NwoYGWP5TxrQQdI7gAfq4r6bnXhW/W78Fb/db
	kiYLNaoXNCRJn+toNhn5iEbx8ZDTamN9CiJHNDW+XnSQaU9nw0YUt+2/L4J1jLj0jNxotkrop+4
	P5U8BLc3f97JoRJ2Vhs7dkOYjpEwaYyqRsVGVH4iS4LRCuY52cOO6ZulWMXuCWgPqFTFSXiepsV
	5LL3j+ESdsc9LK7ClVu6gqc8HNFETsscXovkb5u9Wuhrz+xUUjoeNM+aPFcc6V0Sd/tBbCUwyFz
	hNalnppcDvJsV7YaLH6yeq8a04mmzN+iEI+T8toH9qnJ/vc95zemThVQA4WKS5Amydl/otLNTGE
	5g+cxoSMKA3CPW6FuGpJfUmlPammmdXwKkgFgyMm9eBJVcKQcsn4oKJv4f/UNNIACsyVOyEXwk8
	9uUHQw4j4VFdAk6fbuWVhVukQgYrpSlXGRZB5GP5l+/+nuqS2O9127Osk4Ms+bIQQ==
X-Received: by 2002:a17:90b:280d:b0:3a0:345a:3646 with SMTP id 98e67ed59e1d1-3a8736b5a2fmr730235a91.45.1791283388692;
        Tue, 06 Oct 2026 03:43:08 -0700 (PDT)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a853cde769sm4184018a91.13.2026.10.06.03.43.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2026 03:43:08 -0700 (PDT)
Message-ID: <e646b60a-cbc3-44b9-8014-c9aa76ccc3bd@gmail.com>
Date: Tue, 6 Oct 2026 18:43:04 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] phy: nuvoton: phy-ma35d1-usb2: extend to dual-port
 with OTG support
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Jacky Huang
 <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>,
 Hui-Ping Chen <hpchen0nvt@gmail.com>, Joey Lu <yclu4@nuvoton.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260929020854.1282339-1-a0987203069@gmail.com>
 <20260929020854.1282339-4-a0987203069@gmail.com> <asN29Gi71MIA-2fq@parshuram>
 <ab91b558-e7e6-4758-b4e3-66e5db75b790@gmail.com> <asSzYUA5W51Ngn4X@parshuram>
 <413f21b6-90ca-4102-9466-3cf7b9feddc3@gmail.com> <asTP4lI3psLy5GCg@parshuram>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <asTP4lI3psLy5GCg@parshuram>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_034309_947235_223A1FDA 
X-CRM114-Status: UNSURE (   9.37  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

ClZpbm9kIEtvdWwg5pa8IDIwMjYvMTAvNiDkuIvljYggMDY6Mzkg5a+r6YGTOgo+IE9uIDA2LTEw
LTI2LCAxODoyMiwgSm9leSBMdSB3cm90ZToKPj4gVmlub2QgS291bCDmlrwgMjAyNi8xMC82IOS4
i+WNiCAwNDozNyDlr6vpgZM6Cj4+PiBPbiAwNi0xMC0yNiwgMDk6MzcsIEpvZXkgTHUgd3JvdGU6
Cj4+Pj4gVmlub2QgS291bCDmlrwgMjAyNi8xMC81IOS4i+WNiCAwNjowNyDlr6vpgZM6Cj4+Pj4+
PiAgICAgICovCj4+Pj4+PiAgICAgI2luY2x1ZGUgPGxpbnV4L2JpdGZpZWxkLmg+Cj4+Pj4+PiAg
ICAgI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+Pj4+Pj4gICAgICNpbmNsdWRlIDxsaW51eC9kZWxh
eS5oPgo+Pj4+Pj4gLSNpbmNsdWRlIDxsaW51eC9pby5oPgo+Pj4+PiB3aHkgaXMgdGhpcyBkcm9w
cGVkPwo+Pj4+IFRoaXMgZHJpdmVyIG5ldmVyIGRpZCBkaXJlY3QgTU1JTyBhY2Nlc3MgKG5vIHJl
YWRsKCkvd3JpdGVsKCkvaW9yZW1hcCgpLwo+Pj4+IF9faW9tZW0pLCBldmVuIGJlZm9yZSB0aGlz
IHNlcmllcyAtIGFsbCByZWdpc3RlciBhY2Nlc3MgZ29lcyB0aHJvdWdoCj4+Pj4gcmVnbWFwIHZp
YSBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlKCkuIFNvIGxpbnV4L2lvLmggd2FzIGFu
Cj4+Pj4gdW51c2VkIGluY2x1ZGUgYWxyZWFkeSwgYW5kIGl0J3MgZHJvcHBlZCBoZXJlIGFzIHBh
cnQgb2YgdGhlIGJyb2FkZXIKPj4+PiByZXdyaXRlIHRvdWNoaW5nIHRoaXMgaW5jbHVkZSBibG9j
ay4gSGFwcHkgdG8ga2VlcCBpdCBpZiB5b3UnZCBwcmVmZXIKPj4+PiBub3QgdG8gYnVuZGxlIHVu
cmVsYXRlZCBpbmNsdWRlIGNsZWFudXAgaW50byB0aGlzIHNlcmllcy4KPj4+IFRoZW4gaXQgc2hv
dWxkIGJlIGEgZGlmZmVyZW50IHBhdGNoIGV4cGxhaW5pbmcgdGhpcwo+PiBVbmRlcnN0b29kLiBJ
J2xsIGRyb3AgdGhpcyBjaGFuZ2UgZnJvbSB0aGUgc2VyaWVzLiBJJ2xsIGxlYXZlIHRoZSBpbmNs
dWRlCj4+IHVuY2hhbmdlZC4KPiBOb3BlLCBwbHMgYWRkIGl0LCBidXQgYSBzZXBhcmF0ZSBwYXRj
aC4gVGhpcyBpbiB1bnJlbGF0ZWQgdG8gdGhpcyBvbmUsCj4gYW5kIHNob3VsZCBiZSBhZGRlZCBi
dXQgYXMgYSBkaWZmZXJlbnQgcGF0Y2guCkdvdCBpdC4gSSdsbCBhZGQgaXQgYXMgYSBzZXBhcmF0
ZSBwYXRjaC4gVGhhbmtzLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
