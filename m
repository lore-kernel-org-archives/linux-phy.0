Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55754C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 15:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6wXUGH2kNvHF+U3vft06u01CuzVb9DsVOSLdneFNZk=; b=3X1onwSV3Htgyd
	s1bvDs89y3/GDl9DSWtBuScU5DQHZqDYk6yQ371lzwlpFh55o205f1b4XtvLwpmPijfToDtedlBiZ
	Z8+iW/0b4S6Xd0CnqGUs94F0OExZWs5iX7ilRK84aVyTNc9tIUfX3DP2BnPoYcF6q3HwZ6gaKXy+b
	XS3E3UTzpNBt6xifDVZYybZQVV5yGLMlQYp8di3SWPzmKhp+vorMEEdcRqMzxnlmKkAiWkqw3mrzn
	E55iWbnhzZabisFFq6weuoDLUntsvln1UZtJ/9hErDrZmpKeYaqtJs84j9RSPnYIDln2Ge697Ls8P
	Kqs8VGpLNbCRQpxeI5uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouxR3-00C8PR-PA; Tue, 15 Nov 2022 15:01:13 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouxQq-00C8MT-7a
	for linux-phy@lists.infradead.org; Tue, 15 Nov 2022 15:01:01 +0000
Received: by mail-lf1-x12d.google.com with SMTP id l12so24822207lfp.6
        for <linux-phy@lists.infradead.org>; Tue, 15 Nov 2022 07:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F4jUAwmhTQdTrwQKeKo2XqBWyE1rzqyVY9EqrXd1rb4=;
        b=yWlfIKfy1RjmW4cqzHEQYZ0P6H3bTMh70oUTOEi7dAkF6t8/GEcAvUZrYY7ugZZsqp
         /Hdlt3APkEkt28div8SyumBc1+KVCvgc+INVTlcp1s0IjvJP1g3lG8iXVGjywGKjifnQ
         aBxGT/fImyqWcbDHuZo0DLe7CU3jeOKDALA+4i5GjRScq2+6OkW7Bae3IW6l4ALmAWyJ
         k8ItIm9bclRbK98aOf6+tZRbqG+vjjwR2z5J/m1NugPrip33q9SXyHy7JM2XyUf1ivkS
         4ygWO41BOOQG7sz54oV2TzccEwfKTVfRC/qbv8duc9T/J5XeHLurKqwVbKDi+C4ljgf1
         13Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F4jUAwmhTQdTrwQKeKo2XqBWyE1rzqyVY9EqrXd1rb4=;
        b=59tIVcSyo/nGGISZUwA2395R410yZQfwgz2qBUPTaKEdwlN8CqjuC0b+gmdyCHSAo/
         Z2UuXy8rB+E/Pj7pEqmd1lTdmCBT+Y7B2rbm2ErmEaazHKW1IJPkfFOIwEd2ElYMK15B
         UZSc3VwOygRaiZcJY44m6iwyyYHQg36RZI38PnTteS24c2cNzvvXotd7OwRT8H4VLW3S
         1/+7WrMcKxYB0aZlhLs0X55IGgvSD8I3qEe3Y8qfkuQvUoSfIoSxnOu+PVpSWdEZt+LJ
         o0CQI7ADWu/82mzEvfBzGr78wze47QmO4ky2ObRsUvbjcW0PmNdDV/RQVi6TNQVH+xFO
         RMaQ==
X-Gm-Message-State: ANoB5plW3+2RMh+ubtYvoeOZZE/i10Mlug/LagiXgdKH/m8US2nUc/tM
	EbIU8OCO+ES84w/KPOZTGBJrXw==
X-Google-Smtp-Source: AA0mqf7YV/RWxvpJd+exJ8ozFBpdV0AmoKBtjMSdoMFabRmcv88VA/ScE0Y/rh2lP/33+6Vl6LgfIg==
X-Received: by 2002:ac2:5396:0:b0:4a4:6ee3:f57b with SMTP id g22-20020ac25396000000b004a46ee3f57bmr5439911lfh.17.1668524456417;
        Tue, 15 Nov 2022 07:00:56 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id y29-20020a19641d000000b004a22599c4ddsm2234896lfb.268.2022.11.15.07.00.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 07:00:55 -0800 (PST)
Message-ID: <4516dcfb-b928-d454-18a6-bd725f39cc24@linaro.org>
Date: Tue, 15 Nov 2022 16:00:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 03/11] phy: sun4i-usb: add support for the USB PHY on
 F1C100s SoC
Content-Language: en-US
To: Andre Przywara <andre.przywara@arm.com>, Vinod Koul <vkoul@kernel.org>
Cc: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Icenowy Zheng <uwu@icenowy.me>, soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
References: <20221106154826.6687-1-andre.przywara@arm.com>
 <20221106154826.6687-4-andre.przywara@arm.com> <Y2ypy0CM8rJGu2g4@matsya>
 <4438485.LvFx2qVVIh@jernej-laptop>
 <52920a00-8e29-f7f4-0cbd-ceb638ded970@linaro.org>
 <20221115104426.20728ba5@donnerap.cambridge.arm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115104426.20728ba5@donnerap.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_070100_298569_08F69C3C 
X-CRM114-Status: GOOD (  23.09  )
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

