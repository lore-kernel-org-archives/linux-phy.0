Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB223D6EBEE
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 09:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgkLsBBarWn+nSGTwbkTEqbpLqq0k32+YEHxZs9/Ma4=; b=y7OGpBpzfMhGiG
	SEdFUFMn4r/zNIEOgzJIwuRbtO1QlQ5JJI1LXe3RmSVQ3OkogAHLQ8lEYWJrnrUdL8jAgGhChR8LO
	KlYkU+mfZNJoT94cHyKzRuBTame75cMVcktwjU2TB/jzmbTLwBepMrJ81/xjrpEMt17rT8SA6HJ0y
	01xDnVRikO7H5GRIshDSybPFx5tnuTIWBdViArQjlqWe03tJK70z5IEP2y4Lo4MjzlxG8BMccZzxr
	/fdl414emJKGtqcJuCbOjhPjtiCXCkxJMs1oLjwjmeQ/MFaOmlajx4t7QEW4t/wEPdOuSkBh+/2nf
	3UQqzZVj0Kp0ZTjnOVSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGx3m-0000000HIVK-22e3;
	Fri, 29 Nov 2024 09:13:10 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGx3U-0000000HIPp-3hED
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 09:12:54 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-43497839b80so9957765e9.2
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 01:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732871571; x=1733476371; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sb8gO4uA+vo8kcJyPPhqX5i7haSv+q2JYHt3gAOv4Y0=;
        b=RAuTttFe1H6J3yM3cmK+EaHGT10rSARKf+Mah8MVijPpUhoa5LWV1LmG0Xit8+W0Eg
         05XseUnRj2e8QMDVxjkNk6GYUJoZ2KzqMj9qNATY2q3YVcdW6LSYCQvLxOKEzzwMDEi5
         362PQavSklGvZO3AD8M8f31wHBS5oXoyRkOMUVoSfhzuf5GTrFnkklASGQEFppCFS89Q
         uaPww2BatOL8yAQxBvdUl+HhBwScIznUoA7EzUqsXuOTG4AujogCxqWZAWlbzjYpy7us
         0wxX78vTYrQonUWSonoYVfIMlAFbzOdL8XeaAC072gm1fx8Rf/IKBHu34Z7E8DyF08S0
         EKKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732871571; x=1733476371;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sb8gO4uA+vo8kcJyPPhqX5i7haSv+q2JYHt3gAOv4Y0=;
        b=tDTs1tILBHbdM6BE5bpaFR/xbo9dYuVIAZLbT9kveWxzs5UNDDiSKnUUpfcM3R7V7R
         UB+qcM037G3jdOYP4HgW+SHaWSl2s97zKr7bVk5zDa1GZkziM1TH2u8/bjoY4aAgp6ty
         qF1vIPQMXctxqL2f9Wa5slCqeHk/xTyQOUKZaF0B+WpPNkwD7Wc1c0oN3oG1zZkJsokz
         Ua679GRXjgbecUEZeHUi6XOKInHr7sXghHjkRBP828tI5oMFbTUKiDhD2b7K3rTXfzdv
         SuEvF7P9ySEnehZfDuKr6E4xAqqtDZ96lDSiRkg+O8Zwg4YUZwItAJA4mGFSlcFhUJ4T
         oT4Q==
X-Forwarded-Encrypted: i=1; AJvYcCX2AIkHPIZzn0vgTwZdu9MW06dmDu5eafBTfXEELg5ZAcK2vUGl+qrSRVxY/491FVl/7Cr249IFwh0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1UsSlNU6lppMwVtRRcGSCIpdCc61kQ6RB+sZVI3I7MgNch8ob
	l3e7hJss1135cBwZxzeTO0zdiVAcZc1Y4BuxVYtHzYS09NuJwMbssqC+Xjd2EiXq95LGjBEr7V9
	j
X-Gm-Gg: ASbGncvpVH7gVrMyTkIbjv1kAUqp6OMthdhIQR7zeJ1S7wd0gMfOo/AIcZ9apVkPtZY
	08bjgRLrRInJSwfzZkuVS847lakt6xIpW1K/GuQPFDlPPUTtOZIh9bV6824xhwb5g24TufjDWrx
	LhVCathBgJouFlceghM5k37H5ubTUc9C7YQPMVW52YV6tYgLTV4w7NBhOkwlekqtmFwswqgOIxz
	7q+EQB3mArFGbH1XUZXPiChz4MxD9WMwEZfobXEcgbLyU25/J/dgm2UvQ==
