Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B92B4CA5FFF
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 20:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gtHTAmcWHIwSvNiCZHjJsThlvT1ZomLIroF0h7OWUI=; b=FgocGERhiSwbVM
	wy8fX8Xx9O6Dx72iL98YSWRXI/x7aDpDFNL05p+GBWDyLfPNeudp76rrQ3m3g8kFlGpW7iSniYPBW
	4rhXV9PfJ2TmWOw5C0eU3jnplL065fDg5GEAVAdzHCHQoqV7QBhncaKF1flTQk8usF0XTrcAjqQSI
	533gqvCg1zisdwnW7FjESoStglD2FpXRahUw1MKfiBwqxfitqcyJJntknYDc8HwH/YbuJ8vKppb6s
	C+Wpqk959HAQNxaAa4KYCguFTbl5iZL0gSTvBOEVk1kwlVxVQ+5phsUYGqdsTJOmiTlpHhWwKG0/M
	yn97k5Zu8Zwy+eazRpeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEY5N-000000037Pg-0OG4;
	Wed, 07 Oct 2026 20:17:57 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEY5K-000000037Oy-2TIW
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 20:17:56 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-48b0584ad71so1606575f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 13:17:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791404273; cv=none;
        d=google.com; s=arc-20260327;
        b=ePZtkgOG3ix8BOh4NK5nje5ic4tvNzUWrt0PF5iF/gib/rhguv13+RUgdjj+R6yVpq
         jVIMvcbhL4NB5j6VzwKOlS+KKYK2l7d2Wg0Gn0DuohzdsIEQXYa1UXqLAAkX6f9KqW4K
         1Hmpt3xLcDYGonmKOhMmKl/f41wtBysXJyN0VNMLzfaAB/0cTSfYnKF2oZGNgxEwz+Er
         UefUFoplunNtyW+UbMzKOf3iugDZhISqGC/SRUXczCZ70SZSR1mEDgEtMHnLjXWhLisx
         XP5xcGIjgBGvr2orrEw9Wv56z+sR+M/AcwVI+/RPKrfliCLeLXn4rRRfS5miBxIplOH5
         Tq8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GYcofiYrlKd3iFMYbYc9JyZNgDUHZ+Vq0ErILDfAy7Q=;
        fh=XXkMx4+PP8EyIbK0PWsKKYLmFQ0a/EbhRSaVWfn0tos=;
        b=gfZ5oyUiqmqWHhIepvrmWsxj6qsQ7XaxnHcWScGVFyvTDUJJE/8YaWu7yE8y/d0Y0I
         O2NJyA+zZcCTskzsSm2vXqxfVwnHw1k44XbAmPAhXmra9PakYSHHPdhLfAWNAXaZNH6i
         CZW8Ppw1wqlqKBSh/F6CiFTiDJZDNhumgiPtqyx2ifg20ndcQGQ67b3ApvRv8+UlaTRy
         q0YItzqu80XWkgtlCGTS428DUXp/2wYgwOwAhuoS6HEj+dM4ynqBazEsTu8CnNpdGibF
         ygemxa5qRZG+HNQsB10Xl48W6bp44r3dB1sI9L63qTHQ3cTx+GiE05gGegW0vt6zegrn
         tO1w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791404273; x=1792009073; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=GYcofiYrlKd3iFMYbYc9JyZNgDUHZ+Vq0ErILDfAy7Q=;
        b=mmguha6fQ0JKHIyJzasPlUlcv2Y41hCQNuR98tb6TCjZB7H/iT4MxP4GI3cXYeTPg5
         bN+hNvyoB4hm3/U7g/8B5ncnVXrWfCOv6KRfzK2leC3FpgYxonktwcfINglkNYhc2bsx
         MtLTKwPm3k6AWI7UFaKzGsBkvUYs+LbKHeZB6QQYawPqjn16M1PTtYFIXIEghHWZqZZs
         qEt+EFy2CtajRZerYHhWzA9n5Hrs0UMOs5xNIGy3rf6uYxXXGuomldFUHjkF1ZD9yb9Y
         0KnWnWlEabV/R1ZXFhMz9lIMoaZidOoE4QVbCIUqrmR8zzaFJE0Axb3RU3HiQxLiiK/s
         8Fyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791404273; x=1792009073;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GYcofiYrlKd3iFMYbYc9JyZNgDUHZ+Vq0ErILDfAy7Q=;
        b=kKGxAZBUJYPlSccd2rYUlroYul5dd68yWH1sm81DVbhFRuCYhQT/FRcv0UIz78aRpX
         bd+1yMLdyEZdkYrR7dIj6rw8DMObt/veyNZZW6s+1DriHv9w8OpIgdMQ7FVcnl9ylKHz
         T9gfT/emkcuDD5exNp/vxbpHlCOAPQJaNydp56GzPqDV/aphNkBh5xIr2Zue1fbwlnKb
         xTeOD8GzGN48fsX4MNySwOQZ3A+NMqQsK5A3mG3HrU0xjECRAeOatMh8GhvKldRi4PXY
         pN7kwZMNTNvEUgKjyeU4BJ2+k/UXkSy6N/JhTTB9AZ4/ihwnAEHYkfjAuB2Rn0Bc8bZG
         WOwQ==
