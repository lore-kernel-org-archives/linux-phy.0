Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2620C27C53
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 16:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yp9aQ91pfrEmFcHpQKxv1wyUhmSCsWbt6tqZRAipBgg=; b=DPvZdASHZfNeJN
	/8fVXq3x7Lque5aK3efgVHcsZiXUCfTg4SR0xxXfecjChp6+K2+rB6f/KRDZ9A1MmPz0bZ+FBdsXT
	lwwc7tjIG5L+T2bA+xtBRZ+go1Alh3MSJrz5xoaxUc2v/ffCGxSgvGo/UxVStXFBDg3T3hytpK0tK
	oaaZEdBXtC1999KO7QtxO0FBPLLp/2alfZwEOr+bydkd6vs4G3jPc8SnCajKzVFSGdNQqF0c//kfL
	Ksjul3WdTp63DIk6xSQf3/7RawO6RBSNA8Utv3hc9SXLOM5B8oAQJ4/cIYvCuwfGvfRsQhZJ7xShv
	BHSKrHAPyKaWG1+5TGDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHQZF-0000000DKX4-057C;
	Wed, 12 Jun 2024 16:11:21 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHQZB-0000000DKVl-2N7b
	for linux-phy@lists.infradead.org;
	Wed, 12 Jun 2024 16:11:19 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2ebdfe26242so45421121fa.0
        for <linux-phy@lists.infradead.org>; Wed, 12 Jun 2024 09:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718208675; x=1718813475; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=iJi53GLd1r/LDPyYuvwcLLbCQpihYJNOT6LQNKlbh/E=;
        b=ak1Rd+US8b82o6NBjdnq61lNUTVqWidN224duMzISvXmRgQdZmJbvo102uTrwkmNJm
         XIL2xG4z5PQwaaoZnhLJqQnOuFP2i9WX2UPEiF278xOeKCUs/DwAkxT1tUqSzoDRJuUH
         NoDDtMdx5OJDmIrxJ6AApeIRxy3BKRJwV7wSrsckDudItMQiKqql0PG6xGjq6tQprlIO
         hCuYV9dhJyvt88dgAeithVqjEOjlc2qP5D1KBKdCndpr8PTXWAd9QAOcJTlAyLn7FF0Z
         RoW/uq/ak0dHrIio9HVGUvbSAVEFlsLtJ5JCerQpt/9d1DsMOQbWehTCg5PWOL62rA2q
         eznA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718208675; x=1718813475;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iJi53GLd1r/LDPyYuvwcLLbCQpihYJNOT6LQNKlbh/E=;
        b=aj9T5jrupb1qKTTvAze56ZCQwdDP92umbtxSps+4/w1oC1xlXV7UX28wry/GS6v2/M
         d2MFQ5BONOhHJytU7xM1wE+Dze3yeGGd8qLg1aJUYoRTCY3ctXA/YbG4Tu6FQYVvSGzj
         WL86R/a1PkpNWOTCNaTQ2/FJHpy6K7xqn0Wba5tM0AD1FG5+7/6ZeXhm06MIZyENV/5J
         DxlVPxiw0g7xgjicZQVLyVqa3LmtTvLnQxZcJj19HSSHyF6Ab+x9XaKIcgfM6et2i38y
         orWWCjVWHxE2rrGJjzWkZcRbbDNGPTf71t+/QiRqUnssljJOr8rxNnVgdrcAEN33u4kl
         muNw==
X-Forwarded-Encrypted: i=1; AJvYcCVpMj/SW0U+p3oNMB8U5kAtr4lSTkSjzZIOITgLBCYojwxJJl8y4YkNleegWF+QkbLV1bEHYDT/9mHvIX0HKWLERKM9duzIyynqZOHkzg==
X-Gm-Message-State: AOJu0Yy552gGSmuC6UPEOnlP9ntSuQt3NK/chMQ8stFTfjPkh9aPN+h/
	DII9mJbV9U1+IeN3hZql9P8KBg6M94zQxBbq9fOC6NUH6yboUJhJmhjLdelPIBk=
