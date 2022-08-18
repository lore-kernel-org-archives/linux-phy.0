Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27617C00140
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 20:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwIKrZ4tNQXPKY9rmmA9RIoIHp6lizV0Q6F8rQD60y8=; b=c+ONzh4DvF5QkR
	p9+tfmcel5M48qNluqVt0SSGY5kzedW0+DbdA/PAP8qrpZcIAX1ZuTcFGrKWsuVf3sjKKhhdhrLfM
	PirhJ4YN/gwiiVfjG2jx5MDdyJeuwet3UAi7TH6jfKcpHLGZq78hWzBvLgkZpzZ+gX1OmjPEn5kVw
	HZQ3RPrBJXrBpr5qHSHfSGUcOit4XiTkFUlopvYuHakY1l7P/O0ihl8OfHwOpmeTkD5LoAXVwjw6p
	U/4YqgjS574gTaaotRbvwVIcmWZAYdlWTz3FeuQNJu6oYx+fgF/I6Tcu07A9SNpXgpozWAZoQTU+k
	rECq3ePW/AJU/Dg74+7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlqr-0091jS-IQ; Thu, 18 Aug 2022 20:10:49 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlqp-0091iT-6s
	for linux-phy@lists.infradead.org; Thu, 18 Aug 2022 20:10:48 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id l18so1968430qvt.13
        for <linux-phy@lists.infradead.org>; Thu, 18 Aug 2022 13:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=5elQUG5HHcj3mEYzvaC4MbKkQn6e3RoTtYW6B/1LrV8=;
        b=UGrvQE4OlWqs7pH7cOcHgy5pksB/bkhhgk5KDebeUkL4N5ewjBIeRzQv8SA7yulSYO
         667QF4dZoYU8sR00BCHJJDuYKQ+zFEGY10gQPeEp63BbwGVSLDbgNk8vLAnhAisLh0DU
         b1sWmRg4AioXLwGkt2dD/uRPKkSFvbUZ1Dzy+6UruyASxf+c3N7/mcw4dNzMwIqjNnJ6
         wdNt/Z5CSMzT/ZFAMYkRI3G90IofSJbHCVmCGKcRWIC4Rn1qSV05p0GOrTNo/6HjtiXa
         HGEq3aNstdxLqBPrx7x3c2VqqwU3Ptb7P5cI9odFTbf877Gsjl3EjzWvh0d8XWsWHQ71
         3cZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=5elQUG5HHcj3mEYzvaC4MbKkQn6e3RoTtYW6B/1LrV8=;
        b=R70SoUmKX3GJCekwBcNVlRrE/VRXK7fouFaMFnNHhSYSNPLM+B+ZJTJwFlBC5kvtGr
         xHIqxnrvWjhMK4CsCDlouDRCbX9mjtQkHHocmALsrLUbje2IlOa1K1Hs5GTQEmIHa5CD
         i51vBcPi9BKrTVbuBQBpusenSY3ufDIepmJSmHemfE4AVT5QmVEK0JgCr51ZYJo5Pywt
         1+qXcS6xo4MvvWLBNsIJPj+Bw4iIHvy8/RdUrZniLi4axdmafwIAaOPU1aPgG1/0JGVV
         5+27Kzb8rBP55ilIQGLplFmX8qle7WKvvfFYEbBQJmHbX0Vg1+IcQzJ8cP47SQ7pbzr2
         ncew==
X-Gm-Message-State: ACgBeo2BPzxhKbOkxoICrzUZzSzQ04s6tWebJpTNOevMYXS5ev3EWSsr
	aW6HH2hxuJubdvDW8w4JleDtQCvw/U7nTepnWFohfttgocaYxg==
X-Google-Smtp-Source: AA6agR4ubQvpOeuhH+FFjch01GC6e21xBDy0pYRbVbUu6JYoL9NbyI4sF32ne8rZOX1i8DxNFYE9hTEu8i3Cp62kGyE=
X-Received: by 2002:a05:6214:5290:b0:479:5df:e654 with SMTP id
 kj16-20020a056214529000b0047905dfe654mr3820807qvb.97.1660853445593; Thu, 18
 Aug 2022 13:10:45 -0700 (PDT)
