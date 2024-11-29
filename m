Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C762BD6EBEC
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 08:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5Xdpi/voerQsHF22FNFEqyU6aXuWVSn/tRoL1mRMqY=; b=XW4zR3zTfLuWol
	MEQufN8DfmzXg+mD/gjFwbzWvpN1ganuVmwActTw2Ehl7GrVNPrvMBKHB+LxHzqQcerSfa2XPzQ8r
	dC8F9wMOztWPd8d3cEbmTVX4fM8L5Khkm0emN0pXzDSlprENn2zm96Q4DyABV2vwQ2zsZ+dKDbl/t
	lovwlF8ZNI8Jr4Iu5mrtfrMqrQFA4jCh65qxp2CpEhV5rnsGST1hw4Q1uZX5c8Gqrptc89yRMmwVA
	M2LhrRwCkcb3Y9KnYsHeqAnCc9iaAgX2vWwkZlAMqDKXX4tNX4x6D6F0oWsc9YVh0VCYnhCEVzUaN
	Dd8BZE0fZ3EDwvlwflkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGwGD-0000000HB0w-2HKf;
	Fri, 29 Nov 2024 08:21:57 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGwGB-0000000HB0Y-1aZs
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 08:21:57 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-434a8b94fb5so9448235e9.0
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 00:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732868513; x=1733473313; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E2oOz52GRWsp3a1EBMDsE5PXCndawDHZAsuExiF65WQ=;
        b=BoMzkwmvHq1paPYPQGJQGL1Y6G2dtWAazLqr+Sa6MHxilULdFAhs5jmd4+95bbODg6
         sn71SKSp5mAHv2h3uH/p1NpDNU+bUYTZIWWY0xMxSsxev7G37Ntv4vtmLzxkuHysdi8q
         tAVS6T+R8vN0Xig/mDEoRyycbTz7wbZOybMzOsSZWCspNWpVWXHhfY7PuEVU3jhnjgc8
         FYxwlVnjsy24LEUM85Eh4o5ReSeEeEG7snXvFmvZLcDcbLzl6vQdcj0d9uKwRKed3Uva
         D+EI/qXENTV+hCc6ZscF9wnyjv/1elRWi0wFjMvsnlrBkEt+AfiC1GEWUTQvL4n3/iWs
         +vZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732868513; x=1733473313;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E2oOz52GRWsp3a1EBMDsE5PXCndawDHZAsuExiF65WQ=;
        b=Ez+S/CdoZgk5o8nAqeeIXQMPzTGEf2B0+uVOV7zXQxLHIOR8SUxq7UJWJdbUItVtmg
         iAolcjE48pmgLPtKfY0IUQVTDOBDjJF88hUg7t7Pj+sojaeOxENbjraaPTR14nJ0JGoT
         uIXrdIXmCUvmHDK5KNGloKxHuSWCtSe08LpGPq82Y2Dcnf/UPOkmxsGnKloKCdFeQvr2
         wsxtz2Wd0fpbH88D9GYIJFC/+s/YuUNh+s4M3SEuVAq3/9bvEX7BJIeBrUF71hTJUh/J
         a1x+tR824bP6O8/BotbciIf1drruQAPL/swmZ8Qt0KceAN+EGQ5S0PbdtUFVW7GFYaT6
         ti+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUnIsWir84JgE/6comqW46wKOjsgf0dHfQphmNHg/mNobtWqV2I9hHDo4N3v0fsSqochcZyJQMq7uU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxuDpxbgHTO+JPsywmmZo4+qg1oguTnQJPP/9ZZwbmdj9b5ioiE
	vcDbcJTSfB2qCxsxqkfS7CACb8iIvaBZ2Wuj/555uWvnO++w3jAn9R7pKb/05Zc=
X-Gm-Gg: ASbGnculAxt1ld5J/HUK+AgVagfg+3/Wew6rJJRg6eKke5vbvSIDFgcZxhn8LV4Xkjs
	69/Ku4T9sem9SbYwpH/DvFmGx3iEPtMBLW69ez4kXoppNeXgo9nYHjY009pz4PSkHDxwwYS/1fB
	3+XCGh0HiqU6HZs7RV1q81IF1fYpjrkGRh6tC2UwPetwOn3xNelTeY69VckGYc2r0b2RqWBJG2c
	MAd+iOAZ/1dEpKkbmAsgoLdVyydi21YXjrefdjhuZj3eJQb9zY8brGuFQ==