X-Forwarded-Encrypted: i=1; AKwUvBwnPnPCFNa5F3ZYhTm7bb6KUIHNflO+rAusdqWtzMSG4KsudslZTZrOFOfcCQ+7L3nldi3XcwsNS/s=@lists.infradead.org
X-Gm-Message-State: AFq9FYIUWqg16ybA9gfoqDOBFjfnCaHrBelX6Frx9Ethp1KHgDo7rSTV
	V2nHr5Ua3RTZ/DS4hLLzSw4BJHQdowCk3Vm9Cs0HgVHpJELICXkXj5QdGyY0VsTWJquXVDGEG8k
	w+16kwXgMbpX4gzU5u2muitY5KpNIOnc=
X-Gm-Gg: AYBFou10RGpz2DXBzzXGsCTJqWpwmbbHRFKq5/RRU1J9/8k5COSellhrsrFcwjU/10a
	k37UDwEpCwoUbe7mOIDQgct9N1WDunYeOW73jv55dYh4liM3l7dAW5ICDZoY1rBOoA6ddWlY4hR
	AhbxqmJEfFumxDwZp+xxwX+fO1laGaKegEn8x1UgBDtk0CTZXUArfAQus2qF17O6Qa4jhKD2PdQ
	wGTWke2yanzmQOqskBQiEk3wUSyi2xvu7Tto1gvLowthuuKSMFUgXYJxZH8COz2eMncJdZLt3a+
	PSsKmceUNRmtpdSB4c8+hV6KL3+oohGUW6xJN8PHgTL7i4lgnfsFL+htr+SRhY0xBC7JkVahRFU
	WZiqXKXYR7mY9H+dvWL5kNvnL9azSffPZmTQBwWQ0jFkZi8/AF4dajSUgAldRZg1WoqYifdy0JQ
	==
X-Received: by 2002:a5d:6f18:0:b0:48a:fcec:2a1e with SMTP id
 ffacd0b85a97d-48c727714d3mr6260131f8f.20.1791404272542; Wed, 07 Oct 2026
 13:17:52 -0700 (PDT)
MIME-Version: 1.0
References: <20261007190654.452376-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <sashiko-outbox-163308@kernel.org>
In-Reply-To: <sashiko-outbox-163308@kernel.org>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 7 Oct 2026 21:17:25 +0100
X-Gm-Features: AclHuK-7omXDfGhEXLWYnCdLZKCtqKAKNSUkEbMcNdvgyEuSNK7SrMKq2L59HWg
Message-ID: <CA+V-a8v5wOc=wMuGK=ztfU2bomcWgc1uBBzUXCZzfLQ71qEjYw@mail.gmail.com>
Subject: Re: [PATCH v2] phy: renesas: rcar-gen3-usb2: Keep OTG VBUS disabled
 until role is known
To: sashiko-reviews@lists.linux.dev
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, 
	neil.armstrong@linaro.org, wsa+renesas@sang-engineering.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_131754_664619_DEA41DA5 
X-CRM114-Status: GOOD (  30.27  )
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

