Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F671D358DF
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 08:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHPuJULbsC7vbOapbi0H2Z4194lJ+o8SY9jAJRMfT0c=; b=Mlj8MZ7PpgUkYR
	6x5BY9bbHDU6sDcb+Egopa6EVQ2K1582z1q1+Lg6Oi3k9ttDvc5YMC8EqD19C0/pWGWnrYqEPnNXC
	XTj3eHWN9SDKKtni5F//n3YaLoy4QyaKhcxv4bXEhACB29QM8ds/h1hQfo52/Fb1os71P1+E7+pkf
	4LdoLZt8nevgG3D9B2EI5srO7UKTwts8EWNGZXX7UOwwkwqYvYeuPolQdQfex4BOXYR29J/9dcNjb
	fFTDLB8USZbQQ3ogCVNwy3Ypj5sXcyt1iPrVEH24mFjcRZB0+KqtYR3ixR2DoT+InwVPRe+swzIqt
	4oD97BQ0EGWS22Wmsf8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlNSN-0000000HSb6-3NJr;
	Thu, 29 Jan 2026 08:32:51 +0000
Received: from mail-vk1-f177.google.com ([209.85.221.177])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlNSL-0000000HSaX-46QZ
	for linux-phy@lists.infradead.org;
	Thu, 29 Jan 2026 08:32:51 +0000
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-5662c2937fdso613711e0c.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Jan 2026 00:32:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769675568; x=1770280368;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iWSiH0vErBGaTqnZZjDiFHXh+s+0x/2ewRQpe7UFdYM=;
        b=dUfFJolNmBANdtC5MIrFFG2YZa+FAwrBuNEEPkIaFazcG5hFYV8KP/ow7483duFRA6
         QxLmzALtGAPNoRzy0Pw0EpXEUAk79+K7DEEeZ/GxcquCnMXG6SMJ9SNbPjjs0uiJuj70
         IrqK2eq9kstv2TvlKgj+Fxmxj+w0OQNFybodJxX1RryIaRkbCIqlVSOhcJucR0wA2XqZ
         HS5JmqH32Eg7woeGqssAk/3/CaV2XVmrq+ujPjEbtw5VAD34CQMbLbeqtmDmqDhfWekd
         ZXFQxkwE6ahnY8hLYFUJX70PSC7Ez+ZEyO693+LH7D/H9FQIO7BeQwKjHZI3JdCy9rPn
         5AQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcdwNmlDuYr+FHS26OZqdbGY6ybsiYimceAB3k736xVxXil083WIDcbdh4tN9YAF6Yu98hp+dc5Tk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyl9btKV966NeNg1BPD5xmKoKbY1qvMFi0dRNKMmck6L8h5Ij5w
	Xbe9DSlr6tqUZGE6ir1NR1KUlMmdS0lZP3iZKOlp1ApIw/aCnpllnDkGsZx8XCZI
X-Gm-Gg: AZuq6aJed5lX77MseEQw0wvzI1u5xVv9QsAQ7EYBEBKTD3Cwh3RYu5Oi+kpzsMKE+30
	9lY1I3d2Q/2+2LB2mpHBvpJ88EEghfn05atJyOCuNt4zHbbSynr+6rN6Xe2mnGYkOCwcNi5hMjs
	/NO5KRE4/+eaJ8Z3zlRpU5Dj46TzzCa1vd8vjST2gy6Czkl/A7th/nsDxSPfbrdwBYCJL6yc5/v
	n9QClIplr27XsH6TIrxkVyu2OEgOaIJlT09NwnXmmBDkRI7bTAOTiBfz10mYcTAIKXf556Bwuco
	64uQzXisC52Kpre9rJtdvJ/RXddP+fHO5ISIF/GkizDmHCZBqWwDuJR1s4744Nx+br6zXak1HpY
	sSlJQHhPTu50xPr0WXzH+8QIVifgZQITCBYoBfWpI1KwCM9Y205kf+2XBt0APUc9i7/Xmt8FvZD
	teOEanA606IgNlJsTbKgg0WubpD+L0LcczUDb8teGGsgU0TEQC
X-Received: by 2002:a05:6122:8713:b0:563:5bd7:3793 with SMTP id 71dfb90a1353d-56691e2a05fmr621064e0c.3.1769675568458;
        Thu, 29 Jan 2026 00:32:48 -0800 (PST)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5668599df7asm1207507e0c.0.2026.01.29.00.32.47
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 00:32:47 -0800 (PST)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5f524301a76so1149364137.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Jan 2026 00:32:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUlXNCvdRY/RAi9n1m6topNE+IzoCZYsW3WRM7DZdS0YYvlJ6eNUhjVsiQVXrQdvLS2+2CWJ7Ip4jQ=@lists.infradead.org
X-Received: by 2002:a05:6102:358a:b0:5f1:b59d:a824 with SMTP id
 ada2fe7eead31-5f8cdbcdd58mr660134137.10.1769675567174; Thu, 29 Jan 2026
 00:32:47 -0800 (PST)
MIME-Version: 1.0
References: <0caa3c449b0c3d64944da3f1003d9389bdc13f98.1769541083.git.geert+renesas@glider.be>
 <e955868c06547ac62d34d594d45dd07aa19e361b.camel@linaro.org>
