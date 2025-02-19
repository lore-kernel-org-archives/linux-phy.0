Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89480C021AA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Feb 2025 11:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZBbrUF+79RZRLr08kHtSnYMR6wtlwED1DCebwj5sCk=; b=IijOjgBvWAcJ0G
	i/dD7ZYPPkCyl+8hnmj3Uy7ueLvLxYHiADVSzCZj5YMhzq7Knr5+TAuwGLHY8Tj1/beyASq3OxVdp
	I3OTXYkuCMm4f2SP8Wh3umh2D97+o/fJdHxQTZGLptieToC+m7weKSE1S0zaFsq2iFs2ZQfSN34Zn
	T631VAbgb63bQQGo6T7LCbsUTEcAzMFBy0ik1E0jRnRP+6BuYHOV22EUwAhdKY0TGZ8p9ZDjSyY9d
	lfDpa3v2rkJxs/4i73V8pUF5CAbbFHgbiifc9U0py0p6r3TyPBHUiUiJNNxwbbvOZGaRfzk7KAkdw
	tsAOKp79W0Flc81v8RhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkiNg-0000000CRZV-1GLv;
	Wed, 19 Feb 2025 11:36:44 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkiGk-0000000CP5x-3iG0
	for linux-phy@lists.infradead.org;
	Wed, 19 Feb 2025 11:29:36 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-2fa48404207so13168899a91.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Feb 2025 03:29:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739964574; x=1740569374; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5vU+z7o1n0G7VQ2M0U6SHnojITFeeAuqpaQx8uuT8Do=;
        b=Ajx2aOaWE5txn3rFcfkBviqxBV27QfEJ72PFQ7R7u/1QcqZeApnEuYviWj1BwHSpiT
         qQIHH7BA73kur8xirZWB/cUacbLKMGfTrahKJ6o1hj8ftMQGBtyQ5g50SVPI8zt27zVV
         eDi74pEhX+HZIiFruM+RHbB8It4DlKlyAFa2jHu9eU0qmWRo2LgNbuCPxK07nIlVlMke
         B4JGBsVEB79IHfAeApXsDNb3pDE0TdhXpjV7ZS78n8DAY5Hb7Zc7ul553wEar3HPjurD
         XEC7o0fK5JPufkDMbjKZp70oe8zzyuOBJQeo6UfaOL65lJ4JiY0V5rJnwr1mbRcyOVHI
         jc6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739964574; x=1740569374;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5vU+z7o1n0G7VQ2M0U6SHnojITFeeAuqpaQx8uuT8Do=;
        b=HHorMtlvjwAIDHv+K7uZQBqSV9tivdVmv/U+OXAyBv1N0dU0oncVhKCRsmoLmRqd3g
         GobhG4wlWeNodA/HylOKeyHS7CkOctdQNMkPB8zsruJ1vQYe7myfsZDXgs1hPMW5mGRO
         QCEFI8MmncwfyP/96aTRdF/XB+2W/kkruumCejAbhv9SFegICbYmHvjX5VMF9Zff49Hl
         eNfOBhLMquY6Y2a/IVzUtVVzihGDQeYJ+jIFwPg+vnUyQhZDtjNN/rIM3BmZyAnju6x4
         ntQEBcIavoR46RsYI6JHdT9Yx1jVHEMqj/vrfleRby0CVOEEEKs8d6FdU1EGjBP14ySV
         ZEBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVumfKwDmLMRqErYI7vT0ewLVZiVux1Hw2KY0e8KuxyaqpZtEF5tjjpLaBuXcDdE0MT4y8olQ0igPA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8TuN46Wgr3J4aUaBK4cwaYbzUGWtDI8sc3kvvhjLiszV9eiy/
	a2SQ470EGteaMjtSihaTEYhw6zbpqgKRwPyWcNZJiFulFtxFu5Qh/aEktTnmRy+JQsdjsNnvVuF
	re50I6WcxcOEWSbngWgts4eakFx4=
X-Gm-Gg: ASbGncsiRfjfzMedM7LYRaea1U9ZLXz6PoSIDG2mIaPOdo0Iqh927dB1FYEHWjRxHdh
	Pa/IueDdQojcdxfmv5RzcUljbSJFN+MzUpo0EXZCgC32UTmAXhPQkvZH09XVHEhsFAYJ3Xs/w
X-Google-Smtp-Source: AGHT+IEy3gIKsA2IQeCpKMMMuYndacoBsWC4Zu0rpUgMg6vNtThISaOrAnvzXl+MwdwzMRvuz0JKxEz5n2ulPBpyU6U=
X-Received: by 2002:a17:90b:3b4b:b0:2ee:fdf3:390d with SMTP id
 98e67ed59e1d1-2fc4115087fmr24105113a91.31.1739964573544; Wed, 19 Feb 2025
 03:29:33 -0800 (PST)
