Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20588C83F1A
	for <linux-phy@archiver.kernel.org>; Thu, 17 Jul 2025 12:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+bcPikdjVQ9IB8jIhd9a1SbOukcPYvfyUf8vCbPsGU=; b=d0SlNJjqPgWYr9
	eVQ/IpM65m5E0ITwHvGFIvUb/o0aRzXefGzkRvpTmIYy1OLo6pU4zy7ujba0Azscyp8f5y2dMbL+E
	5zlqyncyLl7H8fRb/+PKMYsHA6dNmYR7K5Ep8UIAEppWS32zUmle93+3HOWOKJ7kAd/kxpvRL2dLZ
	k+HzH1fYdCfmB34UpqPqOq7btifzVCiYlJeVCKYMuHWQAqOWmoRdyfIw4xd3FqD3GIgx5H0otJQAu
	jS7k4XUewl8iI8wHBtQI8yIBsEMWvM8O3XZkeVJCmRNs/0zWIBuxzhesvhXP6PeQ9OBrWcSkB2e5C
	g+zjcJ1A8hBSbNrtV5rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucNO9-0000000A4Lg-3GJg;
	Thu, 17 Jul 2025 12:07:01 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucLzm-00000009rmz-1mYu
	for linux-phy@lists.infradead.org;
	Thu, 17 Jul 2025 10:37:47 +0000
Received: from [192.168.88.20] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5742DE92;
	Thu, 17 Jul 2025 12:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1752748164;
	bh=vdLYDH/0FP+BqD0OZjHgZRlz3qLb2TjSX75DQnNBPOw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mIynV+0Up6dKjNsz70e+5XjvSmImQe7bp80kQCu/wpkU4H1DwJAXYdVyJspOGpcu2
	 hTeQkVmJeztY1KhicnOZvd6pMobTA6KuqpVV73MvEk9/8nTs9tiEtyeAdKItxTETca
	 lCZl9oqPlBAdrksbOfMvLeCFcWnR7H0aKHr6fWRM=
Message-ID: <5377d377-2822-4d35-981e-45e7352ade17@ideasonboard.com>
Date: Thu, 17 Jul 2025 13:29:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 17/17] drm/bridge: cdns-dsi: Don't fail on
 MIPI_DSI_MODE_VIDEO_BURST
To: Devarsh Thakkar <devarsht@ti.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>,
 Aradhya Bhatia <aradhya.bhatia@linux.dev>,
 Parth Pancholi <parth.pancholi@toradex.com>, Jyri Sarha <jyri.sarha@iki.fi>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jayesh Choudhary <j-choudhary@ti.com>, Dmitry Baryshkov <lumag@kernel.org>
References: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
 <20250618-cdns-dsi-impro-v4-17-862c841dbe02@ideasonboard.com>
 <8728de80-f154-46fa-a8a6-da40cb5fdc65@ti.com>
Content-Language: en-US
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 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
In-Reply-To: <8728de80-f154-46fa-a8a6-da40cb5fdc65@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_033746_597578_E1408E79 
X-CRM114-Status: GOOD (  25.64  )
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

