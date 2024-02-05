Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3506C48291
	for <linux-phy@archiver.kernel.org>; Mon,  5 Feb 2024 08:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=712aTYObAPW5K65yANL7VRM7ZpV+cDA5SQNXGYsnuwo=; b=AVsLW4bSxpY0da
	8fG/foDcb7EtjI4MQt4hS4Gc0mrQFHDc4JDMvCxSGyBpMFR6fJXCIFz5J3kFoMN18WcqdsKUkDhJS
	URLVTNuFxp9afITuaYPva8vRxV1RiCvYCupE6b3W4clXJAJT1TxEW7EIM1Ui6VLqt8Q1hDMpERWhn
	Qzh56m11/h7xWUPTk3zaFg5xICZs1Bz7x2NitLsWQLEsAUNpMfUPMCej9ROai3sP7CRq6cmFWvzt6
	z9jaJfWB5CW/hP+65wjxlfUW2Rp4c8E9bGdOta9RZ1WEL2KBINy9TnuEoLX9I5RXTQ/Pk7NHnzrPW
	ISu+WNjtVK1IiaI7Cadg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWu1R-00000002Onh-1fgh;
	Mon, 05 Feb 2024 08:08:09 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWu1O-00000002OmM-1PZS
	for linux-phy@lists.infradead.org;
	Mon, 05 Feb 2024 08:08:07 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-55f279dca99so5844907a12.3
        for <linux-phy@lists.infradead.org>; Mon, 05 Feb 2024 00:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707120484; x=1707725284; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kTVDJ7kokpaWFwqAappHoDtn4ysbGjAW3398RVhJk3M=;
        b=dfNewqN7oT6EzUee/HINSTIZLrTlyIvWYzzDqO06B4quvhQQThqSeuiXMVCHsKD+Ma
         FP4xgkC2G0/hq3hFxbL2j91hGb1QPbRrGImYfo0QBqm8dM59p0uUUG6sE5wIcWlK2jwL
         qgVd6YeEcnBshupXWkXflc1eyy1F3HpCQMYy9jIh7p9ffJ9B2GxHrtSelWxeSGIPDv9e
         0dphgV8mVtHfaNALYIxVlS9qiL+7DhYqr0vPPsgX/As3A94Z4eCo0AWtL8GNRCohS4r+
         kP9CzkWa6VIw2PuePG+MRXwRuE4xGma7pSrP7SIiNDHYH75SAL1e/do23eXbpFvQo6Xq
         8I/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707120484; x=1707725284;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kTVDJ7kokpaWFwqAappHoDtn4ysbGjAW3398RVhJk3M=;
        b=RPRVneQXhl+D7o2YgmQRoIu9eoFuS7NbskZqsti3m0qWbILWOeaRl5hPmFlVWpuutc
         KHEzHhifnixzv8oAyRnZ8+9nUgjwZTbVLCQlvDh4YAoNoNwETl6cQjx81LlDeHvCRB3X
         6NEXjbP/M4iisN9l5FN7SjVDlNYleR2bXLdgCpPsOorHnyWZUvxJNvhGvst0PPi5iJrO
         RMYD1zRZUwOdtpWuwLJhdyJEFsOPRV6fNabFMZsp1dw0g86W8qRRpJm1qWqDtJx7ynaG
         kQJ2ZONEN5FyQWd6JbrLDgZUc79LMSPT35UL58qVuyv731lRt4STZ5sw9aA7f/on5PAm
         IqAA==
X-Gm-Message-State: AOJu0YwCwJ5u/I8m2L30CA5Be1LkpVX+jo/hJDQBk5C2de1VZH4Kufl4
	JuVxSFdIgMGY4x8SWrgG0wDLVAEGPSk8IZk21z7TlDdKt878M7AEYyQLJtMVGAU=
