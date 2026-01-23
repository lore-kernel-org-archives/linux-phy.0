Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C69AD6CFD5
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 06:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ey+4g/myONf0RlyXkVD9waIRrCX1KPedWMj9huf8la8=; b=o2T2jVNGD4Ox8A
	5TRx55267aYr5mKnEw0TKf9z/lpovPQLdk7BqiN4iRIqHSPPiFB/5Yt0lmIY/VfOBy2BfCEm5fq97
	S6HQHtUx6gEadRCe1X4QMolP8ioBOzKRbcUZ1Q/th3Ms+GeUuTeMyZxfPAXyr/2tKKnQv+bPxBhwS
	UHNIdTc6mnrlnaWtiPWhmiVJ78FXJid0d933EtK3ARan7iXK87d8KvvVSKhlcSegaBIO2V8Iy//Wq
	DyvxUSFrnHEAyUYn9lLWiNGfqpoYubHm2B6MJsNqExWMKh+2wGH0EqQkQYyOYKtyWBKnci3AXdBc0
	HXLdGttpylx43hqNUaNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjAf2-00000008INl-3ZRS;
	Fri, 23 Jan 2026 06:28:48 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjAez-00000008IN4-3fmN
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 06:28:47 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-430f2ee2f00so1119094f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 22:28:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769149724; x=1769754524; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3jT9NZUzEXDkXmWjrnYYCDqk40FJEePHa/GTVTCRXgM=;
        b=mBRsPRrFaLtZaVF9iNESBEAdciuEn1uym2Kzm8RBG+5U+9dX+Ghl1SeByjJ9C8YSdH
         ZnL5S/1WnbanPUL3ji4fSi8MbQ+oYAsb3I2cFqmCJ4K1pSSqDuS6nSWIpxBEs4AU6QZj
         zXimzvyxK6ygLcvHhFWNSpWMWTx//aqJNKx6FZ4qkBvShFJu+TrIe2eVJORjZ7KFzoH7
         UmkXgXsuC0iOkcQPdl/Xr6pLjdKZfCW9p/bdUkWSbFjfHms67GKgzREpeJXanXi6BWUV
         9uMMza7qvi8+BtyaroItYzq6ldN8o5LyBdZFQabCeTSIjbGcnQ+4W5OZmSS7ArPveY3K
         CwDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769149724; x=1769754524;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3jT9NZUzEXDkXmWjrnYYCDqk40FJEePHa/GTVTCRXgM=;
        b=pcpXi97BTobxy4cGZd+FZkXlq1BC0EhBpY4DfKYEapQ/s74JI1bLCrCkC/nMkO5kX1
         TuquMbcZUR/14lo1tiNB0ign4gKs8hPSEeClxmuEHPx8jN4AFUTf/v+zqPS5yv/h1Knn
         l08XuwN63/rT6oNFBNFf3ra30y4R2DkrWpxIsW3Slblqlc61gbjdrZFZhFCPPsg48nWs
         jEDLQNXdgwHY+UJ0eBRAqn9vuaQA3bg5LLNdiyPpY24N2DXQ+QsIWa2Ltgr9hlECuyl+
         5tNHDA3CfCYs/mLwJdP1AjAeqoVO1UlU38SqDF+bsfXnVCpZavjoMKffHVs3hq5bHkve
         Gp5g==
X-Forwarded-Encrypted: i=1; AJvYcCUWWQqtKg8nWvasp9Anj43UIO9jhT2kY7tzsq504I4TAUO9IUgUCGcL0ixueCaFH/D32a3HgORrHv0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHoOA9Cp4BQgiYuo36wAukn9EXScq8/rsh4xazc4uXVGFCCR83
	lTFUyJ9fzy1Yqcj7B3szNUcNBrPmwmR5zRwMj25Eje5IsdsW9ETRxe5K+enNjo0Yk+s=
X-Gm-Gg: AZuq6aIgdOPy2pK34CbmJ1Sz8Q3AxG2b+WqA65Hea4t2hNuqF/VsH9PP94frwK4iHB/
	QQCfUj8cF6SReE/0Oggi2S/99Vmhz0eBeS1rWmngxqu7UZpbUkKrQRAXocw27vRuNrsuYm61d/6
	tEEKc+UYp4Wd9zWaW6MsHbaTsEBVa7+tSTvGlCSCBHy5NDzvepXpe9jjBKCuHxZAZbDm00OQgc5
	Pav2M1MysDGy69DZygtLmjtAlzqqvpC3f0ZTxgWqXLgm0Um15t+rGwU44Hz0fLv0KcLmsW0vdog
	rq8YrqWOlDuucCI8osThoWpy7YaoXWsp/C5hf/9UaZJKZ6NII62qv+6OFlsCC5JWg7Yy49PXFe7
	TJ1UI4j6Am23g1SqzAE4LIiGkyqQb8z3VEsjXu0vEjPH4korhxvjOg9ISsHWQurw6neJe/B+iC6
	kSKzo3oSlvLSpUV8Z0/A==
