Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87129C98314
	for <linux-phy@archiver.kernel.org>; Thu, 24 Sep 2026 06:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fOKQGaGrA/PHFmjpcJnsTWRYvu2wPWF9AAAwc/5gkPI=; b=vyX668UzprZsHd
	ZqVzb76FpY+10UVL2PJenHd8IJjOnnm6ay4OAG/SG6p0D6BNtWlAAZhCRE2Rq6sm9WU7n1l//Pu3d
	inMSA1ZitMld2QurRQNIDk63/qLkhzgCZl/WVJD0usqTQ5WwCqls5wTfmV4vpAxYVZ5m3SjOkCzfW
	Ka1U0t2L5iujbbU1RKoFb5SWJ/K02ITEmbbF9FTTep4JudHpRyUUpYOetrza/vhvbS+O/hLP8Bd5h
	HSf6Gnlk39MC2tkUkdJsj4O+Zz8uwH1xbkmjeLU/cyieSoNJhCzopywKm+D9/KXK7Yd6Z68GTWJFn
	dTh6G9RJWpdf8PSCyIMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9dFn-0000000ABLV-0t45;
	Thu, 24 Sep 2026 06:48:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9dFl-0000000ABLI-3YVz
	for linux-phy@bombadil.infradead.org;
	Thu, 24 Sep 2026 06:48:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=yM9Je+YRpF14AiZXmjVF0d/iThCOAo3W//vQVXt0asA=; b=CkDwKtJkAea1Zog1CsCFBHFsHD
	7a0mX1thtSmg27jacaXT0wcRXiUlSUHRhKVvWpFS44pYdT+ec5XmvJxiVL7RmdP6uDYDdIvjJJc5F
	EX/Eb29dSL6yoasWxDGHwIvC2OLwXoDPgnLxLPocPYLNjroe6nLlnsxxcAOWxGR9w5YqCZhM/0rU4
	wnzMCBOJKST8MVK2Fk5lebwgw/Zeo2MKYw+ay+Zy3doKuOLzI3V+GJaKDfYtQjjKT7ZP41lHYaaNY
	qysHR6qrok5ubPRJ7rco+cWRYcoKUntOpAUiIWg+A9tpb0E5lqccMiSDuJtKqhH6P9negWVOQqjwD
	eEuXjMOw==;
Received: from mail-pj2-x11.google.com ([2607:f8b0:4864:39::11])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x9dFf-0000000Fc53-3wpW
	for linux-phy@lists.infradead.org;
	Thu, 24 Sep 2026 06:48:20 +0000
Received: by mail-pj2-x11.google.com with SMTP id d9443c01a7336-2db18fe433fso8503235ad.2
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 23:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790232493; x=1790837293; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yM9Je+YRpF14AiZXmjVF0d/iThCOAo3W//vQVXt0asA=;
        b=lGujpwF6v7GQkQSSGavaaFL7nnMtp8z3XbNZnl/XUsf+UyFt4oOB/Wq3McJkfXqZxr
         zEf5PKgy32gsB8yLbY2jfgfqlrmrBcO3YjODwbeVFOfFBPoaBCo5o+ej/hAmmQqYiFPx
         KgFABYLtNVzRMOSUwWqJIzr2wjweZmYkYYKI+I/NHo+DsTjM01gbsWMJK60TqfnVFBep
         oG5I4uUk5zMKL31W/xEMyQDsUIxVyyviMzocf6axWYG1RoJgBMthJZo8y9zBy54+Ixl0
         N2KoHcOJZd3ik4AnYwZbRIDjS6LpHjM9Hx+FiPkvwNC8KY86xJgqtj0pBFjoi9FqZ02V
         jifw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790232493; x=1790837293;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yM9Je+YRpF14AiZXmjVF0d/iThCOAo3W//vQVXt0asA=;
        b=DDGeVnaajNvaKt8F/HuJkw3Rymwv9y+N7H+vtT0LUG7MfhzCT0wZfdGUdCg9p0wIDH
         pSObCzmaHpjmJF/ac8mxXKtHmNK0Pzbg7WJPgrgqD82eTTm15pzbn/4I6KB12N8Dk0Vi
         6/iQDyn1QfBb/rAbvA8YFWw7KG07g5n6OIN9fi+a0ympo1TldCtVWPOkuM3kV0mKWY9E
         NDRsG9v1ijj2OjNjaGs3AS2p4imLt0YJ3k0ZVcaZcXBSBJtHpRlT9eQFvly+AZguUNEq
         KnhHi11pwUKqvebQ0BwvHva6aJx1F9vh1ATu0dFMRXCsZ3o3ftM3hV03rA0DEObD4KZ3
         4eoQ==