SGksCgpPbiAxNy8wNy8yMDI1IDEyOjM2LCBEZXZhcnNoIFRoYWtrYXIgd3JvdGU6Cj4gSGkgVG9t
aQo+IAo+IFRoYW5rcyBmb3IgdGhlIHBhdGNoLgo+IAo+IE9uIDE4LzA2LzI1IDE1OjI5LCBUb21p
IFZhbGtlaW5lbiB3cm90ZToKPj4gV2hpbGUgdGhlIGNkbnMtZHNpIGRvZXMgbm90IHN1cHBvcnQg
RFNJIGJ1cnN0IG1vZGUsIHRoZSBidXJzdCBtb2RlIGlzCj4+IGVzc2VudGlhbGx5IERTSSBldmVu
dCBtb2RlIHdpdGggbW9yZSB2ZXJzYXRpbGUgY2xvY2tpbmcgYW5kIHRpbWluZ3MuCj4gSSBkb24n
dCBmdWxseSBhZ3JlZSB3aXRoIHRoaXMgc3RhdGVtZW50LCBEU0kgYnVyc3QgbW9kZSBhbmQgRFNJ
IGV2ZW50Cj4gbW9kZSBhcmUgdHdvIGRpZmZlcmVudCB0aGluZ3MgaGF2aW5nIHNlcGFyYXRlIHJl
cXVpcmVtZW50cy4gRFNJIGJ1cnN0Cj4gbW9kZSBtYXBzIHRvIE1JUElfRFNJX01PREVfVklERU9f
QlVSU1QuIEkgZG9uJ3Qgc2VlIGEgc2VwYXJhdGUgZmxhZyBmb3IKPiBldmVudCBtb2RlIGJ1dCBJ
IGd1ZXNzLAoKV2VsbCwgd2hhdCBkb2VzIERTSSBidXJzdCBtb2RlIG1lYW4/IFNpZ25hbC13aXNl
IGl0J3MgdGhlIHNhbWUgYXMgRFNJCmV2ZW50IG1vZGUuICJidXJzdCIganVzdCBtZWFucyB0aGF0
IHRoZSBEU0kgVFggaXMgYWxsb3dlZCB0byBzZW5kIHRoZQpkYXRhIG11Y2ggZmFzdGVyIHRoYW4g
dGhlIHBpeGVsIGNsb2NrLiBCdXQgdGhlcmUncyBubyBzdHJpY3QgcmVxdWlyZW1lbnQKdGhhdCBp
dCBfbXVzdF8gYmUgZmFzdGVyLgoKU28sIERTSSBidXJzdCBtb2RlIGlzIGJhc2ljYWxseSBEU0kg
ZXZlbnQgbW9kZSB3aXRoIG1vcmUgZnJlZWRvbSBvbiB0aGUKdGltaW5ncy4gVGh1cywgYWZhaWNz
LCBEU0kgVFggaW4gRFNJIGV2ZW50IG1vZGUgc2hvdWxkIGFsd2F5cyB3b3JrIGlmCnRoZSBEU0kg
UlggZXhwZWN0cyBEU0kgYnVyc3QgbW9kZS4KCiBUb21pCgo+PiBUaHVzIGNkbnMtZHNpIGRvZXNu
J3QgbmVlZCB0byBmYWlsIGlmIHRoZSBEU0kgcGVyaXBoZXJhbCBkcml2ZXIgcmVxdWVzdHMKPj4g
TUlQSV9EU0lfTU9ERV9WSURFT19CVVJTVC4KPiAKPiBNSVBJX0RTSV9NT0RFX1ZJREVPX0JVUlNU
IGlzIGN1cnJlbnRseSBub3Qgc3VwcG9ydGVkIGJ5IHRoZSBjYWRlbmNlIERTSQo+IGhvc3QgZHJp
dmVyLCBzbyBvbmx5IGlmIERTSSBwZXJpcGhlcmFsIGRyaXZlciBpcyBzYXlpbmcgdGhhdCBidXJz
dCBtb2RlCj4gaXMgdGhlIG9ubHkgb25lIGl0IHN1cHBvcnRzIGluIHRoYXQgY2FzZSBvbmx5IHdl
IHNob3VsZCBmYWlsLgo+IAo+Pgo+PiBJbiBteSBwYXJ0aWN1bGFyIHVzZSBjYXNlLCB0aGlzIGFs
bG93cyB0aGUgdXNlIG9mIHRpLXNuNjVkc2k4MyBkcml2ZXIuCj4+Cj4+IFRlc3RlZC1ieTogUGFy
dGggUGFuY2hvbGkgPHBhcnRoLnBhbmNob2xpQHRvcmFkZXguY29tPgo+PiBUZXN0ZWQtYnk6IEph
eWVzaCBDaG91ZGhhcnkgPGotY2hvdWRoYXJ5QHRpLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogVG9t
aSBWYWxrZWluZW4gPHRvbWkudmFsa2VpbmVuQGlkZWFzb25ib2FyZC5jb20+Cj4+IC0tLQo+PiDC
oCBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2NhZGVuY2UvY2Rucy1kc2ktY29yZS5jIHwgNCAtLS0t
Cj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9jYWRlbmNlL2NkbnMtZHNpLWNvcmUuYyBiL2RyaXZlcnMv
Cj4+IGdwdS9kcm0vYnJpZGdlL2NhZGVuY2UvY2Rucy1kc2ktY29yZS5jCj4+IGluZGV4IDExNGQ4
ODNjNjVkYy4uMDliMjg5ZjBmY2JmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL2NhZGVuY2UvY2Rucy1kc2ktY29yZS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvY2FkZW5jZS9jZG5zLWRzaS1jb3JlLmMKPj4gQEAgLTEwNTIsMTAgKzEwNTIsNiBAQCBzdGF0
aWMgaW50IGNkbnNfZHNpX2F0dGFjaChzdHJ1Y3QgbWlwaV9kc2lfaG9zdAo+PiAqaG9zdCwKPj4g
wqDCoMKgwqDCoCBpZiAob3V0cHV0LT5kZXYpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4g
LUVCVVNZOwo+PiDCoCAtwqDCoMKgIC8qIFdlIGRvIG5vdCBzdXBwb3J0IGJ1cnN0IG1vZGUgeWV0
LiAqLwo+PiAtwqDCoMKgIGlmIChkZXYtPm1vZGVfZmxhZ3MgJiBNSVBJX0RTSV9NT0RFX1ZJREVP
X0JVUlNUKQo+PiAtwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9UU1VQUDsKPj4gLQo+IAo+IFJl
bW92aW5nIHRoaXMgY2hlY2sgYWxzbyBnaXZlcyBhIGZhbHNlIGltcHJlc3Npb24gdGhhdCBidXJz
dCBtb2RlIGlzCj4gc3VwcG9ydGVkIGJ5IHRoZSBkcml2ZXIgYW5kIGNhbiBhbHNvIGxlYWQgdG8g
ZmFpbHVyZXMgdG9vIGluIGNhc2UgZGV2aWNlCj4gaXMgb25seSBzdXBwb3J0aW5nIGJ1cnN0IG1v
ZGUuCj4gCj4gSSB0aGluayBpdCBtYWtlcyBzZW5zZSB0byBmYWlsIG9ubHkgaWYgYnVyc3QgbW9k
ZSBpcyB0aGUgb25seSBvbmUgYmVpbmcKPiBzdXBwb3J0ZWQgYnkgdGhlIGRldmljZSwgc29tZXRo
aW5nIGxpa2UgYmVsb3cgc2hvdWxkIHdvcmsgSSBiZWxpZXZlLAo+IAo+IGlmIChkZXYtPm1vZGVf
ZmxhZ3MgJiBNSVBJX0RTSV9NT0RFX1ZJREVPX0JVUlNUID09Cj4gTUlQSV9EU0lfTU9ERV9WSURF
T19CVVJTVCkKPiDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT1RTVVBQOwo+IAo+IFJlZ2FyZHMK
PiBEZXZhcnNoCj4gCj4+IMKgwqDCoMKgwqAgLyoKPj4gwqDCoMKgwqDCoMKgICogVGhlIGhvc3Qg
PC0+IGRldmljZSBsaW5rIG1pZ2h0IGJlIGRlc2NyaWJlZCB1c2luZyBhbiBPRi1ncmFwaAo+PiDC
oMKgwqDCoMKgwqAgKiByZXByZXNlbnRhdGlvbiwgaW4gdGhpcyBjYXNlIHdlIGV4dHJhY3QgdGhl
IGRldmljZSBvZl9ub2RlIGZyb20KPj4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
