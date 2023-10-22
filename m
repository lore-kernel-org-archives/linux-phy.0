Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA0A7C00A8F
	for <linux-phy@archiver.kernel.org>; Sun, 22 Oct 2023 16:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QM5A7M1Ye1VCZaBPYexxUdkQmvPM03sQCgb+upSBLg=; b=mpyZ2zuWei6Ojd
	eoPtguOgEdBJbShxA1cFnKlj/WP8UOqsD30Gz9rWvwn5x+KDEvWShBy56gvTOpRADNevQtzB/wCcp
	P1QnLDsWjOHs43BXW0PFjV3+yHExHSfx0F8A0HxkV/Bm8CjWdW+mn8QbpytjtjTKD/JqCGs8iErh6
	Fw6GOgUFX+a0x7J4J3d4UIwGeowJFm3hOkmRn7PfVedhI2yLzScwtdApDTsgnGhCI6aJo9XeGmZ3c
	CfsACN1Gh9R4CTwsTNIJv7I5eVHbMwAZ82N9yfBgpri03EeA1r5NHW5ivgzMtE0SoCyys/CVEka2u
	OzpsaUQjFt5BSkN56ZJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qubGr-005grE-1w;
	Sun, 22 Oct 2023 16:25:45 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qubGo-005gqC-2n
	for linux-phy@lists.infradead.org;
	Sun, 22 Oct 2023 16:25:44 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-5842a7fdc61so1100422eaf.3
        for <linux-phy@lists.infradead.org>; Sun, 22 Oct 2023 09:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697991939; x=1698596739; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qDM/PkLHiTHspRfCYzT0Sz4PDLknRYMSlH9qkbTwPMs=;
        b=OZQfjjOUFZ5/Ma8prPZSZwX+lsuxkXjs2E7TYMp+mNcdyXEITX3dNShHFgI78C48Wc
         JTdjSQRSw5iAFwA6rAm5SJxnLN/SrY9Aw/+qQ2EshmW/yS+2waG4cVIwVuDuBqHRyi4+
         NCW7CRhrmmwzW0o/2Aee+u/JfwH9y09HkPAzM3rJSMgkwsJdNcgxd0i+mK9xo0gLxsrI
         FEhUmtVFCUpRG4MxvOKqpM+dvvyDW79XeQbgPvVtjFkb9ILTetP2NVw/u/bt0gYVGP8x
         NrptuICKiCnZSaZLBnvTIMjvNmYxt4ghUpOOW3GYNSeK7+pz9V+s0gctp3FP9C28iGtI
         snkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697991939; x=1698596739;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qDM/PkLHiTHspRfCYzT0Sz4PDLknRYMSlH9qkbTwPMs=;
        b=e7lapVcK4orsmUNDy4fNGc4RU95GAIIPQI0Yw1s1IMsYjwIUb5cnl/p08MG4wxbxT9
         5v5vUj5c1IkhkrWNKHIoRee8RLSFqd2cxc+4T7MxdYevTXHOFz6dPlUOONMs7NDuIXe1
         R/+WehGrppM6AK5T4ioRgIIQ4H7w+No8x1QffEm0q6MlG8UxZrg4sb3bZIA2y0/3Zt53
         SWANsG31hfJ9NSRfmZ7e4S8XCXHmRM07rHaeiU+yFSg8vpLjafUk5HS/O1TGSKNQ7JvI
         Et2tey32NFcDa8ugx85/AQcR896Jp0J0bo/+PJz0AukfSkdkXxAC/J5I/5q4Je9JDumM
         IoFA==
X-Gm-Message-State: AOJu0YxewrMuwgA6zrnCJmuyP48rZx78PS3ezsoEPBUCR7wAJfpKIoJU
	1Ai+0k0pSy1uVZ6St3LErrjjFkOzxvhC3o1vu78=
X-Google-Smtp-Source: AGHT+IEzEc4tJYjQD6Wqv+zFp3GmsdCpRj5CGJBEp717GVb2ExIta0jJznvctEklTd/pmFETnJn6+fqJXiEEL3yfb+E=
X-Received: by 2002:a05:6870:4c05:b0:1ea:2a:dc59 with SMTP id
 pk5-20020a0568704c0500b001ea002adc59mr9316873oab.51.1697991938916; Sun, 22
 Oct 2023 09:25:38 -0700 (PDT)
MIME-Version: 1.0
References: <20231022131252.801090-1-sergio.paracuellos@gmail.com> <0e6a3e08-4f66-4bc1-a8a0-a7bb40472136@linaro.org>
In-Reply-To: <0e6a3e08-4f66-4bc1-a8a0-a7bb40472136@linaro.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sun, 22 Oct 2023 18:25:28 +0200
Message-ID: <CAMhs-H8ZFCYU+wJ_k6AMr+43Skzhp4xDD8_xyQPusoGGm6C2VA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: phy: ralink-usb-phy: convert to dtschema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231022_092542_909978_94E98CC0 
X-CRM114-Status: GOOD (  21.29  )
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