X-Forwarded-Encrypted: i=1; AKwUvByDNfKQPkbbdAjNkr0hht2ecrm7TjYnQpT0iEhG9CTl3O3r46SZNDGyRnaXRjlr6IeUswVLBzexhgo=@lists.infradead.org
X-Gm-Message-State: AFuF++lQvDqBDQ5nhHMlxQNptkh0TKq8g2S065kqp/5i/votnLYp8++W
	dJ9CZfKFPt80tx4ucuUYsDo4c2VI+3xGjnma1SFiY0xC74m19Po3ev8+
X-Gm-Gg: AYBFou2xe38xn11fJaAKTmMIv7JrHVk9RSV/IH1gRD6zOlj6qQSnZyUI/e/52X9n3fL
	gZSWYEQyyct3QoCbN2ofQUpjFbrHHAg3Et/M3X3BNgqgf1li6YyCWAI1lauMWS5EUWZbGTyf3wL
	wtV2W12pYaNyqh6gGjST6pqcKPdg+t9zBSoReHgxvV7nVSod6XwK3bh6qcKNClXI4Y2BoARM41w
	NRyjyT8H1ColGJ0TsEK/VDwku5iO7wnl5UlLLgUN+F7eMzza87SFzcZUhuWZ7Sg0MfDsVcHFpgx
	2BukjMlxAMBH+y2A921kHy7wYgIo88JXTLB9VVYlISslKofPrfV8ePAoQ6FX0QbPhSj98S2MPl9
	PSPy4ZrxM2FGkmbE9yIK214ySWkAHkjDCeVJgFsfoJPOf/aUniVoAhfx2JDo2n2qBGP9OGCD3As
	TZ41ESuKgPD2MixsTsHQeNfoP02xXlPffOjEb+i4kwwVveQ0k2cvsAEcuHoY4nUieaQcP2eOzvi
	zo9/+iTODnvnCJIXmk3y1w5hkBmsH6yVK7UuRfuRguhYKoqLrPGdxMTFaPRHpldVQ==
X-Received: by 2002:a17:903:2f4b:b0:2df:448a:e016 with SMTP id d9443c01a7336-2df7dc1e167mr13424515ad.34.1790232493096;
        Wed, 23 Sep 2026 23:48:13 -0700 (PDT)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6a5c7d82sm21463085ad.46.2026.09.23.23.48.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2026 23:48:12 -0700 (PDT)
Message-ID: <0e6fb86c-e995-4ef1-b08b-44a5e8be93f9@gmail.com>
Date: Thu, 24 Sep 2026 14:48:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] arm64: dts: nuvoton: ma35d1: add USB controllers
 and dual-port PHY node
To: Jacky Huang <ychuang570808@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Jacky Huang
 <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>,
 Hui-Ping Chen <hpchen0nvt@gmail.com>, Joey Lu <yclu4@nuvoton.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260914031859.385224-1-a0987203069@gmail.com>
 <20260914031859.385224-3-a0987203069@gmail.com>
 <2d07e535-3029-41d0-9dcf-8772f7330434@gmail.com>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <2d07e535-3029-41d0-9dcf-8772f7330434@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_074817_988003_7DB0D586 
X-CRM114-Status: GOOD (  16.36  )
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

