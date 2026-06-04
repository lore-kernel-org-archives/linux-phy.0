Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AD53CD6E4A
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 09:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8wtTMgtLEAJ7CwNTpXX4W1AK59K4BZPBcxP8wdVutU=; b=DgpOqVIepQqhMk
	1sbDGFcXtDng+Gw5gx11cm9igagK+56VmB+moc6Sy9j/Ih7SoN9M5fxT+vwmvRvIdDdZ+N7sWCwXm
	kP64gvWSsx5k3q2cm7ItE47/w9x9NeH0kbW6/WTij7oRh/5P2w9Sq7oBRtSAy6sN5P9eXuQGZmurA
	oHvzCF4pO9Fyze27q2CoKpacyjvByjfAPhZ00wKd1ouctDs/VdNIb1Apf3HKiwePYEFEY6wclRagU
	95ydbMNBgRtHVT3rXWQlxHUC+oNK4Kwmke7qinx6iPAUT4TlMg0aCyHeBxMP7C8jDMVl4ShWocrcW
	Fx+RTpKPDKS7QAl1Xy0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV42b-0000000GT0B-3Zym;
	Thu, 04 Jun 2026 09:07:05 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV42Z-0000000GSzf-2Vqq
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 09:07:04 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-68e5f7c1131so814539a12.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 02:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780564021; x=1781168821; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rbplG8EyIp0hP6o+wQA2geXN0fkmfIWqDHbmX7Sw1Aw=;
        b=L3jJnr2HLVdd/Wo1YTI19ATY6vs8ONAtES1DJU9STw0cE+M9Yr8K9bhqMAVBEUIFu9
         1RI4Z1jKP6EsCeezw0MZ47saM1p8EW5gzHx7av/FhHi77JPWm8D2ECtkb+X81GNvmI3K
         2WtYL+A+q3fRW29O2WLV5Yl2NHSwXRb402WvpnCxuoSA3nEe+hzasahmcVNs9Rf9kTVe
         NvWD4ERZ7CUDCstDTNfc/bQXkd0s8BW72p+xPL3DZ95BnD3yEtizN/mrJchEL+IAEivi
         OtmazIY+RrTqSjDl8btRp/60vpmp/oH780zOqYZORNUoiQXBWAq5yvL6wyInvy2yIZGQ
         GxaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780564021; x=1781168821;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rbplG8EyIp0hP6o+wQA2geXN0fkmfIWqDHbmX7Sw1Aw=;
        b=F7qS+d9+K5vA1oV3AnY0onzllTIp5TghbZ9o2nMe2DOzyFJjxVPlDaW78KMyNzVpzI
         1rWdZc7NuWAiSf8FITjPU4hoIZwgninDymEhYbodZV/G94yT5Q3fEQx5hePhW+B/WZ3L
         735CaMCbMjyGZWPVMNgtAt9JU7kcfEIa0ndGUaIWp8plCMmrUM7js0Hx6YSgcbPjjxju
         cImRnzcXyKK8vTnRnDim2RAI2iEkQMg7tXwevbkjzTbPdlpJMeLzcUR7dsPJ51pAjKEL
         xXjworAOxTyfLCzNpbaQItdlLREIryz+XaP5ijr27n8W1y7/Mra+ZhuEuKG+bS/x52gr
         hlOg==
X-Forwarded-Encrypted: i=1; AFNElJ9jRX64eXa9Squ7o+ViJHo7iSYlKCu3DfNcjpH3Hvx9CIkvraKRuoClLHhCyccwaan/OCrM/QCaZ2s=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmMv5NgscgYBZhfpvBrV728jMrx4uZpF1EdFRZgVkL/vjL0zfC
	lcJtsmWwnrcuRNWpL5pRNy2UmOH71Zs0I6oXapkQVXYIYxljmTNSFYdckMDADBEp7Qk=
