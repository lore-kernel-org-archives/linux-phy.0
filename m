Return-Path: <SRS0=FSiF=NE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B92C4338F
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 16:03:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 64E6E6109E
	for <linux-phy@archiver.kernel.org>; Fri, 13 Aug 2021 16:03:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 64E6E6109E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fgGenUUTeG8yrxUuRhSvKlnY9M38OgAkn3kvBvm7F5Y=; b=gb3rsOrW8m1BqxCWBbJwwebUS1
	HxKrbtL/uWlDyZUjvCXXJKGRofVZ+GolYTHNQRebh2JTza8Rl+g3wl5UtKHaiTsV6xVadNhbMjqad
	lDnWqn1N2qFmvg3SOfIJ+2h7bQsAybVZoGye6yJPuzEwatvwBFvKoT49P65QbXz2D/WxYU9J/zFWQ
	MbZgkhc56c9ntQhc13t4eQUO+ojNPKVJG0vr6ONc11X4UUw9V4PVG07ru1grIs9aMxMneP1P/yQ2z
	4W4867rWIlOhnrXKFOKGjYvgzO55QT5zCPv9dm4pEknR8J0N8T7Lj9cvkhCjWj8ZUqKk7vUX9tUh0
	MDei1M3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEZec-00D3RW-R1; Fri, 13 Aug 2021 16:03:30 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEZeX-00D3Ow-Id
 for linux-phy@lists.infradead.org; Fri, 13 Aug 2021 16:03:30 +0000
Received: by mail-wm1-x329.google.com with SMTP id
 f12-20020a05600c4e8c00b002e6bdd6ffe2so4207920wmq.5
 for <linux-phy@lists.infradead.org>; Fri, 13 Aug 2021 09:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=x0xWLTk86tzzRjkpfY1Nei5soG6C/jHVAXTF3VFx8as=;
 b=oid8lx5rMiXxBC7FhshiK5zRVwBoupwa7etIGRHYqQP5Ghxv3EasyGjtRUp/q5Z46g
 dPi4hgDi6lfE5M69WkGUYoB4UpHQjdbW7/b5w+LQt9p0RZAURATPXapoGxPpFNZGjzQ2
 Va9LQd+pJxCIAWHKes5nlRutYkbGgOx43p5fIFbu9CspxwKZ0CrPNYFzCNlRiL+FJ93W
 TklrGcoUss7pCNoyZU9yjb2EHpT0pnIOHwJ3YWr6JRwQpdEjkHA7IduQ3ogIp5ZS3EEF
 TY52xmFQkxtmdRAbmlYH2KZXBZWX0m8UvuZV3/wRxjMEJMwUP5V9hqpzXnySsIbfOhVF
 3TFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=x0xWLTk86tzzRjkpfY1Nei5soG6C/jHVAXTF3VFx8as=;
 b=lbE45drtvdAjwleiWW0btZUFWwXExZpLa2h0geiSPlcga7uAQWIWyy6q8Xuq7wX5V2
 qIqhL6g+yurwkWqg9fplQWsORZ+oqmYEdRxfAu04xLGaqBCUANkTOV6W94bI1zsZr5Qr
 haACo6WsBMkaZHxYIjM6pHJa/qmvRzEDYZ+hXYKS2Im7zGjQv8d3zQW26JQO+au8rIZy
 vpKrcJz28hge8VD0srrMYRGpgaeV//TtlIQQu1c4QQwrOAhoez38fjuh7F/mw8UI8bTC
 JILH/jg7yeDrHrBjFYRICWJjdGoTz33WtHHNyQZ0NOPIO3nd3EHFx7tmWo60Ae3ZjyRp
 aNEQ==
X-Gm-Message-State: AOAM531zwEyBIQJxkaWKVTdV+OkCiX7B162awLVmnDGwQ7+6oOVvFXYH
 6UPbxhvxLtVI9EWH4gm1ertKmA==