X-Received: by 2002:a05:6000:2c08:b0:435:9522:2bc9 with SMTP id ffacd0b85a97d-435b15bd97fmr3431523f8f.5.1769149723683;
        Thu, 22 Jan 2026 22:28:43 -0800 (PST)
Received: from draszik.lan ([212.129.79.190])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1f74b15sm4214449f8f.35.2026.01.22.22.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 22:28:43 -0800 (PST)
Message-ID: <f956ccd3f5f694de7a634819da3f790a8dce132b.camel@linaro.org>
Subject: Re: [PATCH next] phy: google: fix build dependency for Google
 Tensor USB PHY
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Roy Luo <royluo@google.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,  Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty	
 <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 kernel test robot	 <lkp@intel.com>
Date: Fri, 23 Jan 2026 06:28:44 +0000
In-Reply-To: <CA+zupgw5H5rumo+DxaTfA_=bcvjbBOivm6R+Pw31jgE-sMyEtw@mail.gmail.com>
References: <20260121-next-v1-1-c18068b091b9@google.com>
	 <7c78f9da40022e7bbf850ae8989c617bdc30cc95.camel@linaro.org>
	 <CA+zupgw5H5rumo+DxaTfA_=bcvjbBOivm6R+Pw31jgE-sMyEtw@mail.gmail.com>
User-Agent: Evolution 3.56.2-2+build3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_222845_944994_BF3F5BF9 
X-CRM114-Status: GOOD (  23.16  )
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