X-Gm-Gg: Acq92OFtSwkoolvNqQIG0C113d6vhzva6KIYk9WguxHHJWdApXIWJbTVB1ZZGqi7S6L
	D3uRx7Llzwqh2n0BoVyCVlBP0xwUMOwuHhpz9gooMqEiwtMrrUIVv5fjiFdtrouZWbx3y7hvAzV
	BTK7BCvrlkXDHcLvOkDXUgSLw8lOGYK/fED0uBdkplfzG8aqUGYwPN0quC8gPpvxna1A/FhapA6
	fS4lPpHsHuF1QXlq15qhApPLbBQx0HIMc2Q+Lvzo3yoYv/wh+qDBYVqAkwg3d2xvvpKUojaZp4D
	leADMhwsDHOUdyhpLZS35NFQBsi7Wqd/wyp6ESr9fp5itD5OgxhhnA0JQPnv3WYIYKAUd81CB8k
	RXQPIrJxu0XL/V02guAFs6BhRiubXRdqw98XRd6AAgnl322GddYufr9KwXP156ji9aObOvnMeWY
	2QWOlgH2kkYvfC9jQWp9izGXeG/WkE135S1u90T+zWNLarFLE=
X-Received: by 2002:a05:6402:e9f:b0:687:ece2:aac6 with SMTP id 4fb4d7f45d1cf-68e713e302fmr3453410a12.15.1780564021418;
        Thu, 04 Jun 2026 02:07:01 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.175.228])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68e65851786sm2153584a12.17.2026.06.04.02.06.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2026 02:07:00 -0700 (PDT)
Message-ID: <67b6f6ae-bfca-4afd-adfb-6ec1741105d8@linaro.org>
Date: Thu, 4 Jun 2026 10:06:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <478df3ed-d4ef-43aa-bb84-e2075798542b@kernel.org>
 <ec98ef2f-02b4-4086-8b4b-07b6953dbd20@oss.qualcomm.com>
 <514cf213-5778-45e1-8d70-d3fe27991fcc@oss.qualcomm.com>
 <7JNJ4dUNz4ennJ5dkzhfLSuVo72JpfZAbprICPRqlRYnSzVDJw6x3h-1nESd_PK-3us9f1V3qOiLiywsTqP8vQ==@protonmail.internalid>
 <f01c0e22-4e5c-44e7-9ea4-4bc8d53aea2e@linaro.org>
 <29e8491f-20e8-4082-8943-66bee7e3af1d@kernel.org>
 <5ca611b1-0663-4975-bd56-b1343851e5fd@linaro.org>
 <83c12dc5-fcb4-4089-9917-9f0fcc4f940d@linaro.org>
 <1b107aca-a857-4e58-a763-39c82af67747@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <1b107aca-a857-4e58-a763-39c82af67747@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_020703_671422_63E87AA1 
X-CRM114-Status: GOOD (  24.53  )
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

