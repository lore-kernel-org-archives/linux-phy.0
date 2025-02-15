Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43BC9C021A0
	for <linux-phy@archiver.kernel.org>; Sat, 15 Feb 2025 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eeF5/GEfTi42Jp4P1cC0mPrYi4Qk/vnGoqTPMfJyU9g=; b=HFNvvL6cjhWpsG
	XlOXJVRPxzcHrpHoOGrTje5/jOLBcmEEMHX3xi69gaqNIm054eKBpDgGr36IjMobBGwWHTMD915O/
	iaKZIjTz2Wk1WwJ1h+8zU+eBqJ4G226H/jI9GyajAp6/wmybvpPg8ri1MxNflJcA7Pl/qN+N8PnDK
	B87K4Tw1OO1zgiB74aXdJS22iZwdZsz4lXHlD25Genk+PokpbbiP+8A/zWoPFQR7Rt2A+47G56J7F
	NEb7j2Yop6vWWoBz2cfD2EC22Um97Q1mrHtu0E7s7PQpU/MWUXaF2exF5VXFkq5XwEpwSAE32RMsz
	Fupsa/mfNKX1FpBvLVNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjKlI-00000000NiE-2Vv6;
	Sat, 15 Feb 2025 16:11:24 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjKjp-00000000NZq-3F3o
	for linux-phy@lists.infradead.org;
	Sat, 15 Feb 2025 16:09:55 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-388cae9eb9fso1520509f8f.3
        for <linux-phy@lists.infradead.org>; Sat, 15 Feb 2025 08:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739635791; x=1740240591; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6bmNv65WfRWb5QFz5Qsh8fW49RgHC55otbly3llCagw=;
        b=Daiye5TZyhvT6uTO+RlYlk205zH2gJ4LAh7V8adSjKgb85AI7AqRL76FmaJ1KHukYX
         unX8Tm7Femh5KZHfCyp5NCNOSttnfn8A6XcFshiVx7qC/95T5yXi0l0lI8iUWGLwFbWX
         q0UVclmiGIRexnUNqmlvtFzrL3xDro/sb9YB13Rt3ey1Jt/Wpf/jbUlhPe8HTxIHnH2r
         CDvRIC1LZmH7B/VL89OtMqHwVFfktarofYvenb0pZbCoSITuuLjX8WoiPRx/UNCiIf2U
         Ssh9XJ6pE+J0ZIuQkdrlsPKVNFSb8MhCTnjquL17LotfGP1NXo/FcvDHpET2ogyWwUJJ
         TWGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739635791; x=1740240591;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6bmNv65WfRWb5QFz5Qsh8fW49RgHC55otbly3llCagw=;
        b=rhZ8PYiZSDlr3zWak+7EChf2GF2sE58Wsbt1f9rtNF1W5oOJCg2uD6AUrFGcHQmMUJ
         lKKD8MV1YNvYvNBNMWbGbOAaMeT+tzZw/Sn1TFggp25E/5hbYrVHmrJxRh3FPGu6Y2Ol
         LiyftPGxSpF8eZmerjVetvkSqwTXl0YgjMH4N7CbNOJcNeX8vVq7pZ6R0H/Fs5YpAbJr
         DHi+D0lyUaDmK8PSJMYp9SYZ56+dpsHfVZ7G30Ag+jbuRCytVKesYCN/OEdgFSltR+Go
         DFuFlD0s6yUfCIeZ1bLd3hacNLUXFU3l5bGsMnKiWHOW0CLBNfJSidOqvi/j+ROhVYD5
         G0iw==
X-Forwarded-Encrypted: i=1; AJvYcCURKir/fneeftq2uGYIsXWTaMEJ91lj0+x3ruoIwmRz2RZHYmavJfNy6MnZibNgmFmDNxavn/1uuew=@lists.infradead.org
X-Gm-Message-State: AOJu0YyL3Hx5Vj8bNtRTYIosKFdFokvEdl1grqWtPdO1NQ0srZ+Ju8gj
	b4AL3lEH0SOa8eAiRXJe9t8O8ChTZHrE3HPAHD3l086qgCNOs+/DOFeegB8F1Oc=
