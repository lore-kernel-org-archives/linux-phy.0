Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73F67C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 16:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lr+a+2OK45aby21p8fqzFOaLEaNh327VDKWqqRoYYpY=; b=CcCZJp7pB1ahVH
	e5uHlfj+XLd737foY5IMBzgXoa8OQQmfGQD4mrJMRh5QIBBDj+QWl9/Ns84wHathcxTf3W9VUD1Ys
	K25ahJ1ZcHsxAnFGeBpKkNqGfJP+bjdSUxTqM90oknG5Lmepzz8CDf2qoexD5iTQFOUIfMONqeVcU
	bXK9DVD/GSuuR+bHFxo9+UZe6oqZMMibP5W9o9/1Fgc6bMymjSo/1Es5oQywFQxO7FzK6Pv1AfJWu
	ZyTecAwurZFcATrUH5TnEQ0FosVYbOTgCe4speHLIg3CoOdoWijDNsU3st9+jA+A+3fnGGa5Hmkbw
	f/NU9Tlt6Lfq37k5mXXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouyoF-00Cko3-Oi; Tue, 15 Nov 2022 16:29:15 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouyoD-00Ckn8-IT
	for linux-phy@lists.infradead.org; Tue, 15 Nov 2022 16:29:15 +0000
Received: by mail-lj1-x235.google.com with SMTP id u11so18155942ljk.6
        for <linux-phy@lists.infradead.org>; Tue, 15 Nov 2022 08:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sSUOaIRRIaxCLKOVLUG5d+WOgQHkBDA9Bz3omdshBMY=;
        b=dTUbslcQxIsZytfrJ6/WgQJkXDPlTWI1saLhS8IYtQYvVFNXLXSgiX5+p6JL4NO2lC
         mtoZSjHkBoIcTc5YskvjicGU1Ms8VUfBv6wcmDDOM4XCz7Of0VbHvAA/lOPHDQbY+OJF
         NPpm4p6oR1VEvuEpbgcjnqI83AuDNxLyKcY1KY8TmiDv+rbbQY89eMFUrAxpTqWd8Qi/
         PfRllCRd+nAgmuxQ8WipXpHb/G89hE5+YgFMrGNM+KyV1/CoAk4YO/xQFDl1av4V20Ik
         Bpb7P8cR1o7oba4nk4DpAl8Z9ZsTibMb6sjQLMPykA2xSq4g3ASV/6VXWqnHUtA12X4V
         8pwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sSUOaIRRIaxCLKOVLUG5d+WOgQHkBDA9Bz3omdshBMY=;
        b=SWpUEpv3lxEnBcwU/17nbjKFPerQuynup4vyTQrWB1MTblmVWmwT/xS/+0Jw+cVH7K
         kpq9fw1P5VWI1Gqy5dH4bFk1cLfWk2SJbZ4z5xh/09RpNou9xCB3JalONUKNzReEsmBY
         RBOtodMmc1pASHa07UqqweLwLHLu4p9aJL0f9D1h2pz8x+wgEkPXMaAb6QQmIFb+NP+z
         ChYzlA5fybSbOnlBU2JK5ycaQuHNNigJLOo2OOACRVcVMKyFTGY5ofVH/8DIdt9j5rOo
         PDVpPp8GXUYluAiREHLZ931mEQfhnnaW3IjZXBNtlGoeClN4v6P6u95COZKvWO5UbFEz
         9Sgg==
X-Gm-Message-State: ANoB5pnsG6R5IxFXQ/GR/sOxxwgJTttLQfNGmQ7paek71lI7RYjdSTes
	2esZZQElT+QWnYki4zs+ioJMzg==