X-Google-Smtp-Source: AGHT+IEdX1mmPyWx1Qh9N4TPEN74j3i7d2iQbKVGHYEWh/rr/lD4xHYSjuyP0Dk4I1GuaispotiJfA==
X-Received: by 2002:a05:6402:1647:b0:55f:e147:2524 with SMTP id s7-20020a056402164700b0055fe1472524mr4127840edx.38.1707120484024;
        Mon, 05 Feb 2024 00:08:04 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWQ8VURNcFDgOTc8qvBT9g8xs8vufQCAvYX806+iJF1Uuk6pxkIgP+RUT4mTwW9l3YOp6WBKBdFsgj4bv+sBr6vIsLuf8scMrN08HVyP9vGbNoB6SeoziAEdPg7g9qFWCjn9BBmAuEFqrERFsoeG39+xUXxezPhAUhe2kPwJVgn0O8GAgqBLfG3SqmvS/ehDDQtDCPX2cp5HFfOZGXvFBWwDNld+9/cKFGfqc856ZdC7fNsk1KW4YR9gh2wXQ0aUb4JrGw+BsTcdtRxHN4NBcV5Gyoxa98XrV815EO8wW8H5Dso7e2ikeJJJekd24iEXUs7eacqdovIFmFXWjIBICUQm73zlKDpg/+ym+DYmAbrJcvSKYmVNAd6lR2OFDJwovY+b+qkZDmHzO7RmQA5f42+7Xr6uNx6HZn8APXfHziQSCBNqjtgIngEGDV1TeE1/+/wW5RNjFJvuQzbiqvz1zG+RjVZrGizqywlCpLN8vq/lOC1FqXiVENEG4mAmgToG5EttnlsrfpnFqeCBGKpjqRSi/3uJ/f2bT4eXZj6cSl3Edzr+k1s8CFbDOEecsPPUqoAuxChCnOHVnR9AEOSLgPSrKVrYgR/+B8xx2wPOm/5EyfxmMw/9DzyqtPOZCaV3DIhyyDIWZk2QaIQtQ1tv/XGZtNqF2ZsUbbqj8RyYpwtYTSbMKj5Ox2xB5crHwppdLDZP8TS7dqolv9JthtQps/74YcBaHsQzoQgxWPCswRoDqQeBgcThe0IxZzUtQ==
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id u2-20020aa7d882000000b0055ffe74e39dsm3052782edq.85.2024.02.05.00.08.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Feb 2024 00:08:03 -0800 (PST)
Message-ID: <d6f787e6-a243-410f-ac6e-c57ea5309838@linaro.org>
Date: Mon, 5 Feb 2024 09:08:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: mediatek,xfi-tphy: add new bindings
Content-Language: en-US
To: =?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?U2t5TGFrZSBIdWFuZyAo6buD5ZWf5r6kKQ==?=
 <SkyLake.Huang@mediatek.com>, "kishon@kernel.org" <kishon@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "john@phrozen.org" <john@phrozen.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 =?UTF-8?B?QmMtYm9jdW4gQ2hlbiAo6Zmz5p+P5p2RKQ==?=
 <bc-bocun.chen@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?B?U3RldmVuIExpdSAo5YqJ5Lq66LGqKQ==?= <steven.liu@mediatek.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "daniel@makrotopia.org" <daniel@makrotopia.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "dqfext@gmail.com" <dqfext@gmail.com>,
 "angelogioacchino.delregno@collabora.com"
 <angelogioacchino.delregno@collabora.com>
References: <702afb0c1246d95c90b22e57105304028bdd3083.1706823233.git.daniel@makrotopia.org>
 <adf20671-2f1d-43ea-8584-df0c0b095865@linaro.org>
 <031944545677573672000aee8f97149e56c15f83.camel@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <031944545677573672000aee8f97149e56c15f83.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_000806_384506_193F4BCE 
X-CRM114-Status: GOOD (  13.14  )
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

