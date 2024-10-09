Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB32ECED62A
	for <linux-phy@archiver.kernel.org>; Wed,  9 Oct 2024 08:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7r38AStl9D5RJW1Gpms45aNTXCiRAoR6jRFMaDuYuA=; b=P3CHBlBSKoV2gy
	K8uYWRkDdvqjP5wox0dNYgjygNnozb1wv1bENvkGA+72ngt/4LOTPxXFfWX/0zjf5PxVpTBXqRlnL
	XX3fP+Tu4f9fl7p2f5p6nSbGF7CVwaFGEVmWpqgk2xd53P3RONBLTLy+Egz6ertvJB7dFeeFiaDiJ
	qnDoBaEOom/hHv5oGubxYzsrONYrQj5wW5jJdqSeLuG9gVl9iIucwOPLbHA1epuZZiKRE+BIJ0UFP
	hwmLcCTYx5h70JZAFbeEDTtQczLjjsicaHMYEyeYXb4fGtqpJc0h/3ywyqnM2f2IA2LXgoU42r68y
	gxZfAQvAGage3AaV0Jkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syS97-00000008Ttc-0mrR;
	Wed, 09 Oct 2024 08:34:13 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syS6J-00000008SsX-30NQ
	for linux-phy@lists.infradead.org;
	Wed, 09 Oct 2024 08:31:22 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5366fd6fdf1so8908271e87.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Oct 2024 01:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1728462678; x=1729067478; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qaO6OZB9LNJ3CfL5hJwIDOwEl1I05oLk0c+YGhPFN5E=;
        b=VwMKNg/27QpeAyKI9fgak9FmuQq/iiO57FcEY13YbqqMbMMTbHVpCbxPUM6WbOGJKS
         qyGiySBgoaoyeduae7kcmWcOBB838dIOrlHDvaQAL3SP47Xvg7FtnZSSEI/f+rkzQCP0
         YELbsWOkDPYMytxO3OAXkwI3bj4xxXjF26BD2oiiU17taaBi4M3H4pZQ7f1Edv4wJHwh
         z0XLu46LSnRCyyaRJksIoeku/gBfyuQHRmskXZ3m1iZebbVFT5uDtBSpAb9sg/OGUZqN
         scExRU+UEfIPn9GfbFsu8mpQEEtG6P+Ii0jbPXykHXkO1osUSK96nd5NspWQ4lMuVu/2
         dehw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728462678; x=1729067478;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qaO6OZB9LNJ3CfL5hJwIDOwEl1I05oLk0c+YGhPFN5E=;
        b=YZrMyHdrhVhyRQOtFAie2A2UQ6/hzjsMuydW/xAk6M1KA8GGi9ecb1I95OyxZT4Zta
         HGlmRZEE49ZcxV1Oz6lEOZHeZz1TR/2eXQ9zihb5toWqjHCNx9jWDMvxry9D6l6a5aPz
         nUzKrPX2LAIbZKsOZE3M0gIj7Indc90fewclSyozg/Hp6hk8Bf6bTCK3m9TstpI02bT5
         IbmvwkRJbdFUnVeUfsU5uzmy4/nL159PfzYg3MmtxACQuXNjec6FPxj3KxkAQjmyjRk+
         vtj77rj2poGhefnGl6h56WiwxGwgEiIw2ba/8FrskEKGwzfBZDU/6+CbtHUeKdjBjOeI
         1HsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpBYN6WikiKEV+8VtFaO9YM3+tpqRW0zqS7zcb963EKbv5y8Uw5fiQgTuBHg2kQN7iiM9AC7o3H+U=@lists.infradead.org
X-Gm-Message-State: AOJu0YzTnnCHgpxUlEpnrRSiRtB9arXtCWIbYgAWhrjQxPevf+aVpauC
	lR0B/GnRL3vSNWgxaiOl32pCHnzJqm/RRXWmGmrzNIbm2zKTFPDJyEYHl+tR/Y4=
X-Google-Smtp-Source: AGHT+IF3Q2wQGloa2V2XDPn7TmJqK0nuOUzhIW/QGvZ0irAUv57avGXp68LqGJgfaKW8c/fHZTF7TA==
X-Received: by 2002:a05:6512:68f:b0:539:9f52:9e6 with SMTP id 2adb3069b0e04-539c49728d1mr835853e87.54.1728462677850;
        Wed, 09 Oct 2024 01:31:17 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a992e664fb9sm627251866b.88.2024.10.09.01.31.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2024 01:31:17 -0700 (PDT)
