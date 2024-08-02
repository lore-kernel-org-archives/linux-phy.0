Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41304C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri,  2 Aug 2024 05:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=577G04hhdMSeKj1QY6tqqFUZzF7NOjStHDboodRD2nE=; b=C/v8z7hvx6VYHh
	yV8ONlDBbtm5T2WR6OZ41P/0wck676T1exfBnAREZ/mGNP2gXD4r0L6WSpZsUkQvcCPv5SVRW/NsP
	Z1Ewurfj/HF7HScwzypcJ62bm0fJ5FMPJwzImG6bc9zNYi1zuKpdzmnEGtwtzTxr8BbUyP5mkt340
	Dc4+bUT0NbY/4cCWhOu4txDU3a3iAL3O/mIthX+0JnFyun+2SqWyeVvONURZNYv5kCCT3EMMZDS6h
	lrgeKeRj+3y/U3UeGKVCixaAKBNuUBdIS1827MCmsqJ1OXZ+VKDswtHgFfqO8Llm2yIQRhUcGYDVe
	8VdgXuoX+I0/bpV3T0Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZkQA-00000007eB2-40YO;
	Fri, 02 Aug 2024 05:01:42 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZkPg-00000007e5b-2pFT;
	Fri, 02 Aug 2024 05:01:14 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1fc4fccdd78so59335625ad.2;
        Thu, 01 Aug 2024 22:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722574872; x=1723179672; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SFKigovb0c/iNhyUWRzIRaCFkACHoRPioRGFAtBz5kY=;
        b=ifJbQrnePT05Fp4pT7MEK+MlAydla2ZTlsQ2CWrhaGlouasEJLFMkYKDQ2h+u73zkp
         HphcnjnFJPZNttfPUQ+37JJxD6Gb05J+LMSJRv7KIyNJ/truf9PC+4PTiFoIvAAuX7g3
         wUtcd4uSj3wAIFmJpB23RhGsfcmc/fsI2KR0f5edM45/aRx5StCcQL2zhiW84P6YWejq
         7fZQ+CDJLzJSF5P7y+fKFfx3LipNyhC5wJCOF4F36KZSQ5qxGm5MnXV4KTdpDm01oRwf
         7NNafKyPNyrgVZnBu4Q3d8QfJqMklXbQrTrvQaS79KowcvrboPmE15jxFOYc7HFag5uY
         hsRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722574872; x=1723179672;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SFKigovb0c/iNhyUWRzIRaCFkACHoRPioRGFAtBz5kY=;
        b=n+PmWer2e0G3VoLBeTm/pGoxnvz6awtP216yoDKuxrMVritRMx/43xWq18BwLemmxD
         93r9rOdzcLYDCYlgcXPSXowRBl+oAQHQj/OR99M/yEdwd48edU63Jg06lkR9UCyiCrUp
         oAl/SMW82g+JR6wAnJKHp13ao4xpQp6oIZkliM+bbpgvXsbmC8jRMPEXhuGVSkZH8top
         yHzAL1HSDqAj05y10Dnsar3PhAg5KX+QzS/pllNkFd7IzEniR6VPxb8WwrznHQwmfWmz
         Mx6TUV6XJfwGq9dW2ESBQaUCav5Ty0Wyhcxu8cfQ1YYRZNph6DNi9T8m85vR2iuyFRcP
         WMsw==
X-Forwarded-Encrypted: i=1; AJvYcCUw+JtPZ02X5S3hUCdvH1fl8Nfq/0YF3msAZmYABLw/5PTbhmHgGFqXEp2rTHDDkt9M9z+zbkeWHBF9PDpga2LLMeeVoW5N1jgo4ITeoA==
X-Gm-Message-State: AOJu0Ywwi36TzY6wCVTIx7GgFpAZL602/KpRJvD7gSNYuWPY2wN9ruHO
	e8S/raZOWY7xEJTCQK+eJW7N1SNIaiJm89HCdyuFN4rh+sj96f/O/zAP3g==
X-Google-Smtp-Source: AGHT+IHcflfL/YECuodg/hQlDr7gN6A6Zu66HPKnYHhtmqIU+9cxcGsm8NNmBnxNmOCqDTuqOCC1tA==
X-Received: by 2002:a17:902:e18b:b0:1fb:81ec:26da with SMTP id d9443c01a7336-1ff574cf79dmr24831925ad.58.1722574871621;
        Thu, 01 Aug 2024 22:01:11 -0700 (PDT)
Received: from [172.19.1.53] (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff58f5a473sm7880685ad.106.2024.08.01.22.01.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Aug 2024 22:01:11 -0700 (PDT)
Message-ID: <ea046ad5-ee78-44a5-803c-a09669cb8a82@gmail.com>
Date: Fri, 2 Aug 2024 13:01:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] phy: nuvoton: add new driver for the Nuvoton MA35
 SoC USB 2.0 PHY
