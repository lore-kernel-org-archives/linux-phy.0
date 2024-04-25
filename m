Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B54E9C10F15
	for <linux-phy@archiver.kernel.org>; Thu, 25 Apr 2024 07:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHOeIo03LyuFaRujBNVRuy7w2+G8MOaxSVm6/kEyLgE=; b=R2IlEDl+5h9ApJ
	4sNNxoXw3nt7H2d+L2AExcmKnH/WxbHcfZIgz1u6lCnZZ9dCfsg6lXK+OiBlKWauSkBGQ9F9N+0j+
	GRg/MM/JXF/mlL0FU0sTMThgLQhfZ0nuqSKSMdKJLZj1pL2RfsYttEgZ410paPKbEahflCOPRfSKr
	VqtwbgDUT4cW7OyT0BkuTVQJSBM2cfFlXKDas1ZxH4bP/1MAh41O0A6nxX5VOd++0FoZS3yZxN5GI
	sTjwY9GPSqbNX62PmPz2VKGQbjGV/JF8w1+o2TT+AS0ei9yfV/azH54FfWu+l9mCdF3PinNdrjqza
	i9KUkOmS4b1odYWK0Wzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rztpR-00000007KBc-1QNX;
	Thu, 25 Apr 2024 07:47:37 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rztpO-00000007K9w-3WYf
	for linux-phy@lists.infradead.org;
	Thu, 25 Apr 2024 07:47:36 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-34be34b3296so632226f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Apr 2024 00:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714031246; x=1714636046; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=KO8qMaMD1WGtlgcA7W/Jq2+QozvRzg9eops1qALAJHY=;
        b=m0VqwuMnbSFQfQmJP2xoOBz9e5gf7TsSSSQ5T/tpyUFeL/xkSFwNjRKzsR09vb+FbT
         yunE1DjwJutmxkNnQfEF+22EKPy0YMLoHAWwKQ/R8/nlrxOzf3VlK4x4ycRn6snL7A/3
         RJcZmt8aGSa4mjMEHMzajVxzsQujwIP6Y/aX22OlF0TZClMDc0nkaGPbxJso7RofwrEn
         yZaotTR4CKEeCrkLgTaXG+9FEtFVaGpiidAwcRzHhawMcQInjft7Z6DbcoWqHQgd688a
         fRJQDHnYA1/zwUN2rMBGjwXzAXj07YTCYzbB7AlQmeE3sktUe1pUMQlFZTkZmO4cTVet
         N8LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714031246; x=1714636046;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KO8qMaMD1WGtlgcA7W/Jq2+QozvRzg9eops1qALAJHY=;
        b=ZwutgKw+KMaMIY78mpXvOOj+JKfHnMk4y9O8CE5PznLPSjBEC7nXup5UZpvg+7Hh2U
         Rrj/IUQ2VBNzh5ra7x5flHJJfjXmrESTbNYVzVEZAQnI+aakDJQFr+xMZX79+F9X9X18
         8YSbzPSM930+DNlT9wszgiunFh5WzfP8TgrDP0qkrc5LCpZ6TYk9w9FK0Ky3vfD+AkBM
         OhsXnk/4NCPVr65sK3YKMHrzSiN7dAJxW7xh14JkSo5wRKl4PbHeEiWW1o2U3cV5m8Hd
         7Ppn2rMSjg6xCjXN8bOV2SHveCbtncFDiryqrdq4KpF115a5uqqES7ppHzNW6U97qCB9
         nBIg==
X-Forwarded-Encrypted: i=1; AJvYcCWXfaVfeIsW5sRVhTYBlohAmoWtj6pe3USoHiYn+iiv0tvqoOpW7IClH7Df0WAwNOt+bWU+3+DF1OONr+94xQVq07nZZ4HOUf4Q+aSw1A==
X-Gm-Message-State: AOJu0YwIs3ZK89wlmqo0vvV+1vpzkUdU6ORIHc+gF5UEkxFK93k4M2nH
	5XsdFAUIXNlXrDy7CsGmqIhBaNNzF+iHAnCIi3oOqLb34W8YABLlU2zh8Iw9fz4=
X-Google-Smtp-Source: AGHT+IHNJWEoIupqYCqnrknBlU5kEwSAVatdxAbl9PzA1MI4fM4js5TgSQnEtljhjy8byIOgYS3ezQ==
X-Received: by 2002:a5d:410e:0:b0:34a:4ad9:a93f with SMTP id l14-20020a5d410e000000b0034a4ad9a93fmr3909203wrp.55.1714031246146;
        Thu, 25 Apr 2024 00:47:26 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id j6-20020a5d5646000000b0034b19cb1531sm9426224wrw.59.2024.04.25.00.47.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Apr 2024 00:47:25 -0700 (PDT)
Message-ID: <cf7200d3-f60a-446b-b9cc-1f63e3c90740@linaro.org>
Date: Thu, 25 Apr 2024 09:47:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] phy: exynos5-usbdrd: use
 exynos_get_pmu_regmap_by_phandle() for PMU regs
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
References: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
 <20240423-usb-phy-gs101-v1-2-ebdcb3ac174d@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240423-usb-phy-gs101-v1-2-ebdcb3ac174d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_004734_987676_8DAAC81B 