X-Google-Smtp-Source: AA0mqf6D8YP9WiiKhNlDLQWxOuvAdoFVC4qTb68DacS4/NhKXtdcQN2FDpXCsDm2xYVspqHfO13eSw==
X-Received: by 2002:a2e:b0ca:0:b0:277:7793:fcd2 with SMTP id g10-20020a2eb0ca000000b002777793fcd2mr6697368ljl.364.1668529751652;
        Tue, 15 Nov 2022 08:29:11 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id e21-20020a196915000000b004b3db0a3d9csm2263721lfc.117.2022.11.15.08.29.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 08:29:11 -0800 (PST)
Message-ID: <e861e62f-4148-b867-0155-e71b1cee0b81@linaro.org>
Date: Tue, 15 Nov 2022 17:29:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 03/11] phy: sun4i-usb: add support for the USB PHY on
 F1C100s SoC
Content-Language: en-US
To: Andre Przywara <andre.przywara@arm.com>
Cc: Vinod Koul <vkoul@kernel.org>, =?UTF-8?Q?Jernej_=c5=a0krabec?=
 <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>,
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
 <4516dcfb-b928-d454-18a6-bd725f39cc24@linaro.org>
 <20221115161917.328ec91a@donnerap.cambridge.arm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115161917.328ec91a@donnerap.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_082913_648622_25CBC79D 
X-CRM114-Status: GOOD (  30.55  )
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