X-Google-Smtp-Source: AGHT+IHmwDZAWFKDepsiDLw8yd17aIS/lp5WnEmXUs3bmN9CBmiHsuGbPOMSIZoIaRXxGX02f7LuEg==
X-Received: by 2002:a05:600c:3b1a:b0:434:a968:89b5 with SMTP id 5b1f17b1804b1-434a9dc35f7mr102361905e9.9.1732871571093;
        Fri, 29 Nov 2024 01:12:51 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ccd36a02sm3890362f8f.37.2024.11.29.01.12.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 01:12:50 -0800 (PST)
Message-ID: <4d2a4d8b-9951-4454-b662-0a14d73e61a0@tuxon.dev>
Date: Fri, 29 Nov 2024 11:12:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/15] soc: renesas: Add SYSC driver for Renesas RZ
 family
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com,
 gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com,
 christophe.jaillet@wanadoo.fr, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-3-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdUvmTQeQXxhsXtj23-OS=aL3UgsyOtnawdmnusrEJ2JQw@mail.gmail.com>
 <32fa7eb8-2139-454c-8866-cb264d060616@tuxon.dev>
 <CAMuHMdXPQnCPjKRxoSceYabWPHF9Z_A7qVN85yaUZjPG7-o7tg@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdXPQnCPjKRxoSceYabWPHF9Z_A7qVN85yaUZjPG7-o7tg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_011252_934974_A475239C 
X-CRM114-Status: GOOD (  24.98  )
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

