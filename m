Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 487E9C021A0
	for <linux-phy@archiver.kernel.org>; Sat, 15 Feb 2025 16:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEoCoZdN9rYQDL0XY47m+/7NMMeTzL/RpkRarDziq+4=; b=GmrglJoabxGfia
	+tj0fVBVrzWcQO1UxEMXfvXqz0lYg4XqRr9Qq6Vdpzo5bfudtsbZGQtYuDOBf/Bu034Mq4rrF355R
	WJSbqXB39nNWOCJVxglGMyqMO5q70pN+P5W4DAfhzdEl8l1d7/uNibBSMnWEfMqk/AIYqojq6j4HG
	N8FxQhT05n5hmIcK3W/JcWITIw0gKv4UdndfEDvDpf1YPNnG8/LvLObNt6f5weqINENfY5UBUKqA2
	vaQ1mbrmmV6vcMo641EAQkjfZIGekJ9odeD3n/+R/4jC2b0rrmiaRXeOVgZ5HaU4sA7RSPZ/wXk+C
	YJtjjqK3Sh/wqo3LRQfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjKvP-00000000OdM-01Ki;
	Sat, 15 Feb 2025 16:21:51 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjKtw-00000000OSC-0Zpw
	for linux-phy@lists.infradead.org;
	Sat, 15 Feb 2025 16:20:22 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-43971025798so2377505e9.1
        for <linux-phy@lists.infradead.org>; Sat, 15 Feb 2025 08:20:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739636418; x=1740241218; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dNyoNFfqH0PsydSjFbFoobKDexjUlMZLc47JqJwFJrk=;
        b=jB0ZmarO65mImNvpVV1xhCy35YM0NvNlpKY3wSndwVxIrCXvyUCNAB/s94et1K1lnK
         +cATWJ63sDHEwOcQ4M9FlVnvTKNTAh9KBlDw5MONIMIUPpHGHW5Mj97pgWwLAsPaBJlq
         TUox/JVGYN/J3aa8CMkLNVVg7UlSdAUlcPPFJLjeeEfboS4jGF2W3jDIYC1aEpYjNRRZ
         K5rIx+9Xz2NWoP9BAWMVKrMstI4veanG9Y6bBSTzi5MAP5+PAdIaKB3BbNhbQt/zDZR4
         rXXgfoII69qel3EVjyjumR7TOh4a7F0IFzrIAhKW8bbbBKNWL8y62BuQGaAYN+dOvDdp
         ZtHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739636418; x=1740241218;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dNyoNFfqH0PsydSjFbFoobKDexjUlMZLc47JqJwFJrk=;
        b=CkNyofycQsp7aUF0ZjSoBM2Nuakc7VrM6wSDwF06ku+Fgz4/Dq3uQc8IKkVf9LPdAZ
         ItUI6bFyVI0q9G122Q2p28PGGu7s2vzyt81RoBErFXEtc0bE6GNXqbchfeZ1ddL35zPC
         1vyx2OoTEzK8nxJWZZMjY789MrHkuViCFhidfRPo3Oeqz7nt41B1avXEnyDSjcITn3VG
         UxDjQ3mYVWShCnO2xUi191Ky94MKB2Nt7ndDZGouyYiGZRY4ZaJEFy5AM0Y5wQ+4jVKW
         s+ekj68c0Fi1HRnFZF3AGdewI1iBcZrlo5xkaMEJra8NjENWuZNs8YtSDW3g1//qoX3b
         f+Dw==
X-Forwarded-Encrypted: i=1; AJvYcCVCXmrk/IG9T46+NdOrVRzFIXHv8tpgqoubU6YOSAzBXZYKk3c4nwxDF58/3ZyDIHDbrBCVRA0/+po=@lists.infradead.org
X-Gm-Message-State: AOJu0YyeEYNNCL0WKqqkHYnWMUqPq9tJJ5SWFosGsa7X7nX0xOdfgaEY
	QESdnyEtWr7LcsAMbxIJgGWuQKPHc4p0GDq2fFiQm9W3b62UzlmW1GEWmZ4kJgJdm9UlQJKPEqF
	O