X-Google-Smtp-Source: AGHT+IFEiyA8PufkPoU3KnVd2ZWI8HOxNk5exq7HEVX1hIx1h38A6807cHqbUiBLKu544kA8+esUWg==
X-Received: by 2002:a2e:b0f5:0:b0:2eb:ef0e:3f5 with SMTP id 38308e7fff4ca-2ebfc9cb133mr15237641fa.18.1718208675258;
        Wed, 12 Jun 2024 09:11:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422871f8efasm30598455e9.44.2024.06.12.09.11.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jun 2024 09:11:14 -0700 (PDT)
Message-ID: <6c707cc0-83d4-4a00-b8bf-359116331609@linaro.org>
Date: Wed, 12 Jun 2024 18:11:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: phy: samsung,usb3-drd-phy: add gs101
 compatible
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sam Protsenko <semen.protsenko@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, lee@kernel.org
References: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
 <20240501-usb-phy-gs101-v2-1-ed9f14a1bd6d@linaro.org>
 <CAL_JsqKDyrYBTTcpmoM-LbQUWch_qd3t47WC0yafVJcz+Se4yA@mail.gmail.com>
 <0b594358c94ebf6d6585005a827e69c274014983.camel@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <0b594358c94ebf6d6585005a827e69c274014983.camel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_091117_621611_4F50C190 
X-CRM114-Status: GOOD (  10.58  )
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

T24gMTIvMDYvMjAyNCAxNzo1NywgQW5kcsOpIERyYXN6aWsgd3JvdGU6Cj4gT24gV2VkLCAyMDI0
LTA2LTEyIGF0IDA5OjM3IC0wNjAwLCBSb2IgSGVycmluZyB3cm90ZToKPj4gT24gV2VkLCBNYXkg
MSwgMjAyNCBhdCAzOjE54oCvQU0gQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJv
Lm9yZz4gd3JvdGU6Cj4+Pgo+Pj4gQWRkIGEgZGVkaWNhdGVkIGdvb2dsZSxnczEwMS11c2IzMWRy
ZC1waHkgY29tcGF0aWJsZSBmb3IgR29vZ2xlIFRlbnNvcgo+Pj4gZ3MxMDEgU29DLgo+Pj4KPj4+
IEl0IG5lZWRzIGFkZGl0aW9uYWwgY2xvY2tzIGVuYWJsZWQgZm9yIHJlZ2lzdGVyIGFjY2Vzcywg
YW5kIGFkZGl0aW9uYWwKPj4+IG1lbW9yeSByZWdpb25zIChQQ1MgJiBQTUEpIGFyZSByZXF1aXJl
ZCBmb3Igc3VjY2Vzc2Z1bCBjb25maWd1cmF0aW9uLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEFu
ZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Cj4+Pgo+Pj4gLS0tCj4+PiB2
MjogYXZvaWQgaGF2aW5nIG5lc3RlZCBlbHNlL2lmLCBhbmQgaW5zdGVhZCBjaGFuZ2UgdGhlIGV4
aXN0aW5nICdlbHNlJwo+Pj4gwqDCoMKgIHRvIGV4cGxpY2l0bHkgc3RhdGUgdGhlIHBsYXRmb3Jt
cyB1c2luZyAnaWYnCj4+PiAtLS0KPj4+IMKgLi4uL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVzYjMt
ZHJkLXBoeS55YW1swqDCoMKgwqDCoMKgwqDCoCB8IDYxICsrKysrKysrKysrKysrKysrKysrKy0K
Pj4+IMKgMSBmaWxlIGNoYW5nZWQsIDU5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+
Cj4+IEdvaW5nIHRvIHJlc3BpbiB0aGlzPyBCZWNhdXNlIGl0IGlzIGluIHVzZSBub3cgYW5kIHVu
ZG9jdW1lbnRlZC4KPiAKPiBZZXMsIEknbGwgc2VuZCB2MyB0aGlzIHdlZWsuCgpZZWFoLCBJIHdh
cyBqdXN0IGFib3V0IHRvIHNlbmQgcmV2ZXJ0IGZvciBEVFMgY2hhbmdlcy4KCkJlc3QgcmVnYXJk
cywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