CkphY2t5IEh1YW5nIOaWvCAyMDI2LzkvMTkg5LiL5Y2IIDAxOjQ5IOWvq+mBkzoKPj4gQWRkIHRo
ZSBVU0Igc3Vic3lzdGVtIG5vZGVzIGZvciB0aGUgTUEzNUQxIFNvQyBhbmQgYm9hcmRzOgo+Pgo+
PiDCoMKgIC0gdXNiX3BoeTogc3RhbmRhbG9uZSBQSFkgbm9kZSB3aXRoICNwaHktY2VsbHMgPSA8
MT4sIGNvdmVyaW5nIGJvdGgKPj4gwqDCoMKgwqAgdGhlIE9URyBwb3J0IChQSFkwLCBpbmRleCAw
KSBhbmQgdGhlIGhvc3Qtb25seSBwb3J0IChQSFkxLCBpbmRleCAKPj4gMSkuCj4+IMKgwqDCoMKg
IFVzZXMgbnV2b3RvbixzeXMgcGhhbmRsZSBhbmQgSFVTQkgwX0dBVEUgY2xvY2sgcGVyIHRoZSBi
aW5kaW5nLgo+Pgo+PiDCoMKgIC0gdXNiIChEV0MyIGdhZGdldCwgVVNCMCk6IHBoeXMgPSA8JnVz
Yl9waHkgMD4sIGRyX21vZGUgPSBwZXJpcGhlcmFsLgo+PiDCoMKgIC0gZWhjaTAvb2hjaTAgKFVT
QjAgaG9zdCk6IHBoeXMgPSA8JnVzYl9waHkgMD4sIGNvbXBhbmlvbiBwYWlyaW5nLgo+PiDCoMKg
IC0gZWhjaTEvb2hjaTEgKFVTQjEgaG9zdCk6IHBoeXMgPSA8JnVzYl9waHkgMT4uCj4+Cj4+IEJv
YXJkIGZpbGVzIChtYTM1ZDEtc29tLTI1Nm0uZHRzLCBtYTM1ZDEtaW90LTUxMm0uZHRzKSBhZGQg
cGluY3RybCBmb3IKPj4gVkJVU1ZMRCwgUFdSRU4gYW5kIE9WQyBzaWduYWxzIGFuZCBlbmFibGUg
YWxsIFVTQiBub2Rlcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSm9leSBMdSA8YTA5ODcyMDMwNjlA
Z21haWwuY29tPgo+PiAtLS0KPj4gwqAgLi4uL2Jvb3QvZHRzL251dm90b24vbWEzNWQxLWlvdC01
MTJtLmR0c8KgwqDCoMKgwqAgfCAzNiArKysrKysrKysrCj4+IMKgIC4uLi9ib290L2R0cy9udXZv
dG9uL21hMzVkMS1zb20tMjU2bS5kdHPCoMKgwqDCoMKgIHwgMzYgKysrKysrKysrKwo+PiDCoCBh
cmNoL2FybTY0L2Jvb3QvZHRzL251dm90b24vbWEzNWQxLmR0c2nCoMKgwqDCoMKgwqAgfCA2NSAr
KysrKysrKysrKysrKysrKysrCj4+IMKgIDMgZmlsZXMgY2hhbmdlZCwgMTM3IGluc2VydGlvbnMo
KykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbnV2b3Rvbi9tYTM1ZDEt
aW90LTUxMm0uZHRzIAo+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbnV2b3Rvbi9tYTM1ZDEtaW90
LTUxMm0uZHRzCj4+IGluZGV4IDc4NTM0ZDYxMzQ4Ni4uMGEwNjhhYmRhNmUwIDEwMDY0NAo+PiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL251dm90b24vbWEzNWQxLWlvdC01MTJtLmR0cwo+PiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL251dm90b24vbWEzNWQxLWlvdC01MTJtLmR0cwo+PiBA
QCAtOTcsNiArOTcsMTYgQEAgcGluY3RybF91YXJ0MTQ6IHVhcnQxNC1waW5zIHsKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBvd2VyLXNvdXJjZSA9
IDwxPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4gwqDCoMKgwqDC
oMKgwqDCoCB9Owo+PiArCj4+ICvCoMKgwqDCoMKgwqAgaHN1c2Igewo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBwaW5jdHJsX2hzdXNiOiBoc3VzYi1waW5zIHsKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG51dm90b24scGlucyA9IDw1IDE1
IDE+LCAvKiBWQlVTVkxEICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MTEgMTIgOT4sIC8qIFBX
UkVOICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MTEgMTMgOT47IC8qIE9WQyAqLwo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmlhcy1kaXNhYmxlOwo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG93ZXItc291
cmNlID0gPDE+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+PiArwqDCoMKg
wqDCoMKgIH07Cj4+IMKgIH07Cj4+Cj4KPiBUaGUgb3V0ZXIgcGluY3RybCBncm91cCBub2RlIG5h
bWUgZG9lcyBub3QgbWF0Y2ggdGhlIE1BMzVEMSBwaW5jdHJsIAo+IGJpbmRpbmcuIGR0LXZhbGlk
YXRlIHJlcG9ydHM6Cj4KPiDCoCAnaHN1c2InIGRvZXMgbm90IG1hdGNoIGFueSBvZiB0aGUgcmVn
ZXhlczogJy1ncnAkJywKPiDCoCAnXmdwaW9AWzAtOWEtZl0rJCcsICdecGluY3RybC1bMC05XSsk
Jwo+Cj4gUGxlYXNlIHJlbmFtZSBpdCB0byAiaHN1c2ItZ3JwIiBpbiBib3RoIG1hMzVkMS1pb3Qt
NTEybS5kdHMgYW5kIAo+IG1hMzVkMS1zb20tMjU2bS5kdHMuCj4KPiBJIHRlc3RlZCB0aGlzIGNo
YW5nZSBsb2NhbGx5LiBCb3RoIGFmZmVjdGVkIERUQnMgYnVpbGQgYW5kIHZhbGlkYXRlIAo+IGNs
ZWFubHkgYWZ0ZXIgdGhlIHJlbmFtZS4KPgo+Cj4gQmVzdCByZWdhcmRzLAo+IEphY2t5IEh1YW5n
CkFncmVlZCwgaHN1c2IgZG9lc24ndCBtYXRjaCB0aGUgcGluY3RybCBub2RlLW5hbWUgcmVnZXgu
IEknbGwgcmVuYW1lIGl0IAp0byBoc3VzYi1ncnAgaW4gYm90aAptYTM1ZDEtaW90LTUxMm0uZHRz
IGFuZCBtYTM1ZDEtc29tLTI1Nm0uZHRzIGluIHRoZSBuZXh0IHJldmlzaW9uLgoKVGhhbmtzLgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