X-Gm-Gg: ASbGnctFTe0hKPKOCYQSWpfZp+ITydwKF1l2JrI8eI1XyQ/tLZ0R8/vf/ZocdbHjXQm
	4B40+IUcYTVWoxD7HgMzEztVI5SqUbB/Dy4NZaI9bBpRRKRwqUaUWs7pGYVrhuhvCVrMDfAUq35
	xBJVZquHCUAg5zc7BLhsrhfiTOXLSit+DwNwhLC//jFo5j3lQuq+PDABrHGmEwACG95d6oH+1vR
	F0D+GjUKU/mtckWVUrjJPzqd8TVXIn0Bg3ffRyDks2nMH49njZWAoWTDZB1AiOlsdg0vsGS4O4x
	+irtvx3EM1LPcipntT0=
X-Google-Smtp-Source: AGHT+IG1iRvsBX6PLkvzMs5VpNDDf9z76BCIL+JAkXGVtBLduGXf6zEIP0vw/72qC+rgRgHoj9P1ew==
X-Received: by 2002:a05:6000:1561:b0:38a:888c:679c with SMTP id ffacd0b85a97d-38f33f52fd8mr4562539f8f.42.1739636418355;
        Sat, 15 Feb 2025 08:20:18 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f25a0fa1esm7483252f8f.100.2025.02.15.08.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Feb 2025 08:20:18 -0800 (PST)
Message-ID: <bc292f121afaacb29fdc7d600c72cb3008b6b56a.camel@linaro.org>
Subject: Re: [PATCH] phy: exynos5-usbdrd: Fix broken USB on Exynos5422
 (TYPEC dependency)
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof
 Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Peter
 Griffin <peter.griffin@linaro.org>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org
Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Date: Sat, 15 Feb 2025 16:20:17 +0000
In-Reply-To: <20250215094122.60535-1-krzysztof.kozlowski@linaro.org>
References: <20250215094122.60535-1-krzysztof.kozlowski@linaro.org>
User-Agent: Evolution 3.52.2-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_082020_178404_0AFB0BEF 
X-CRM114-Status: GOOD (  17.44  )
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