T24gMDQvMDIvMjAyNCAwNzoxNywgQ2h1bmZlbmcgWXVuICjkupHmmKXls7ApIHdyb3RlOgo+IE9u
IEZyaSwgMjAyNC0wMi0wMiBhdCAwOToyMSArMDEwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90
ZToKPj4gIAkgCj4+IEV4dGVybmFsIGVtYWlsIDogUGxlYXNlIGRvIG5vdCBjbGljayBsaW5rcyBv
ciBvcGVuIGF0dGFjaG1lbnRzIHVudGlsCj4+IHlvdSBoYXZlIHZlcmlmaWVkIHRoZSBzZW5kZXIg
b3IgdGhlIGNvbnRlbnQuCj4+ICBPbiAwMS8wMi8yMDI0IDIyOjUyLCBEYW5pZWwgR29sbGUgd3Jv
dGU6Cj4+PiBBZGQgYmluZGluZ3MgZm9yIHRoZSBNZWRpYVRlayBYRkkgVC1QSFkgRXRoZXJuZXQg
U2VyRGVzIFBIWSBmb3VuZAo+PiBpbiB0aGUKPj4+IE1lZGlhVGVrIE1UNzk4OCBTb0Mgd2hpY2gg
Y2FuIG9wZXJhdGUgYXQgdmFyaW91cyBpbnRlcmZhY2VzIG1vZGVzOgo+Pj4KPj4+IHZpYSBVU1hH
TUlJIFBDUzoKPj4+ICAqIFVTWEdNSUkKPj4+ICAqIDEwR0Jhc2UtUgo+Pj4gICogNUdCYXNlLVIK
Pj4+Cj4+PiB2aWEgTHlueEkgU0dNSUkgUENTOgo+Pj4gICogMjUwMEJhc2UtWAo+Pj4gICogMTAw
MEJhc2UtWAo+Pj4gICogQ2lzY28gU0dNSUkgKE1BQyBzaWRlKQo+Pj4KPj4+IFNpZ25lZC1vZmYt
Ynk6IERhbmllbCBHb2xsZSA8ZGFuaWVsQG1ha3JvdG9waWEub3JnPgo+Pj4gLS0tCj4+PiAgLi4u
L2JpbmRpbmdzL3BoeS9tZWRpYXRlayx4ZmktdHBoeS55YW1sICAgICAgIHwgODAKPj4gKysrKysr
KysrKysrKysrKysrKwo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA4MCBpbnNlcnRpb25zKCspCj4+PiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0Cj4+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvbWVkaWF0ZWsseGZpLXRwaHkueWFtbAo+Pj4KPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLHhmaS0KPj4gdHBoeS55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayx4ZmktCj4+IHRw
aHkueWFtbAo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+IGluZGV4IDAwMDAwMDAwMDAwMDAu
LmU4OTcxMThkY2Y3ZTYKPj4+IC0tLSAvZGV2L251bGwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWsseGZpLXRwaHkueWFtbAo+Pj4gQEAgLTAs
MCArMSw4MCBAQAo+Pj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkg
T1IgQlNELTItQ2xhdXNlKQo+Pj4gKyVZQU1MIDEuMgo+Pj4gKy0tLQo+Pj4gKyRpZDogaHR0cDov
L2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L21lZGlhdGVrLHhmaS10cGh5LnlhbWwjCj4+Cj4+
IFBsZWFzZSB1c2UgY29tcGF0aWJsZSBhcyBmaWxlbmFtZS4gWW91ciBiaW5kaW5nIHNheXMgb25s
eSBvbmUgaXMKPj4gcG9zc2libGUgKGNvbnN0LCBub3QgZW51bSksIHNvIHRoZXJlIGlzIG5vIHJl
YXNvbmluZyBmb3IgZGlmZmVyZW50Cj4+IGZpbGVuYW1lLgo+Pgo+Pj4gKyRzY2hlbWE6IGh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+Pj4gKwo+Pj4gK3RpdGxl
OiBNZWRpYVRlayBYRkkgVC1QSFkKPj4+ICsKPj4+ICttYWludGFpbmVyczoKPj4+ICsgIC0gRGFu
aWVsIEdvbGxlIDxkYW5pZWxAbWFrcm90b3BpYS5vcmc+Cj4+PiArCj4+PiArZGVzY3JpcHRpb246
Cj4+PiArICBUaGUgTWVkaWFUZWsgWEZJIFNlckRlcyBULVBIWSBwcm92aWRlcyB0aGUgcGh5c2lj
YWwgU2VyRGVzIGxhbmVzCj4+PiArICB1c2VkIGJ5IHRoZSAoMTBHLzVHKSBVU1hHTUlJIFBDUyBh
bmQgKDFHLzIuNUcpIEx5bnhJIFBDUyBmb3VuZAo+PiBpbgo+Pj4gKyAgTWVkaWFUZWsncyAxMEct
Y2FwYWJhbGUgU29Dcy4KPj4+ICsKPj4+ICtwcm9wZXJ0aWVzOgo+Pj4gKyAgJG5vZGVuYW1lOgo+
Pj4gKyAgICBwYXR0ZXJuOiAiXnBoeUBbMC05YS1mXSskIgo+Pgo+PiBObyBuZWVkIGZvciBub2Rl
bmFtZSBpbiBpbmRpdmlkdWFsIGJpbmRpbmdzIGZpbGUuCj4+Cj4+PiArCj4+PiArICBjb21wYXRp
YmxlOgo+Pj4gKyAgICBjb25zdDogbWVkaWF0ZWssbXQ3OTg4LXhmaS10cGh5Cj4gQWRkIGEgZ2Vu
ZXJpYyBjb21wYXRpYmxlICJtZWRpYXRlayx4ZmktdHBoeSI/Cj4gCj4gT3RoZXIgc29jcyBhbHNv
IHVzZSB0aGlzIHBoeSBidXQgbm90IHVwc3RyZWFtLgoKQXJlIHRoZXkgaGVyZT8gTm8uLi4gVGhl
eSB3aWxsIHVzZSB0aGlzIG9uZSBhcyBmYWxsYmFjay4gU3RvcCBpbnNpc3RpbmcKb24gc29tZSBn
ZW5lcmljIGZhbGxiYWNrcyBqdXN0IGJlY2F1c2UgeW91IGRvIG5vdCBsaWtlIHVzaW5nIG90aGVy
IFNvQ3MKYXMgZmFsbGJhY2tzLgoKWW91IGlnbm9yZWQgb3RoZXIgY29tbWVudHMsIHNvIEkgdW5k
ZXJzdGFuZCB5b3UgYWdyZWUgd2l0aCB0aGVtIDEwMCUuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRv
ZgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
