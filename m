Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC2A0103E173
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 13:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQX1H6ahLe9rC/kby4LUZ87ZsaFIfh0YauhcNZX1Suo=; b=sMcQWPlR8Zbifh
	o5J1KaIQNhzqjYh6iPLdldfeEyGPgopY9N/C3Xgq5mZyE2b7RX1PWwWSkpc9OMQJkQnCY0mO3YdZ6
	pHqZnTw3Ku2rnf1ZcKEejVJKkhWAbVPIOqnmtJIrAZaHkGGGVaFphNN7+TTByGSJqsq0G6AqUXsb5
	dkK5wxk5n9qlDPFvyCbybPBZEe0VCZfWwKpeNQMKlgTWOFXeByS+Qw6k83VI3ayDw8w8F7BlBU+pH
	oa0zZOsJhLMjYruqZGSE5Gd84RC2F+hzCy38176AD1JZ48rRjzr0u1nVVRBns9n8j5cZ4rSk2bRtx
	71TD4C1bL1WQ01ejSfnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2qmL-00000008Sqa-23kw;
	Wed, 18 Mar 2026 13:17:41 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2qmI-00000008Sps-3whN
	for linux-phy@lists.infradead.org;
	Wed, 18 Mar 2026 13:17:40 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4852c9b4158so60978545e9.0
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 06:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773839856; x=1774444656; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lY+vBk+jrr/WsrbU3NBPrdruLfUU1yCebVSPO/aA9bU=;
        b=tKnCOAxai3CJe2KYlyqYothvjyBswMqCpHn9zDiM+6ZWUfjK/KeDM8q3J9WSC5riYz
         IBnv0CuGCvYHsu7ymBZx+bz42HFcnZW6XUrifqYhMcWPnlsJ5/SST60lTMln7YkIPKIG
         LvO8upK5JtpfCmeL6L/qpdJEpQEq0kf3Ktcch0MkedvHrYOXiLR1+NJkX08wGS3i927f
         GyueLBgK/j33DKza/TAFKt5LyW2wb1Mpb85rhBimdfgOkXoWSOVXVv0iU73YkbjuLKD8
         34wJkDyNj/TbvStxg9vG2zmqavfkakNsgNM8DlYrbrnmJJhDL6xItMKWIqZ4hnhf3G0p
         k8wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773839856; x=1774444656;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lY+vBk+jrr/WsrbU3NBPrdruLfUU1yCebVSPO/aA9bU=;
        b=Zbjv+4Aj92ZHWFosLp6wbfQW3ofMoGMkMqAuwf2sJbEr/dKeekaarVbcC4wB9kj93b
         zj8BX8x+sQcyUhqEYRRMT3nxwz3zIB4azv3nGu7m2ITqGMULY7vZ98eKqWwj9iedEY33
         DrqUz4/GaRfpwo3l9WPtgr2WbFO1cp6aY8Xs6gycWKYpH/EATZWlukOVu7GvrBKyO3ew
         zoAs1OGSl9IbDtL/CzUXh4HlUVg7WTHpuGKwiPtrnKvS/K62n+gTS7/RLFRMwIckypG3
         oeRU4x2Y7QI1jt25MlUqBBBqRgz1W75cl1Kfeb9J9T5UYn2E0g0v7vTneTlF5r9YaFw9
         4VwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAyiuiXd+8NYBc4TBvRJAQWfwZxy1iPycg7pUOdmOyN9on3QCQ0sdickcWQu96BOCxquMmHvh5nm0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqNGtEDrf63ilH/Yms0BCnIlsDtTUMQS0pZuXeBQx+6FPFdIVX
	JTWvmg2D6osWVZ010rClOJDVeerKDtkBkap4d4oK7Psj1NTMkxkgXZHIXBLkOQqQjJw=
X-Gm-Gg: ATEYQzwqpWNTCkyhD1zdSY0yfUQ4IEFTIiItenyyiGdHhB6dPRK8adXDeTGkpBpchN8
	SZV8tHV4IxTpvZ2pgfmFCiTt10P903Hv50kxVQMG7M+wAyOoTss1WhyrmH9C4YM7+hxEOuceaYU
	yVvEZy7iqp7eDxZvNOPko5Mthk6gGVxI+uDFXYXBtwsTSPNKhFzdqRBRSt8r9ggiDQe1lnI6Pvl
	BJ3kk8sk4J7BV/VSsdEKhT4fFSRDkhETMqBqp7h1ieEQZRpjBFtTwxzhzMYzI/VfQKZH9TqtNph
	p3H8DCsOIzDvyQsOgQFozuyROTqllnQDNdbjxrixP99ICBUqhgxIXgSbilDOhTwe3zK10YMmF/w
	Sf4JjQPFMegTe1Ae17mQUAmOeYQ8OpEBAYQZqojZKgMwf6uRs3HKSVINzchrHRVrtvTgnHNVYMu
	Igt1ZGYCbH7d7XOGu0dv67yk+BqGa//20SGw==
