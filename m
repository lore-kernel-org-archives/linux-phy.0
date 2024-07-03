Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6475C2BD09
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jul 2024 08:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iM4SWe9bDF7mRPtDVruexpSZHuI8dXkjE79du9ITXXo=; b=tXGFzOyc28BLPE
	bb2iNCmwflKjbxqF6vDb/Z0+K2lZyvbg/0iR7y4WovuQUvVGjnExQEzjeC9X9yJNDdte1EWb5jIfo
	jP+gAZ54AdBgw5l+66BKrqzb2LriwGS9AJEaWclybsVgllnFp9d2Rlfy79CLpgwZGwIX57hGNXELl
	/M/BkUH1Y0aHEtYWMPkSPDf/Fgd66IKCvhz5TlWkJr3Q7bFhPqJCoBwednIG91Nq95I9SiufYKuYJ
	lcsvvIqVOVggIYCqrdoMoSdYOgVxpA2ppOTnN1Llmf4WH1aM1TjqBC/Z2klXfYd8cbKB3OkQQ4zh9
	uG3svw88IuKqn3X6Bu0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOvTm-00000009RjB-11dC;
	Wed, 03 Jul 2024 08:36:42 +0000
Received: from mail-yw1-f180.google.com ([209.85.128.180])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOvTj-00000009Rio-0UCW
	for linux-phy@lists.infradead.org;
	Wed, 03 Jul 2024 08:36:40 +0000
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-65011d9bd75so14774047b3.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Jul 2024 01:36:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719995796; x=1720600596;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BT6Tv6N+pnktl0oz4QdEbXnwBPXb90Am/ZyrrKG3Cy4=;
        b=bZjQZtT51DuTtJxpCfhqb6BM1C5hGqMtF3bOhxgne6Od7kuv7EabIq3eP6gop6Ge4h
         ky9n9PaKCX00DS7z7a3aU9itEIl2/ZXQSBl6WfRSkoInnbOOgJJPAZULiwz0cKMnz31x
         eAhmToC5kKtSh4azkSXt2dyPao9UeucvcfGuIBDXegmHeuRJ9bum6fbJNF9yiI1u53KB
         fSisp0VAx9555iT3CQ1fKhdB9P/WFcUNN8VNQGdwwx1nkUniMWG2T3fNFYFBeSvbTxIk
         nQbnLqWBrp4nHduMkHSO8YAYLw1adipnZZpuq1RiRaQHmTSCtX3C5W3gqjtcMiSFS5nT
         jKdg==
X-Forwarded-Encrypted: i=1; AJvYcCUadKf1PqLwZ7cpEe034q912o8A6mzGHoo+dykZClYZftMNc6sPHPEhgkJ1gNaTC5KBvhKv8bfRwt9+mVqgOFnFN5SwqbV3Q91XxO8TDw==
X-Gm-Message-State: AOJu0YzmdahnLILF3wJdOxbjEAe6+QTgk1B4xBptECHwUxpkmrjz3/cd
	b782yc/QCXK/7I/Ao25EJ3M1zJJHc9veLetFc1aghUkvsNcl9HjJ9oa8KzwP
X-Google-Smtp-Source: AGHT+IEhtKTVNkZTlr2oq4avb6iCeixLfAF7ZS6SEC1XWV7wm0QNW/+3tPbKmWTBxBFgly/qkgjhqg==
X-Received: by 2002:a05:690c:710:b0:64a:e220:bfbf with SMTP id 00721157ae682-64c71be30d3mr124839537b3.23.1719995796316;
        Wed, 03 Jul 2024 01:36:36 -0700 (PDT)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com. [209.85.128.170])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-64a9a23b71asm20745907b3.50.2024.07.03.01.36.35
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jul 2024 01:36:36 -0700 (PDT)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-64789495923so45217997b3.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Jul 2024 01:36:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV/+qkwRq4lH9BMlXX4rHQU8f/6E9bpVncJ/Q6nNu9bfAQ+BqEyIizCEB85jSNV8GtcjQExn6VvARL68mlCAB/IlCi/afC+9EsBpLCJWQ==
X-Received: by 2002:a81:ae17:0:b0:650:9799:41d2 with SMTP id
 00721157ae682-6509799460cmr31241117b3.30.1719995795398; Wed, 03 Jul 2024
 01:36:35 -0700 (PDT)
