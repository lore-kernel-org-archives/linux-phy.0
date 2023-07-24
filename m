Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40B5EC001B0
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jul 2023 07:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVql4L/34j+vsBrcpg0rAVe6Hluz+ufTeXQyUhY4Oo8=; b=EjuueVmjGgDuL4
	A6AdAdmagpd8grFR+qxmBxtdFifDDySn14wqiYgsqJIo9Hln3idx7OgfPoLCIJf+H1aklhGVxfxr1
	UkN8gOKr1EOD+HbjGCWkN44hW0LlC084Pgww+gDxuMvmYKFW3Ucl6L+b59fYtcUmAqKE76Ph3mnyd
	8L64EsfHZhr0M/6LjhcgahJ36jMD2S9srZRBZmalr1D34Uo9F4wqUVKaMmi6BVlimlIxDh1gxrSHp
	EpEKP5t0LmNdeks1Al0c7EUAg6pozG477WC3i3GpLxWVrqRHbhi5zIrCV1hk1lh+E61kwNr8Qx/4j
	e11PZUnRFCK/9o3Q3zQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNpe4-0033eX-2e;
	Mon, 24 Jul 2023 07:06:16 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNpe1-0033e8-2G
	for linux-phy@lists.infradead.org;
	Mon, 24 Jul 2023 07:06:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9D6BF60F55;
	Mon, 24 Jul 2023 07:06:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 862B9C433C8;
	Mon, 24 Jul 2023 07:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1690182372;
	bh=bXFbzDGRsLJzol8Y088QZs2hbY4BTS9fB8XOAo5P7pM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=x/hXPZkjJNK3wZD1Xpmk/Yxs4AEAdaEAnvsfPYpCwjK9UjONk8HYYE1U1pOE3kPpK
	 /rfjnXJuxxQs2KwyTWJ4FMlsQ566oYZgaJb69pvEMdIcrtA1RzVcmRTBxhtJWyI8oh
	 9i612V0vaCWUKGzs3ifPh6Xt0C5LwexotGtYT1NY=
Date: Mon, 24 Jul 2023 09:06:09 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stanley =?utf-8?B?Q2hhbmdb5piM6IKy5b63XQ==?= <stanley_chang@realtek.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>, Roy Luo <royluo@google.com>,
	Matthias Kaehlcke <mka@chromium.org>,
	Douglas Anderson <dianders@chromium.org>,
	Flavio Suligoi <f.suligoi@asem.it>, Ray Chi <raychi@google.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH v7 1/5] usb: phy: add usb phy notify port status API
Message-ID: <2023072454-mosaic-ogle-9a27@gregkh>
References: <20230707064725.25291-1-stanley_chang@realtek.com>
 <2023072452-jasmine-palm-7b73@gregkh>
 <47131beec8a24572873aa31e87cfaab6@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <47131beec8a24572873aa31e87cfaab6@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_000613_834563_1763AD0A 
X-CRM114-Status: GOOD (  35.42  )
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