SGkgS3J6eXN6dG9mLAoKT24gU2F0LCAyMDI1LTAyLTE1IGF0IDEwOjQxICswMTAwLCBLcnp5c3p0
b2YgS296bG93c2tpIHdyb3RlOgo+IE9sZGVyIEV4eW5vcyBkZXNpZ25zLCBsaWtlIEV4eW5vczU0
MjIsIGRvIG5vdCBoYXZlIFVTQiBUeXBlLUMgYW5kIHRoZQo+IFVTQiBEUkQgUEhZIGRvZXMgbm90
IHJlYWxseSBkZXBlbmQgb24gVHlwZS1DIGZvciB0aGVzZSBkZXZpY2VzIGF0IGFsbC4KPiBJbmNv
cnJlY3RseSBhZGRlZCBkZXBlbmRlbmN5IG9uIENPTkZJR19UWVBFQyBjYXVzZWQgdGhpcyBkcml2
ZXIgdG8gYmUKPiBtaXNzaW5nIGZvciBleHlub3NfZGVmY29uZmlnIGFuZCBhcyByZXN1bHQgRXh5
bm9zNTQyMi1iYXNlZCBib2FyZHMgbGlrZQo+IEhhcmRrZXJuZWwgT2Ryb2lkIEhDMSBmYWlsZWQg
dG8gcHJvYmUgVVNCLgo+IAo+IERyb3AgaW5jb3JyZWN0IGRlcGVuZGVuY3kgYW5kIHJlbHkgb24g
bW9kdWxlIHRvIGJlIHJlYWNoYWJsZSBieSB0aGUKPiBjb21waWxlci4KPiAKPiBSZXBvcnRlZC1i
eTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgo+IENsb3NlczogaHR0cHM6
Ly9rcnprLmV1LyMvYnVpbGRlcnMvMjEvYnVpbGRzLzYxMzkKPiBSZXBvcnRlZC1ieTogTWFyZWsg
U3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgo+IENsb3NlczogaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzNjMGI3N2U2LTM1N2QtNDUzZS04YjYzLTQ3NTdjMzIzMWJkZUBz
YW1zdW5nLmNvbS8KPiBGaXhlczogMDlkYzY3NDI5NWEzICgicGh5OiBleHlub3M1LXVzYmRyZDog
c3Vic2NyaWJlIHRvIG9yaWVudGF0aW9uIG5vdGlmaWVyIGlmIHJlcXVpcmVkIikKPiBTaWduZWQt
b2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5v
cmc+Cj4gCj4gLS0tCj4gCj4gUGF0Y2ggZm9yIGlzc3VlIGluIGxpbnV4LW5leHQKPiAtLS0KPiDC
oGRyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZ8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwg
MSAtCj4gwqBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIHwgMiArLQo+
IMKgMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnIGIvZHJpdmVycy9waHkvc2Ft
c3VuZy9LY29uZmlnCj4gaW5kZXggN2ZiYTU3MWMwZTJiLi5lMjMzMGIwODk0ZDYgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9waHkvc2Ft
c3VuZy9LY29uZmlnCj4gQEAgLTgxLDcgKzgxLDYgQEAgY29uZmlnIFBIWV9FWFlOT1M1X1VTQkRS
RAo+IMKgCXRyaXN0YXRlICJFeHlub3M1IFNvQyBzZXJpZXMgVVNCIERSRCBQSFkgZHJpdmVyIgo+
IMKgCWRlcGVuZHMgb24gKEFSQ0hfRVhZTk9TICYmIE9GKSB8fCBDT01QSUxFX1RFU1QKPiDCoAlk
ZXBlbmRzIG9uIEhBU19JT01FTQo+IC0JZGVwZW5kcyBvbiBUWVBFQyB8fCAoVFlQRUM9biAmJiBD
T01QSUxFX1RFU1QpCgpUaGlzIGxpbmUgZW5zdXJlcyB0aGF0IFBIWV9FWFlOT1M1X1VTQkRSRCBj
aGFuZ2VzIHRvIE0gaWYKVFlQRUMgaXMgTS4KCj4gwqAJZGVwZW5kcyBvbiBVU0JfRFdDM19FWFlO
T1MKPiDCoAlzZWxlY3QgR0VORVJJQ19QSFkKPiDCoAlzZWxlY3QgTUZEX1NZU0NPTgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIGIvZHJpdmVy
cy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwo+IGluZGV4IGZmMjQzNmYxMWQ2OC4u
ZThhOWZlZjIyMTA3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5v
czUtdXNiZHJkLmMKPiArKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRy
ZC5jCj4gQEAgLTE0NTYsNyArMTQ1Niw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zNV91c2JkcmRfc2V0
dXBfbm90aWZpZXJzKHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQpCj4gwqB7Cj4g
wqAJaW50IHJldDsKPiDCoAo+IC0JaWYgKCFJU19FTkFCTEVEKENPTkZJR19UWVBFQykpCj4gKwlp
ZiAoIUlTX1JFQUNIQUJMRShDT05GSUdfVFlQRUMpKQoKT24gYXJtNjQsIHRoZSBkZWZjb25maWcg
aGFzIFRZUEVDIGFzIG1vZHVsZSAod2hpbGUgUEhZX0VYWU5PUzVfVVNCRFJECmRlZmF1bHRzIHRv
IHkgYWJvdmUpLCBhbmQgdGhlcmVmb3JlIGFsbCBmb2xsb3dpbmcgY29kZSBpcyBiZWNvbWVzCmRp
c2FibGVkIHdpdGggeW91ciBjaGFuZ2Ugb24gYXJtNjQuCgpDYW4gd2UgZmluZCBhIGRpZmZlcmVu
dCBzb2x1dGlvbiB0byB1bmJyZWFrIGFybTMyIGFuZCBrZWVwIGFybTY0CmRlZmNvbmZpZyB3b3Jr
aW5nIGFzIGludGVuZGVkPwoKQ2hlZXJzLApBbmRyZScKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