X-Gm-Gg: ASbGncvrPOU4p8kmcLtn0Z7TmAFXBrDy80wjQAuzjAGf5SLSGVK6YMmD4+925v2s/gz
	p9DhtZhVUrSSOkekkXxEymxJ3494mWpop0TK1abINkJ4Nq5UwBA1TjTDaxrd5ByrsfguTlgwSxD
	gM0Utgrmpb+V3+xtrKsyBFnafr9G31c2+D9IERJj7om4pob+pF4Ja7JCG7ilyvB4Zi13hr4ab7C
	YG763d3QHGPq6dFjyYwejGhEVk2IDYmMqPPmWg1gvcSBdYYpBVTAfeti/nTInni7vuUC2VAm1aA
	PlFnu2WYX3kykRkG8wE=
X-Google-Smtp-Source: AGHT+IFtTB7CGPjbTTAj53WRDs4x+r/fRGZXIjaCmxUn1B9Qy804cPMYsoMFiSnj7hJuF9dY96O+yA==
X-Received: by 2002:a5d:6d8d:0:b0:38d:ce70:8bdf with SMTP id ffacd0b85a97d-38f3406ca2emr3643311f8f.37.1739635791490;
        Sat, 15 Feb 2025 08:09:51 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a06c95bsm103459305e9.17.2025.02.15.08.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Feb 2025 08:09:50 -0800 (PST)
Message-ID: <8e06da42c86b29dcb645d1bceaedae879e6aeca0.camel@linaro.org>
Subject: Re: [PATCH v4 6/7] phy: exynos5-usbdrd: subscribe to orientation
 notifier if required
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Marek Szyprowski
 <m.szyprowski@samsung.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, Alim Akhtar
 <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
 <tudor.ambarus@linaro.org>, Sam Protsenko <semen.protsenko@linaro.org>,
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com,  linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-samsung-soc@vger.kernel.org
Date: Sat, 15 Feb 2025 16:09:48 +0000
In-Reply-To: <7c0dcf24-187c-4dc8-aa4a-4a8f814775b2@kernel.org>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
	 <CGME20241206163109eucas1p12aea3a9a6c404cd7c678009ea11aa5b3@eucas1p1.samsung.com>
	 <20241206-gs101-phy-lanes-orientation-phy-v4-6-f5961268b149@linaro.org>
	 <3c0b77e6-357d-453e-8b63-4757c3231bde@samsung.com>
	 <7c0dcf24-187c-4dc8-aa4a-4a8f814775b2@kernel.org>
User-Agent: Evolution 3.52.2-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_080953_821741_81EAB4B8 
X-CRM114-Status: GOOD (  32.25  )
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