Message-ID: <229582da-270d-4188-a202-50e41493c7cb@tuxon.dev>
Date: Wed, 9 Oct 2024 11:31:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/16] phy: renesas: rcar-gen3-usb2: Add support to
 initialize the bus
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com,
 sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, ulf.hansson@linaro.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-11-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdX1b5ZZaO+G1h=E8uv+WV7oS8xg8Hx=_+uORO7Qu33eNw@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdX1b5ZZaO+G1h=E8uv+WV7oS8xg8Hx=_+uORO7Qu33eNw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_013119_800431_EA5D2BCE 
X-CRM114-Status: GOOD (  24.38  )
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

SGksIEdlZXJ0LAoKT24gMDguMTAuMjAyNCAxNzo1NywgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3Rl
Ogo+IEhpIENsYXVkaXUsCj4gCj4gT24gVGh1LCBBdWcgMjIsIDIwMjQgYXQgNToyOOKAr1BNIENs
YXVkaXUgPGNsYXVkaXUuYmV6bmVhQHR1eG9uLmRldj4gd3JvdGU6Cj4+Cj4+IEZyb206IENsYXVk
aXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPj4KPj4gVGhlIFJl
bmVzYXMgUlovRzNTIG5lZWQgdG8gaW5pdGlhbGl6ZSB0aGUgVVNCIEJVUyBiZWZvcmUgdHJhbnNm
ZXJyaW5nIGRhdGEKPj4gZHVlIHRvIGhhcmR3YXJlIGxpbWl0YXRpb24uIEFzIHRoZSByZWdpc3Rl
ciB0aGF0IG5lZWQgdG8gYmUgdG91Y2hlZCBmb3IKPj4gdGhpcyBpcyBpbiB0aGUgYWRkcmVzcyBz
cGFjZSBvZiB0aGUgVVNCIFBIWSwgYW5kIHRoZSBVQlMgUEhZIG5lZWQgdG8gYmUKPj4gaW5pdGlh
bGl6ZWQgYmVmb3JlIGFueSBvdGhlciBVU0IgZHJpdmVycyBoYW5kbGluZyBkYXRhIHRyYW5zZmVy
LCBhZGQKPj4gc3VwcG9ydCB0byBpbml0aWFsaXplIHRoZSBVU0IgQlVTLgo+Pgo+PiBBcyB0aGUg
VVNCIFBIWSBpcyBwcm9iZWQgYmVmb3JlIGFueSBvdGhlciBVU0IgZHJpdmVycyB0aGF0IGVuYWJs
ZXMKPj4gY2xvY2tzIGFuZCBkZS1hc3NlcnQgdGhlIHJlc2V0IHNpZ25hbHMgYW5kIHRoZSBCVVMg
aW5pdGlhbGl6YXRpb24gaXMgZG9uZQo+PiBpbiB0aGUgcHJvYmUgcGhhc2UsIHdlIG5lZWQgdG8g
YWRkIGNvZGUgdG8gZGUtYXNzZXJ0IHJlc2V0IHNpZ25hbCBhbmQKPj4gcnVudGltZSByZXN1bWUg
dGhlIGRldmljZSAod2hpY2ggZW5hYmxlcyBpdHMgY2xvY2tzKSBiZWZvcmUgYWNjZXNzaW5nCj4+
IHRoZSByZWdpc3RlcnMuCj4+Cj4+IEFzIHRoZSByZXNldCBzaWduYWxzIGFyZSBub3QgcmVxdWly
ZWQgYnkgdGhlIFVTQiBQSFkgZHJpdmVyIGZvciB0aGUgb3RoZXIKPj4gVVNCIFBIWSBoYXJkd2Fy
ZSB2YXJpYW50cywgdGhlIHJlc2V0IHNpZ25hbHMgYW5kIHJ1bnRpbWUgUE0gd2FzIGhhbmRsZWQK
Pj4gb25seSBpbiB0aGUgZnVuY3Rpb24gdGhhdCBpbml0aWFsaXplIHRoZSBVU0IgQlVTLgo+Pgo+
PiBUaGUgUEhZIGluaXRpYWxpemF0aW9uIHdhcyBkb25lIHJpZ2h0IGFmdGVyIHJ1bnRpbWUgUE0g
ZW5hYmxlIHRvIGhhdmUKPj4gYWxsIGluIHBsYWNlIHdoZW4gdGhlIFBIWXMgYXJlIHJlZ2lzdGVy
ZWQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51
akBicC5yZW5lc2FzLmNvbT4KPiAKPiBUaGFua3MgZm9yIHlvdXIgcGF0Y2gsIHdoaWNoIGlzIG5v
dyBjb21taXQgNGVhZTE2Mzc1MzU3YTJhNyAoInBoeToKPiByZW5lc2FzOiByY2FyLWdlbjMtdXNi
MjogQWRkIHN1cHBvcnQgdG8gaW5pdGlhbGl6ZSB0aGUgYnVzIikgaW4KPiB2Ni4xMi1yYzEuCj4g
Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPj4gKysr
IGIvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYwo+PiBAQCAtNjUwLDYg
KzY1OCwzNSBAQCBzdGF0aWMgZW51bSB1c2JfZHJfbW9kZSByY2FyX2dlbjNfZ2V0X2RyX21vZGUo
c3RydWN0IGRldmljZV9ub2RlICpucCkKPj4gICAgICAgICByZXR1cm4gY2FuZGlkYXRlOwo+PiAg
fQo+Pgo+PiArc3RhdGljIGludCByY2FyX2dlbjNfcGh5X3VzYjJfaW5pdF9idXMoc3RydWN0IHJj
YXJfZ2VuM19jaGFuICpjaGFubmVsKQo+PiArewo+PiArICAgICAgIHN0cnVjdCBkZXZpY2UgKmRl
diA9IGNoYW5uZWwtPmRldjsKPj4gKyAgICAgICBpbnQgcmV0Owo+PiArICAgICAgIHUzMiB2YWw7
Cj4+ICsKPj4gKyAgICAgICBjaGFubmVsLT5yc3RjID0gZGV2bV9yZXNldF9jb250cm9sX2FycmF5
X2dldF9zaGFyZWQoZGV2KTsKPj4gKyAgICAgICBpZiAoSVNfRVJSKGNoYW5uZWwtPnJzdGMpKQo+
PiArICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoY2hhbm5lbC0+cnN0Yyk7Cj4+ICsKPj4g
KyAgICAgICByZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGRldik7Cj4+ICsgICAgICAg
aWYgKHJldCkKPj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4+ICsKPj4gKyAgICAgICBy
ZXQgPSByZXNldF9jb250cm9sX2RlYXNzZXJ0KGNoYW5uZWwtPnJzdGMpOwo+PiArICAgICAgIGlm
IChyZXQpCj4+ICsgICAgICAgICAgICAgICBnb3RvIHJwbV9wdXQ7Cj4+ICsKPj4gKyAgICAgICB2
YWwgPSByZWFkbChjaGFubmVsLT5iYXNlICsgVVNCMl9BSEJfQlVTX0NUUik7Cj4+ICsgICAgICAg
dmFsICY9IH5VU0IyX0FIQl9CVVNfQ1RSX01CTF9NQVNLOwo+PiArICAgICAgIHZhbCB8PSBVU0Iy
X0FIQl9CVVNfQ1RSX01CTF9JTkNSNDsKPj4gKyAgICAgICB3cml0ZWwodmFsLCBjaGFubmVsLT5i
YXNlICsgVVNCMl9BSEJfQlVTX0NUUik7Cj4+ICsKPj4gK3JwbV9wdXQ6Cj4+ICsgICAgICAgcG1f
cnVudGltZV9wdXQoZGV2KTsKPj4gKwo+PiArICAgICAgIHJldHVybiByZXQ7Cj4+ICt9Cj4+ICsK
Pj4gIHN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2IyX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4+ICB7Cj4+ICAgICAgICAgY29uc3Qgc3RydWN0IHJjYXJfZ2VuM19waHlf
ZHJ2X2RhdGEgKnBoeV9kYXRhOwo+PiBAQCAtNzAzLDYgKzc0MCwxNSBAQCBzdGF0aWMgaW50IHJj
YXJfZ2VuM19waHlfdXNiMl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiAg
ICAgICAgICAgICAgICAgZ290byBlcnJvcjsKPj4gICAgICAgICB9Cj4+Cj4+ICsgICAgICAgcGxh
dGZvcm1fc2V0X2RydmRhdGEocGRldiwgY2hhbm5lbCk7Cj4+ICsgICAgICAgY2hhbm5lbC0+ZGV2
ID0gZGV2Owo+IAo+IFVucmVsYXRlZCBjaGFuZ2U/CgpUaGF0J3MgYSBsZWZ0b3ZlciBmcm9tIHRo
ZSByZW1vdmFsIG9mIHRoZSBzdXNwZW5kIHRvIFJBTSBzdXBwb3J0IGZyb20gdGhlCmluaXRpYWwg
d29yayAoaW50ZXJuYWwgb25seSkgb2YgdGhpcyBzZXJpZXMuIEknbGwga2VlcCBpdCBpbiBtaWQg
dG8gcmVtb3ZlCml0IG9uIHRoZSBmb2xsb3dpbmcgcGF0Y2hlcywgaWYgbmVlZGVkLgoKPiAKPj4g
Kwo+PiArICAgICAgIGlmIChwaHlfZGF0YS0+aW5pdF9idXMpIHsKPj4gKyAgICAgICAgICAgICAg
IHJldCA9IHJjYXJfZ2VuM19waHlfdXNiMl9pbml0X2J1cyhjaGFubmVsKTsKPj4gKyAgICAgICAg
ICAgICAgIGlmIChyZXQpCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyb3I7Cj4+
ICsgICAgICAgfQo+PiArCj4+ICAgICAgICAgY2hhbm5lbC0+c29jX25vX2FkcF9jdHJsID0gcGh5
X2RhdGEtPm5vX2FkcF9jdHJsOwo+PiAgICAgICAgIGlmIChwaHlfZGF0YS0+bm9fYWRwX2N0cmwp
Cj4+ICAgICAgICAgICAgICAgICBjaGFubmVsLT5vYmludF9lbmFibGVfYml0cyA9IFVTQjJfT0JJ
TlRfSURDSEdfRU47Cj4+IEBAIC03MzMsOSArNzc5LDYgQEAgc3RhdGljIGludCByY2FyX2dlbjNf
cGh5X3VzYjJfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gICAgICAgICAg
ICAgICAgIGNoYW5uZWwtPnZidXMgPSBOVUxMOwo+PiAgICAgICAgIH0KPj4KPj4gLSAgICAgICBw
bGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBjaGFubmVsKTsKPj4gLSAgICAgICBjaGFubmVsLT5k
ZXYgPSBkZXY7Cj4+IC0KPj4gICAgICAgICBwcm92aWRlciA9IGRldm1fb2ZfcGh5X3Byb3ZpZGVy
X3JlZ2lzdGVyKGRldiwgcmNhcl9nZW4zX3BoeV91c2IyX3hsYXRlKTsKPj4gICAgICAgICBpZiAo
SVNfRVJSKHByb3ZpZGVyKSkgewo+PiAgICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJGYWls
ZWQgdG8gcmVnaXN0ZXIgUEhZIHByb3ZpZGVyXG4iKTsKPiAKPiBUaGUgcmVzZXQgaXMgbm90IGFz
c2VydGVkIGluIHRoZSBlcnJvciBwYXRoLCBvbmx5IGluIC5yZW1vdmUoKS4KPiAKPiBPaCwgQ2hy
aXN0b3BoZSBhbHJlYWR5IHNlbnQgYSBmaXggZm9yIHRoYXQuLi4KPiAiW1BBVENIIHYzXSBwaHk6
IHJlbmVzYXM6IHJjYXItZ2VuMy11c2IyOiBGaXggYW4gZXJyb3IgaGFuZGxpbmcgcGF0aAo+IGlu
IHJjYXJfZ2VuM19waHlfdXNiMl9wcm9iZSgpIgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC8yOTBiMjU4MjdlM2YwNzQyODA4OTQwNzE5NDU1ZmYwYzVjYjlkMDFkLjE3MjYzMjk5MjUuZ2l0
LmNocmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyCgpZZXMsIEkgbWVzc2VkIHRoaXMgd2hlbiBy
ZW1vdmluZyB0aGUgc3VzcGVuZCB0byBSQU0gZnJvbSBteSBpbml0aWFsIHdvcmsgb24KdGhpcyAo
aW50ZXJuYWwgb25seSkuIFRoYW5rcyBDaHJpc3RvcGhlIGZvciBoYW5kbGluZyBpdC4KClRoYW5r
IHlvdSwKQ2xhdWRpdSBCZXpuZWEKCj4gCj4+IEBAIC03NjIsNiArODA1LDcgQEAgc3RhdGljIHZv
aWQgcmNhcl9nZW4zX3BoeV91c2IyX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+PiAgICAgICAgIGlmIChjaGFubmVsLT5pc19vdGdfY2hhbm5lbCkKPj4gICAgICAgICAgICAg
ICAgIGRldmljZV9yZW1vdmVfZmlsZSgmcGRldi0+ZGV2LCAmZGV2X2F0dHJfcm9sZSk7Cj4+Cj4+
ICsgICAgICAgcmVzZXRfY29udHJvbF9hc3NlcnQoY2hhbm5lbC0+cnN0Yyk7Cj4+ICAgICAgICAg
cG1fcnVudGltZV9kaXNhYmxlKCZwZGV2LT5kZXYpOwo+PiAgfTsKPiAKPiBUaGUgcmVzdCBMR1RN
Lgo+IAo+IEdye29ldGplLGVldGluZ31zLAo+IAo+ICAgICAgICAgICAgICAgICAgICAgICAgIEdl
ZXJ0Cj4gCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