MIME-Version: 1.0
References: <cover.1739961770.git.guchongchong@xiaomi.com> <19ac11d6b9e5988d190025255c5ffe08c57c8023.1739961770.git.guchongchong@xiaomi.com>
In-Reply-To: <19ac11d6b9e5988d190025255c5ffe08c57c8023.1739961770.git.guchongchong@xiaomi.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 19 Feb 2025 05:29:22 -0600
X-Gm-Features: AWEUYZn24v6r2D4b5o-SiBzC1qYQfPa9B6_jswODdfypF4PixQVAxs6BawZcytI
Message-ID: <CAHCN7xKtu2y=757_mAmR64vCKCo-g78U-qWYT+j5_Rv5Gc+USQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] phy: freescale: limit div value in FIELD_PREP()
To: Chongchong Gu <chongchonggu21@gmail.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, guchongchong <guchongchong@xiaomi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_032934_933255_2E9801C9 
X-CRM114-Status: GOOD (  17.16  )
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

T24gV2VkLCBGZWIgMTksIDIwMjUgYXQgNDo1NOKAr0FNIENob25nY2hvbmcgR3UgPGNob25nY2hv
bmdndTIxQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBndWNob25nY2hvbmcgPGd1Y2hvbmdj
aG9uZ0B4aWFvbWkuY29tPgo+Cj4gSW4gZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJlX3Bs
bF9sb2NrX2RldCwgdGhlIHZhcmlhYmxlIG5hbWVkCj4gZGl2IGJlY29tZXMgNCBhZnRlciBsb29w
LiBJdCBtdXN0IGxlc3MgdGhhbiA0IGluIGZ1bmN0aW9uIG5hbWVkCj4gRklFTERfUFJFUChSRUcx
Ml9DS19ESVZfTUFTSywgZGl2KS4KPgoKClRoZXJlIGhhcyBhbHJlYWR5IGJlZW4gYSBmaXggYXBw
bGllZCB0byBsaW51eC1uZXh0IHRvIGFkZHJlc3MgdGhpcwpbMV0uICBIYXZlIHlvdSB0cmllZCB0
aGlzIHRvIHNlZSBpZiBpdCB3b3JrcyB3aXRoIHlvdXIgY29tcGlsZXI/CgphZGFtClsxXSAtIGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgt
bmV4dC5naXQvY29tbWl0L2RyaXZlcnMvcGh5L2ZyZWVzY2FsZT9oPW5leHQtMjAyNTAyMTkmaWQ9
Y2Q1N2U0MzI3NzA3MTI2ZGNhM2Y5NTE3Yjg0Mjc0YzAwMWQ0YzE4NAoKCgoKPiBBIHdheSB0byBy
ZXByb2R1Y2Ugd2hlbiBydW4gdGhlIGZvbGxvd2luZyBzaGVsbCBjb21tYW5kCj4gbWFrZSBBUkNI
PWFybTY0IENST1NTX0NPTVBJTEU9YWFyY2g2NC1saW51eC1nbnUtIGRlZmNvbmZpZwo+IG1ha2Ug
QVJDSD1hcm02NCBDUk9TU19DT01QSUxFPWFhcmNoNjQtbGludXgtZ251LSAtajQKPgo+IEZpeGVz
OiA8ZDU2NzY3OWYyYjZhPiAoInBoeTogZnJlZXNjYWxlOiBmc2wtc2Ftc3VuZy1oZG1pOiBDbGVh
biB1cCIpCj4gU2lnbmVkLW9mZi1ieTogZ3VjaG9uZ2Nob25nIDxndWNob25nY2hvbmdAeGlhb21p
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1p
LmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmct
aGRtaS5jIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiBp
bmRleCA0NTAwNGY1OThlNGQuLjBhZDc2NjM1OWNiZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Bo
eS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L2Zy
ZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCj4gQEAgLTMzNyw3ICszMzcsNyBAQCBmc2xf
c2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV0KHN0cnVjdCBmc2xfc2Ftc3Vu
Z19oZG1pX3BoeSAqcGh5LAo+ICAgICAgICAgLyogRmluZCBpbnRfcGxsY2xrIHNwZWVkICovCj4g
ICAgICAgICBmb3IgKGRpdiA9IDA7IGRpdiA8IDQ7IGRpdisrKSB7Cj4gICAgICAgICAgICAgICAg
IGludF9wbGxjbGsgPSBwY2xrIC8gKDEgPDwgZGl2KTsKPiAtICAgICAgICAgICAgICAgaWYgKGlu
dF9wbGxjbGsgPCAoNTAgKiBNSFopKQo+ICsgICAgICAgICAgICAgICBpZiAoaW50X3BsbGNsayA8
ICg1MCAqIE1IWikgfHwgZGl2ID09IDMpCj4gICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7
Cj4gICAgICAgICB9Cj4KPiAtLQo+IDIuNDguMQo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
