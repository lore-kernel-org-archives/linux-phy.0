Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F04CD6EBF0
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 09:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdGq1wp+A5qx9Snno2vBJuexGP0ilx8H3GAeE/+4Lt4=; b=chgZOnxcdhAItt
	6zr3hjbOJBPj5EV3CGGPWAGsEVw1UctXE6WYLaQMQUA22I2kIUAOZ+tTtVso/JlBtbzoZBSMdRV0w
	N6aCQeapBljkuFZxjj1JH3vV5onZhaNX5zz8zflJePUexQRk0IxjSzBjtFQRn/CZ+wcEnzv9KkjJV
	KTIcH7yhjDs/gMS76fe3mN+hGeFOwEDt991/kgx2nvkhlfocGe5Y1mbqmIDpFPPS+0V8eXXtDL45Y
	8KbxNXg1CBXmbZ8lpJ/GHhKgEsq+vxHqkAex7Hq4uaOBiocJIcNqX1G2CgN1uFrbTHTYbk8INjBBl
	HRyWAhs4Xfdmboy2xRzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGwu8-0000000HGia-2IQg;
	Fri, 29 Nov 2024 09:03:12 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGwu6-0000000HGhU-0ugq
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 09:03:11 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-434a9f2da82so14504415e9.2
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 01:03:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732870988; x=1733475788; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+rY0dLqM7fvb5GcnSDF7szSVTR/hhqMi8Lj2NDtPS10=;
        b=NAELHciW7JCUeM3rnIg52m/Fc1oEyU2NFK7czyjdMNTTznXYe0U00wQWDeqUPJKc38
         B3Ahfk20vbWseS+ktKwy36DV4qgNwnvhsN3nObKrMLr5mLMHSDfLdiS6WPsDueirSpgp
         1HCfnZB/xcUa0S7gKVYFR3S4bXLqRVMoJQJ4HG+b6nIcR2sdwq8cgyjYTjzECmQ+Sr0E
         JEdcbgAKdVy0f+zkrBBZ2y4i3zL5tt8r4zsNpJTmfB9m+gsRtxNdh1KcgJ+WDACuGdfw
         6bwKVerVMcFkPvpQOWMqLTHgQfenzJZPBN9s2Ms38sSYk4D8wOyBCLjqaj+79xmxWXcG
         QTag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732870988; x=1733475788;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+rY0dLqM7fvb5GcnSDF7szSVTR/hhqMi8Lj2NDtPS10=;
        b=Xx4inmlobgkB8Y/PIfWEkp8YIOcc1KInHTTu/MTEN5t6D+YuJvSDjrv/CWggGbB02I
         BiJ8kILrRZBAs4QYlK+0MQ/50uVug0756gPIDxTR3iUwWymqwNuyWN2DcXeCwWDH7LFJ
         mqojGXfpA4IDbqmvypzNudDFdG2k+495cMcT92hUtcSzz86kSlF4CxTt7y6sqoM7+7mv
         Vj1g8qowQC01lqkjQGPPudoncgXfF5nUNoeHWHI9Apdxozh+hFpUJrl3y1wyL4jEOajM
         VpDpKggHhHZXq/4OegAqNhhoU8RI2e8apO1APUsKjQObzNWsCjzZEG6K4NxaOsEVU2oq
         VQTg==
X-Forwarded-Encrypted: i=1; AJvYcCXh6VIu8HxtQ6dMluudQvw2SZsgyVgaX7OlOVPAA21uMXeAtd8aoSa+TJEO+Wkyvi4d0lh5LwfqsYE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8unQH/M6u3+9ew4OWqt/O7928l5rnXi7KrUWQOCWaoqaMIqrR
	Y3deFk2sYFzEFDYiQN+WBAIzvkBORt+yZszLUz/5cEbkilKtm20TGT79Lt+LhBM=