To: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240801053744.807884-1-hpchen0nvt@gmail.com>
 <20240801053744.807884-3-hpchen0nvt@gmail.com>
 <85bd5da2-312e-4d25-a4e9-afae4fedbd50@kernel.org>
Content-Language: en-US
From: Hui-Ping Chen <hpchen0nvt@gmail.com>
In-Reply-To: <85bd5da2-312e-4d25-a4e9-afae4fedbd50@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_220112_739160_D7379EBD 
X-CRM114-Status: GOOD (  15.28  )
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

RGVhciBLcnp5c3p0b2YsCgpUaGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuCgoKCk9uIDIwMjQvOC8x
IOS4i+WNiCAxMDo0MywgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAwMS8wOC8yMDI0
IDA3OjM3LCBIdWktUGluZyBDaGVuIHdyb3RlOgo+PiArCXN0cnVjdCByZWdtYXAgKnN5c3JlZzsK
PiBMb29rIGhlcmUgLSBpb21lbT8gTm8uCgpZZXMsIHRoaXMgaXMgbXkgbWlzdGFrZS4KCgoKPj4g
K307Cj4+ICsKPj4gK3N0YXRpYyBpbnQgbWEzNV91c2JfcGh5X3Bvd2VyX29uKHN0cnVjdCBwaHkg
KnBoeSkKPj4gK3sKPj4gKwlzdHJ1Y3QgbWEzNV91c2JfcGh5ICpwX3BoeSA9IHBoeV9nZXRfZHJ2
ZGF0YShwaHkpOwo+PiArCXVuc2lnbmVkIGludCB2YWw7Cj4+ICsJaW50IHJldDsKPj4gKwo+PiAr
CXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShwX3BoeS0+Y2xrKTsKPj4gKwlpZiAocmV0IDwgMCkg
ewo+PiArCQlkZXZfZXJyKHBfcGh5LT5kZXYsICJGYWlsZWQgdG8gZW5hYmxlIFBIWSBjbG9jazog
JWRcbiIsIHJldCk7Cj4+ICsJCXJldHVybiByZXQ7Cj4+ICsJfQo+PiArCj4+ICsJcmVnbWFwX3Jl
YWQocF9waHktPnN5c3JlZywgTUEzNV9TWVNfUkVHX1VTQlBNSVNDUiwgJnZhbCk7Cj4+ICsJaWYg
KHZhbCAmIFBIWTBTVVNQRU5EKSB7Cj4+ICsJCS8qCj4+ICsJCSAqIFVTQiBQSFkwIGlzIGluIG9w
ZXJhdGlvbiBtb2RlIGFscmVhZHkKPj4gKwkJICogbWFrZSBzdXJlIFVTQiBQSFkgNjAgTUh6IFVU
TUkgSW50ZXJmYWNlIENsb2NrIHJlYWR5Cj4+ICsJCSAqLwo+PiArCQlyZXQgPSByZWFkbF9wb2xs
X3RpbWVvdXQoKHZvaWQgX19pb21lbSAqKXBfcGh5LT5zeXNyZWcgKyBNQTM1X1NZU19SRUdfVVNC
UE1JU0NSLAo+IEVoLCBJIHJlc3BvbmRlZCB0byB2Miwgbm90IGhlcmUsIHNvIHJlcGVhdGluZzoK
Pgo+IHN5c3JlZyBpcyBhIHJlZ21hcCwgbm90IGlvIGFkZHJlc3MuIEhvdyBjb3VsZCBpdCBwb3Nz
aWJseSB3b3JrIGFuZCBiZQo+IHRlc3RlZD8hPyBUaGlzIGNhbm5vdCB3b3JrLiBUZXN0IHlvdXIg
Y29kZSAqYmVmb3JlKiBzZW5kaW5nIGl0Lgo+ClllcywgdGhpcyBpcyBteSBtaXN0YWtlLiBJIHdv
bid0IHJlcGx5IHRvIHYyLiBJIHdpbGwgcmVwbHkgaGVyZS4KCgpJIHdvdWxkIGNoYW5nZSAncmVh
ZGxfcG9sbF90aW1lb3V0JyB0byAncmVnbWFwX3JlYWRfcG9sbF90aW1lb3V0Jy4KCkFuZCBpdCBo
YXMgYmVlbiB0ZXN0ZWQgT0sgb24gb3VyIHBsYXRmb3JtLgoKCgo+IEJlc3QgcmVnYXJkcywKPiBL
cnp5c3p0b2YKCgpCZXN0IHJlZ2FyZHMsCgpIdWktUGluZyBDaGVuCgoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