X-CRM114-Status: GOOD (  19.88  )
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

T24gMjMvMDQvMjAyNCAxOTowNiwgQW5kcsOpIERyYXN6aWsgd3JvdGU6Cj4gU29tZSBFeHlub3Mg
YmFzZWQgU29DcyBsaWtlIFRlbnNvciBnczEwMSBwcm90ZWN0IHRoZSBQTVUgcmVnaXN0ZXJzIGZv
cgo+IHNlY3VyaXR5IGhhcmRlbmluZyByZWFzb25zIHNvIHRoYXQgdGhleSBhcmUgb25seSB3cml0
ZSBhY2Nlc3NpYmxlIGluCj4gRUwzIHZpYSBhbiBTTUMgY2FsbC4KPiAKPiBUaGUgRXh5bm9zIFBN
VSBkcml2ZXIgaGFuZGxlcyB0aGlzIHRyYW5zcGFyZW50bHkgd2hlbiB1c2luZwo+IGV4eW5vc19n
ZXRfcG11X3JlZ21hcF9ieV9waGFuZGxlKCkuCj4gCj4gU3dpdGNoIHRvIHVzaW5nIHRoYXQgQVBJ
IHRvIHN1cHBvcnQgc3VjaCBTb0NzLiBBcyB0aGlzIGRyaXZlciBub3cgbm8KPiBsb25nZXIgZGVw
ZW5kcyBvbiBtZmQgc3lzY29uIHJlbW92ZSB0aGF0IGhlYWRlciBhbmQgS2NvbmZpZyBkZXBlbmRl
bmN5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxp
bmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZyAgICAgICAgICAg
ICAgfCAxIC0KPiAgZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyB8IDQg
KystLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnIGIvZHJpdmVycy9w
aHkvc2Ftc3VuZy9LY29uZmlnCj4gaW5kZXggZjEwYWZhM2Q3ZmY1Li5iYjYzZmE3MTA4MDMgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9w
aHkvc2Ftc3VuZy9LY29uZmlnCj4gQEAgLTgyLDcgKzgyLDYgQEAgY29uZmlnIFBIWV9FWFlOT1M1
X1VTQkRSRAo+ICAJZGVwZW5kcyBvbiBIQVNfSU9NRU0KPiAgCWRlcGVuZHMgb24gVVNCX0RXQzNf
RVhZTk9TCj4gIAlzZWxlY3QgR0VORVJJQ19QSFkKPiAtCXNlbGVjdCBNRkRfU1lTQ09OCj4gIAlk
ZWZhdWx0IHkKPiAgCWhlbHAKPiAgCSAgRW5hYmxlIFVTQiBEUkQgUEhZIHN1cHBvcnQgZm9yIEV4
eW5vcyA1IFNvQyBzZXJpZXMuCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5
LWV4eW5vczUtdXNiZHJkLmMgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRy
ZC5jCj4gaW5kZXggMDQxNzFlZWQ1YjE2Li5hYzIwOGI4OWY1YTYgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwo+ICsrKyBiL2RyaXZlcnMvcGh5
L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKPiBAQCAtMTgsOSArMTgsOSBAQAo+ICAjaW5j
bHVkZSA8bGludXgvcGh5L3BoeS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNl
Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgo+IC0jaW5jbHVkZSA8bGludXgvbWZkL3N5
c2Nvbi5oPgo+ICAjaW5jbHVkZSA8bGludXgvcmVnbWFwLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9y
ZWd1bGF0b3IvY29uc3VtZXIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3NvYy9zYW1zdW5nL2V4eW5v
cy1wbXUuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3NvYy9zYW1zdW5nL2V4eW5vcy1yZWdzLXBtdS5o
PgoKVGhpcyBpcyBnZXR0aW5nIG91dCBvZiBoYW5kOiBzaGFsbCB3ZSBleHBlY3QgdG8gY29udmVy
dCBhbGwgdGhlIGRyaXZlcnMKZnJvbSBnZW5lcmljIHN5c2NvbiB0byBFeHlub3Mtc3BlY2lmaWMg
QVBJPyBXaGF0IGlmIG9uZSBkcml2ZXIgaXMgc29tZQpzaGFyZWQgSVAsIGxpa2UgRFdDIFVTQjMg
Y29udHJvbGxlcj8KCkkgYWxyZWFkeSBjb21tZW50ZWQgb24gR29vZ2xlIGh3cm5nIGRyaXZlcjog
SSBwcmVmZXIgdG8ga2VlcCB0aGUgc3lzY29uCkFQSSBhbmQgY2hhbmdlIHRoZSBzeXNjb24gZHJp
dmVyIHRvIGV4cG9zZSBwcm9wZXIgcmVnbWFwLiBJT1csIHVzZQpnZW5lcmljIEFQSSBzeXNjb25f
cmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlKCkgYW5kIHRoZSB0eXBlIG9mIHJlZ21hcApyZXR1cm5l
ZCBpcyBkZWZpbmVkIGJ5IHRoZSBwcm92aWRlciAoc28gbm9kZSBwb2ludGVkIGJ5IHBoYW5kbGUp
LgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
