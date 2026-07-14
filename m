Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72EF7C44508
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 17:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5orVZmHMvO5oZAD1fpn/Y8IwbcX9eJ0AZ8uNPS4HUaU=; b=gqNdYSS+6kCzF0
	9imATJSavo2CYkd+AE/Oi1SD9f0RpZtk+/gtRZ9ota71oVfl+jecSUpv1v4Ud2blS+exRVItZBU8p
	xz1dIBdkUTLCeSQtSrZTLKoN39E/AdF9rolYiYXg4atUjmqd9RohZd9Wd1YZW4gpmgVeE3gr16rUB
	SdTscss2UJZDuaUcjuN9jQo+OCg3x+CvMHlng3x39HdDLcEy3M86h2Vyqc2ndGNr2wfLFppv/9CDF
	vOGD88L/Isf8Q7phy4Q8gm/HBTmYbK1B3xpUdPHZaVLAEqbX91gCmi92HP8TE/RdwDl7CEmAggkLo
	Y930u2frZZ3V9Ih4IWNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjguJ-0000000ClYU-3WQV;
	Tue, 14 Jul 2026 17:26:59 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjguG-0000000ClXF-18wF
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 17:26:57 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-698a9f11776so2142286a12.1
        for <linux-phy@lists.infradead.org>; Tue, 14 Jul 2026 10:26:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784050013; cv=none;
        d=google.com; s=arc-20260327;
        b=TpQ2b4nuhL/LKSqBIo2xdLJvthMR782guQOKUIsLEO1roD0/hDaz44Jc7b9QJMh72/
         CYmlr1p4tRb4vvpTZ2A4Wiz4q40GWwQ3a0xGQHbXk3Kad75UWeQ5GtluWJNRdtwySi8B
         IOYnes76aBUu0ffeAtGzUEuIXYX/yGvpyU6GfPAqX234oy9UHcO4iAu6IewSOpcFVtUa
         OkNNmD8ls2dFgPFwSuM3tCUFN5IkfCWOvYZRIB6BeUkU17ZHi7tK5MTJm14layiXQFhV
         YHZ2PxXx//2Jz/KuqIh2nlN+C0FRIj2CZg2u/AqVvpG3jYtD3c5EGDKcRYMlrL6h4GBT
         8FEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PLWXlp5fp1shTIcjuREf1LDdbeNLz9T5kczHBwu0iIg=;
        fh=2f++nq8BF8UmoEjsfuCl0PbIcVUCRrbYfZjrk53WblI=;
        b=ghM4c/5GO3jZT5hsUtAM6XIhbD0cZBqSd197gCFwWh0F3OcPe1jn6hhVJFF8HRi1GO
         fLMD0r8VQ1o0UxLugOLDrQ91Hu8XZQxI8YS/pRzAIqJDu7Vx5OE2Cf4ucQlXOVhiFrM4
         5Bcm1zoLEFmJ/ab5XogHwmbAV0Xa8NkX8zIEjjq9rTF8R2fRDRuKTVyzp+pvzrjfuhW2
         KUSpYU4sPY3L/1nLfxfaSRHPWrUZrI46B8O1pytKjZIV+8/MOciPowGMg5mu4Ov6KbLR
         3gyjWqj3no3oYhVaiBtjYoEUt3y+kBEz4F11n3TkZvzeJ1Dwvz0tZKiKbCxwxRF2vvuG
         ZvFQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1784050013; x=1784654813; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PLWXlp5fp1shTIcjuREf1LDdbeNLz9T5kczHBwu0iIg=;
        b=cqTmbD6oPel7i4dkJC2nEa4cGDFuWhiWl6UORsvlaHrLq5X+9IiJirHVFL3wWMuNLz
         h2JII7Q9UoQx6GPwDAnP+0oB0kdnJxouy1pCR9iwX+SMRHFkvT2WTrvzhAV0qWlGZAp4
         8Oswk/A84I05Tf431+EmPAG3SmKQ2BnUMIaXMPCPNv7NTfg62XvugxymKZahqYzMeXmV
         RP50TxmNuSirP8bfACeYoJmmSHkkIaBUy9YaGCgQTCpGmt/7xwtPk7OA4p4jxZnXA7h3
         Vnmeokfi1ZHVa4TdMZD2bzc5MVCgWfPYupM2RtJFbAyCBekY7MY3kJThMMuhPDsJLyua
         DbjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784050013; x=1784654813;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PLWXlp5fp1shTIcjuREf1LDdbeNLz9T5kczHBwu0iIg=;
        b=NZ51blJP47OxAJSc597AlVodk+gbuiMSiip5HQeHajwV+Uw6rM50K9B385vfEk0/5j
         SL+200hqE0jvXbFsltbSTDvQlJA3diAGUUUm4wi/RDESVo9K15NYXtDiaPkJ0FWK7ojB
         x7LUcKGkT2WJx6vKyxqP0WgtpJ4Eaxe8TSpcXdXzJBYfx7unjVAh6bfVOpof1oE7pWS7
         +k5qk83AU06f1OHybiRmrDkXomHHVTkTKicO4DRSdGIy8fsLz91tAHEEBAVamx79zLbG
         aITS+BTHt3IDdrY9IgDjgUUW+wdiJOear5dQHbcetf9F/P9pb/vslztCgbbfX7e5xgyy
         4ZsQ==