MIME-Version: 1.0
References: <20220817200335.911-1-kabel@kernel.org> <20220817200335.911-3-kabel@kernel.org>
 <CAHp75Vcn1MXEB_+kJuR3qY8qxi6oq0pEFFSFrmKv2-tE-YP-zA@mail.gmail.com> <20220818214137.29ccb13a@thinkpad>
In-Reply-To: <20220818214137.29ccb13a@thinkpad>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 18 Aug 2022 23:10:09 +0300
Message-ID: <CAHp75VeenutmdUZW4Zb6JVz2h5AgwzWmC-okaVtsgRzm99HZ5g@mail.gmail.com>
Subject: Re: [PATCH linux-phy v2 2/4] device property: Add {fwnode/device}_get_tx_p2p_amplitude()
To: =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Linux Phy <linux-phy@lists.infradead.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Gregory Clement <gregory.clement@bootlin.com>, Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
	josef.schlehofer@nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_131047_287036_3166D4C3 
X-CRM114-Status: GOOD (  36.13  )
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

T24gVGh1LCBBdWcgMTgsIDIwMjIgYXQgMTA6NDEgUE0gTWFyZWsgQmVow7puIDxrYWJlbEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IE9uIFRodSwgMTggQXVnIDIwMjIgMjI6MjI6MzEgKzAzMDAKPiBB
bmR5IFNoZXZjaGVua28gPGFuZHkuc2hldmNoZW5rb0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gPiBP
biBXZWQsIEF1ZyAxNywgMjAyMiBhdCAxMTowOSBQTSBNYXJlayBCZWjDum4gPGthYmVsQGtlcm5l
bC5vcmc+IHdyb3RlOgo+ID4gPgo+ID4gPiBBZGQgZnVuY3Rpb25zIGZ3bm9kZV9nZXRfdHhfcDJw
X2FtcGxpdHVkZSgpIGFuZAo+ID4gPiBkZXZpY2VfZ2V0X3R4X3AycF9hbXBsaXR1ZGUoKSB0aGF0
IHBhcnNlIHRoZSAndHgtcDJwLW1pY3Jvdm9sdCcgYW5kCj4gPiA+ICd0eC1wMnAtbWljcm92b2x0
LW5hbWVzJyBwcm9wZXJ0aWVzIGFuZCByZXR1cm4gcGVhayB0byBwZWFrIHRyYW5zbWl0Cj4gPiA+
IGFtcGxpdHVkZSBpbiBtaWNyb3ZvbHRzIGZvciBnaXZlbiBQSFkgbW9kZS4KPiA+ID4KPiA+ID4g
VGhlIGZ1bmN0aW9ucyBzZWFyY2ggZm9yIG1vZGUgbmFtZSBpbiAndHgtcDJwLW1pY3Jvdm9sdC1u
YW1lcycgcHJvcGVydHksCj4gPiA+IGFuZCByZXR1cm4gYW1wbGl0dWRlIGF0IHRoZSBjb3JyZXNw
b25kaW5nIGluZGV4IGluIHRoZSAndHgtcDJwLW1pY3Jvdm9sdCcKPiA+ID4gcHJvcGVydHkuCj4g
PiA+Cj4gPiA+IElmIGdpdmVuIG1vZGUgaXMgbm90IG1hdGNoZWQgaW4gJ3R4LXAycC1taWNyb3Zv
bHQtbmFtZXMnIGFycmF5LCB0aGUgbW9kZQo+ID4gPiBuYW1lIGlzIGdlbmVyYWxpemVkIChmb3Ig
ZXhhbXBsZSAicGNpZTMiIC0+ICJwY2llIiAtPiAiZGVmYXVsdCIsIG9yCj4gPiA+ICJ1c2Itc3Mi
IC0+ICJ1c2IiIC0+ICJkZWZhdWx0IikuCj4gPiA+Cj4gPiA+IElmIHRoZSAndHgtcDJwLW1pY3Jv
dm9sdC1uYW1lcycgaXMgbm90IHByZXNlbnQsIHRoZSAndHgtcDJwLW1pY3Jvdm9sdCcKPiA+ID4g
cHJvcGVydHkgaXMgZXhwZWN0ZWQgdG8gY29udGFpbiBvbmx5IG9uZSB2YWx1ZSwgd2hpY2ggaXMg
Y29uc2lkZXJlZAo+ID4gPiBkZWZhdWx0LCBhbmQgd2lsbCBiZSByZXR1cm5lZCBmb3IgYW55IG1v
ZGUuCj4gPgo+ID4gSXQncyB2ZXJ5IHNwZWNpZmljIHRvIGEgZG9tYWluLiBOQUsgZm9yIHB1dHRp
bmcgaXQgdG8gdGhlIGdlbmVyaWMKPiA+IGNvZGUsIG90aGVyd2lzZSBleHBsYWluIGhvdyBpdCBj
YW4gYmUgdXNlZnVsIG91dHNpZGUgb2YgdGhlIFBIWSB3b3JsZC4KPgo+IFRoZSBwcm9wZXJ0eSBt
YXkgYmUgYWxzbyB1c2VmdWwgZm9yIGRyaXZlcnMgdGhhdCBkb24ndCBkZXBlbmQgb24KPiBnZW5l
cmljIFBIWSBzdWJzeXN0ZW0uIEF0IGxlYXN0IHRoZSBtdjg4ZTZ4eHggRFNBIGRyaXZlciBhbHJl
YWR5IHJlYWRzCj4gdGhlIHByb3BlcnR5IFsxXSBhbHRob3VnaCBpdCBzaW1wbHkgdXNlcyBvZl9w
cm9wZXJ0eV9yZWFkX3UzMigpLAo+IGJlY2F1c2UgaXQgZG9lcyBub3QgZXhwZWN0IG1vcmUgY29t
cGxpY2F0ZWQgZGVmaW5pdGlvbiB5ZXQuCj4KPiBUaGVyZSBhcmUgdGhyZWUgc3Vic3lzdGVtIHdo
aWNoIG1heSB3YW50IHRvIHVzZSB0aGlzIGZ1bmN0aW9uOiBnZW5lcmljCj4gUEhZLCBldGhlcm5l
dCBQSFkgYW5kIERTQS4gU2luY2UgZXRoZXJuZXQgUEhZIHN1YnN5c3RlbSBub3IgRFNBCj4gc3Vi
c3lzdGVtIGRvIG5vdCBkZXBlbmQgb24gZ2VuZXJpYyBQSFksIEkgdGhvdWdodCBwdXR0aW5nIGl0
IGluIGJhc2UKPiB3b3VsZCBiZSBzZW5zaWJsZS4KPgo+IElmIHlvdSB0aGluayBpdCBzaG91bGQg
YmUgaW4gZ2VuZXJpYyBQSFkgc3Vic3lzdGVtIGFueXdheSwgYW5kIHRoYXQKPiBvdGhlciBkcml2
ZXJzIG5lZWRpbmcgaXQgc2hvdWxkIGRlcGVuZCBvbiBHRU5FUklDX1BIWSwgSSBjYW4gbW92ZSBp
dC4KClllcywgSSBoYXZlIG5vIG9iamVjdGlvbiB0byBwdXQgaXQgdGhlcmUsIGp1c3QgdGhhdCB0
aGUgYWJvdmUKanVzdGlmaWNhdGlvbiBkb2Vzbid0IGFsbG93IGl0IHRvIGJlIGluIHRoZSBnZW5l
cmljIGNvZGUgKHllcywgd2UgbWF5CnN0aWxsIGhhdmUgc29tZSBhd2t3YXJkIEFQSXMgaW4gdGhl
IHByb3BlcnR5LmMgYW5kIGlkZWFsbHkgdGhleSBzaG91bGQKYmUgbW92ZWQgdG8gdGhlIHJlc3Bl
Y3RpdmUgc3Vic3lzdGVtcykuCgo+IFsxXQo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvbmV0L2Rz
YS9tdjg4ZTZ4eHgvY2hpcC5jP2g9djYuMC1yYzEjbjM1MDQKCi4uLgoKPiA+ID4gKyAgICAgICBj
bnQgPSBmd25vZGVfcHJvcGVydHlfc3RyaW5nX2FycmF5X2NvdW50KGZ3bm9kZSwgbmFtZXNfcHJv
cCk7Cj4gPiA+ICsgICAgICAgaWYgKCFjbnQgfHwgY250ID09IC1FSU5WQUwpCj4gPiA+ICsgICAg
ICAgICAgICAgICAvKgo+ID4gPiArICAgICAgICAgICAgICAgICogSWYgdGhlIG5hbWVzIHByb3Bl
cnR5IGRvZXMgbm90IGV4aXN0IG9yIGlzIGVtcHR5LCB3ZSBleHBlY3QKPiA+ID4gKyAgICAgICAg
ICAgICAgICAqIHRoZSB2YWx1ZXMgcHJvcGVydHkgdG8gY29udGFpbiBvbmx5IG9uZSwgZGVmYXVs
dCB2YWx1ZS4KPiA+ID4gKyAgICAgICAgICAgICAgICAqLwo+ID4gPiArICAgICAgICAgICAgICAg
cmV0dXJuIGZ3bm9kZV9wcm9wZXJ0eV9yZWFkX3UzMihmd25vZGUsIHZhbHNfcHJvcCwgYW1wbGl0
dWRlKTsKPiA+ID4gKyAgICAgICBlbHNlIGlmIChjbnQgPCAwKQo+ID4gPiArICAgICAgICAgICAg
ICAgcmV0dXJuIGNudDsKPiA+Cj4gPiBZb3UgbWF5IGNvdW50IHRoZSB2YWx1ZXMgYW5kIHJlYWQg
dGhlbSBhbGwsCj4KPiBXaGF0IGRvIHlvdSBtZWFuPyBDb3VudCB0aGUgdmFsdWVzIGFuZCByZWFk
IHRoZW0gYWxsIHZpYSBvbmUKPiBjYWxsIHRvIGZ3bm9kZV9wcm9wZXJ0eV9zdHJpbmdfYXJyYXlf
Y291bnQoKSA/CgpObywgeW91IG9idmlvdXNseSBtYXkgbm90IHJlYWQgdGhlbSB2aWEgc3RyaW5n
X2FycmF5IEFQSXMsIGVzcC4gb25lCnRoYXQgaXMgcmVsYXRlZCB0byBjb3VudGluZy4KCkNvdW50
IHRoZSB2YWxzIGZpcnN0LCByZWFkIHRoZW0gYWxsIChpdCBzZWVtcyB5b3UgbmVlZCBpdCBpbiBh
bGwKYnJhbmNoZXMgb2YgeW91ciBmbG93KS4gVGhlbiBjb3VudCBuYW1lcyBhbmQgY29tcGFyZSB0
aGVtIHRvIHRoZQpudW1iZXIgb2YgdmFsdWVzLCBhbmQgc28gb24uLi4gQWxzbyB0cnkgdG8gYXNz
aWduICJkZWZhdWx0IiBvbmx5IG9uY2UuCgo+ID4gYW5kIHRoZW4gY2hlY2sgdGhlIG5hbWVzCj4g
PiBhbmQgY29tcGFyZSBjb3VudCB0byB0aGUgcmVhZCB2YWx1ZXMuIEluIHN1Y2ggYSBjYXNlIHlv
dSBkb24ndCBuZWVkCj4gPiB0b28gbWFueSAob3ZlcmxhcHBlZCkgY2hlY2tzLiBJIHRoaW5rIHRo
ZSBjdXJyZW50IGltcGxlbWVudGF0aW9uIGlzCj4gPiBmYXIgZnJvbSBiZWluZyBvcHRpbWFsLiBU
YWtlIHlvdXIgdGltZSBhbmQgdHJ5IHRvIGdldCByaWQgb2YgMjAlIG9mCj4gPiBsaW5lcyBpbiB0
aGlzIGZ1bmN0aW9uLiBJIGJlbGlldmUgaXQncyBkb2FibGUuCgotLSAKV2l0aCBCZXN0IFJlZ2Fy
ZHMsCkFuZHkgU2hldmNoZW5rbwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