X-Gm-Gg: ASbGncu+aDozuF9wmAkQSS+zTFDFx5yi8K9QRM+BBAtYaAfSYKUNDNCVF8b5AIxTY8l
	T5gWY7228JzlJ/WswB2VrZYjVWtwsQer/a1vrbdzjm8Rw4BrLRyKRCL3mZPVIKl0Ii+5xwJhzgZ
	DonQGwZUNBtRCg+nHqIlRbGRyGkRKoNP/lMREOKrx8Oo2fQ4haC+DiMqiuNEc3Ko2W5e0KtQb4b
	78aj++4mqaUYCQL1b7UvybF0bQBbKvY5PbliE7slAlqeYUhwigCCRrTtA==
X-Google-Smtp-Source: AGHT+IFxOAosMgPH1DwOz8xTdL/bhhh3JSxfGeV4SlShXIcXyV3NM5UKte4f3H7kmldw1sZye0/6SA==
X-Received: by 2002:a05:600c:4f0e:b0:434:9cf0:d23d with SMTP id 5b1f17b1804b1-434a9deca10mr83604355e9.25.1732870988339;
        Fri, 29 Nov 2024 01:03:08 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa7d25d1sm78181295e9.31.2024.11.29.01.03.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 01:03:07 -0800 (PST)
Message-ID: <61e2fd80-d47f-4116-8dfe-fc27a58c8241@tuxon.dev>
Date: Fri, 29 Nov 2024 11:03:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/15] phy: renesas: rcar-gen3-usb2: Add support for
 PWRRDY
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, gregkh@linuxfoundation.org,
 yoshihiro.shimoda.uh@renesas.com, christophe.jaillet@wanadoo.fr,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-11-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdX9ZB5ec4g+Gs37U+oH4XPDv8DLoA63oxh4o8gj-N+sNw@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdX9ZB5ec4g+Gs37U+oH4XPDv8DLoA63oxh4o8gj-N+sNw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_010310_254087_B49B0D6A 
X-CRM114-Status: GOOD (  20.61  )
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