SGksCgpPbiBXZWQsIE9jdCA3LCAyMDI2IGF0IDg6MjDigK9QTSA8c2FzaGlrby1ib3RAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4KPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNoaWtv
IEFJIHJldmlldyBmb3VuZCAyIHBvdGVudGlhbCBpc3N1ZShzKSB0byBjb25zaWRlcjoKPiAtIFtI
aWdoXSBwaHk6IHJlbmVzYXM6IFByb2JlIGZhaWxzIHdpdGggLUVPUE5PVFNVUFAgZm9yIGdlbmVy
aWMgVkJVUyByZWd1bGF0b3JzCj4gLSBbTWVkaXVtXSBwaHk6IHJlbmVzYXM6IGRhbmdsaW5nIHJl
Z3VsYXRvciBlbmFibGUgcmVmZXJlbmNlIG9uIHJlZ3VsYXRvcl9pc19lbmFibGVkIGZhaWx1cmUK
PiAtLQo+Cj4gY29tbWl0IGE5NWU0M2NjODZkNzlmMTZmNDE4ZWJiODc3Njg3YzJkMzAyNDI2MGUK
PiBBdXRob3I6IExhZCBQcmFiaGFrYXIgPHByYWJoYWthci5tYWhhZGV2LWxhZC5yakBicC5yZW5l
c2FzLmNvbT4KPgo+IHBoeTogcmVuZXNhczogcmNhci1nZW4zLXVzYjI6IEtlZXAgT1RHIFZCVVMg
ZGlzYWJsZWQgdW50aWwgcm9sZSBpcyBrbm93bgo+Cj4gVGhpcyBjb21taXQgYWRkcmVzc2VzIGFu
IGlzc3VlIG9uIFNvQ3Mgd2l0aG91dCBBRFAgY29udHJvbCB3aGVyZSB0aGUgVkJVUwo+IHJlZ3Vs
YXRvciB3YXMgdW5jb25kaXRpb25hbGx5IGVuYWJsZWQgYXQgcHJvYmUsIHBvdGVudGlhbGx5IGJh
Y2stcG93ZXJpbmcgYW4KPiBleHRlcm5hbCBob3N0LiBJdCByZXVzZXMgdGhlIHJlZmVyZW5jZSBo
YW5kZWQgb3ZlciBieSBhbiBleGNsdXNpdmUgZ2V0IGlmIHRoZQo+IHJlZ3VsYXRvciBpcyBhbHJl
YWR5IGVuYWJsZWQsIHJlZ2lzdGVycyBhIGRldm0gY2xlYW51cCBhY3Rpb24sIGFuZCB1c2VzCj4g
cmVndWxhdG9yX2hhcmR3YXJlX2VuYWJsZSgpIHRvIHR1cm4gb2ZmIHRoZSBwaHlzaWNhbCBWQlVT
IG91dHB1dCB1bnRpbCB0aGUKPiBwb3J0IHJvbGUgaXMga25vd24uCj4KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jIGIvZHJpdmVycy9waHkv
cmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYwo+ID4gaW5kZXggYjViYTc1MTgwNWFhZS4uMzQ4
MTUwNWRlYTJlOCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXIt
Z2VuMy11c2IyLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11
c2IyLmMKPiBbIC4uLiBdCj4gPiBAQCAtMTEzMywxNyArMTEzMiwzNSBAQCBzdGF0aWMgaW50IHJj
YXJfZ2VuM19waHlfdXNiMl92YnVzX3JlZ3VsYXRvcl9nZXRfZXhjbHVzaXZlX2VuYWJsZShzdHJ1
Y3QgcmNhcl9nZQo+ID4gICAgICAgICAgICAgICByZXR1cm4gMDsKPiA+ICAgICAgIH0KPiA+Cj4g
PiAtICAgICBpZiAoZW5hYmxlKSB7Cj4gPiArICAgICByZXQgPSByZWd1bGF0b3JfaXNfZW5hYmxl
ZChjaGFubmVsLT52YnVzKTsKPiA+ICsgICAgIGlmIChyZXQgPCAwKQo+ID4gKyAgICAgICAgICAg
ICByZXR1cm4gcmV0Owo+Cj4gW1NldmVyaXR5OiBNZWRpdW1dCj4gSWYgZGV2bV9yZWd1bGF0b3Jf
Z2V0X2V4Y2x1c2l2ZSgpIGFjcXVpcmVkIGEgcmVndWxhdG9yIHRoYXQgd2FzIGFscmVhZHkKPiBl
bmFibGVkIChlLmcuIGJ5IHRoZSBib290bG9hZGVyKSwgdGhlIHJlZ3VsYXRvciBjb3JlIGltcGxp
Y2l0bHkgc2V0cyB0aGUKPiBlbmFibGVfY291bnQgdG8gMS4KPgo+IElmIHJlZ3VsYXRvcl9pc19l
bmFibGVkKCkgdGhlbiBmYWlscyBkdWUgdG8gYW4gaW50ZXJtaXR0ZW50IEkyQyBjb21tdW5pY2F0
aW9uCj4gZXJyb3IgYW5kIHdlIHJldHVybiBlYXJseSBoZXJlLCBkb2VzIHRoaXMgbGVhayB0aGUg
ZW5hYmxlIHJlZmVyZW5jZSBzaW5jZSB3ZQo+IGJ5cGFzc2VkIHRoZSByZWdpc3RyYXRpb24gb2Yg
dGhlIGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldCgpIGRpc2FibGUgYWN0aW9uCj4gYmVsb3c/Cj4K
SWYgdGhlcmUgaXMgaW50ZXJtaXR0ZW50IEkyQyBjb21tdW5pY2F0aW9uIHRoYXQgd291bGQgbWVh
biB0aGUgc3lzdGVtCmlzIGFscmVhZHkgaW4gYSBiYWQgc3RhdGUuIEhhbmRsaW5nIHN1Y2ggYSBj
YXNlIHdpbGwganVzdCBhZGQgbW9yZQpkZWFkIGNvZGUhCgo+IFRoaXMgdW5iYWxhbmNlZCBjb3Vu
dCBjb3VsZCB0cmlnZ2VyIGEgV0FSTl9PTigpIGluIHRoZSByZWd1bGF0b3IgY29yZSBkdXJpbmcK
PiByZWd1bGF0b3JfcHV0KCkgd2hlbiBkZXZyZXMgdGVhcnMgZG93biB0aGUgcHJvYmUgc3RhdGUu
Cj4KPiA+ICsKPiA+ICsgICAgIGlmICghcmV0KSB7Cj4gPiAgICAgICAgICAgICAgIHJldCA9IHJl
Z3VsYXRvcl9lbmFibGUoY2hhbm5lbC0+dmJ1cyk7Cj4gPiAgICAgICAgICAgICAgIGlmIChyZXQp
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICAgICAgIH0KPiA+Cj4g
PiAtICAgICBpZiAocmVndWxhdG9yX2lzX2VuYWJsZWQoY2hhbm5lbC0+dmJ1cykpCj4gPiAtICAg
ICAgICAgICAgIHJldHVybiBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoZGV2LCByY2FyX2dlbjNf
cGh5X3VzYjJfdmJ1c19kaXNhYmxlX2FjdGlvbiwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBjaGFubmVsLT52YnVzKTsKPiA+ICsgICAgIC8qCj4gPiAr
ICAgICAgKiBBbiBleGNsdXNpdmUgZ2V0IG9mIGFuIGVuYWJsZWQgcmVndWxhdG9yIGFscmVhZHkg
aG9sZHMgYSByZWZlcmVuY2UsIHNvCj4gPiArICAgICAgKiBhZGQgYSBjbGVhbnVwIGFjdGlvbiB0
byBkaXNhYmxlIGl0IHdoZW4gdGhlIGRldmljZSBpcyByZWxlYXNlZC4KPiA+ICsgICAgICAqLwo+
ID4gKyAgICAgcmV0ID0gZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KGRldiwgcmNhcl9nZW4zX3Bo
eV91c2IyX3ZidXNfZGlzYWJsZV9hY3Rpb24sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgY2hhbm5lbC0+dmJ1cyk7Cj4gPiArICAgICBpZiAocmV0KQo+ID4gKyAgICAg
ICAgICAgICByZXR1cm4gcmV0Owo+ID4KPiA+IC0gICAgIHJldHVybiAwOwo+ID4gKyAgICAgLyoK
PiA+ICsgICAgICAqIFRoZSByZWd1bGF0b3IgaXMgZW5hYmxlZCBvbmx5IHNvIHRoYXQgdGhlIHJl
Z3VsYXRvciBjb3JlIGhvbGRzIGEKPiA+ICsgICAgICAqIHJlZmVyZW5jZSB0byBpdC4gRG8gbm90
IGRyaXZlIFZCVVMgdW50aWwgdGhlIHBvcnQncyByb2xlIGlzIGtub3duOwo+ID4gKyAgICAgICog
cmNhcl9nZW4zX2VuYWJsZV92YnVzX2N0cmwoKSBzd2l0Y2hlcyBpdCBmcm9tIHRoZW4gb24uCj4g
PiArICAgICAgKgo+ID4gKyAgICAgICogVGhlIFZCVVMgcmVndWxhdG9yIHVzZWQgb24gdGhlc2Ug
U29DcyBpbXBsZW1lbnQgdGhlIC5lbmFibGUvLmRpc2FibGUKPiA+ICsgICAgICAqIG9wcywgc28g
cmVndWxhdG9yX2hhcmR3YXJlX2VuYWJsZSgpIGNhbm5vdCBmYWlsIHdpdGggLUVPUE5PVFNVUFAg
aGVyZQo+ID4gKyAgICAgICogYW5kIG5vIHNwZWNpYWwgaGFuZGxpbmcgZm9yIGl0IGlzIG5lZWRl
ZC4KPiA+ICsgICAgICAqLwo+ID4gKyAgICAgcmV0dXJuIHJlZ3VsYXRvcl9oYXJkd2FyZV9lbmFi
bGUoY2hhbm5lbC0+dmJ1cywgZmFsc2UpOwo+Cj4gW1NldmVyaXR5OiBIaWdoXQo+IERvZXMgdGhp
cyBhY3R1YWxseSBmYWlsIHByb2JlIHVuY29uZGl0aW9uYWxseSB3aXRoIC1FT1BOT1RTVVBQIGZv
ciBnZW5lcmljCj4gVkJVUyByZWd1bGF0b3JzPwo+CkFzIG1lbnRpb25lZCBpbiB0aGUgY29tbWVu
dCBhYm92ZSB0aGUgcmVndWxhdG9ycyBjdXJyZW50bHkgdXNlZCBpbiB0aGUKU29DcyBpbXBsZW1l
bnQgZW5hYmxlL2Rpc2FibGUgY2FsbGJhY2tzOyBhZGRpbmcgdGhlc2UgY2hlY2tzIHdvdWxkCm1l
YW4gYWRkaW5nIG1vcmUgZGVhZCBjb2RlLgoKQ2hlZXJzLApQcmFiaGFrYXIKCj4gVXBzdHJlYW0g
ZGV2aWNlIHRyZWVzIGxpa2UgcjlhMDdnMDQ0YzItaHVtbWluZ2JvYXJkLXJpcHBsZS5kdHMgdXNl
Cj4gcmVuZXNhcyxyemcybC11c2IyLXBoeSAod2hpY2ggc2V0cyBub19hZHBfY3RybCA9IHRydWUp
IGFuZCBtYXAgdmJ1cy1zdXBwbHkgdG8KPiBhIGdlbmVyaWMgR1BJTyByZWd1bGF0b3ItZml4ZWQg
KHZidXMxKS4KPgo+IEZvciB0aGVzZSBnZW5lcmljIHJlZ3VsYXRvcnMsIGZpeGVkX3ZvbHRhZ2Vf
b3BzIGRvZXMgbm90IHByb3ZpZGUgZXhwbGljaXQKPiAuZW5hYmxlLy5kaXNhYmxlIGNhbGxiYWNr
cyBzaW5jZSBHUElPcyBhcmUgaGFuZGxlZCBpbnRlcm5hbGx5IGJ5IHRoZSByZWd1bGF0b3IKPiBj
b3JlLiBJbiB0aGlzIGNhc2UsIHJlZ3VsYXRvcl9oYXJkd2FyZV9lbmFibGUoKSByZXR1cm5zIC1F
T1BOT1RTVVBQIGFuZCB3b3VsZAo+IGNhdXNlIHJjYXJfZ2VuM19waHlfdXNiMl9wcm9iZSgpIHRv
IHVuY29uZGl0aW9uYWxseSBmYWlsLgo+Cj4gLS0KPiBTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMDcxOTA2NTQuNDUyMzc2LTEtcHJhYmhh
a2FyLm1haGFkZXYtbGFkLnJqQGJwLnJlbmVzYXMuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