SGkgUm95LAoKT24gVGh1LCAyMDI2LTAxLTIyIGF0IDExOjAwIC0wODAwLCBSb3kgTHVvIHdyb3Rl
Ogo+IE9uIFRodSwgSmFuIDIyLCAyMDI2IGF0IDI6MznigK9BTSBBbmRyw6kgRHJhc3ppayA8YW5k
cmUuZHJhc3ppa0BsaW5hcm8ub3JnPiB3cm90ZToKPiA+IAo+ID4gSGkgUm95LAo+ID4gCj4gPiBP
biBXZWQsIDIwMjYtMDEtMjEgYXQgMjI6MjEgKzAwMDAsIFJveSBMdW8gd3JvdGU6Cj4gPiA+IFRo
ZSBHb29nbGUgVGVuc29yIFVTQiBQSFkgZHJpdmVyIHVzZXMgdGhlIFR5cGUtQyBzd2l0Y2ggZnJh
bWV3b3JrIHRvCj4gPiA+IGhhbmRsZSBvcmllbnRhdGlvbiBjaGFuZ2VzLiBIb3dldmVyLCB0aGUg
S2NvbmZpZyBkaWQgbm90IHNwZWNpZnkgYQo+ID4gPiBkZXBlbmRlbmN5IG9uIHRoZSBUWVBFQyBm
cmFtZXdvcmssIGxlYWRpbmcgdG8gdW5kZWZpbmVkIHJlZmVyZW5jZQo+ID4gPiBlcnJvcnMgd2hl
biBidWlsZGluZyBmb3IgYXJjaGl0ZWN0dXJlcyBvciBjb25maWd1cmF0aW9ucyB3aGVyZQo+ID4g
PiBDT05GSUdfVFlQRUMgaXMgZGlzYWJsZWQgb3IgY29uZmlndXJlZCBhcyBhIG1vZHVsZS4KPiA+
ID4gCj4gPiA+IEFkZCAnZGVwZW5kcyBvbiBUWVBFQycgdG8gdGhlIFBIWV9HT09HTEVfVVNCIGVu
dHJ5IHRvIGVuc3VyZSBhbGwKPiA+ID4gcmVxdWlyZWQgc3ltYm9scyBhcmUgYXZhaWxhYmxlIGR1
cmluZyBsaW5raW5nLgo+ID4gPiAKPiA+ID4gRml4ZXM6IGNiY2U2NjY2OWM4MiAoInBoeTogQWRk
IEdvb2dsZSBUZW5zb3IgU29DIFVTQiBQSFkgZHJpdmVyIikKPiA+ID4gUmVwb3J0ZWQtYnk6IGtl
cm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+ID4gPiBDbG9zZXM6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL29lLWtidWlsZC1hbGwvMjAyNjAxMjEwODI1LkVMcnBRZUVELWxrcEBpbnRl
bC5jb20vCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFJveSBMdW8gPHJveWx1b0Bnb29nbGUuY29tPgo+
ID4gPiAtLS0KPiA+ID4gwqBkcml2ZXJzL3BoeS9LY29uZmlnIHwgMSArCj4gPiA+IMKgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9waHkvS2NvbmZpZyBiL2RyaXZlcnMvcGh5L0tjb25maWcKPiA+ID4gaW5kZXggMTQyZTdiMGVm
MmVmYjkyMDk3ODE4MDBlZTQ3YjgyMGE5MWIxMTVhZS4uNTUzMWZmMzFkODE1NmNiMTY0YzMyZTNl
NTJkNGE1N2IyNmE2MmQ4ZCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9waHkvS2NvbmZpZwo+
ID4gPiArKysgYi9kcml2ZXJzL3BoeS9LY29uZmlnCj4gPiA+IEBAIC00OSw2ICs0OSw3IEBAIGNv
bmZpZyBHRU5FUklDX1BIWV9NSVBJX0RQSFkKPiA+ID4gCj4gPiA+IMKgY29uZmlnIFBIWV9HT09H
TEVfVVNCCj4gPiA+IMKgIHRyaXN0YXRlICJHb29nbGUgVGVuc29yIFNvQyBVU0IgUEhZIGRyaXZl
ciIKPiA+ID4gKyBkZXBlbmRzIG9uIFRZUEVDCj4gPiAKPiA+IENhbiB5b3UgbWFrZSB0aGlzCj4g
PiAKPiA+IGRlcGVuZHMgb24gVFlQRUMgfHwgQ09NUElMRV9URVNUCj4gPiAKPiA+IHRvIGFsbG93
IHNvbWUgYmV0dGVyIHRlc3QgY292ZXJhZ2U/Cj4gPiAKPiA+IENoZWVycywKPiA+IEFuZHJlCj4g
Cj4gSGkgQW5kcmUsCj4gCj4gV2hldGhlciB0byBhZGQgQ09NUElMRV9URVNUIGZvciBidWlsZCBj
b3ZlcmFnZSB3YXMgZGlzY3Vzc2VkIGluCj4gYW5vdGhlciB0aHJlYWQgWzFdLiBNeSB0YWtlYXdh
eSBmcm9tIHRoYXQgZGlzY3Vzc2lvbiBpcyB0aGF0Cj4gQ09NUElMRV9URVNUIGlzIGludGVuZGVk
IHRvIHN1YnN0aXR1dGUgZm9yIEFSQ0hfWFhYIGluIGJ1aWxkCj4gdGVzdGluZyBhbmQgc2hvdWxk
IG5vdCBiZSB1c2VkIHdpdGhvdXQgaXQuIE9uY2UgQVJDSF9HT09HTEUgaXMKPiBwcmVzZW50LCB3
ZSBjYW4gYWRkICJkZXBlbmRzIG9uIChBUkNIX0dPT0dMRSB8fCBDT01QSUxURV9URVNUKSIuCgpD
T01QSUxFX1RFU1QgaXMgbm90IGxpbWl0ZWQgdG8gQVJDSF94eHguIEl0IGFsbG93cyBkcml2ZXJz
IHRvIGJlCmNvbXBpbGUgdGVzdGVkIGV2ZW4gaWYgdGhlIGN1cnJlbnQgYnVpbGQgZG9lc24ndCBl
bmFibGUgd2hhdGV2ZXIKb3B0aW9uIChsaWtlIFRZUEVDKS4KClNlZSBhbHNvIGh0dHBzOi8vd3d3
Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L2tidWlsZC9rY29uZmlnLWxhbmd1YWdlLmh0bWwj
Y29tcGlsZS10ZXN0aW5nCgpDaGVlcnMsCkFuZHJlJwoKCj4gCj4gWzFdIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2FsbC9DQSt6dXBnd2dmS3dQWXFqOEcydE5mNHBFWE5FV0ErdkwyV1lKUGhKMTZ4
RXhna283RHdAbWFpbC5nbWFpbC5jb20vCj4gCj4gUmVnYXJkcywKPiBSb3kKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
