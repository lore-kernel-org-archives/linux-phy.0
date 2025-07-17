Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F33E8C83F1A
	for <linux-phy@archiver.kernel.org>; Thu, 17 Jul 2025 15:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oaaG9r/J7fJSSLahm6Sx1ApZNg2HjMsg86M5bIyIhT8=; b=BzccY8b6+ka9DL
	EA/SwITW5HPBoc9AOVYgZ9b2PlbRJUk4fyfDHJ3oLrzKzOOMFD6dGcytnMH2J0XKRTN9bWn9hLaeY
	ScDkFgwUpZ1Gxv3SHFbvUtdtz8Rdw0wlPCn7TjR1+Priu5uOTjy5l21jSZi3dAHBPBi+y2De1AVfD
	6hDFHFUAVuq0n9aWCA37f1ge9zqQdqqJauNSiiydF4gGgfEhNSBkX3CokxBwakY7HKVJytubuwdIb
	eaaspBrqrsM9kSk8q9xnygOyAe23TMLPOsPh0PfseqGP8T+nKGuTnClkPCVlxSVqRhDAeCsVtWFzq
	ewD10jk0J8fIfgNkiOfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucQ7Y-0000000ARWA-2PG2;
	Thu, 17 Jul 2025 15:02:04 +0000
Received: from fllvem-ot04.ext.ti.com ([198.47.19.246])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucOsO-0000000AHn6-2qYy
	for linux-phy@lists.infradead.org;
	Thu, 17 Jul 2025 13:42:22 +0000
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTP id 56HDfXeE484011;
	Thu, 17 Jul 2025 08:41:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1752759694;
	bh=xSAR2EjXWOeZuEtb1fBm3vkaOZIvPb6WES8+6wq2SV0=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=RgiTEf8BO80EhPHbWcsjJEEtBOgj4rOtbgCHk1eGCaZCEJkzp7GZUlQXTwfRJL0F6
	 f99okFjp35qURiKPo2WAwmHmd53+GLHXKbGVBRfBFJwkXGixzfeRYxkfIJqxr7bmEW
	 uHfU/73/7kh3m7hhwuWPr2zE4suCWpRpFbN1QOM0=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 56HDfWit2224308
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Thu, 17 Jul 2025 08:41:32 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Thu, 17
 Jul 2025 08:41:32 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Thu, 17 Jul 2025 08:41:32 -0500
Received: from [172.24.227.193] (devarsh-precision-tower-3620.dhcp.ti.com [172.24.227.193])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 56HDfPkV2253146;
	Thu, 17 Jul 2025 08:41:26 -0500
Message-ID: <187d6072-55b1-4402-a2b5-82afb45a3345@ti.com>
Date: Thu, 17 Jul 2025 19:11:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 17/17] drm/bridge: cdns-dsi: Don't fail on
 MIPI_DSI_MODE_VIDEO_BURST
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
CC: <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        Francesco Dolcini <francesco@dolcini.it>,
        Aradhya Bhatia <aradhya.bhatia@linux.dev>,
        Parth Pancholi
	<parth.pancholi@toradex.com>,
        Jyri Sarha <jyri.sarha@iki.fi>,
        Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul
	<vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Andrzej Hajda
	<andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert
 Foss <rfoss@kernel.org>,
        Laurent Pinchart
	<Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej
 Skrabec <jernej.skrabec@gmail.com>,
        Jayesh Choudhary <j-choudhary@ti.com>,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
 <20250618-cdns-dsi-impro-v4-17-862c841dbe02@ideasonboard.com>
 <8728de80-f154-46fa-a8a6-da40cb5fdc65@ti.com>
 <5377d377-2822-4d35-981e-45e7352ade17@ideasonboard.com>
Content-Language: en-US
From: Devarsh Thakkar <devarsht@ti.com>
In-Reply-To: <5377d377-2822-4d35-981e-45e7352ade17@ideasonboard.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_064220_811344_2D658370 
X-CRM114-Status: GOOD (  27.60  )
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