X-Forwarded-Encrypted: i=1; AHgh+RpiZO2Vz6kGO2PGXfcNQKk0FNnFOKjjHfRu+EsE3EGaoTKKjkD+MBamltgxzpZdtEm3/6URTQSNc44=@lists.infradead.org
X-Gm-Message-State: AOJu0YzhzOR5rZ1+xk06Dc/33lB7qG7EGdP976tngq4gdvk9uO7dE5Ky
	ZDao051m6ut2wPT/y2NhBSkvN1LI5xe8sw2+p2XbonkHIRlycLzMi6dySO5ougnrchOUBrceJ/l
	cmreEEVynLm2WBmJlRyirR4fyphpCpJ0g1XtyCKCi5Q==
X-Gm-Gg: AfdE7cks0oTTunnbau7eq+JwwDCb234FRzSiEN1lzoeH1qSz0eMH9jsz9XS7Gla2VCP
	DiRLRBanL5AblBRxQjhnFAl1V9RYIKwIrFz0YyJk8p6+1r1RELvIEA3Rqifqq+DhokU7D1Cyg/S
	Kov3nqZGGsud8I7O21paQQ+qsw3q8j3QEt54Gc8yhJ3HXbaxt8YN84xAJYpJNf6DPKl7z753ZzR
	CiZdmpFEhWfnS1xNtxMXJ7vhypE+aBeTbQ73r1aWxOCl4fiF+i88SPkrGnW3KRw00/MM8T9UYG7
	p7QLppENuO0RqlVmAFyE5zDvJMM=
X-Received: by 2002:a17:907:7210:b0:c12:61c5:c141 with SMTP id
 a640c23a62f3a-c161ea21391mr577764066b.53.1784050013253; Tue, 14 Jul 2026
 10:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <MN0PR19MB609171877109E10553B5DB5EACF92@MN0PR19MB6091.namprd19.prod.outlook.com>