T24gTW9uLCBKdWwgMjQsIDIwMjMgYXQgMDY6NDk6NTBBTSArMDAwMCwgU3RhbmxleSBDaGFuZ1vm
mIzogrLlvrddIHdyb3RlOgo+IAo+ID4gCj4gPiBPbiBGcmksIEp1bCAwNywgMjAyMyBhdCAwMjo0
NzowMFBNICswODAwLCBTdGFubGV5IENoYW5nIHdyb3RlOgo+ID4gPiBJbiBSZWFsdGVrIFNvQywg
dGhlIHBhcmFtZXRlciBvZiB1c2IgcGh5IGlzIGRlc2lnbmVkIHRvIGNhbiBkeW5hbWljCj4gPiA+
IHR1bmluZyBiYXNlIG9uIHBvcnQgc3RhdHVzLiBUaGVyZWZvcmUsIGFkZCBhIG5vdGlmeSBjYWxs
YmFjayBvZiBwaHkKPiA+ID4gZHJpdmVyIHdoZW4gdXNiIHBvcnQgc3RhdHVzIGNoYW5nZS4KPiA+
ID4KPiA+ID4gVGhlIFJlYWx0ZWsgcGh5IGRyaXZlciBpcyBkZXNpZ25lZCB0byBkeW5hbWljYWxs
eSBhZGp1c3QgZGlzY29ubmVjdGlvbgo+ID4gPiBsZXZlbCBhbmQgY2FsaWJyYXRlIHBoeSBwYXJh
bWV0ZXJzLiBXaGVuIHRoZSBkZXZpY2UgY29ubmVjdGVkIGJpdAo+ID4gPiBjaGFuZ2VzIGFuZCB3
aGVuIHRoZSBkaXNjb25uZWN0ZWQgYml0IGNoYW5nZXMsIGRvIHBvcnQgc3RhdHVzIGNoYW5nZQo+
ID4gbm90aWZpY2F0aW9uOgo+ID4gPgo+ID4gPiBDaGVjayBpZiBwb3J0c3RhdHVzIGlzIFVTQl9Q
T1JUX1NUQVRfQ09OTkVDVElPTiBhbmQgcG9ydGNoYW5nZSBpcwo+ID4gPiBVU0JfUE9SVF9TVEFU
X0NfQ09OTkVDVElPTi4KPiA+ID4gMS4gVGhlIGRldmljZSBpcyBjb25uZWN0ZWQsIHRoZSBkcml2
ZXIgbG93ZXJzIHRoZSBkaXNjb25uZWN0aW9uIGxldmVsIGFuZAo+ID4gPiAgICBjYWxpYnJhdGVz
IHRoZSBwaHkgcGFyYW1ldGVycy4KPiA+ID4gMi4gVGhlIGRldmljZSBkaXNjb25uZWN0cywgdGhl
IGRyaXZlciBpbmNyZWFzZXMgdGhlIGRpc2Nvbm5lY3QgbGV2ZWwgYW5kCj4gPiA+ICAgIGNhbGli
cmF0ZXMgdGhlIHBoeSBwYXJhbWV0ZXJzLgo+ID4gPgo+ID4gPiBXaGVuIGNvbnRyb2xsZXIgdG8g
bm90aWZ5IGNvbm5lY3QgdGhhdCBkZXZpY2UgaXMgYWxyZWFkeSByZWFkeS4gSWYgd2UKPiA+ID4g
YWRqdXN0IHRoZSBkaXNjb25uZWN0aW9uIGxldmVsIGluIG5vdGlmeV9jb25uZWN0LCB0aGUgZGlz
Y29ubmVjdCBtYXkKPiA+ID4gaGF2ZSBiZWVuIHRyaWdnZXJlZCBhdCB0aGlzIHN0YWdlLiBTbyB3
ZSBuZWVkIHRvIGNoYW5nZSB0aGF0IGFzIGVhcmx5Cj4gPiA+IGFzIHBvc3NpYmxlLiBUaGVyZWZv
cmUsIHdlIGFkZCBhbiBhcGkgdG8gbm90aWZ5IHBoeSB0aGUgcG9ydCBzdGF0dXMgY2hhbmdlcy4K
PiA+IAo+ID4gSG93IGRvIHlvdSBrbm93IHRoYXQgdGhlIGRpc2Nvbm5lY3Qgd2lsbCBub3QgaGF2
ZSBhbHJlYWR5IGJlZW4gdHJpZ2dlcmVkIGF0Cj4gPiB0aGlzIHBvaW50LCB3aGVuIHRoZSBzdGF0
dXMgY2hhbmdlcz8KPiAKPiBUaGUgc3RhdHVzIGNoYW5nZSBvZiBjb25uZWN0aW9uIGlzIGJlZm9y
ZSBwb3J0IHJlc2V0Lgo+IEluIHRoaXMgc3RhZ2UsIHRoZSBkZXZpY2UgaXMgbm90IHBvcnQgZW5h
YmxlLCBhbmQgaXQgd2lsbCBub3QgdHJpZ2dlciBkaXNjb25uZWN0aW9uLgoKT2ssIHRoZW4gc2F5
IHRoYXQgaGVyZSBwbGVhc2UgOikKCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFN0YW5sZXkg
Q2hhbmcgPHN0YW5sZXlfY2hhbmdAcmVhbHRlay5jb20+Cj4gPiA+IC0tLQo+ID4gPiB2NiB0byB2
NyBjaGFuZ2U6Cj4gPiA+ICAgICBObyBjaGFuZ2UKPiA+ID4gdjUgdG8gdjYgY2hhbmdlOgo+ID4g
PiAgICAgTm8gY2hhbmdlCj4gPiA+IHY0IHRvIHY1IGNoYW5nZToKPiA+ID4gICAgIE5vIGNoYW5n
ZQo+ID4gPiB2MyB0byB2NCBjaGFuZ2U6Cj4gPiA+ICAgICBGaXggdGhlIHdhcm5pbmcgZm9yIGNo
ZWNrcGF0Y2ggd2l0aCBzdHJpY3QuCj4gPiA+IHYyIHRvIHYzIGNoYW5nZToKPiA+ID4gICAgIEFk
ZCBtb3JlIGNvbW1lbnRzIGFib3V0IHRoZSByZWFzb24gZm9yIGFkZGluZyB0aGlzIGFwaQo+ID4g
PiB2MSB0byB2MiBjaGFuZ2U6Cj4gPiA+ICAgICBObyBjaGFuZ2UKPiA+ID4gLS0tCj4gPiA+ICBk
cml2ZXJzL3VzYi9jb3JlL2h1Yi5jICB8IDEzICsrKysrKysrKysrKysgIGluY2x1ZGUvbGludXgv
dXNiL3BoeS5oIHwKPiA+ID4gMTMgKysrKysrKysrKysrKwo+ID4gPiAgMiBmaWxlcyBjaGFuZ2Vk
LCAyNiBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9j
b3JlL2h1Yi5jIGIvZHJpdmVycy91c2IvY29yZS9odWIuYyBpbmRleAo+ID4gPiBhNzM5NDAzYTll
NDUuLjg0MzNmZjg5ZGVhNiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy91c2IvY29yZS9odWIu
Ywo+ID4gPiArKysgYi9kcml2ZXJzL3VzYi9jb3JlL2h1Yi5jCj4gPiA+IEBAIC02MTQsNiArNjE0
LDE5IEBAIHN0YXRpYyBpbnQgaHViX2V4dF9wb3J0X3N0YXR1cyhzdHJ1Y3QgdXNiX2h1YiAqaHVi
LAo+ID4gaW50IHBvcnQxLCBpbnQgdHlwZSwKPiA+ID4gICAgICAgICAgICAgICByZXQgPSAwOwo+
ID4gPiAgICAgICB9Cj4gPiA+ICAgICAgIG11dGV4X3VubG9jaygmaHViLT5zdGF0dXNfbXV0ZXgp
Owo+ID4gPiArCj4gPiA+ICsgICAgIGlmICghcmV0KSB7Cj4gPiA+ICsgICAgICAgICAgICAgc3Ry
dWN0IHVzYl9kZXZpY2UgKmhkZXYgPSBodWItPmhkZXY7Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAg
ICAgICBpZiAoaGRldiAmJiAhaGRldi0+cGFyZW50KSB7Cj4gPiAKPiA+IFdoeSB0aGUgY2hlY2sg
Zm9yIG5vIHBhcmVudD8gIFBsZWFzZSBkb2N1bWVudCB0aGF0IGhlcmUgaW4gYSBjb21tZW50Lgo+
IAo+IEkgd2lsbCBhZGQgYSBjb21tZW50IDoKPiAvKiBPbmx5IG5vdGlmeSByb290aHViLiBUaGF0
IGlzLCB3aGVuIGhkZXYtPnBhcmVudCBpcyBlbXB0eS4gKi8KCkFsc28gZG9jdW1lbnQgdGhpcyB0
aGF0IHRoaXMgd2lsbCBvbmx5IGhhcHBlbiBmb3Igcm9vdCBodWIgc3RhdHVzCmNoYW5nZXMsIHRo
YXQncyBub3Qgb2J2aW91cyBpbiB0aGUgY2FsbGJhY2sgbmFtZSBvciBkb2N1bWVudGF0aW9uIG9y
CmFueXdoZXJlIGVsc2UgaGVyZS4KCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qg
dXNiX2hjZCAqaGNkID0gYnVzX3RvX2hjZChoZGV2LT5idXMpOwo+ID4gPiArCj4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICBpZiAoaGNkLT51c2JfcGh5KQo+ID4gPiArCj4gPiB1c2JfcGh5X25v
dGlmeV9wb3J0X3N0YXR1cyhoY2QtPnVzYl9waHksCj4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBvcnQxIC0KPiA+IDEsICpzdGF0
dXMsICpjaGFuZ2UpOwo+ID4gPiArICAgICAgICAgICAgIH0KPiA+ID4gKyAgICAgfQo+ID4gPiAr
Cj4gPiAKPiA+IFRoaXMgaXMgc2FmZSB0byBub3RpZnkgd2l0aCB0aGUgaHViIG11dGV4IHVubG9j
a2VkPyAgQWdhaW4sIGEgY29tbWVudCB3b3VsZAo+ID4gYmUgaGVscGZ1bCB0byBmdXR1cmUgcGVv
cGxlIGV4cGxhaW5pbmcgd2h5IHRoYXQgaXMgc28uCj4gPiAKPiAKPiBJIHdpbGwgYWRkIGEgY29t
bWVudDogCj4gLyogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgCj4gICogVGhlcmUgaXMgbm8gbmVlZCB0byBsb2NrIHN0
YXR1c19tdXRleCBoZXJlLCBiZWNhdXNlIHN0YXR1c19tdXRleCAgICAgCj4gICogcHJvdGVjdHMg
aHViLT5zdGF0dXMsIGFuZCB0aGUgcGh5IGRyaXZlciBvbmx5IGNoZWNrcyB0aGUgcG9ydCAgICAg
ICAgCj4gICogc3RhdHVzIHdpdGhvdXQgY2hhbmdpbmcgdGhlIHN0YXR1cy4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgCj4gICovICAKCkxvb2tzIGdvb2QsIGlmIHlvdSBkbyBpdCB3
aXRob3V0IHRoZSB0cmFpbGluZyB3aGl0ZXNwYWNlIDopCgp0aGFua3MsCgpncmVnIGstaAoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