MIME-Version: 1.0
References: <20240702180032.207275-1-biju.das.jz@bp.renesas.com> <20240702180032.207275-5-biju.das.jz@bp.renesas.com>
In-Reply-To: <20240702180032.207275-5-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 3 Jul 2024 10:36:22 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUmvWPPBVqhtpu2dovwQg7YA7TVZBRnATUiY+1QRy0B1w@mail.gmail.com>
Message-ID: <CAMuHMdUmvWPPBVqhtpu2dovwQg7YA7TVZBRnATUiY+1QRy0B1w@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] arm64: dts: renesas: rz-smarc: Replace fixed
 regulator for USB VBUS
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Biju Das <biju.das.au@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_013639_175326_B410D843 
X-CRM114-Status: GOOD (  20.66  )
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

SGkgQmlqdSwKCk9uIFR1ZSwgSnVsIDIsIDIwMjQgYXQgODowMeKAr1BNIEJpanUgRGFzIDxiaWp1
LmRhcy5qekBicC5yZW5lc2FzLmNvbT4gd3JvdGU6Cj4gUmVwbGFjZSB0aGUgZml4ZWQgcmVndWxh
dG9yIGZvciBVU0IgVkJVUyBhbmQgdXNlIHRoZSBwcm9wZXIgb25lIHRoYXQKPiBjb250cm9scyBy
ZWd1bGF0b3IgYmFzZWQgb24gVkJVUyBkZXRlY3Rpb24uCj4KPiBTaWduZWQtb2ZmLWJ5OiBCaWp1
IERhcyA8YmlqdS5kYXMuanpAYnAucmVuZXNhcy5jb20+Cj4gLS0tCj4gdjQtPnY1Ogo+ICAqIFVw
ZGF0ZWQgY29tbWl0IGRlc2NyaXB0aW9uLgoKVGhhbmtzIGZvciB0aGUgdXBkYXRlIQoKPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcnotc21hcmMtY29tbW9uLmR0c2kKPiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcnotc21hcmMtY29tbW9uLmR0c2kKPiBAQCAt
NTQsMTQgKzU0LDYgQEAgY29kZWNfZGFpOiBzaW1wbGUtYXVkaW8tY2FyZCxjb2RlYyB7Cj4gICAg
ICAgICAgICAgICAgIH07Cj4gICAgICAgICB9Owo+Cj4gLSAgICAgICB1c2IwX3ZidXNfb3RnOiBy
ZWd1bGF0b3ItdXNiMC12YnVzLW90ZyB7Cj4gLSAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAi
cmVndWxhdG9yLWZpeGVkIjsKPiAtCj4gLSAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0g
IlVTQjBfVkJVU19PVEciOwo+IC0gICAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9s
dCA9IDw1MDAwMDAwPjsKPiAtICAgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQg
PSA8NTAwMDAwMD47Cj4gLSAgICAgICB9Owo+IC0KPiAgICAgICAgIHZjY3Ffc2RoaTE6IHJlZ3Vs
YXRvci12Y2NxLXNkaGkxIHsKPiAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0
b3ItZ3BpbyI7Cj4gICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gIlNESEkxIFZjY1Ei
Owo+IEBAIC0xMzksNiArMTMxLDkgQEAgJm9oY2kxIHsKPgo+ICAmcGh5cnN0IHsKPiAgICAgICAg
IHN0YXR1cyA9ICJva2F5IjsKPiArICAgICAgIHVzYjBfdmJ1c19vdGc6IHJlZ3VsYXRvci12YnVz
IHsKClRoZSBsYWJlbCBpcyBub3QgcmVhbGx5IG5lZWRlZCwgaXMgaXQ/Cgo+ICsgICAgICAgICAg
ICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2YnVzIjsKPiArICAgICAgIH07CgpBbHNvLCBhcyB0aGUg
cmVndWxhdG9yLXZidXMgc3Vibm9kZSBpcyByZXF1aXJlZCwgcGVyaGFwcyBpdCBzaG91bGQKYmUg
bW92ZWQgdG8gdGhlIFNvQy1zcGVjaWZpYyAuZHRzaT8gT3IgZG8geW91IGtlZXAgaXQgaGVyZSBm
b3IKYm9hcmQtc3BlY2lmaWMgY29udHJvbCBvZiB0aGUgcmVndWxhdG9yIG5hbWUsIGkuZS4gdG8g
YXZvaWQgY29uZmxpY3RzPwoKPiAgfTsKPgo+ICAmc2NpZjAgewoKQW55d2F5LCB0aGlzIGFkaGVy
ZXMgdG8gdGhlIERUIGJpbmRpbmdzLCBzbwpSZXZpZXdlZC1ieTogR2VlcnQgVXl0dGVyaG9ldmVu
IDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KQWNrZWQtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8
Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+CgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAg
ICAgICAgICAgICAgIEdlZXJ0CgoKLS0KR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90
cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29u
YWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBo
YWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInBy
b2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