X-Received: by 2002:a05:600c:1d0c:b0:485:3cf3:1010 with SMTP id 5b1f17b1804b1-486f442e5d6mr56422235e9.2.1773839856267;
        Wed, 18 Mar 2026 06:17:36 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.1.114])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4b9bb2esm18004555e9.20.2026.03.18.06.17.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 06:17:35 -0700 (PDT)
Message-ID: <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
Date: Wed, 18 Mar 2026 13:17:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_061739_022510_D5E1FEA5 
X-CRM114-Status: GOOD (  12.51  )
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

T24gMTgvMDMvMjAyNiAxMDoxNSwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+ICvCoMKgwqAgLyoK
Pj4gK8KgwqDCoMKgICogcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfZHBoeS5sYW5lcyBzdGFydHMg
ZnJvbSB6ZXJvIHRvCj4+ICvCoMKgwqDCoCAqIHRoZSBtYXhpbXVtIG51bWJlciBvZiBlbmFibGVk
IGxhbmVzLgo+PiArwqDCoMKgwqAgKgo+PiArwqDCoMKgwqAgKiBUT0RPOiBhZGQgc3VwcG9ydCBm
b3IgYml0bWFzayBvZiBlbmFibGVkIGxhbmVzIGFuZCBwb2xhcml0aWVzCj4+ICvCoMKgwqDCoCAq
IG9mIHRob3NlIGxhbmVzIHRvIHRoZSBwaHlfY29uZmlndXJlX29wdHNfbWlwaV9kcGh5IHN0cnVj
dC4KPj4gK8KgwqDCoMKgICogRm9yIG5vdyB0YWtlIHRoZSBwb2xhcml0aWVzIGFzIHplcm8gYW5k
IHRoZSBwb3NpdGlvbiBhcyBmaXhlZAo+PiArwqDCoMKgwqAgKiB0aGlzIGlzIGZpbmUgYXMgbm8g
Y3VycmVudCB1cHN0cmVhbSBpbXBsZW1lbnRhdGlvbiBtYXBzIAo+PiBvdGhlcndpc2UuCj4+ICvC
oMKgwqDCoCAqLwo+IAo+IFRoaXMgaXMgd3Jvbmcgc2luY2UgeW91IGxvb3NlIHRoZSBsYW5lcyBt
YXBwaW5nIGRlZmluZWQgaW4gRFQsIHdoaWNoIGlzIAo+IHN0aWxsIGluIENBTVNTCj4gYnV0IGlz
IGEgUEhZIHByb3BlcnR5LiBUaGUgbGFuZXMgbGF5b3V0IGlzIG5vdCBhIHByb3BlcnR5IG9mIHRo
ZSBDU0kgCj4gY29udHJvbGxlciwKPiBDU0kgY29udHJvbGxlciBvbmx5IG5lZWQgdG8ga25vdyB0
aGUgbGFuZXMgY291bnQsIGFuZCBub3QgdGhlIGxheW91dC4KCkxhbmUgbGF5b3V0IGlzIGEgUEhZ
IGNvbmNlcm4gYnV0LCB0aGUgUEhZIEFQSSBnaXZlcyB1cyAKcGh5X2NvbmZpZ3VyZV9vcHRzX21p
cGlfZHBoeSB3aGljaCBzaG91bGQgYmUgZXh0ZW5kZWQgdG8gcHJvdmlkZSBsYXlvdXQgCmFuZCBw
b2xhcml0eS4gVGhpcyB3b3VsZCB0aGVuIGJlIG9mIGJlbmVmaXQgdG8gbW9yZSB0aGFuIGp1c3Qg
cWNvbS9jYW1zcy4KClJpZ2h0IG5vdyBub25lIG9mIHRoZSBDQU1TUyB1c2VycyBmb3IgdGhpcyBk
cml2ZXIgZGVwZW5kIG9uIGFueSBvdGhlciAKbWFwcGluZyBhbmQgSSBwcm9wb3NlIGEgc2VwYXJh
dGUgc2VyaWVzIHRvIGZpeCAKcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfZHBoeSByYXRoZXIgdGhh
biBpbnRyb2R1Y2UgZGF0YS1sYW5lcyB0byBEUEhZLgoKLS0tCmJvZAoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