In-Reply-To: <MN0PR19MB609171877109E10553B5DB5EACF92@MN0PR19MB6091.namprd19.prod.outlook.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 14 Jul 2026 21:26:42 +0400
X-Gm-Features: AUfX_my4WyuEyYSRptLwrCR_TmeHbnjRc7E_6wyzD01sMWP4nnwK47T7aZfKKfg
Message-ID: <CAKTNdwFxW9aGk3Ux_DhCvhYcwUBEz=oEei+w=9Zo-78jgGtGWQ@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip: naneng-combphy: Set RK3576 USB3 SSC downward
To: Liu Changjie <liucj1228@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_102656_371601_FC60EA86 
X-CRM114-Status: GOOD (  15.07  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKdWwgMTQsIDIwMjYgYXQgMTA6NDbigK9BTSBMaXUgQ2hhbmdqaWUgPGxpdWNqMTIy
OEBvdXRsb29rLmNvbT4gd3JvdGU6Cj4KPiBQcm9ncmFtIHRoZSBSSzM1NzYgVVNCMyBzcHJlYWQt
c3BlY3RydW0gZGlyZWN0aW9uIHRvIGRvd253YXJkIGJlZm9yZQo+IGFwcGx5aW5nIHRoZSByZW1h
aW5pbmcgUEhZIHR1bmluZy4gVGhpcyBtYXRjaGVzIHRoZSB2ZW5kb3IgQlNQIFNTQwo+IGRpcmVj
dGlvbiBhbmQgZm9sbG93cyB0aGUgZXhpc3RpbmcgUkszNTY4IGhhbmRsaW5nIGluIHRoaXMgZHJp
dmVyLgo+Cj4gV2l0aG91dCB0aGlzIHNldHRpbmcsIGEgSElLU0VNSSBNRDIwMiAoMGJkYTo5MjEw
KSByZXBlYXRlZGx5IGZhaWxlZAo+IHRvIGFjY2VwdCBhIFVTQiBhZGRyZXNzIG9uIGFuIFJLMzU3
NiBUYWlzaGFuIFBpIDNNLiBXaXRoIGl0LCB0aGUgc2FtZQo+IGRldmljZSBlbnVtZXJhdGVzIGF0
IDUgR2JpdC9zIGFuZCBjb21wbGV0ZXMgYSA2NCBNaUIgcmVhZC93cml0ZSB0ZXN0Lgo+Cj4gQSBz
ZXBhcmF0ZSAxIEdpQiBzdHJlc3MgdGVzdCB3aXRoIHRoaXMgUlRMOTIxMC1iYXNlZCBlbmNsb3N1
cmUgc3RpbGwKPiBwcm9kdWNlZCBTdXBlclNwZWVkIHJlc2V0cyBhbmQgSS9PIHRpbWVvdXRzLiBU
aGlzIGNoYW5nZSBvbmx5IGFkZHJlc3Nlcwo+IHRoZSBpbml0aWFsIGxpbmsgYmVoYXZpb3IgYW5k
IGRvZXMgbm90IGNsYWltIHRvIGZpeCBzdXN0YWluZWQtSS9PCj4gc3RhYmlsaXR5Lgo+Cj4gU2ln
bmVkLW9mZi1ieTogTGl1IENoYW5namllIDxsaXVjajEyMjhAb3V0bG9vay5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jIHwgNSAr
KysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+IGluZGV4IDJi
MGYxNTJmNS4uMzI0YTA4NjFlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMKPiBAQCAtMTAxNSw2ICsxMDE1LDExIEBAIHN0
YXRpYyBpbnQgcmszNTc2X2NvbWJwaHlfY2ZnKHN0cnVjdCByb2NrY2hpcF9jb21icGh5X3ByaXYg
KnByaXYpCj4gICAgICAgICAgICAgICAgIGJyZWFrOwo+Cj4gICAgICAgICBjYXNlIFBIWV9UWVBF
X1VTQjM6Cj4gKyAgICAgICAgICAgICAgIC8qIFNldCBTU0MgZG93bndhcmQgc3ByZWFkIHNwZWN0
cnVtICovCj4gKyAgICAgICAgICAgICAgIHZhbCA9IEZJRUxEX1BSRVAoUkszNTY4X1BIWVJFRzMy
X1NTQ19NQVNLLCBSSzM1NjhfUEhZUkVHMzJfU1NDX0RPV05XQVJEKTsKPiArICAgICAgICAgICAg
ICAgcm9ja2NoaXBfY29tYnBoeV91cGRhdGVsKHByaXYsIFJLMzU2OF9QSFlSRUczMl9TU0NfTUFT
SywgdmFsLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUkszNTY4
X1BIWVJFRzMyKTsKPiArCgpUaGlzIGR1cGxpY2F0ZXMgY29kZSB3aGljaCBhbHJlYWR5IGV4aXN0
cyBpbiB0aGUKcmtfY29tYnBoeV9jb21tb25fY2ZnX3NzYygpIGhlbHBlciBmdW5jdGlvbi4KCkNv
dWxkIHlvdSBwbGVhc2UgdHJ5IGlmIFsxXSBmaXhlcyB5b3VyIHVzZSBjYXNlPwoKWzFdIGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjYwNzE0LW5hbmVuZy1zc2MtZml4
LXYxLTEtMWM0MGE1ODA2MWFlQGZsaXBwZXIubmV0LwoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