SGksIEdlZXJ0LAoKT24gMjguMTEuMjAyNCAxNzowNywgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3Rl
Ogo+IEhpIENsYXVkaXUsCj4gCj4gT24gVHVlLCBOb3YgMjYsIDIwMjQgYXQgMTA6MjHigK9BTSBD
bGF1ZGl1IDxjbGF1ZGl1LmJlem5lYUB0dXhvbi5kZXY+IHdyb3RlOgo+PiBGcm9tOiBDbGF1ZGl1
IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+Cj4+Cj4+IE9uIHRoZSBS
ZW5lc2FzIFJaL0czUyBTb0MsIHRoZSBVU0IgUEhZIGhhcyBhbiBpbnB1dCBzaWduYWwgY2FsbGVk
IFBXUlJEWS4KPj4gVGhpcyBzaWduYWwgaXMgbWFuYWdlZCBieSB0aGUgc3lzdGVtIGNvbnRyb2xs
ZXIgYW5kIG11c3QgYmUgZGUtYXNzZXJ0ZWQKPj4gYWZ0ZXIgcG93ZXJpbmcgb24gdGhlIGFyZWEg
d2hlcmUgVVNCIFBIWSByZXNpZGVzIGFuZCBhc3NlcnRlZCBiZWZvcmUKPj4gcG93ZXJpbmcgaXQg
b2ZmLgo+Pgo+PiBUaGUgY29ubmVjdGlvbiBiL3cgdGhlIHN5c3RlbSBjb250cm9sbGVyIGFuZCB0
aGUgVVNCIFBIWSBpcyBpbXBsZW1lbnRlZAo+PiB0aHJvdWdoIHRoZSByZW5lc2FzLHN5c2Mtc2ln
bmFsIGRldmljZSB0cmVlIHByb3BlcnR5LiBUaGlzIHByb3BlcnR5Cj4+IHNwZWNpZmllcyB0aGUg
cmVnaXN0ZXIgb2Zmc2V0IGFuZCB0aGUgYml0bWFzayByZXF1aXJlZCB0byBjb250cm9sIHRoZQo+
PiBzaWduYWwuIFRoZSBzeXN0ZW0gY29udHJvbGxlciBleHBvcnRzIHRoZSBzeXNjb24gcmVnbWFw
LCBhbmQgdGhlIHJlYWQvd3JpdGUKPj4gYWNjZXNzIHRvIHRoZSBtZW1vcnkgYXJlYSBvZiB0aGUg
UFdSUkRZIHNpZ25hbCBpcyByZWZlcmVuY2UtY291bnRlZCwgYXMgdGhlCj4+IHNhbWUgc3lzdGVt
IGNvbnRyb2xsZXIgc2lnbmFsIGlzIGNvbm5lY3RlZCB0byBib3RoIFJaL0czUyBVU0IgUEhZcy4K
Pj4KPj4gQWRkIHN1cHBvcnQgZm9yIHRoZSBQV1JSRFkgc2lnbmFsIGNvbnRyb2wuCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2Fz
LmNvbT4KPiAKPiBUaGFua3MgZm9yIHlvdXIgcGF0Y2ghCj4gCj4+IC0tLSBhL2RyaXZlcnMvcGh5
L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPj4gKysrIGIvZHJpdmVycy9waHkvcmVuZXNh
cy9waHktcmNhci1nZW4zLXVzYjIuYwo+PiBAQCAtNzA3LDYgKzcxOCw1NSBAQCBzdGF0aWMgaW50
IHJjYXJfZ2VuM19waHlfdXNiMl9pbml0X2J1cyhzdHJ1Y3QgcmNhcl9nZW4zX2NoYW4gKmNoYW5u
ZWwpCj4+ICAgICAgICAgcmV0dXJuIHJldDsKPj4gIH0KPj4KPj4gK3N0YXRpYyB2b2lkIHJjYXJf
Z2VuM19waHlfdXNiMl9zZXRfcHdycmR5KHN0cnVjdCByY2FyX2dlbjNfY2hhbiAqY2hhbm5lbCwg
Ym9vbCBwb3dlcl9vbikKPj4gK3sKPj4gKyAgICAgICBzdHJ1Y3QgcmNhcl9nZW4zX3B3cnJkeSAq
cHdycmR5ID0gY2hhbm5lbC0+cHdycmR5Owo+PiArCj4+ICsgICAgICAgLyogTi9BIG9uIHRoaXMg
cGxhdGZvcm0uICovCj4+ICsgICAgICAgaWYgKCFwd3JyZHkpCj4+ICsgICAgICAgICAgICAgICBy
ZXR1cm47Cj4gCj4gVGhpcyBjYW5ub3QgaGFwcGVuPwoKWW91J3JlIHJpZ2h0LCBjdXJyZW50bHkg
aXQgY2FuJ3QgaGFwcGVuLgoKSXQgbWlnaHQgYmUgdXNlZnVsIGZvciB0aGUgc3VzcGVuZCB0byBS
QU0gc3VwcG9ydCAodGhhdCB3aWxsIGJlIHBvc3RlZAphZnRlciBpbml0aWFsIHN1cHBvcnQgd2ls
bCBiZSBpbnRlZ3JhdGVkKSB0byBoYXZlIHRoaXMgZnVuY3Rpb24gY2FsbGVkCnVuY29uZGl0aW9u
YWxseSBvbiBzdXNwZW5kL3Jlc3VtZSBBUElzLgoKSSBjYW4gZHJvcCBpdCBpZiBpdCdzIHByZWZl
cnJlZC4KClRoYW5rIHlvdSBmb3IgIHlvdXIgcmV2aWV3LApDbGF1ZGl1Cgo+IAo+PiArCj4+ICsg
ICAgICAgcmVnbWFwX3VwZGF0ZV9iaXRzKHB3cnJkeS0+cmVnbWFwLCBwd3JyZHktPm9mZnNldCwg
cHdycmR5LT5tYXNrLCAhcG93ZXJfb24pOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgdm9pZCByY2Fy
X2dlbjNfcGh5X3VzYjJfcHdycmR5X29mZih2b2lkICpkYXRhKQo+PiArewo+PiArICAgICAgIHJj
YXJfZ2VuM19waHlfdXNiMl9zZXRfcHdycmR5KGRhdGEsIGZhbHNlKTsKPj4gK30KPj4gKwo+PiAr
c3RhdGljIGludCByY2FyX2dlbjNfcGh5X3VzYjJfaW5pdF9wd3JyZHkoc3RydWN0IHJjYXJfZ2Vu
M19jaGFuICpjaGFubmVsKQo+PiArewo+PiArICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9IGNo
YW5uZWwtPmRldjsKPj4gKyAgICAgICBzdHJ1Y3QgcmNhcl9nZW4zX3B3cnJkeSAqcHdycmR5Owo+
PiArICAgICAgIHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgYXJnczsKPj4gKyAgICAgICBpbnQgcmV0
Owo+PiArCj4+ICsgICAgICAgcHdycmR5ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpwd3Jy
ZHkpLCBHRlBfS0VSTkVMKTsKPj4gKyAgICAgICBpZiAoIXB3cnJkeSkKPj4gKyAgICAgICAgICAg
ICAgIHJldHVybiAtRU5PTUVNOwo+PiArCj4+ICsgICAgICAgcmV0ID0gb2ZfcGFyc2VfcGhhbmRs
ZV93aXRoX2FyZ3MoZGV2LT5vZl9ub2RlLCAicmVuZXNhcyxzeXNjLXNpZ25hbCIsCj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIiNyZW5lc2FzLHN5c2Mtc2lnbmFs
LWNlbGxzIiwgMCwgJmFyZ3MpOwo+PiArICAgICAgIGlmIChyZXQpCj4+ICsgICAgICAgICAgICAg
ICByZXR1cm4gcmV0Owo+PiArCj4+ICsgICAgICAgcHdycmR5LT5yZWdtYXAgPSBzeXNjb25fbm9k
ZV90b19yZWdtYXAoYXJncy5ucCk7Cj4+ICsgICAgICAgcHdycmR5LT5vZmZzZXQgPSBhcmdzLmFy
Z3NbMF07Cj4+ICsgICAgICAgcHdycmR5LT5tYXNrID0gYXJncy5hcmdzWzFdOwo+PiArCj4+ICsg
ICAgICAgb2Zfbm9kZV9wdXQoYXJncy5ucCk7Cj4+ICsKPj4gKyAgICAgICBpZiAoSVNfRVJSKHB3
cnJkeS0+cmVnbWFwKSkKPj4gKyAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKHB3cnJkeS0+
cmVnbWFwKTsKPj4gKwo+PiArICAgICAgIGNoYW5uZWwtPnB3cnJkeSA9IHB3cnJkeTsKPj4gKwo+
PiArICAgICAgIC8qIFBvd2VyIGl0IE9OLiAqLwo+PiArICAgICAgIHJjYXJfZ2VuM19waHlfdXNi
Ml9zZXRfcHdycmR5KGNoYW5uZWwsIHRydWUpOwo+PiArCj4+ICsgICAgICAgcmV0dXJuIGRldm1f
YWRkX2FjdGlvbl9vcl9yZXNldChkZXYsIHJjYXJfZ2VuM19waHlfdXNiMl9wd3JyZHlfb2ZmLCBj
aGFubmVsKTsKPj4gK30KPiAKPiBHcntvZXRqZSxlZXRpbmd9cywKPiAKPiAgICAgICAgICAgICAg
ICAgICAgICAgICBHZWVydAo+IAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