In-Reply-To: <e955868c06547ac62d34d594d45dd07aa19e361b.camel@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 29 Jan 2026 09:32:35 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUWgrA9Z3d8pzRpuWJ=_P+JtQyUvOoT0eVpOp7Cikzj0A@mail.gmail.com>
X-Gm-Features: AZwV_QhDAZHfDa69lcwIjPEMriVTWX2j2mEpl3sREl4ukbpmMZGKeuh-Z80oSWU
Message-ID: <CAMuHMdUWgrA9Z3d8pzRpuWJ=_P+JtQyUvOoT0eVpOp7Cikzj0A@mail.gmail.com>
Subject: Re: [PATCH] phy: PHY_GOOGLE_USB should depend on ARCH_GOOGLE
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Naveen Kumar <mnkumar@google.com>, 
	Roy Luo <royluo@google.com>, Joy Chakraborty <joychakr@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_003250_018317_8E8B0E48 
X-CRM114-Status: GOOD (  25.06  )
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

SGkgQW5kcsOpLAoKT24gV2VkLCAyOCBKYW4gMjAyNiBhdCAyMTowMywgQW5kcsOpIERyYXN6aWsg
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4gT24gVHVlLCAyMDI2LTAxLTI3IGF0
IDIwOjEyICswMTAwLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gPiBUaGUgR29vZ2xlIFRl
bnNvciBTb0MgVVNCIFBIWSBpcyBvbmx5IHByZXNlbnQgb24gR29vZ2xlIFRlbnNvciBHNQo+ID4g
KExhZ3VuYSkgU29Dcy4gIEhlbmNlIGFkZCBhIGRlcGVuZGVuY3kgb24gQVJDSF9HT09HTEUsIHRv
IHByZXZlbnQgYXNraW5nCj4gPiB0aGUgdXNlciBhYm91dCB0aGlzIGRyaXZlciB3aGVuIGNvbmZp
Z3VyaW5nIGEga2VybmVsIHdpdGhvdXQgR29vZ2xlCj4gPiBUZW5zb3IgU29DIHN1cHBvcnQuCj4g
Pgo+ID4gRml4ZXM6IGNiY2U2NjY2OWM4MmVlOWEgKCJwaHk6IEFkZCBHb29nbGUgVGVuc29yIFNv
QyBVU0IgUEhZIGRyaXZlciIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4g
PGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+ID4gLS0tCj4gPiBBUkNIX0dPT0dMRSBpcyBub3Qg
eWV0IHVwc3RyZWFtLCBidXQgdGhhdCBkb2Vzbid0IGh1cnQuCj4KPiBJIGNhbiBzZWUgeW91ciBw
b2ludCwgYW5kIGhhdmUgbm8gb2JqZWN0aW9uLCBidXQgZm9yIGNvbnRleHQsIEdyZWcKPiBoYWQg
YXNrZWQgdG8gbm90IGFkZCBkZXBlbmRlbmNpZXMgb24gYSBjb25maWcgb3B0aW9uIHRoYXQgbWln
aHQgb3IKPiBtaWdodCBub3QgZ2V0IGFkZGVkIGluIHRoZSBmdXR1cmUgLSBBUkNIX0dPT0dMRToK
ClRoZSBleGFjdCBuYW1lIG1heSBpbmRlZWQgc3RpbGwgYmUgdW5kZXIgZGlzY3Vzc2lvbi4gIEJ1
dCB3ZSBhbGwga25vdwp0aGVyZSBfd2lsbF8gYmUgYSBjb25maWcgb3B0aW9uICh1bmxlc3MgdGhl
IHBsYXRmb3JtIGlzIGFiYW5kb25lZCBiZWZvcmUKdXBzdHJlYW1pbmcsIGFuZCB0aGlzIGRyaXZl
ciB3aWxsIGJlIHJlbW92ZWQgYWdhaW4gYW55d2F5IDstKS4KCj4gTWF5YmUgYW4gYWx0ZXJuYXRp
dmUgd291bGQgYmUgdG8gbWFrZSBpdCBkZWZhdWx0PW4sIGFuZCBjaGFuZ2UgdGhhdAo+IGRlZmF1
bHQgb25jZSBBUkNIX0dPT0dMRSBnZXRzIGFkZGVkPwoKSXQgYWxyZWFkeSBkZWZhdWx0cyB0byBk
aXNhYmxlZCwgYXMgImRlZmF1bHQ9biIgaXMgdGhlIGRlZmF1bHQuCgo+ID4gLS0tIGEvZHJpdmVy
cy9waHkvS2NvbmZpZwo+ID4gKysrIGIvZHJpdmVycy9waHkvS2NvbmZpZwo+ID4gQEAgLTQ5LDYg
KzQ5LDcgQEAgY29uZmlnIEdFTkVSSUNfUEhZX01JUElfRFBIWQo+ID4KPiA+ICBjb25maWcgUEhZ
X0dPT0dMRV9VU0IKPiA+ICAgICAgIHRyaXN0YXRlICJHb29nbGUgVGVuc29yIFNvQyBVU0IgUEhZ
IGRyaXZlciIKPiA+ICsgICAgIGRlcGVuZHMgb24gQVJDSF9HT09HTEUgfHwgQ09NUElMRV9URVNU
Cj4gPiAgICAgICBzZWxlY3QgR0VORVJJQ19QSFkKPiA+ICAgICAgIGhlbHAKPiA+ICAgICAgICAg
RW5hYmxlIHN1cHBvcnQgZm9yIHRoZSBVU0IgUEhZIG9uIEdvb2dsZSBUZW5zb3IgU29Dcywgc3Rh
cnRpbmcgd2l0aAoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBH
ZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5
b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlv
bnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hl
biBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBz
b21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExp
bnVzIFRvcnZhbGRzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