X-Google-Smtp-Source: AGHT+IHPjkSVuExv6ChzcQIL1kJ3xfTqnGBTSThOnNcT1tNDPayzcwSyl+9WJecuplBzRyFAZebpLg==
X-Received: by 2002:a05:600c:4fc9:b0:431:5226:1633 with SMTP id 5b1f17b1804b1-434afba0023mr53549255e9.6.1732868513186;
        Fri, 29 Nov 2024 00:21:53 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434b0f7150esm44698395e9.42.2024.11.29.00.21.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 00:21:52 -0800 (PST)
Message-ID: <0bb9f461-c7a2-4db0-9492-c04cc298504d@tuxon.dev>
Date: Fri, 29 Nov 2024 10:21:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/15] dt-bindings: soc: renesas: renesas,rzg2l-sysc:
 Add #renesas,sysc-signal-cells
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com,
 gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com,
 christophe.jaillet@wanadoo.fr, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-2-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdWjzR6vgbr_CfR7r-h1FqWxs1nY0hm274kxFmoHjCtRAA@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdWjzR6vgbr_CfR7r-h1FqWxs1nY0hm274kxFmoHjCtRAA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_002155_670342_887762AB 
X-CRM114-Status: GOOD (  39.29  )
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

SGksIEdlZXJ0LAoKT24gMjguMTEuMjAyNCAxNzo0NiwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3Rl
Ogo+IEhpIENsYXVkaXUsCj4gCj4gQ0MgVWxmCj4gCj4gVGhhbmtzIGZvciB5b3VyIHBhdGNoIQo+
IAo+IE9uIFR1ZSwgTm92IDI2LCAyMDI0IGF0IDEwOjIx4oCvQU0gQ2xhdWRpdSA8Y2xhdWRpdS5i
ZXpuZWFAdHV4b24uZGV2PiB3cm90ZToKPj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUu
YmV6bmVhLnVqQGJwLnJlbmVzYXMuY29tPgo+Pgo+PiBUaGUgUlovRzNTIHN5c3RlbSBjb250cm9s
bGVyIChTWVNDKSBoYXMgcmVnaXN0ZXJzIHRvIGNvbnRyb2wgc2lnbmFscyB0aGF0Cj4+IGFyZSBy
b3V0ZWQgdG8gdmFyaW91cyBJUHMuIFRoZXNlIHNpZ25hbHMgbXVzdCBiZSBjb250cm9sbGVkIGR1
cmluZwo+PiBjb25maWd1cmF0aW9uIG9mIHRoZSByZXNwZWN0aXZlIElQcy4gT25lIHN1Y2ggc2ln
bmFsIGlzIHRoZSBVU0IgUFdSUkRZLAo+PiB3aGljaCBjb25uZWN0cyB0aGUgU1lTQyBhbmQgdGhl
IFVTQiBQSFkuIFRoaXMgc2lnbmFsIG11c3QgdG8gYmUgY29udHJvbGxlZAo+PiBiZWZvcmUgYW5k
IGFmdGVyIHRoZSBwb3dlciB0byB0aGUgVVNCIFBIWSBpcyB0dXJuZWQgb2ZmL29uLgo+Pgo+PiBP
dGhlciBzaW1pbGFyIHNpZ25hbHMgaW5jbHVkZSB0aGUgZm9sbG93aW5nIChhY2NvcmRpbmcgdG8g
dGhlIFJaL0czUwo+PiBoYXJkd2FyZSBtYW51YWwpOgo+Pgo+PiAqIFBDSWU6Cj4+IC0gQUxMT1df
RU5URVJfTDEgc2lnbmFsIGNvbnRyb2xsZWQgdGhyb3VnaCB0aGUgU1lTX1BDSUVfQ0ZHIHJlZ2lz
dGVyCj4+IC0gUENJRV9SU1RfUlNNX0Igc2lnbmFsIGNvbnRyb2xsZWQgdGhyb3VnaCB0aGUgU1lT
X1BDSUVfUlNUX1JTTV9CCj4+ICAgcmVnaXN0ZXIKPj4gLSBNT0RFX1JYVEVSTUlOQVRJT04gc2ln
bmFsIGNvbnRyb2xsZWQgdGhyb3VnaCBTWVNfUENJRV9QSFkgcmVnaXN0ZXIKPj4KPj4gKiBTUEk6
Cj4+IC0gU0VMX1NQSV9PQ1RBIHNpZ25hbCBjb250cm9sbGVkIHRocm91Z2ggU1lTX0lQQ09OVF9T
RUxfU1BJX09DVEEKPj4gICByZWdpc3Rlcgo+Pgo+PiAqIEkyQy9JM0M6Cj4+IC0gYWZfYnlwYXNz
IEkyQyBzaWduYWxzIGNvbnRyb2xsZWQgdGhyb3VnaCBTWVNfSTJDeF9DRkcgcmVnaXN0ZXJzCj4+
ICAgKHg9MC4uMykKPj4gLSBhZl9ieXBhc3MgSTNDIHNpZ25hbCBjb250cm9sbGVkIHRocm91Z2gg
U1lTX0kzQ19DRkcgcmVnaXN0ZXIKPj4KPj4gKiBFdGhlcm5ldDoKPj4gLSBGRUNfR0lHQV9FTkFC
TEUgRXRoZXJuZXQgc2lnbmFscyBjb250cm9sbGVkIHRocm91Z2ggU1lTX0dFVEh4X0NGRwo+PiAg
IHJlZ2lzdGVycyAoeD0wLi4xKQo+Pgo+PiBBZGQgI3JlbmVzYXMsc3lzYy1zaWduYWwtY2VsbHMg
RFQgcHJvcGVydHkgdG8gYWxsb3cgZGlmZmVyZW50IFNZU0Mgc2lnbmFscwo+PiBjb25zdW1lcnMg
dG8gbWFuYWdlIHRoZXNlIHNpZ25hbHMuCj4+Cj4+IFRoZSBnb2FsIGlzIHRvIGVuYWJsZSBjb25z
dW1lcnMgdG8gc3BlY2lmeSB0aGUgcmVxdWlyZWQgYWNjZXNzIGRhdGEgZm9yCj4+IHRoZXNlIHNp
Z25hbHMgKHRocm91Z2ggZGV2aWNlIHRyZWUpIGFuZCBsZXQgdGhlaXIgcmVzcGVjdGl2ZSBkcml2
ZXJzCj4+IGNvbnRyb2wgdGhlc2Ugc2lnbmFscyB2aWEgdGhlIHN5c2NvbiByZWdtYXAgcHJvdmlk
ZWQgYnkgdGhlIHN5c3RlbQo+PiBjb250cm9sbGVyIGRyaXZlci4gRm9yIGV4YW1wbGUsIHRoZSBV
U0IgUEhZIHdpbGwgZGVzY3JpYmUgdGhpcyByZWxhdGlvbgo+PiB1c2luZyB0aGUgZm9sbG93aW5n
IERUIHByb3BlcnR5Ogo+Pgo+PiB1c2IyX3BoeTE6IHVzYi1waHlAMTFlMzAyMDAgewo+PiAgICAg
ICAgIC8vIC4uLgo+PiAgICAgICAgIHJlbmVzYXMsc3lzYy1zaWduYWwgPSA8JnN5c2MgMHhkNzAg
MHgxPjsKPj4gICAgICAgICAvLyAuLi4KPj4gfTsKPiAKPiBJSVVJQywgdGhlIGNvbnN1bWVyIGRy
aXZlciB3aWxsICBhcHBlYXIgdG8gY29udHJvbCB0aGUgU1lTQyBiaXRzCj4gZGlyZWN0bHksIGJ1
dCBkdWUgdG8gdGhlIHVzZSBvZiBjdXN0b20gdmFsaWRhdGluZyByZWdtYXAgYWNjZXNzb3JzCj4g
YW5kIHJlZmVyZW5jZSBjb3VudGluZyBpbiB0aGUgU1lTQyBkcml2ZXIsIHRoaXMgaXMgc2FmZT8K
CkknbSBub3Qgc3VyZSBJIGZ1bGx5IHVuZGVyc3RhbmQgdGhlIHNhZmV0eSBjb25jZXJuLgoKPiBU
aGUgZXh0cmEgc2FmZXR5IHJlcXVpcmVzIGR1cGxpY2F0aW5nIHRoZSByZWdpc3RlciBiaXRzIGlu
IGJvdGggRFQKPiBhbmQgdGhlIFNZU0MgZHJpdmVyLgoKT25lIG90aGVyIG9wdGlvbiBJIHNhdyB3
YXMgdG8gaGF2ZSBjb21tb24gZGVmaW5lcyBmb3IgcmVnaXN0ZXJzIHRoYXQgY291bGQKaGF2ZSBi
ZWVuIHNoYXJlZCBiL3cgZHJpdmVyIGFuZCBEVFNlcy4gQnV0IGl0IGxvb2tlZCBiZXR0ZXIgdG8g
bWUgdGhlIHdheQppdCBoYXMgYmVlbiBwcmVzZW50ZWQgaW4gdGhpcyBzZXJpZXMuCgo+IEJvdGgg
dXNiLXBoeSBub2RlcyBvbiBSWkczUyB1c2UgdGhlIHNhbWUgcmVuZXNhcyxzeXNjLXNpZ25hbCwg
c28gdGhlCj4gcmVmZXJlbmNlIGNvdW50aW5nIGlzIGluZGVlZCBuZWVkZWQuICBUaGV5IGFyZSBp
biBkaWZmZXJlbnQgcG93ZXIKPiBkb21haW5zLCBjb3VsZCB0aGF0IGJlIGFuIGlzc3VlIHcuci50
LiBvcmRlcmluZz8KCkluIGNoYXB0ZXIgIjMyLjQuMi4xIFVTQi9QSFkgcmVsYXRlZCBwaW5zIiwg
c2VjdGlvbiAiV2hlbiBlaXRoZXIgUG9ydDEgb3IKUG9ydDIgaXMgdW51c2VkIiBvZiB0aGUgUlov
RzNTIEhXIG1hbnVhbCBpdCBpcyBtZW50aW9uZWQgIlNpbmNlIFVTQl9WREQxOCAvClVTQl9WREQz
MyBhcmUgY29tbW9uIHRvIDIgUG9ydCBQSFksIGl0IGlzIG5lY2Vzc2FyeSB0byBzdXBwbHkgcG93
ZXIgZXZlbgp3aGVuIG9uZSBvZiB0aGUKIHBvcnRzIGlzIG5vdCBpbiB1c2UiLgoKKEZyb20gdGhl
IGRpc2N1c3Npb25zIHcvIHRoZSBpbnRlcm5hbCBIVyB0ZWFtKSBUaGUgUFdSUkRZIGlzIGFuIChz
b2Z0d2FyZQpjb250cm9sbGVkKSBpbmRpY2F0b3IgdG8gdGhlIFVTQiBQSFkgdGhhdCBwb3dlciBz
dXBwbHkgaXMgcmVhZHkuCgpGcm9tIHRoYXQgYW5kIFsxXSBJIGdldCB0aGF0IGJvdGggUEhZcyBh
cmUgcG93ZXJlZCBieSB0aGUgc2FtZSByZWd1bGF0b3JzCihVU0JfVkREMTgvVVNCX1ZERDMzKSBh
bmQgdGhlIFVTQiBQV1JSRFkgc2lnbmFsIG5lZWQgdG8gYmUgc2V0IGJlZm9yZS9hZnRlcgp0aGUg
VVNCIFBIWSBwb3dlciBvZmYvb24uIEJlY2F1c2Ugb2YgdGhpcyBJIGNvbnNpZGVyIHRoZSBvcmRl
ciBkb2Vzbid0IG1hdHRlci4KClsxXSBodHRwczovL2djZG5iLnBicmQuY28vaW1hZ2VzLzBhMXpZ
QkZaWFpWYi5wbmcKCj4gCj4gSSBhbSBub3QgYSBiaWcgZmFuIG9mIGRlc2NyaWJpbmcgcmVnaXN0
ZXIgYml0cyBpbiBEVCwKCisxCgo+IGJ1dCBmb3IgdGhlIG90aGVyCj4gU1lTQyB1c2VycyB5b3Ug
bGlzdCBhYm92ZSwgc3lzY29uK3JlZ21hcCBzZWVtcyB0byBiZSBhIHZhbGlkIHNvbHV0aW9uLgo+
IEZvciBVU0IgYW5kIFBDSWUgY29udHJvbCwgdGhlIHNpdHVhdGlvbiBpcyBkaWZmZXJlbnQuIEkg
bW9yZSBsaWtlZCB0aGUKPiBhcHByb2FjaCB3aXRoICJyZXNldCBJRHMiIHlvdSBoYWQgaW4gdjEs
IGFzIGl0IGFic3RyYWN0cyB0aGUgRFQKPiBkZXNjcmlwdGlvbiBmcm9tIHRoZSByZWdpc3RlciBi
aXRzLAoKKzEKCj4gYW5kIHRoZSBVU0IgYW5kIFBDSWUgcmVzZXQgYml0cyB1c2UKPiBhIGRpZmZl
cmVudCBwb2xhcml0eSAob24gUlovRzNTKS4gSWYgZnV0dXJlIFNvQyBpbnRlZ3JhdGlvbiBjaGFu
Z2VzCj4gdGhlIHBvbGFyaXR5LCB5b3UgaGF2ZSB0byBoYW5kbGUgdGhhdCBpbiB0aGUgY29uc3Vt
ZXIgKFVTQiBvciBQQ0llKQo+IGRyaXZlciwgdG9vLgoKVGhhdCdzIHRydWUuIFRoZSBpZGVhIG9m
IHRoaXMgaW1wbGVtZW50YXRpb24gd2FzIHRoYXQgdGhlIGNvbnN1bWVyIHdvdWxkCmtub3cgd2hh
dCB0aGV5IG5lZWQgdG8gc2V0IGZvciB0aGVtc2VsdmVzIG9uIHRoZSBTWVNDIHNpZGUuCgo+IFVu
Zm9ydHVuYXRlbHkgc3VjaCAicmVzZXQgSURzIiBhcmUgb25seSBzdWl0YWJsZSBmb3IKPiB1c2Ug
d2l0aCB0aGUgcmVzZXQgb3IgcG1kb21haW4gZnJhbWV3b3Jrcywgd2hpY2ggZGlkbid0IHN1cnZp
dmUgdGhlCj4gZWFybGllciBkaXNjdXNzaW9ucy4KPiAKPiBPbmUgb3RoZXIgb3B0aW9uIHdvdWxk
IGJlIHRvIGxldCBTWVNDIGV4cG9zZSByZWd1bGF0b3JzPwoKV2UgY2FuIHRyeSwgYnV0IHdlIGNh
biBoaXQgdGhlIHdhbGwgYWdhaW4sIGFzIHRoZSBQV1JSRFkgc2lnbmFsIGlzIG5vdCBhCnJlZ3Vs
YXRvciBlaXRoZXIuIEZyb20gdGhlIGludGVybmFsIEhXIGRpc2N1c3Npb24gaXMgYW4gaW5kaWNh
dG9yIChzb2Z0d2FyZQpjb250cm9sbGVkKSB0aGF0IHRoZSBwb3dlciB0byB0aGUgVVNCIFBIWSBp
cyByZWFkeS4KCj4gV2hpbGUgdGhhdCB3b3VsZCB3b3JrIGZvciBVU0IgYW5kIFBDSWUgY29udHJv
bCwgd2Ugd291bGQgc3RpbGwgbmVlZAo+IHN5c2NvbityZWdtYXAgZm9yIHRoZSBvdGhlciBiaXRz
LgoKVGhhdCBpcyB0cnVlLgoKPiAKPiBTbyB0aGUgbW9yZSBJIHRoaW5rIGFib3V0IGl0LCB0aGUg
bW9yZSBJIGxpa2UgeW91ciAoY2xldmVyKSBzb2x1dGlvbi4uLgo+IAo+PiBBbG9uZyB3aXRoIGl0
LCBhZGQgdGhlIHN5c2NvbiB0byB0aGUgY29tcGF0aWJsZSBsaXN0IGFzIGl0IHdpbGwgYmUKPj4g
cmVxdWVzdGVkIGJ5IHRoZSBjb25zdW1lciBkcml2ZXJzLiBUaGUgc3lzY29uIHdhcyBhZGRlZCB0
byB0aGUgcmVzdCBvZgo+PiBzeXN0ZW0gY29udHJvbGxlciB2YXJpYW50cyBhcyB0aGVzZSBhcmUg
c2ltaWxhciB3aXRoIFJaL0czUyBhbmQgY2FuCj4+IGJlbmVmaXQgZnJvbSB0aGUgaW1wbGVtZW50
YXRpb24gcHJvcG9zZWQgaW4gdGhpcyBzZXJpZXMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENsYXVk
aXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPiAKPiBHcntvZXRq
ZSxlZXRpbmd9cywKPiAKPiAgICAgICAgICAgICAgICAgICAgICAgICBHZWVydAo+IAo+IC0tCj4g
R2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAt
LSBnZWVydEBsaW51eC1tNjhrLm9yZwo+IAo+IEluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0
aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKPiB3aGVuIEkn
bSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0
aGluZyBsaWtlIHRoYXQuCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51
cyBUb3J2YWxkcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