SGkgS3J6eXN6dG9mLAoKT24gU2F0LCAyMDI1LTAyLTE1IGF0IDExOjA3ICswMTAwLCBLcnp5c3p0
b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDE0LzAyLzIwMjUgMjA6MzAsIE1hcmVrIFN6eXByb3dz
a2kgd3JvdGU6Cj4gPiBPbiAwNi4xMi4yMDI0IDE3OjMxLCBBbmRyw6kgRHJhc3ppayB3cm90ZToK
PiA+ID4gZ3MxMDEncyBTUyBwaHkgbmVlZHMgdG8gYmUgY29uZmlndXJlZCBkaWZmZXJlbnRseSBi
YXNlZCBvbiB0aGUKPiA+ID4gY29ubmVjdG9yIG9yaWVudGF0aW9uLCBhcyB0aGUgU1MgbGluayBj
YW4gb25seSBiZSBlc3RhYmxpc2hlZCBpZiB0aGUKPiA+ID4gbXV4IGlzIGNvbmZpZ3VyZWQgY29y
cmVjdGx5Lgo+ID4gPiAKPiA+ID4gVGhlIGNvZGUgdG8gaGFuZGxlIHByb2dyYW1taW5nIG9mIHRo
ZSBtdXggaXMgaW4gcGxhY2UgYWxyZWFkeSwgdGhpcyBjb21taXQKPiA+ID4gbm93IGFkZHMgdGhl
IG1pc3NpbmcgcGllY2VzIHRvIHN1YnNjcmliZSB0byB0aGUgVHlwZS1DIG9yaWVudGF0aW9uCj4g
PiA+IHN3aXRjaCBldmVudC4KPiA+ID4gCj4gPiA+IE5vdGUgdGhhdCBmb3IgdGhpcyBhbGwgdG8g
d29yayB3ZSByZWx5IG9uIHRoZSBVU0IgY29udHJvbGxlcgo+ID4gPiByZS1pbml0aWFsaXNpbmcg
dXMuIEl0IHNob3VsZCBpbnZva2Ugb3VyIC5leGl0KCkgdXBvbiBjYWJsZSB1bnBsdWcsIGFuZAo+
ID4gPiBkdXJpbmcgY2FibGUgcGx1ZyB3ZSdsbCByZWNlaXZlIHRoZSBvcmllbnRhdGlvbiBldmVu
dCBhZnRlciB3aGljaCB3ZQo+ID4gPiBleHBlY3Qgb3VyIC5pbml0KCkgdG8gYmUgY2FsbGVkLgo+
ID4gPiAKPiA+ID4gQWJvdmUgcmVpbml0aWFsaXNhdGlvbiBoYXBwZW5zIGlmIHRoZSBEV0MzIGNv
bnRyb2xsZXIgY2FuIGVudGVyIHJ1bnRpbWUKPiA+ID4gc3VzcGVuZCBhdXRvbWF0aWNhbGx5LiBG
b3IgdGhlIERXQzMgZHJpdmVyLCB0aGlzIGlzIGFuIG9wdC1pbjoKPiA+ID4gwqDCoMKgwqAgZWNo
byBhdXRvID4gL3N5cy9kZXZpY2VzLy4uLi8xMTExMDAwMC51c2IvcG93ZXIvY29udHJvbAo+ID4g
PiBPbmNlIGRvbmUsIHRoaW5ncyB3b3JrIGFzIGxvbmcgYXMgdGhlIFVEQyBpcyBub3QgYm91bmQg
YXMgb3RoZXJ3aXNlIGl0Cj4gPiA+IHN0YXlzIGJ1c3kgYmVjYXVzZSBpdCBkb2Vzbid0IGNhbmNl
bCAvIHN0b3Agb3V0c3RhbmRpbmcgVFJCcy4gRm9yIG5vdwo+ID4gPiB3ZSBoYXZlIHRvIG1hbnVh
bGx5IHVuYmluZCB0aGUgVURDIGluIHRoYXQgY2FzZToKPiA+ID4gwqDCoMKgwqDCoCBlY2hvICIi
ID4gc3lzL2tlcm5lbC9jb25maWcvdXNiX2dhZGdldC8uLi4vVURDCj4gPiA+IAo+ID4gPiBOb3Rl
IHRoYXQgaWYgdGhlIG9yaWVudGF0aW9uLXN3aXRjaCBwcm9wZXJ0eSBpcyBtaXNzaW5nIGZyb20g
dGhlIERULAo+ID4gPiB0aGUgY29kZSB3aWxsIGJlaGF2ZSBhcyBiZWZvcmUgdGhpcyBjb21taXQg
KG1lYW5pbmcgZm9yIGdzMTAxIGl0IHdpbGwKPiA+ID4gd29yayBpbiBTUyBtb2RlIGluIG9uZSBv
cmllbnRhdGlvbiBvbmx5KS4gT3RoZXIgcGxhdGZvcm1zIGFyZSBub3QKPiA+ID4gYWZmZWN0ZWQg
ZWl0aGVyIHdheS4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxh
bmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Cj4gPiA+IAo+ID4gPiAtLS0KPiA+ID4gdjM6Cj4gPiA+
ICogZHJvcCBpbml0IHRvIC0xIG9mIHBoeV9kcmQtPm9yaWVudGF0aW9uIChWaW5vZCkKPiA+ID4g
KiBhdm9pZCAjaWZkZWYgYW5kIHN3aXRjaCB0byBub3JtYWwgY29uZGl0aW9uYWwgSVNfRU5BQkxF
RCgpIGZvcgo+ID4gPiDCoMKgIENPTkZJR19UWVBFQwo+ID4gPiAKPiA+ID4gdjI6Cj4gPiA+ICog
bW92ZSAjaW5jbHVkZSB0eXBlY19tdXguaCBmcm9tIHBhcmVudCBwYXRjaCBpbnRvIHRoaXMgb25l
IChQZXRlcikKPiA+ID4gLS0tCj4gPiA+IMKgIGRyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZ8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxICsKPiA+ID4gwqAgZHJpdmVycy9waHkvc2Ft
c3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyB8IDU2ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrCj4gPiA+IMKgIDIgZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygrKQo+ID4gPiAK
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZyBiL2RyaXZlcnMv
cGh5L3NhbXN1bmcvS2NvbmZpZwo+ID4gPiBpbmRleCBmMTBhZmEzZDdmZjUuLmZjN2JkMTA4ODU3
NiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnCj4gPiA+ICsr
KyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZwo+ID4gPiBAQCAtODAsNiArODAsNyBAQCBj
b25maWcgUEhZX0VYWU5PUzVfVVNCRFJECj4gPiA+IMKgwqAJdHJpc3RhdGUgIkV4eW5vczUgU29D
IHNlcmllcyBVU0IgRFJEIFBIWSBkcml2ZXIiCj4gPiA+IMKgwqAJZGVwZW5kcyBvbiAoQVJDSF9F
WFlOT1MgJiYgT0YpIHx8IENPTVBJTEVfVEVTVAo+ID4gPiDCoMKgCWRlcGVuZHMgb24gSEFTX0lP
TUVNCj4gPiA+ICsJZGVwZW5kcyBvbiBUWVBFQyB8fCAoVFlQRUM9biAmJiBDT01QSUxFX1RFU1Qp
Cj4gCj4gQlRXLCB0aGlzIHN5bnRheCBuZXZlciBtYWRlIGFueSBzZW5zZSAtIGl0IGRpZCBub3Qg
d29yay4gVGhlIG9wdGlvbmFsCj4gZGVwZW5kZW5jeSBpcyBleHByZXNzZWQgYXM6Cj4gCWRlcGVu
ZHMgb24gVFlQRUMgfHwgIVRZUEVDCgpUaGUgZGVwZW5kcyBpcyByZXF1aXJlZCB0byBnZXQgaXQg
dG8gbGluay4gUEhZX0VYWU5PUzVfVVNCRFJECmRlZmF1bHRzIHRvIFksIHdoaWxlIFRZUEVDIGRl
ZmF1bHRzIHRvIE0gaW4gdGhlIGFybTY0IGRlZmNvbmZpZy4KVXNpbmcgdGhpcyBleHByZXNzaW9u
LCBQSFlfRVhZTk9TNV9VU0JEUkQgY2hhbmdlcyB0byBNLgoKT3RoZXJ3aXNlIGl0IHdvbid0IGxp
bmsuCgoKPiBidXQgd2hhdCBpdCBlcHhyZXNzZWQgaXMgdGhhdCBpdCBpcyBwb3NzaWJsZSB0byBi
dWlsZCBpdCB3aXRob3V0IHR5cGVjCj4gb25seSBmb3IgY29tcGlsZSB0ZXN0LCB3aGljaCBpcyBv
ZGQgaWYgdGhpcyB3YXMgbWVhbnQgdG8gYmUgb3B0aW9uYWwuCj4gQW5kIGZ1cnRoZXIgY29kZToK
PiAJaWYgKCFJU19FTkFCTEVEKENPTkZJR19UWVBFQykpCj4gCj4gY2xlYXJseSBzdWdnZXN0cyB0
aGlzIHNob3VsZCBiZSBvcHRpb25hbC4KClllcywgaXQncyBtZWFudCB0byBiZSBvcHRpb25hbC4K
CkNoZWVycywKQW5kcmUnCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