X-Google-Smtp-Source: ABdhPJxcIJRrl7o4ZN0CYfus5qLWkxvFiJ5ZwqVc8qhAmA8Ox/ETKV+ybqsxewm9Za6B47x1WERQbA==
X-Received: by 2002:a05:600c:2290:: with SMTP id
 16mr3333448wmf.26.1628870603592; 
 Fri, 13 Aug 2021 09:03:23 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5df3:d0eb:3945:640d?
 ([2a01:e34:ed2f:f020:5df3:d0eb:3945:640d])
 by smtp.googlemail.com with ESMTPSA id i9sm2470529wre.36.2021.08.13.09.03.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Aug 2021 09:03:23 -0700 (PDT)
Subject: Re: [PATCH v4 4/9] clocksource/drivers/pistachio: Make it selectable
 for MIPS
To: Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 linus.walleij@linaro.org, vkoul@kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
 <20210723022543.4095-5-jiaxun.yang@flygoat.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <9db45153-d4d6-aab9-8cf8-12fdb76be249@linaro.org>
Date: Fri, 13 Aug 2021 18:03:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210723022543.4095-5-jiaxun.yang@flygoat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_090325_698204_74F42823 
X-CRM114-Status: GOOD (  17.07  )
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

T24gMjMvMDcvMjAyMSAwNDoyNSwgSmlheHVuIFlhbmcgd3JvdGU6Cj4gU28gaXQgd2lsbCBiZSBh
dmlsYWJsZSBmb3IgZ2VuZXJpYyBNSVBTIGtlcm5lbC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKaWF4
dW4gWWFuZyA8amlheHVuLnlhbmdAZmx5Z29hdC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvY2xvY2tz
b3VyY2UvS2NvbmZpZyB8IDMgKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbG9ja3NvdXJjZS9LY29u
ZmlnIGIvZHJpdmVycy9jbG9ja3NvdXJjZS9LY29uZmlnCj4gaW5kZXggMzlhYTIxZDAxZTA1Li41
OGFkN2FmOGM2NzMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbG9ja3NvdXJjZS9LY29uZmlnCj4g
KysrIGIvZHJpdmVycy9jbG9ja3NvdXJjZS9LY29uZmlnCj4gQEAgLTIzNCw4ICsyMzQsOSBAQCBj
b25maWcgQ0xLU1JDX0xQQzMyWFgKPiAgCSAgU3VwcG9ydCBmb3IgdGhlIExQQzMyWFggY2xvY2tz
b3VyY2UuCj4gIAo+ICBjb25maWcgQ0xLU1JDX1BJU1RBQ0hJTwo+IC0JYm9vbCAiQ2xvY2tzb3Vy
Y2UgZm9yIFBpc3RhY2hpbyBTb0MiIGlmIENPTVBJTEVfVEVTVAo+ICsJYm9vbCAiQ2xvY2tzb3Vy
Y2UgZm9yIFBpc3RhY2hpbyBTb0MiCj4gIAlkZXBlbmRzIG9uIEhBU19JT01FTQo+ICsJZGVwZW5k
cyBvbiBNSVBTIHx8IENPTVBJTEVfVEVTVAoKVGhlIGRlcGVuZGVuY3kgb24gdGhlIHBsYXRmb3Jt
IGlzIG9ubHkgcmVxdWlyZWQgaWYgdGhlIENPTVBJTEVfVEVTVApmYWlscyBvbiBvdGhlciBwbGF0
Zm9ybXMuCgpUaGUgc2VsZWN0aW9uIGlzIGRvbmUgZnJvbSBhcmNoL21pcHMvS2NvbmZpZyBkaXJl
Y3RseSBvdGhlcndpc2UuCgo+ICAJc2VsZWN0IFRJTUVSX09GCj4gIAloZWxwCj4gIAkgIEVuYWJs
ZXMgdGhlIGNsb2Nrc291cmNlIGZvciB0aGUgUGlzdGFjaGlvIFNvQy4KPiAKCgotLSAKPGh0dHA6
Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZv
ciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdl
cy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3
aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