CgpPbiAyOS4xMS4yMDI0IDEwOjU0LCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gSGkgQ2xh
dWRpdSwKPiAKPiBPbiBGcmksIE5vdiAyOSwgMjAyNCBhdCA5OjQ44oCvQU0gQ2xhdWRpdSBCZXpu
ZWEgPGNsYXVkaXUuYmV6bmVhQHR1eG9uLmRldj4gd3JvdGU6Cj4+IE9uIDI4LjExLjIwMjQgMTc6
MjQsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPj4+IE9uIFR1ZSwgTm92IDI2LCAyMDI0IGF0
IDEwOjIx4oCvQU0gQ2xhdWRpdSA8Y2xhdWRpdS5iZXpuZWFAdHV4b24uZGV2PiB3cm90ZToKPj4+
PiBGcm9tOiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+
Cj4+Pj4KPj4+PiBUaGUgUlovRzNTIHN5c3RlbSBjb250cm9sbGVyIChTWVNDKSBoYXMgdmFyaW91
cyByZWdpc3RlcnMgdGhhdCBjb250cm9sCj4+Pj4gc2lnbmFscyBzcGVjaWZpYyB0byBpbmRpdmlk
dWFsIElQcy4gSVAgZHJpdmVycyBtdXN0IGNvbnRyb2wgdGhlc2Ugc2lnbmFscwo+Pj4+IGF0IGRp
ZmZlcmVudCBjb25maWd1cmF0aW9uIHBoYXNlcy4KPj4+Pgo+Pj4+IEFkZCBTWVNDIGRyaXZlciB0
aGF0IGFsbG93cyBpbmRpdmlkdWFsIFNZU0MgY29uc3VtZXJzIHRvIGNvbnRyb2wgdGhlc2UKPj4+
PiBzaWduYWxzLiBUaGUgU1lTQyBkcml2ZXIgZXhwb3J0cyBhIHN5c2NvbiByZWdtYXAgZW5hYmxp
bmcgSVAgZHJpdmVycyB0bwo+Pj4+IHVzZSBhIHNwZWNpZmljIFNZU0Mgb2Zmc2V0IGFuZCBtYXNr
IGZyb20gdGhlIGRldmljZSB0cmVlLCB3aGljaCBjYW4gdGhlbiBiZQo+Pj4+IGFjY2Vzc2VkIHRo
cm91Z2ggcmVnbWFwX3VwZGF0ZV9iaXRzKCkuCj4+Pj4KPj4+PiBDdXJyZW50bHksIHRoZSBTWVND
IGRyaXZlciBwcm92aWRlcyBjb250cm9sIHRvIHRoZSBVU0IgUFdSUkRZIHNpZ25hbCwgd2hpY2gK
Pj4+PiBpcyByb3V0ZWQgdG8gdGhlIFVTQiBQSFkuIFRoaXMgc2lnbmFsIG5lZWRzIHRvIGJlIG1h
bmFnZWQgYmVmb3JlIG9yIGFmdGVyCj4+Pj4gcG93ZXJpbmcgdGhlIFVTQiBQSFkgb2ZmIG9yIG9u
Lgo+Pj4+Cj4+Pj4gT3RoZXIgU1lTQyBzaWduYWxzIGNhbmRpZGF0ZXMgKGFzIGV4cG9zZWQgaW4g
dGhlIHRoZSBoYXJkd2FyZSBtYW51YWwgb2YgdGhlCj4+Pj4KPj4+PiAqIFBDSWU6Cj4+Pj4gLSBB
TExPV19FTlRFUl9MMSBzaWduYWwgY29udHJvbGxlZCB0aHJvdWdoIHRoZSBTWVNfUENJRV9DRkcg
cmVnaXN0ZXIKPj4+PiAtIFBDSUVfUlNUX1JTTV9CIHNpZ25hbCBjb250cm9sbGVkIHRocm91Z2gg
dGhlIFNZU19QQ0lFX1JTVF9SU01fQgo+Pj4+ICAgcmVnaXN0ZXIKPj4+PiAtIE1PREVfUlhURVJN
SU5BVElPTiBzaWduYWwgY29udHJvbGxlZCB0aHJvdWdoIFNZU19QQ0lFX1BIWSByZWdpc3Rlcgo+
Pj4+Cj4+Pj4gKiBTUEk6Cj4+Pj4gLSBTRUxfU1BJX09DVEEgc2lnbmFsIGNvbnRyb2xsZWQgdGhy
b3VnaCBTWVNfSVBDT05UX1NFTF9TUElfT0NUQQo+Pj4+ICAgcmVnaXN0ZXIKPj4+Pgo+Pj4+ICog
STJDL0kzQzoKPj4+PiAtIGFmX2J5cGFzcyBJMkMgc2lnbmFscyBjb250cm9sbGVkIHRocm91Z2gg
U1lTX0kyQ3hfQ0ZHIHJlZ2lzdGVycwo+Pj4+ICAgKHg9MC4uMykKPj4+PiAtIGFmX2J5cGFzcyBJ
M0Mgc2lnbmFsIGNvbnRyb2xsZWQgdGhyb3VnaCBTWVNfSTNDX0NGRyByZWdpc3Rlcgo+Pj4+Cj4+
Pj4gKiBFdGhlcm5ldDoKPj4+PiAtIEZFQ19HSUdBX0VOQUJMRSBFdGhlcm5ldCBzaWduYWxzIGNv
bnRyb2xsZWQgdGhyb3VnaCBTWVNfR0VUSHhfQ0ZHCj4+Pj4gICByZWdpc3RlcnMgKHg9MC4uMSkK
Pj4+Pgo+Pj4+IEFzIGRpZmZlcmVudCBSZW5lc2FzIFJaIFNvQyBzaGFyZXMgbW9zdCBvZiB0aGUg
U1lTQyBmdW5jdGlvbmFsaXRpZXMKPj4+PiBhdmFpbGFibGUgb24gdGhlIFJaL0czUyBTb0MsIHRo
ZSBkcml2ZXIgaWYgZm9ybWVkIG9mIGEgU1lTQyBjb3JlCj4+Pj4gcGFydCBhbmQgYSBTb0Mgc3Bl
Y2lmaWMgcGFydCBhbGxvd2luZyBpbmRpdmlkdWFsIFNZU0MgU29DIHRvIHByb3ZpZGUKPj4+PiBm
dW5jdGlvbmFsaXRpZXMgdG8gdGhlIFNZU0MgY29yZS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6
IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPj4+Cj4+
Pj4gLS0tIC9kZXYvbnVsbAo+Pj4+ICsrKyBiL2RyaXZlcnMvc29jL3JlbmVzYXMvcjlhMDhnMDQ1
LXN5c2MuYwo+Pj4+IEBAIC0wLDAgKzEsMzEgQEAKPj4+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAKPj4+PiArLyoKPj4+PiArICogUlovRzNTIFN5c3RlbSBjb250cm9sbGVy
IGRyaXZlcgo+Pj4+ICsgKgo+Pj4+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMjQgUmVuZXNhcyBFbGVj
dHJvbmljcyBDb3JwLgo+Pj4+ICsgKi8KPj4+PiArCj4+Pj4gKyNpbmNsdWRlIDxsaW51eC9hcnJh
eV9zaXplLmg+Cj4+Pj4gKyNpbmNsdWRlIDxsaW51eC9iaXRzLmg+Cj4+Pj4gKyNpbmNsdWRlIDxs
aW51eC9pbml0Lmg+Cj4+Pj4gKwo+Pj4+ICsjaW5jbHVkZSAicnotc3lzYy5oIgo+Pj4+ICsKPj4+
PiArI2RlZmluZSBTWVNfVVNCX1BXUlJEWSAgICAgICAgIDB4ZDcwCj4+Pj4gKyNkZWZpbmUgU1lT
X1VTQl9QV1JSRFlfUFdSUkRZX04gICAgICAgIEJJVCgwKQo+Pj4+ICsjZGVmaW5lIFNZU19NQVhf
UkVHICAgICAgICAgICAgMHhlMjAKPj4+PiArCj4+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgcnpf
c3lzY19zaWduYWxfaW5pdF9kYXRhIHJ6ZzNzX3N5c2Nfc2lnbmFsc19pbml0X2RhdGFbXSBfX2lu
aXRjb25zdCA9IHsKPj4+Cj4+PiBUaGlzIGlzIG1hcmtlZCBfX2luaXRjb25zdC4uLgo+Pj4KPj4+
PiArICAgICAgIHsKPj4+PiArICAgICAgICAgICAgICAgLm5hbWUgPSAidXNiLXB3cnJkeSIsCj4+
Pj4gKyAgICAgICAgICAgICAgIC5vZmZzZXQgPSBTWVNfVVNCX1BXUlJEWSwKPj4+PiArICAgICAg
ICAgICAgICAgLm1hc2sgPSBTWVNfVVNCX1BXUlJEWV9QV1JSRFlfTiwKPj4+PiArICAgICAgICAg
ICAgICAgLnJlZmNudF9pbmNyX3ZhbCA9IDAKPj4+PiArICAgICAgIH0KPj4+PiArfTsKPj4+PiAr
Cj4+Pj4gK2NvbnN0IHN0cnVjdCByel9zeXNjX2luaXRfZGF0YSByemczc19zeXNjX2luaXRfZGF0
YSA9IHsKPj4+Cj4+PiAuLi4gYnV0IHRoaXMgaXMgbm90IF9faW5pdCwgY2F1c2luZyBhIHNlY3Rp
b24gbWlzbWF0Y2guCj4+Cj4+IERvIHlvdSBrbm93IGlmIHRoZXJlIGlzIGEgd2F5IHRvIGRldGVj
dCB0aGlzPwo+IAo+IFRoZSBrZXJuZWwgc2hvdWxkIHRlbGwgeW91IGR1cmluZyB0aGUgYnVpbGQu
Li4KCkknbGwgbG9vayBjYXJlZnVsbHksIEkgaGF2ZW4ndCBub3RpY2VkIGl0LiBUaGFuayB5b3Uh
Cgo+IAo+Pgo+Pj4KPj4+PiArICAgICAgIC5zaWduYWxzX2luaXRfZGF0YSA9IHJ6ZzNzX3N5c2Nf
c2lnbmFsc19pbml0X2RhdGEsCj4+Pj4gKyAgICAgICAubnVtX3NpZ25hbHMgPSBBUlJBWV9TSVpF
KHJ6ZzNzX3N5c2Nfc2lnbmFsc19pbml0X2RhdGEpLAo+Pj4+ICsgICAgICAgLm1heF9yZWdpc3Rl
cl9vZmZzZXQgPSBTWVNfTUFYX1JFRywKPj4+PiArfTsKPj4+Cj4+Pj4gLS0tIC9kZXYvbnVsbAo+
Pj4+ICsrKyBiL2RyaXZlcnMvc29jL3JlbmVzYXMvcnotc3lzYy5jCj4+Pgo+Pj4+ICsvKioKPj4+
PiArICogc3RydWN0IHJ6X3N5c2MgLSBSWiBTWVNDIHByaXZhdGUgZGF0YSBzdHJ1Y3R1cmUKPj4+
PiArICogQGJhc2U6IFNZU0MgYmFzZSBhZGRyZXNzCj4+Pj4gKyAqIEBkZXY6IFNZU0MgZGV2aWNl
IHBvaW50ZXIKPj4+PiArICogQHNpZ25hbHM6IFNZU0Mgc2lnbmFscwo+Pj4+ICsgKiBAbnVtX3Np
Z25hbHM6IG51bWJlciBvZiBTWVNDIHNpZ25hbHMKPj4+PiArICovCj4+Pj4gK3N0cnVjdCByel9z
eXNjIHsKPj4+PiArICAgICAgIHZvaWQgX19pb21lbSAqYmFzZTsKPj4+PiArICAgICAgIHN0cnVj
dCBkZXZpY2UgKmRldjsKPj4+PiArICAgICAgIHN0cnVjdCByel9zeXNjX3NpZ25hbCAqc2lnbmFs
czsKPj4+PiArICAgICAgIHU4IG51bV9zaWduYWxzOwo+Pj4KPj4+IFlvdSBjb3VsZCBjaGFuZ2Ug
c2lnbmFscyB0byBhIGZsZXhpYmxlIGFycmF5IGF0IHRoZSBlbmQsIHRhZyBpdCB3aXRoCj4+PiBf
X2NvdW50ZWRfYnkobnVtX3NpZ25hbHMpLCBhbmQgYWxsb2NhdGUgc3BhY2UgZm9yIGJvdGggc3Ry
dWN0IHJ6X3N5c2MKPj4+IGFuZCB0aGUgc2lnbmFscyBhcnJheSB1c2luZyBzdHJ1Y3Rfc2l6ZSgp
LCByZWR1Y2luZyB0aGUgbnVtYmVyIG9mCj4+PiBhbGxvY2F0aW9ucy4KPj4KPj4gSSdsbCBsb29r
IGludG8gdGhpcy4KPiAKPj4+PiAtLS0gL2Rldi9udWxsCj4+Pj4gKysrIGIvZHJpdmVycy9zb2Mv
cmVuZXNhcy9yei1zeXNjLmgKPj4+PiBAQCAtMCwwICsxLDUyIEBACj4+Pj4gKy8qIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wICovCj4+Pj4gKy8qCj4+Pj4gKyAqIFJlbmVzYXMgUlog
U3lzdGVtIENvbnRyb2xsZXIKPj4+PiArICoKPj4+PiArICogQ29weXJpZ2h0IChDKSAyMDI0IFJl
bmVzYXMgRWxlY3Ryb25pY3MgQ29ycC4KPj4+PiArICovCj4+Pj4gKwo+Pj4+ICsjaWZuZGVmIF9f
U09DX1JFTkVTQVNfUlpfU1lTQ19IX18KPj4+PiArI2RlZmluZSBfX1NPQ19SRU5FU0FTX1JaX1NZ
U0NfSF9fCj4+Pj4gKwo+Pj4+ICsjaW5jbHVkZSA8bGludXgvcmVmY291bnQuaD4KPj4+PiArI2lu
Y2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4+Pj4gKwo+Pj4+ICsvKioKPj4+PiArICogc3RydWN0IHJ6
X3N5c2Nfc2lnbmFsX2luaXRfZGF0YSAtIFJaIFNZU0Mgc2lnbmFscyBpbml0IGRhdGEKPj4+PiAr
ICogQG5hbWU6IHNpZ25hbCBuYW1lCj4+Pj4gKyAqIEBvZmZzZXQ6IHJlZ2lzdGVyIG9mZnNldCBj
b250cm9saW5nIHRoaXMgc2lnbmFsCj4+Pj4gKyAqIEBtYXNrOiBiaXRtYXNrIGluIHJlZ2lzdGVy
IHNwZWNpZmljIHRvIHRoaXMgc2lnbmFsCj4+Pj4gKyAqIEByZWZjbnRfaW5jcl92YWw6IGluY3Jl
bWVudCByZWZjbnQgd2hlbiBzZXR0aW5nIHRoaXMgdmFsdWUKPj4+PiArICovCj4+Pj4gK3N0cnVj
dCByel9zeXNjX3NpZ25hbF9pbml0X2RhdGEgewo+Pj4+ICsgICAgICAgY29uc3QgY2hhciAqbmFt
ZTsKPj4+PiArICAgICAgIHUzMiBvZmZzZXQ7Cj4+Pj4gKyAgICAgICB1MzIgbWFzazsKPj4+PiAr
ICAgICAgIHUzMiByZWZjbnRfaW5jcl92YWw7Cj4+Pj4gK307Cj4+Pj4gKwo+Pj4+ICsvKioKPj4+
PiArICogc3RydWN0IHJ6X3N5c2Nfc2lnbmFsIC0gUlogU1lTQyBzaWduYWxzCj4+Pj4gKyAqIEBp
bml0X2RhdGE6IHNpZ25hbHMgaW5pdGlhbGl6YXRpb24gZGF0YQo+Pj4+ICsgKiBAcmVmY250OiBy
ZWZlcmVuY2UgY291bnRlcgo+Pj4+ICsgKi8KPj4+PiArc3RydWN0IHJ6X3N5c2Nfc2lnbmFsIHsK
Pj4+PiArICAgICAgIGNvbnN0IHN0cnVjdCByel9zeXNjX3NpZ25hbF9pbml0X2RhdGEgKmluaXRf
ZGF0YTsKPj4+Cj4+PiBDYW4ndCB5b3UganVzdCBlbWJlZCBzdHJ1Y3Qgcnpfc3lzY19zaWduYWxf
aW5pdF9kYXRhPwo+Pgo+PiBNZWFuaW5nIHRvIGhhdmUgZGlyZWN0bHkgdGhlIG1lbWJlcnMgb2Yg
c3RydWN0IHJ6X3N5c2Nfc2lnbmFsX2luaXRfZGF0YQo+PiBoZXJlIG9yIHRvIGRyb3AgdGhlIGNv
bnN0IHF1YWxpZmllciBhbG9uZyB3aXRoIF9faW5pdGNvbnN0IG9uCj4+IHJ6ZzNzX3N5c2Nfc2ln
bmFsc19pbml0X2RhdGFbXSAgYW5kIHJlLXVzZSB0aGUgcGxhdGZvbSBkYXRhIHcvbyBhbGxvY2F0
ZQo+PiBuZXcgbWVtb3J5Pwo+IAo+IEkgbWVhbgo+IAo+ICAgICBzdHJ1Y3Qgcnpfc3lzY19zaWdu
YWwgewo+ICAgICAgICAgICBzdHJ1Y3Qgcnpfc3lzY19zaWduYWxfaW5pdF9kYXRhIGluaXRfZGF0
YTsKPiAgICAgICAgICAgLi4uCj4gICAgIH07Cj4gCj4gQ3VycmVudGx5IHlvdSBhbGxvY2F0ZSBy
el9zeXNjX3NpZ25hbF9pbml0X2RhdGEgc2VwYXJhdGVseS4KPiBXaGVuIGVtYmVkZGVkLCBpdCB3
aWxsIGJlIHBhcnQgb2Ygcnpfc3lzYywgY2ZyLiBhYm92ZS4KCkFoLCB5b3VyIHJpZ2h0LiBJIGlu
aXRpYWxseSBoYWQgdGhpcyBhcyBhIHBvaW50ZXIgYW5kIHJlLXVzZWQgdGhlIGluaXQgZGF0YQoo
cnpnM3Nfc3lzY19zaWduYWxzX2luaXRfZGF0YVtdLCB3L28gaGF2aW5nIF9faW5pdGNvbnN0IHF1
YWxpZmllciBmb3IgaXQpLgpJIGRyb3BwZWQgdGhhdCBhcHByb2FjaCBidXQgbWlzc2VkIHRvIGRy
b3AgdGhlIHBvaW50ZXIgaGVyZS4KClRoYW5rIHlvdSwKQ2xhdWRpdQoKPiAKPj4+IFRoYXQgd2F5
IHlvdSBjb3VsZCBhbGxvY2F0ZSB0aGUgcnpfc3lzY19zaWduYWwgYW5kCj4+PiByel9zeXNjX3Np
Z25hbF9pbml0X2RhdGEgc3RydWN0dXJlcyBpbiBhIHNpbmdsZSBhbGxvY2F0aW9uLgo+IAo+IEdy
e29ldGplLGVldGluZ31zLAo+IAo+ICAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0Cj4gCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