T24gMDQvMDYvMjAyNiAwOTo0NiwgVmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+IE9uIDYvNC8y
NiAwMzozMCwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPj4gT24gMDQvMDYvMjAyNiAwMTowNywg
VmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+Pj4gT24gNi80LzI2IDAwOjE4LCBCcnlhbiBPJ0Rv
bm9naHVlIHdyb3RlOgo+Pj4+IE9uIDAzLzA2LzIwMjYgMjE6NTEsIFZsYWRpbWlyIFphcG9sc2tp
eSB3cm90ZToKPj4+Pj4+IEFjdHVhbGx5LCBvbmUgbW9yZSB0aGluZywgV2h5IGlzbid0IFRJVEFO
IFRPUCBHRFNDIGhlcmU/Pj4+PiArCj4+Pj4+IElmIENTSVBIWXMgYXJlIHRydWUgc3ViZGV2aWNl
cyB1bmRlciB0aGUgdW1icmVsbGEgQ0FNU1MgZGV2aWNlIGFuZCAKPj4+Pj4gd2VsbAo+Pj4+PiBk
ZXNjcmliZWQgYXMgc3Vibm9kZXMsIHRoZW4gbGlrZWx5IG5vbmUgb2YgcG93ZXIgZG9tYWlucyBh
cmUgbmVlZGVkCj4+Pj4+IHRvIGJlCj4+Pj4+IHJlcGVhdGVkbHkgZGVzY3JpYmVkIGluIHRoZSBj
aGlsZHJlbiBkZXZpY2Ugbm9kZXMsIHNpbmNlIHRoaXMKPj4+Pj4gaW5mb3JtYXRpb24KPj4+Pj4g
Y2FuIGJlIG9idGFpbmVkIGZyb20gdGhlIHBhcmVudCBkZXZpY2UgYnkgdGhlIGRyaXZlci4KPj4+
Pj4KPj4+Pj4gVGVjaG5pY2FsbHkgJ3Bvd2VyLWRvbWFpbnMnIHByb3BlcnR5IGNhbiBiZSBzYWZl
bHkgcmVtb3ZlZCwgSSBiZWxpZXZlLgo+Pj4+Cj4+Pj4gVGhlIHBvbGljeSBpcyB0byBkZXNjcmli
ZSB0aGUgcG93ZXItZG9tYWluIGRlcGVuZGVuY3kgZnVsbHkgc2luY2UgRFQKPj4+PiBkZXNjcmli
ZXMgaGFyZHdhcmUgbm90IHNvZnR3YXJlIGFyY2hpdGVjdHVyZS4KPj4+Cj4+PiBJdCBicmluZ3Mg
bm8gY29udGFyZGljdGlvbiB0byB0aGUgc3RhdGVtZW50IEkndmUgZ2l2ZW4gYWJvdmUsIHRoZSBu
ZWVkZWQKPj4+IHBvd2VyIGRvbWFucyB3aWxsIGJlIHByb3Blcmx5IGRlc2NyaWJlZCBpbiB0aGUg
cGFyZW50IGRldmljZSwgYW5kIHRoZXJlCj4+PiBpcyBubwo+Pj4gc2Vuc2UgdG8gcmVwZWF0IHRo
ZSBwcm9wZXJ0aWVzIGl0IGFnYWluIGFuZCBhZ2FpbiBpbiBldmVyeSBjaGlsZCAKPj4+IHN1YmRl
dmljZS4KPj4+Cj4+Pj4gQWxzbyBmb3IgYSB2ZXJ5IHByYWN0aWNhbCByZWFzb24gYSBzdWItZGV2
aWNlcyBjYW4gcHJvYmUvcnVuCj4+Pj4gYXN5bmNocm9ub3VzbHkgb2YgdGhlIHBhcmVudCBkZXZp
Y2UgYmVpbmcgYWN0aXZlIHNvIGluIGZhY3Qgd2UgZG8gbmVlZAo+Pj4+IHRvIGRlc2NyaWJlIHRo
ZSBQRHMgZnVsbHkuCj4+Pgo+Pj4gSW4gb3Bwb3NpdGUgdG8gdGhlIGFib3ZlIHRoaXMgb25lIGlz
IHByZWNpc2VseSBhIHNvZnR3YXJlIGNlbnRyaWMgCj4+PiBhcmd1bWVudCwKPj4+IHdoaWNoIHNo
b3VsZCBiZSBleGNsdWRlZCBmcm9tIHRoZSBjb25zaWRlcmF0aW9uLCBhcyB3ZWxsIGl0J3Mgbm90
IGEgYmlnCj4+PiBkZWFsIHRvIG1ha2UgYSBwcm9wZXIgYXN5bmMgaW5pdGlhbGl6YXRpb24sIHJl
bW92aW5nIGV4Y2Vzc2l2ZSBkdAo+Pj4gcHJvcGVydGllcwo+Pj4gaXMgd29ydGggaXQuCj4+Pgo+
Pgo+PiBSaWdodCBsb29rIGZvcmdldCBhYm91dCB0aGF0Lgo+Pgo+PiAtIERUIHJlcXVpcmVzIHlv
dSB0byBkZXNjcmliZSB5b3VyIGhhcmR3YXJlLiBZb3UncmUgbm90IGVudGl0bGVkIHRvIGhhdmUK
Pj4gwqDCoMKgIHNvbWUgb3RoZXIgZGV2aWNlIHZvdGUgZm9yIGEgY2xvY2sgb3IgYSBQRCB5b3Ug
cmVseSBvbi4KPj4KPiAKPiBBYm92ZSBhcmUgdHdvIHVuY29ycmVsYXRlZCBiZXR3ZWVuIGVhY2gg
b3RoZXIgc2VudGVuY2VzLgo+IAo+IEEgZGV2aWNlICgiY29uc3VtZXIiKSBjYW4gYXNrIGFub3Ro
ZXIgZGV2aWNlICgicHJvdmlkZXIiKSB0byBiZWhhdmUgaW4KPiBvbmUgb3IgYW5vdGhlciB3YXks
IHRoaXMgaXMgdGhlIG9ubHkgcG9zc2libGUgYW5kIHRodXMgbmF0dWFsbHkgc2VsZWN0ZWQKPiBz
eXN0ZW0gZGVzaWduLCBhbmQgbm90aGluZyBiZWhpbmQgaXQgd2FzIGFza2VkLiBUaGVyZSBpcyBu
byBqdXN0aWZpY2F0aW9uCj4gZm9yIHRoZSBwcm9wb3NlZCBmbG9vZCBvZiBtdWx0aXBseSByZXBl
YXRlZCBkYXRhLCBpdCdzIGF2b2lkYWJsZS4KCkNBTVNTIG9yIHJhdGhlciB0aGUgY29tcG9uZW50
cyBvZiBDQU1TUyBtb2RlbGxlZCBpbiB0aGUgY3VycmVudCBub2RlLCAKaXMvYXJlIG5vdCB0aGUg
cHJvdmlkZXIgb2YgdGhlIEdEU0NzIG9yIHRoZSBwb3dlci1kb21haW5zLCBpdC90aGV5IGFyZSAK
Y29uc3VtZXJzIHRoZW1zZWx2ZXMgZnJvbSBDQU1DQy4KClRoZSBwcm9kdWNlci9jb25zdW1lciBt
b2RlbCBpcyBDQU1DQyB0byBjb21wb25lbnRzIHdpdGhpbiB0aGUgQ2FtZXJhIApibG9jay4gU29t
ZSBjb21wb25lbnRzIGRlcGVuZCBvbiBzYXkgTVhBLCBNWEMsIHNvbWUgZG8gbm90LiBOb3RoaW5n
IGluIApDQU1TUyBpdHNlbGYgaXMgYSBwb3dlci1kb21haW4gcHJvdmlkZXIuCj4+IMKgwqDCoCBU
aGF0J3MgZXhhY3RseSB0aGUgdHlwZSBvZiBkb3duc3RyZWFtIHNob3J0IGN1dCB3ZSBhcmUgdHJ5
aW5nIHRvIHphcC4KPj4KPj4gLSBJbiBvdXIgY2FzZSB3ZSBhbHNvIG5lZWQgdG8gdm90ZSBvbiBQ
RHMgaW5kaXZpZHVhbGx5IHdoZW4gdGhlIFBIWQo+PiDCoMKgwqAgaXMgYWN0aXZlLgo+Pgo+PiBJ
biBleHRyZW1pcyBzYXkgd2UgYXJlIG9ubHkgcnVubmluZyB0aGUgVFBHIHRoZW4gd2UgaGF2ZSBu
byByZWFzb24gdG8KPj4gdm90ZSBmb3IgQ1NJUEhZIHNwZWNpZmljIHJhaWxzIG9yIG9wZXJhdGlu
ZyBwb2ludHMgaW4gdGhlIHBhcmVudCBkZXZpY2UuCj4gCj4gU28sIFRQRyBzaGFsbCBjb21tdW5p
Y2F0ZSB3aXRoIENBTVNTLCB0aGVyZSBpcyBubyBDU0lQSFkgaW4gdGhlIGVxdWF0aW9uLgoKUmln
aHQgYnV0IGl0IHdvdWxkIGJlIGluYXBwcm9wcmlhdGUgdG8gZW5hYmxlIGFsbCBvZiB0aGUgUERz
IGZvciBhbGwgb2YgCnRoZSBjb21wb25lbnRzIGluIHRoZSBDQU1TUyBibG9jayB3aGVuIHdlIGNh
biBkbyBzbyBtb3JlIGdyYW51bGFybHkuCgpJZiB5b3UgZHJpdmUgdGhlIENTSUQgd2l0aCBhIFRQ
RyB5b3Ugc2hvdWxkbid0IGJlIHZvdGluZyBmb3IgTVhBIG9yIE1YQyAKc2luY2UgdGhlc2UgYXJl
IFBEcyByZWxhdGVkIHRvIHRoZSBDU0lQSFkgb25seSBhbmQgVFBHIGFuZCBDU0lQSFkgZG8gdGhl
IApzYW1lIHRoaW5nIGZyb20gdGhlIENTSUQgcGVyc3BlY3RpdmUgLSBpbnB1dCBkYXRhLgoKPiAK
Pj4gV2UgY291bGQgbWFrZSB0aGUgcGFyZW50IHBvd2VyLWRvbWFpbiBhcmd1bWVudCBmb3IgQ0FN
U1MgYW5kIENDSSBidXQgd2UKPj4gaGF2ZSBUSVRBTl9UT1BfR0RTQyBpbiBDQ0kgc3BlY2lmaWNh
bGx5IGJlY2F1c2Ugd2UgaGF2ZSB0byBtb2RlbCB0aGUKPj4gaGFyZHdhcmUgLSBpbmNsdWRpbmcg
dGhlIFBEcyBmb3IgdGhhdCBkZXZpY2UuCj4gCj4gQ0NJIGlzIG5vdCBkZXNjcmliZWQgYXMgYSBj
aGlsZCBvZiBDQU1TUywgaGVyZSB0aGUgc2l0dWF0aW9uIGlzIGRpZmZlcmVudC4KCkNDSSBwcm9i
YWJseSBfc2hvdWxkXyBiZSBhIGNoaWxkIG9mIENBTVNTIGdpdmVuIHRoZSBkZXNpZ24gd2UgYXJl
IGdvaW5nIApmb3IgaGVyZS4KCkxlYXZpbmcgdGhhdCBhc2lkZSBpdCBkb2Vzbid0IG1hdHRlciBp
ZiBhIG5vZGUgYXBwZWFycyBhcyBhIGNoaWxkIG5vZGUgCm9yIGEgcGVlciBub2RlIC0gdGhlIERU
IHNob3VsZCBkZXNjcmliZSB0aGUgaGFyZHdhcmUgc2V0dXAuCgpJIGNhbid0IGltYWdpbmUgYSBw
YXRjaCB0aGF0IHdvdWxkIHJlbW92ZSBhIHBvd2VyLWRvbWFpbiBmcm9tIGEgZGV2aWNlIApiZWlu
ZyBhY2NlcHRlZCBzaW1wbHkgYmVjYXVzZSB0aGUgbm9kZSBiZWluZyBtb3ZlZCBpcyBleHByZXNz
ZWQgYXMgYSAKY2hpbGQgb2YgYW5vdGhlciBub2RlLgoKPj4gSWYgdG9tb3Jyb3cgd2UgcHV0IEND
SSBhcyBhIHN1Yi1kZXZpY2Ugb2YgdG9wLWxldmVsIENBTVNTLCB0aGF0IHdvbid0Cj4+IG5lZ2F0
ZSB0aGUgbmVlZCB0byBpbmNsdWRlIHRoYXQgR0RTQy4KPiAKPiBPZiBjb3Vyc2UgaW4gdGhpcyBj
YXNlIGEgcGhhbmRsZSB0byBUaXRhbiBHRFNDIHdpbGwgYmUgbWFya2VkIGFzIG9ic29sZXRlCj4g
b3IgdW51c2VkIGZvciBDQ0ksIG5vIHByb2JsZW0gaGVyZS4KPiAKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