T24gMTUvMTEvMjAyMiAxMTo0NCwgQW5kcmUgUHJ6eXdhcmEgd3JvdGU6Cj4gT24gVHVlLCAxNSBO
b3YgMjAyMiAxMTowMzoyNCArMDEwMAo+IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5r
b3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gCj4gSGksCj4gCj4+IE9uIDE1LzExLzIwMjIg
MDc6MDEsIEplcm5laiDFoGtyYWJlYyB3cm90ZToKPj4+IERuZSDEjWV0cnRlaywgMTAuIG5vdmVt
YmVyIDIwMjIgb2IgMDg6MzU6MzkgQ0VUIGplIFZpbm9kIEtvdWwgbmFwaXNhbChhKTogIAo+Pj4+
IE9uIDA2LTExLTIyLCAxNTo0OCwgQW5kcmUgUHJ6eXdhcmEgd3JvdGU6ICAKPj4+Pj4gRnJvbTog
SWNlbm93eSBaaGVuZyA8dXd1QGljZW5vd3kubWU+Cj4+Pj4+Cj4+Pj4+IFRoZSBGMUMxMDBzIFNv
QyBoYXMgb25lIFVTQiBPVEcgcG9ydCBjb25uZWN0ZWQgdG8gYSBNVVNCIGNvbnRyb2xsZXIuCj4+
Pj4+Cj4+Pj4+IEFkZCBzdXBwb3J0IGZvciBpdHMgVVNCIFBIWS4gIAo+Pj4+Cj4+Pj4gVGhpcyBk
b2VzIG5vdCBhcHBseSBmb3IgbWUsIHBsZWFzZSByZWJhc2UgYW5kIHJlc2VuZAo+Pj4+Cj4+Pj4g
QWxzbywgY29uc2lkZXIgc3BsaXR0aW5nIHBoeSBwYXRjaGVzIGZyb20gdGhpcy4gSSBkb250IHRo
aW5rIHRoZXJlIGlzCj4+Pj4gYW55IGRlcGVuZGVuY3kgIAo+Pj4KPj4+IERUIHBhdGNoZXMgaW4g
dGhpcyBzZXJpZXMgZGVwZW5kIG9uIGZ1bmN0aW9uYWxpdHkgYWRkZWQgaGVyZS4KPj4+ICAgCj4+
Cj4+IERUUyBhbHdheXMgZ29lcyBzZXBhcmF0ZWx5IGZyb20gZHJpdmVyIGNoYW5nZXMgYmVjYXVz
ZSBpdCBpcyBhIGhhcmR3YXJlCj4+IGRlc2NyaXB0aW9uLiBEZXBlbmRpbmcgb24gZHJpdmVyIG1l
YW5zIHlvdSBoYXZlIHBvdGVudGlhbCBBQkkgYnJlYWssIHNvCj4+IGl0IGlzIGFscmVhZHkgYSB3
YXJuaW5nIHNpZ24uCj4gCj4gV2UgdW5kZXJzdGFuZCB0aGF0IDstKQo+IFdoYXQgSmVybmVqIG1l
YW50IHdhcyB0aGF0IHRoZSBEVFMgcGF0Y2hlcyBhdCB0aGUgZW5kIGRlcGVuZCBvbiBwYXRjaAo+
IDAxLzEwLCB3aGljaCBhZGRzIHRvIHRoZSBQSFkgYmluZGluZyBkb2MuIEkgYW0gbm90IHN1cmUg
aWYgVmlub2Qncwo+IHN1Z2dlc3Rpb24gd2FzIGFib3V0IHNwbGl0dGluZyBvZmYgMDEvMTAsIDAz
LzEwLCBhbmQgMTAvMTAsIG9yIGp1c3QgdGhlCj4gdHdvIGxhdHRlciB3aGljaCB0b3VjaCB0aGUg
ZHJpdmVyLgo+IAo+IEkgY2FuIHNwbGl0IG9mZiAwMy8xMCBhbmQgMTAvMTAsIHJlYmFzZWQgb24g
dG9wIG9mIGxpbnV4LXBoeS5naXQvbmV4dCwgYW5kCj4gc2VuZCB0aGF0IHRvIFZpbm9kLgo+IFRo
ZW4gSSB3b3VsZCBrZWVwIDAxLzEwIGluIGEgcmVzcGluIG9mIHRoaXMgc2VyaWVzIGhlcmUsIHRv
IHNhdGlzZnkgdGhlCj4gZGVwZW5kZW5jeSBvZiB0aGUgbGF0ZXIgRFRTIHBhdGNoZXMsIGFuZCBW
aW5vZCBjYW4gcGljayB0aGF0IG9uZSBwYXRjaCBmcm9tCj4gdGhlcmU/CgpUaGVyZSBpcyBubyBo
YXJkIGRlcGVuZGVuY3kgb2YgRFRTIG9uIGJpbmRpbmdzLiBZb3UgY2FuIHNwbGl0IHRoZXNlIChh
bmQKc29tZSBtYWludGFpbmVycyBwcmVmZXIgdGhhdCB3YXkpIGFuZCBpbiBEVFMgcGF0Y2hlcyBq
dXN0IHByb3ZpZGUgdGhlCmxpbmsgdG8gdGhlIGJpbmRpbmdzLCBzYXlpbmcgaXQgaXMgaW4gcHJv
Z3Jlc3MuCgpUaGUgYmluZGluZ3Mgc2hvdWxkIGJlIGhvd2V2ZXIga2VwdCB3aXRoIGRyaXZlciBj
aGFuZ2VzIGFzIGl0IGdvZXMgdGhlCnNhbWUgd2F5LgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