SGkgVG9taSwKCk9uIDE3LzA3LzI1IDE1OjU5LCBUb21pIFZhbGtlaW5lbiB3cm90ZToKPiBIaSwK
PiAKPiBPbiAxNy8wNy8yMDI1IDEyOjM2LCBEZXZhcnNoIFRoYWtrYXIgd3JvdGU6Cj4+IEhpIFRv
bWkKPj4KPj4gVGhhbmtzIGZvciB0aGUgcGF0Y2guCj4+Cj4+IE9uIDE4LzA2LzI1IDE1OjI5LCBU
b21pIFZhbGtlaW5lbiB3cm90ZToKPj4+IFdoaWxlIHRoZSBjZG5zLWRzaSBkb2VzIG5vdCBzdXBw
b3J0IERTSSBidXJzdCBtb2RlLCB0aGUgYnVyc3QgbW9kZSBpcwo+Pj4gZXNzZW50aWFsbHkgRFNJ
IGV2ZW50IG1vZGUgd2l0aCBtb3JlIHZlcnNhdGlsZSBjbG9ja2luZyBhbmQgdGltaW5ncy4KPj4g
SSBkb24ndCBmdWxseSBhZ3JlZSB3aXRoIHRoaXMgc3RhdGVtZW50LCBEU0kgYnVyc3QgbW9kZSBh
bmQgRFNJIGV2ZW50Cj4+IG1vZGUgYXJlIHR3byBkaWZmZXJlbnQgdGhpbmdzIGhhdmluZyBzZXBh
cmF0ZSByZXF1aXJlbWVudHMuIERTSSBidXJzdAo+PiBtb2RlIG1hcHMgdG8gTUlQSV9EU0lfTU9E
RV9WSURFT19CVVJTVC4gSSBkb24ndCBzZWUgYSBzZXBhcmF0ZSBmbGFnIGZvcgo+PiBldmVudCBt
b2RlIGJ1dCBJIGd1ZXNzLAo+IAo+IFdlbGwsIHdoYXQgZG9lcyBEU0kgYnVyc3QgbW9kZSBtZWFu
PyBTaWduYWwtd2lzZSBpdCdzIHRoZSBzYW1lIGFzIERTSQo+IGV2ZW50IG1vZGUuICJidXJzdCIg
anVzdCBtZWFucyB0aGF0IHRoZSBEU0kgVFggaXMgYWxsb3dlZCB0byBzZW5kIHRoZQo+IGRhdGEg
bXVjaCBmYXN0ZXIgdGhhbiB0aGUgcGl4ZWwgY2xvY2suIEJ1dCB0aGVyZSdzIG5vIHN0cmljdCBy
ZXF1aXJlbWVudAo+IHRoYXQgaXQgX211c3RfIGJlIGZhc3Rlci4KPiAKPiBTbywgRFNJIGJ1cnN0
IG1vZGUgaXMgYmFzaWNhbGx5IERTSSBldmVudCBtb2RlIHdpdGggbW9yZSBmcmVlZG9tIG9uIHRo
ZQo+IHRpbWluZ3MuIFRodXMsIGFmYWljcywgRFNJIFRYIGluIERTSSBldmVudCBtb2RlIHNob3Vs
ZCBhbHdheXMgd29yayBpZgo+IHRoZSBEU0kgUlggZXhwZWN0cyBEU0kgYnVyc3QgbW9kZS4KPiAK
ClllcyB0aGlzIGlzIHRydWUsIGFsdGhvdWdoIHRoZXJlIGFyZSBzdWJ0bGUgZGlmZmVyZW5jZXMg
YmV0d2VlbiBldmVudCAKbW9kZSBhbmQgYnVyc3QgbW9kZSBhbmQgSSBndWVzcyB0aGF0J3Mgd2h5
IERTSSBzcGVjaWZpY2F0aW9uIDguMTEuMSAKVHJhbnNtaXNzaW9uIFBhY2tldCBTZXF1ZW5jZXMg
bWVudGlvbnMgZm9yIHZpZGVvIG1vZGUgbGlzdHMgRFNJIGV2ZW50IAptb2RlIHNlcXVlbmNlIGFz
IGRpZmZlcmVudGx5IHRoZW4gYnVyc3QgbW9kZSB3LnIudCBwYWNrZXQgc2VxdWVuY2Ugdml6IAps
aXN0aW5nIDMgZGlmZmVyZW50IHNlcXVlbmNlcyBpLmUuIG5vbi1idXJzdCB3aXRoIHN5bmMgcHVs
c2UsIG5vbi1idXJzdCAKd2l0aCBzeW5jIGV2ZW50IGFuZCBidXJzdCBtb2RlLiBCdXQgc2VlbXMg
bGlrZSB3ZSBkbyBub3QgaGF2ZSAzIHNlcGFyYXRlIApmbGFncyBmb3IgZWFjaCBvZiB0aG9zZS4K
CkFuZCBJIHNlZSBtb3N0IGRyaXZlcnMgdXNpbmcgTUlQSV9EU0lfTU9ERV9WSURFTyBib3RoIGlu
IGNvbnRleHQgb2YgCnNlbGVjdGluZyB2aWRlbyBtb2RlIGFzIG9wcG9zZWQgdG8gY29tbWFuZCBt
b2RlIGFuZCBhbHNvIHN1YnRseSAKaW5mZXJyaW5nIGl0IGFzIGV2ZW50IG1vZGUgaW4gY2FzZSBN
SVBJX0RTSV9NT0RFX1ZJREVPX0JVUlNUIGFuZCAKTUlQSV9EU0lfTU9ERV9WSURFT19QVUxTRSBh
cmUgbm90IHNldC4gU28gdGhlcmUgaXMgbm8gYWNjdXJhdGUgd2F5IHRvIApkaWZmZXJlbnRpYXRl
IGJldHdlZW4gdGhlIHRocmVlIG9yIGZvciB0aGUgYnJpZGdlIGRyaXZlciB0byBlbmZvcmNlIApi
dXJzdCBtb2RlIG92ZXIgZXZlbnQgbW9kZSBhbmQgSSBndWVzcyBkZWNpc2lvbiBpcyBsZWZ0IHRv
IGhvc3QgZHJpdmVyLgoKU28sIEkgdGhpbmsgdGhpcyBwYXRjaCBsb29rcyBmaW5lIGNvbnNpZGVy
aW5nIHRoZXNlIGFzcGVjdHMuCgoKPj4+IFRodXMgY2Rucy1kc2kgZG9lc24ndCBuZWVkIHRvIGZh
aWwgaWYgdGhlIERTSSBwZXJpcGhlcmFsIGRyaXZlciByZXF1ZXN0cwo+Pj4gTUlQSV9EU0lfTU9E
RV9WSURFT19CVVJTVC4KPj4KPj4gTUlQSV9EU0lfTU9ERV9WSURFT19CVVJTVCBpcyBjdXJyZW50
bHkgbm90IHN1cHBvcnRlZCBieSB0aGUgY2FkZW5jZSBEU0kKPj4gaG9zdCBkcml2ZXIsIHNvIG9u
bHkgaWYgRFNJIHBlcmlwaGVyYWwgZHJpdmVyIGlzIHNheWluZyB0aGF0IGJ1cnN0IG1vZGUKPj4g
aXMgdGhlIG9ubHkgb25lIGl0IHN1cHBvcnRzIGluIHRoYXQgY2FzZSBvbmx5IHdlIHNob3VsZCBm
YWlsLgo+Pgo+Pj4KPj4+IEluIG15IHBhcnRpY3VsYXIgdXNlIGNhc2UsIHRoaXMgYWxsb3dzIHRo
ZSB1c2Ugb2YgdGktc242NWRzaTgzIGRyaXZlci4KPj4+Cj4+PiBUZXN0ZWQtYnk6IFBhcnRoIFBh
bmNob2xpIDxwYXJ0aC5wYW5jaG9saUB0b3JhZGV4LmNvbT4KPj4+IFRlc3RlZC1ieTogSmF5ZXNo
IENob3VkaGFyeSA8ai1jaG91ZGhhcnlAdGkuY29tPiA+Pj4gU2lnbmVkLW9mZi1ieTogVG9taSBW
YWxrZWluZW4gPHRvbWkudmFsa2VpbmVuQGlkZWFzb25ib2FyZC5jb20+CgpSZXZpZXdlZC1ieTog
RGV2YXJzaCBUaGFra2FyIDxkZXZhcnNodEB0aS5jb20+CgpSZWdhcmRzCkRldmFyc2gKCj4+PiAt
LS0KPj4+ICDCoCBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2NhZGVuY2UvY2Rucy1kc2ktY29yZS5j
IHwgNCAtLS0tCj4+PiAgwqAgMSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRpb25zKC0pCj4+Pgo+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvY2FkZW5jZS9jZG5zLWRzaS1jb3Jl
LmMgYi9kcml2ZXJzLwo+Pj4gZ3B1L2RybS9icmlkZ2UvY2FkZW5jZS9jZG5zLWRzaS1jb3JlLmMK
Pj4+IGluZGV4IDExNGQ4ODNjNjVkYy4uMDliMjg5ZjBmY2JmIDEwMDY0NAo+Pj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9jYWRlbmNlL2NkbnMtZHNpLWNvcmUuYwo+Pj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9jYWRlbmNlL2NkbnMtZHNpLWNvcmUuYwo+Pj4gQEAgLTEwNTIs
MTAgKzEwNTIsNiBAQCBzdGF0aWMgaW50IGNkbnNfZHNpX2F0dGFjaChzdHJ1Y3QgbWlwaV9kc2lf
aG9zdAo+Pj4gKmhvc3QsCj4+PiAgwqDCoMKgwqDCoCBpZiAob3V0cHV0LT5kZXYpCj4+PiAgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUJVU1k7Cj4+PiAgwqAgLcKgwqDCoCAvKiBXZSBkbyBu
b3Qgc3VwcG9ydCBidXJzdCBtb2RlIHlldC4gKi8KPj4+IC3CoMKgwqAgaWYgKGRldi0+bW9kZV9m
bGFncyAmIE1JUElfRFNJX01PREVfVklERU9fQlVSU1QpCj4+PiAtwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIC1FTk9UU1VQUDsKPj4+IC0KPj4KPj4gUmVtb3ZpbmcgdGhpcyBjaGVjayBhbHNvIGdpdmVz
IGEgZmFsc2UgaW1wcmVzc2lvbiB0aGF0IGJ1cnN0IG1vZGUgaXMKPj4gc3VwcG9ydGVkIGJ5IHRo
ZSBkcml2ZXIgYW5kIGNhbiBhbHNvIGxlYWQgdG8gZmFpbHVyZXMgdG9vIGluIGNhc2UgZGV2aWNl
Cj4+IGlzIG9ubHkgc3VwcG9ydGluZyBidXJzdCBtb2RlLgo+Pgo+PiBJIHRoaW5rIGl0IG1ha2Vz
IHNlbnNlIHRvIGZhaWwgb25seSBpZiBidXJzdCBtb2RlIGlzIHRoZSBvbmx5IG9uZSBiZWluZwo+
PiBzdXBwb3J0ZWQgYnkgdGhlIGRldmljZSwgc29tZXRoaW5nIGxpa2UgYmVsb3cgc2hvdWxkIHdv
cmsgSSBiZWxpZXZlLAo+Pgo+PiBpZiAoZGV2LT5tb2RlX2ZsYWdzICYgTUlQSV9EU0lfTU9ERV9W
SURFT19CVVJTVCA9PQo+PiBNSVBJX0RTSV9NT0RFX1ZJREVPX0JVUlNUKQo+PiAgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIC1FTk9UU1VQUDsKPj4KPj4gUmVnYXJkcwo+PiBEZXZhcnNoCj4+Cj4+PiAg
wqDCoMKgwqDCoCAvKgo+Pj4gIMKgwqDCoMKgwqDCoCAqIFRoZSBob3N0IDwtPiBkZXZpY2UgbGlu
ayBtaWdodCBiZSBkZXNjcmliZWQgdXNpbmcgYW4gT0YtZ3JhcGgKPj4+ICDCoMKgwqDCoMKgwqAg
KiByZXByZXNlbnRhdGlvbiwgaW4gdGhpcyBjYXNlIHdlIGV4dHJhY3QgdGhlIGRldmljZSBvZl9u
b2RlIGZyb20KPj4+Cj4gCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