T24gMTUvMTEvMjAyMiAxNzoxOSwgQW5kcmUgUHJ6eXdhcmEgd3JvdGU6Cj4gT24gVHVlLCAxNSBO
b3YgMjAyMiAxNjowMDo1NCArMDEwMAo+IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5r
b3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gCj4gSGksCj4gCj4+IE9uIDE1LzExLzIwMjIg
MTE6NDQsIEFuZHJlIFByenl3YXJhIHdyb3RlOgo+Pj4gT24gVHVlLCAxNSBOb3YgMjAyMiAxMTow
MzoyNCArMDEwMAo+Pj4gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBs
aW5hcm8ub3JnPiB3cm90ZToKPj4+Cj4+PiBIaSwKPj4+ICAgCj4+Pj4gT24gMTUvMTEvMjAyMiAw
NzowMSwgSmVybmVqIMWga3JhYmVjIHdyb3RlOiAgCj4+Pj4+IERuZSDEjWV0cnRlaywgMTAuIG5v
dmVtYmVyIDIwMjIgb2IgMDg6MzU6MzkgQ0VUIGplIFZpbm9kIEtvdWwgbmFwaXNhbChhKTogICAg
Cj4+Pj4+PiBPbiAwNi0xMS0yMiwgMTU6NDgsIEFuZHJlIFByenl3YXJhIHdyb3RlOiAgICAKPj4+
Pj4+PiBGcm9tOiBJY2Vub3d5IFpoZW5nIDx1d3VAaWNlbm93eS5tZT4KPj4+Pj4+Pgo+Pj4+Pj4+
IFRoZSBGMUMxMDBzIFNvQyBoYXMgb25lIFVTQiBPVEcgcG9ydCBjb25uZWN0ZWQgdG8gYSBNVVNC
IGNvbnRyb2xsZXIuCj4+Pj4+Pj4KPj4+Pj4+PiBBZGQgc3VwcG9ydCBmb3IgaXRzIFVTQiBQSFku
ICAgIAo+Pj4+Pj4KPj4+Pj4+IFRoaXMgZG9lcyBub3QgYXBwbHkgZm9yIG1lLCBwbGVhc2UgcmVi
YXNlIGFuZCByZXNlbmQKPj4+Pj4+Cj4+Pj4+PiBBbHNvLCBjb25zaWRlciBzcGxpdHRpbmcgcGh5
IHBhdGNoZXMgZnJvbSB0aGlzLiBJIGRvbnQgdGhpbmsgdGhlcmUgaXMKPj4+Pj4+IGFueSBkZXBl
bmRlbmN5ICAgIAo+Pj4+Pgo+Pj4+PiBEVCBwYXRjaGVzIGluIHRoaXMgc2VyaWVzIGRlcGVuZCBv
biBmdW5jdGlvbmFsaXR5IGFkZGVkIGhlcmUuCj4+Pj4+ICAgICAKPj4+Pgo+Pj4+IERUUyBhbHdh
eXMgZ29lcyBzZXBhcmF0ZWx5IGZyb20gZHJpdmVyIGNoYW5nZXMgYmVjYXVzZSBpdCBpcyBhIGhh
cmR3YXJlCj4+Pj4gZGVzY3JpcHRpb24uIERlcGVuZGluZyBvbiBkcml2ZXIgbWVhbnMgeW91IGhh
dmUgcG90ZW50aWFsIEFCSSBicmVhaywgc28KPj4+PiBpdCBpcyBhbHJlYWR5IGEgd2FybmluZyBz
aWduLiAgCj4+Pgo+Pj4gV2UgdW5kZXJzdGFuZCB0aGF0IDstKQo+Pj4gV2hhdCBKZXJuZWogbWVh
bnQgd2FzIHRoYXQgdGhlIERUUyBwYXRjaGVzIGF0IHRoZSBlbmQgZGVwZW5kIG9uIHBhdGNoCj4+
PiAwMS8xMCwgd2hpY2ggYWRkcyB0byB0aGUgUEhZIGJpbmRpbmcgZG9jLiBJIGFtIG5vdCBzdXJl
IGlmIFZpbm9kJ3MKPj4+IHN1Z2dlc3Rpb24gd2FzIGFib3V0IHNwbGl0dGluZyBvZmYgMDEvMTAs
IDAzLzEwLCBhbmQgMTAvMTAsIG9yIGp1c3QgdGhlCj4+PiB0d28gbGF0dGVyIHdoaWNoIHRvdWNo
IHRoZSBkcml2ZXIuCj4+Pgo+Pj4gSSBjYW4gc3BsaXQgb2ZmIDAzLzEwIGFuZCAxMC8xMCwgcmVi
YXNlZCBvbiB0b3Agb2YgbGludXgtcGh5LmdpdC9uZXh0LCBhbmQKPj4+IHNlbmQgdGhhdCB0byBW
aW5vZC4KPj4+IFRoZW4gSSB3b3VsZCBrZWVwIDAxLzEwIGluIGEgcmVzcGluIG9mIHRoaXMgc2Vy
aWVzIGhlcmUsIHRvIHNhdGlzZnkgdGhlCj4+PiBkZXBlbmRlbmN5IG9mIHRoZSBsYXRlciBEVFMg
cGF0Y2hlcywgYW5kIFZpbm9kIGNhbiBwaWNrIHRoYXQgb25lIHBhdGNoIGZyb20KPj4+IHRoZXJl
PyAgCj4+Cj4+IFRoZXJlIGlzIG5vIGhhcmQgZGVwZW5kZW5jeSBvZiBEVFMgb24gYmluZGluZ3Mu
IFlvdSBjYW4gc3BsaXQgdGhlc2UgKGFuZAo+PiBzb21lIG1haW50YWluZXJzIHByZWZlciB0aGF0
IHdheSkgYW5kIGluIERUUyBwYXRjaGVzIGp1c3QgcHJvdmlkZSB0aGUKPj4gbGluayB0byB0aGUg
YmluZGluZ3MsIHNheWluZyBpdCBpcyBpbiBwcm9ncmVzcy4KPiAKPiBCdXQgdGhhdCBicmVha3Mg
Im1ha2UgZHRic19jaGVjayIsIGRvZXNuJ3QgaXQ/CgpUaGUgY2hlY2sgd2lsbCBiZSBicm9rZW4g
YW55d2F5IGJlY2F1c2UgYmluZGluZyBnb2VzIHZpYSBkcml2ZXIKc3Vic3lzdGVtIGFuZCBEVFMg
Z29lcyB2aWEgYXJtLXNvYy4KCklmIGJvdGggbWFrZSB0byB0aGUgbGludXgtbmV4dCBhbmQgbmV4
dCByZWxlYXNlLCB0aGVuIGl0J3Mgbm90IGEgcHJvYmxlbS4KCj4gCj4gSSB3b3VsZCB0aGluayB0
aGF0IHRoZSBEVCBiaXRzIC0gYmluZGluZ3MgZmlyc3QsIHRoZW4gRFRTIGZpbGVzIHVzaW5nIGl0
IC0KPiBzaG91bGQgYmUgYnVuZGxlZC4gVGhpcyBpcyBob3cgSSBpbWFnaW5lIHRoZSBmdXR1cmUo
VE0pLCB3aGVyZSBEVHMgYW5kCj4gYmluZGluZ3MgbGl2ZSBvdXRzaWRlIHRoZSBrZXJuZWwgcmVw
by4KClllcywgdGhhdCdzIHByZWZlcnJlZC4gVGhlcmVmb3JlIGluIERUUyBwYXRjaCB5b3Ugc2F5
IHRoZSBiaW5kaW5nIGlzIG5vdAptZXJnZWQgYW5kIGl0IGlzIGhlcmUgLSBsb3JlIGxpbmsuCgo+
IAo+PiBUaGUgYmluZGluZ3Mgc2hvdWxkIGJlIGhvd2V2ZXIga2VwdCB3aXRoIGRyaXZlciBjaGFu
Z2VzIGFzIGl0IGdvZXMgdGhlCj4+IHNhbWUgd2F5Lgo+IAo+IEkgdW5kZXJzdGFuZCB0aGF0IHRo
ZSBiaW5kaW5ncyBkZXNjcmliZSB0aGUgY29udHJhY3QgdGhlIGRyaXZlciBhY3RzIG9uLAo+IGJ1
dCBnb2luZyBmb3J3YXJkIEkgdGhpbmsgZHJpdmVyIGNoYW5nZXMgd291bGQgbmVlZCB0byBjb21l
IGxhdGVyLCB0aGVuCj4gKHNpbmNlIHRoZXkgd2lsbCBsaXZlIGluIGEgc2VwYXJhdGUgcmVwbyBh
dCBzb21lIGRheSk/Cj4gTWF5YmUgcG9pbnRpbmcgdG8gdGhlIGJpbmRpbmcgY2hhbmdlcyBpbiBw
cm9ncmVzcz8KCkxhdGVyIGFzIG9uZSBjb21taXQgbGF0ZXIgLSB5ZXMuIExhdGVyIGFzIG90aGVy
IG9wdGlvbiAtIG5vdCByZWFsbHksIHdoeT8KCj4gU28gd2l0aCBhIHNlcGFyYXRlIHJlcG8gd2Ug
d291bGQgYWN0dWFsbHkgbmVlZCB0byB1cHN0cmVhbSBqdXN0IHRoZQo+IGJpbmRpbmdzIGZpcnN0
LCB0aGVuIGNvdWxkIHB1c2ggZHJpdmVyIGNoYW5nZXMgYW5kIC5kdHMgZmlsZXMKPiBpbmRlcGVu
ZGVudGx5PwoKVGhlcmUgaXMgbm8gc2VwYXJhdGUgcmVwbywgc28gd2UgdGFsayBhYm91dCBMaW51
eCBjYXNlIG5vdy4KCj4gQW5kIGZvciBub3cgaXQgbG9va3MgbGlrZSB3ZSBhcmUgc3R1Y2sgd2l0
aCBwdXR0aW5nIGV2ZXJ5dGhpbmcgaW4gb25lCj4gc2VyaWVzLCB0byBtYWtlIGJvdGggY2hlY2tw
YXRjaCBhbmQgZHRic19jaGVjayBoYXBweS4KCllvdSBzaG91bGQgcmF0aGVyIG1ha2UgbWFpbnRh
aW5lcnMgaGFwcHkgOikgYW5kIGhlcmUgb25lIGFza2VkIHRvIHNwbGl0LgoKQmVzdCByZWdhcmRz
LApLcnp5c3p0b2YKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