SGkgS3J5c3p0b2YsCgpPbiBTdW4sIE9jdCAyMiwgMjAyMyBhdCA1OjU34oCvUE0gS3J6eXN6dG9m
IEtvemxvd3NraQo8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9u
IDIyLzEwLzIwMjMgMTU6MTIsIFNlcmdpbyBQYXJhY3VlbGxvcyB3cm90ZToKPiA+IENvbnZlcnQg
dGhlIHJhbGluay11c2ItcGh5IGJpbmRpbmdzIHRvIERUIHNjaGVtYS4KPiA+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBTZXJnaW8gUGFyYWN1ZWxsb3MgPHNlcmdpby5wYXJhY3VlbGxvc0BnbWFpbC5jb20+
Cj4gPiAtLS0KPiA+IENoYW5nZXMgaW4gdjI6Cj4gPiAgLSBBZGQgbWlzc2luZyBTUERYIExpY2Vu
c2UgSWRlbnRpZmllcgo+ID4KPiA+ICAuLi4vYmluZGluZ3MvcGh5L3JhbGluay11c2ItcGh5LnR4
dCAgICAgICAgICAgfCAyMyAtLS0tLS0KPiA+ICAuLi4vYmluZGluZ3MvcGh5L3JhbGluay11c2It
cGh5LnlhbWwgICAgICAgICAgfCA3MCArKysrKysrKysrKysrKysrKysrCj4gPiAgMiBmaWxlcyBj
aGFuZ2VkLCA3MCBpbnNlcnRpb25zKCspLCAyMyBkZWxldGlvbnMoLSkKPiA+ICBkZWxldGUgbW9k
ZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yYWxpbmstdXNi
LXBoeS50eHQKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9yYWxpbmstdXNiLXBoeS55YW1sCj4gPgo+ID4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcmFsaW5rLXVzYi1waHkudHh0IGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yYWxpbmstdXNiLXBoeS50eHQK
PiA+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggOWQyODY4YTQzN2FiLi4wMDAw
MDAwMDAwMDAKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cmFsaW5rLXVzYi1waHkudHh0Cj4gPiArKysgL2Rldi9udWxsCj4gPiBAQCAtMSwyMyArMCwwIEBA
Cj4gPiAtTWVkaWF0ZWsvUmFsaW5rIFVTQiBQSFkKPiA+IC0KPiA+IC1SZXF1aXJlZCBwcm9wZXJ0
aWVzOgo+ID4gLSAtIGNvbXBhdGlibGU6ICJyYWxpbmsscnQzMzUyLXVzYnBoeSIKPiA+IC0gICAg
ICAgICAgICAibWVkaWF0ZWssbXQ3NjIwLXVzYnBoeSIKPiA+IC0gICAgICAgICAgICAibWVkaWF0
ZWssbXQ3NjI4LXVzYnBoeSIKPiA+IC0gLSByZWc6IHJlcXVpcmVkIGZvciAibWVkaWF0ZWssbXQ3
NjI4LXVzYnBoeSIsIHVudXNlZCBvdGhlcndpc2UKPiA+IC0gLSAjcGh5LWNlbGxzOiBzaG91bGQg
YmUgMAo+ID4gLSAtIHJhbGluayxzeXNjdGw6IGEgcGhhbmRsZSB0byBhIHJhbGluayBzeXNjb24g
cmVnaXN0ZXIgcmVnaW9uCj4gPiAtIC0gcmVzZXRzOiB0aGUgdHdvIHJlc2V0IGNvbnRyb2xsZXJz
IGZvciBob3N0IGFuZCBkZXZpY2UKPiA+IC0gLSByZXNldC1uYW1lczogdGhlIG5hbWVzIG9mIHRo
ZSAyIHJlc2V0IGNvbnRyb2xsZXJzCj4gPiAtCj4gPiAtRXhhbXBsZToKPiA+IC0KPiA+IC11c2Jw
aHk6IHBoeSB7Cj4gPiAtICAgICBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10NzYyOC11c2JwaHki
Owo+ID4gLSAgICAgcmVnID0gPDB4MTAxMjAwMDAgMHgxMDAwPjsKPiA+IC0gICAgICNwaHktY2Vs
bHMgPSA8MD47Cj4gPiAtCj4gPiAtICAgICByYWxpbmssc3lzY3RsID0gPCZzeXNjPjsKPiA+IC0g
ICAgIHJlc2V0cyA9IDwmcnN0Y3RybCAyMiAmcnN0Y3RybCAyNT47Cj4gPiAtICAgICByZXNldC1u
YW1lcyA9ICJob3N0IiwgImRldmljZSI7Cj4gPiAtfTsKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JhbGluay11c2ItcGh5LnlhbWwgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JhbGluay11c2ItcGh5LnlhbWwKPiA+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLmIwNTY2NWY1YjY0
MQo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9yYWxpbmstdXNiLXBoeS55YW1sCj4KPiBGaWxlbmFtZSBtYXRjaGluZyBjb21w
YXRpYmxlLiBNaXNzaW5nIHZlbmRvciBwcmVmaXgsIGNvbW1hLgoKU3VyZSwgd2lsbCB1c2UgbWVk
aWF0ZWssbXQ3NjI4LXVzYnBoeSBjb21wYXRpYmxlLCB0aGVuLgoKPgo+Cj4gPiBAQCAtMCwwICsx
LDcwIEBACj4gPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBPUiBC
U0QtMi1DbGF1c2UpCj4gPiArJVlBTUwgMS4yCj4gPiArLS0tCj4gPiArJGlkOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvcmFsaW5rLXVzYi1waHkueWFtbCMKPiA+ICskc2NoZW1h
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiA+ICsKPiA+
ICt0aXRsZTogTWVkaWF0ZWsvUmFsaW5rIFVTQiBQSFkKPiA+ICsKPiA+ICttYWludGFpbmVyczoK
PiA+ICsgIC0gU2VyZ2lvIFBhcmFjdWVsbG9zIDxzZXJnaW8ucGFyYWN1ZWxsb3NAZ21haWwuY29t
Pgo+ID4gKwo+ID4gK3Byb3BlcnRpZXM6Cj4gPiArICBjb21wYXRpYmxlOgo+ID4gKyAgICBlbnVt
Ogo+ID4gKyAgICAgIC0gcmFsaW5rLHJ0MzM1Mi11c2JwaHkKPiA+ICsgICAgICAtIG1lZGlhdGVr
LG10NzYyMC11c2JwaHkKPiA+ICsgICAgICAtIG1lZGlhdGVrLG10NzYyOC11c2JwaHkKPgo+IEtl
ZXAgdGhlbSBvcmRlcmVkIGFscGhhYmV0aWNhbGx5LCBwbGVhc2UuCgpXaWxsIGRvLgoKPgo+IEJs
YW5rIGxpbmUgaGVyZS4KClRydWUsIHRoYW5rcy4KCj4KPgo+ID4gKyAgcmVnOgo+ID4gKyAgICBt
YXhJdGVtczogMQo+ID4gKwo+ID4gKyAgIiNwaHktY2VsbHMiOgo+ID4gKyAgICBjb25zdDogMAo+
ID4gKwo+ID4gKyAgcmFsaW5rLHN5c2N0bDoKPiA+ICsgICAgZGVzY3JpcHRpb246Cj4gPiArICAg
ICAgcGhhbmRsZSB0byBhIHJhbGluayBzeXNjb24gcmVnaXN0ZXIgcmVnaW9uLgo+ID4gKyAgICAk
cmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCj4gPiArCj4gPiAr
ICByZXNldHM6Cj4gPiArICAgIGl0ZW1zOgo+ID4gKyAgICAgIC0gZGVzY3JpcHRpb246IFVTQiBI
b3N0IHJlc2V0IGNvbnRyb2xsZXIKPiA+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBVU0IgRGV2aWNl
IHJlc2V0IGNvbnRyb2xsZXIKPiA+ICsKPiA+ICsgIHJlc2V0LW5hbWVzOgo+ID4gKyAgICBpdGVt
czoKPiA+ICsgICAgICAtIGNvbnN0OiBob3N0Cj4gPiArICAgICAgLSBjb25zdDogZGV2aWNlCj4g
PiArCj4gPiArYWxsT2Y6Cj4gPiArICAtIGlmOgo+ID4gKyAgICAgIHByb3BlcnRpZXM6Cj4gPiAr
ICAgICAgICBjb21wYXRpYmxlOgo+ID4gKyAgICAgICAgICBjb250YWluczoKPiA+ICsgICAgICAg
ICAgICBjb25zdDogbWVkaWF0ZWssbXQ3NjI4LXVzYnBoeQo+ID4gKyAgICB0aGVuOgo+ID4gKyAg
ICAgIHJlcXVpcmVkOgo+ID4gKyAgICAgICAgLSByZWcKPgo+IGVsc2U6Cj4gaXMgaXQgZXZlbiB2
YWxpZD8KCldpbGwgYWRkIGVsc2Ugd2l0aCByZWcgdG8gZmFsc2UgZm9yIHRoZSByZXN0IHNpbmNl
IGxvb2tpbmcgaW50byBkcml2ZXIKY29kZSBpdCBsb29rcyBsaWtlIGl0IGlzIG5vdCB1c2luZyBm
b3Igb3RoZXIgY29tcGF0aWJsZSBhdCBhbGwuCgo+Cj4gQW55d2F5LCBwbGVhc2UgcHV0IGFsbE9m
OiBibG9jayBhZnRlciByZXF1aXJlZDogYmxvY2suCgpXaWxsIGRvLgoKPgo+ID4gKwo+ID4gK3Jl
cXVpcmVkOgo+ID4gKyAgLSBjb21wYXRpYmxlCj4gPiArICAtICIjcGh5LWNlbGxzIgo+ID4gKyAg
LSByYWxpbmssc3lzY3RsCj4gPiArICAtIHJlc2V0cwo+ID4gKyAgLSByZXNldC1uYW1lcwo+ID4g
Kwo+Cj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KClRoYW5rcywKICAgIFNlcmdpbyBQ
YXJhY3VlbGxvcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
