Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90B44C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 00:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXBziE5I6SQeMFgUopJsk0Vlc966xuPCFTK6CDbMVQs=; b=C3OycxqwDQrxuq
	Hznh0n5n56fy2R7JzGq4HBJ7ZX7Qdd8FrNFeRyiBut1RLiDypZ8MlJxitNUFP76svMTH8xAckh1ov
	UJx2ZBPgD0QFKaCLPDEHZ9Q+oUfs8QlKTQJn82ocGPSjJdRPA/e51zNnRW5LTa8ANnqkHwCXhaZlW
	qwpVd3SFmtj/ZkY1VncYE9+gy2RrX1PByg6x8SEDO99Z+J42fdDtCKWkzM8PMQs11Ex4+QkLK3SmJ
	GG8o6PUtpNUgQgnagWcKxPgpuGnZGsbA+Tzxwr1nuJsGPoeZgLrbVyi2Uup9hRivj4FHJzMlTu0Uz
	v33qc0q0V2cfA/FE7Awg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouNEi-00EzuY-0E; Mon, 14 Nov 2022 00:22:04 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouNEY-00Ezsc-41; Mon, 14 Nov 2022 00:21:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9C1A23A;
	Sun, 13 Nov 2022 16:21:56 -0800 (PST)
Received: from slackpad.lan (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5DF6F3F73B;
	Sun, 13 Nov 2022 16:21:48 -0800 (PST)
Date: Mon, 14 Nov 2022 00:20:25 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Samuel Holland <samuel@sholland.org>
Cc: Icenowy Zheng <uwu@icenowy.me>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, Kishon Vijay
 Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v3 10/11] phy: sun4i-usb: Replace types with explicit
 quirk flags
Message-ID: <20221114002025.351d3084@slackpad.lan>
In-Reply-To: <7b2606df-3ae5-2699-66bd-12815ffc785b@sholland.org>
References: <20221106154826.6687-1-andre.przywara@arm.com>
	<20221106154826.6687-11-andre.przywara@arm.com>
	<D8382138-8943-46F7-B6A6-F83DF98E26AE@icenowy.me>
	<7b2606df-3ae5-2699-66bd-12815ffc785b@sholland.org>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_162154_229426_2EAE0B3C 
X-CRM114-Status: GOOD (  16.63  )
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

T24gU3VuLCAxMyBOb3YgMjAyMiAxNzo1MjozMyAtMDYwMApTYW11ZWwgSG9sbGFuZCA8c2FtdWVs
QHNob2xsYW5kLm9yZz4gd3JvdGU6Cgo+IE9uIDExLzYvMjIgMDk6NTQsIEljZW5vd3kgWmhlbmcg
d3JvdGU6Cj4gPiAKPiA+IAo+ID4g5LqOIDIwMjLlubQxMeaciDbml6UgR01UKzA4OjAwIOS4i+WN
iDExOjQ4OjI1LCBBbmRyZSBQcnp5d2FyYSA8YW5kcmUucHJ6eXdhcmFAYXJtLmNvbT4g5YaZ5Yiw
OiAgCj4gPj4gU28gZmFyIHdlIHdlcmUgYXNzaWduaW5nIHNvbWUgY3J1ZGUgInR5cGUiIChTb0Mg
bmFtZSwgcmVhbGx5KSB0byBlYWNoCj4gPj4gQWxsd2lubmVyIFVTQiBQSFkgbW9kZWwsIHRoZW4g
Z3VhcmRpbmcgY2VydGFpbiBxdWlya3MgYmFzZWQgb24gdGhpcy4KPiA+PiBUaGlzIGRvZXMgbm90
IG9ubHkgbG9vayB3ZWlyZCwgYnV0IGdldHMgbW9yZSBvciBtb3JlIGN1bWJlcnNvbWUgdG8KPiA+
PiBtYWludGFpbi4KPiA+Pgo+ID4+IFJlbW92ZSB0aGUgYm9ndXMgdHlwZSBuYW1lcyBhbHRvZ2V0
aGVyLCBpbnN0ZWFkIGludHJvZHVjZSBmbGFncyBmb3IgZWFjaAo+ID4+IHF1aXJrLCBhbmQgZXhw
bGljaXRseSBjaGVjayBmb3IgdGhlbS4KPiA+PiBUaGlzIGltcHJvdmVzIHJlYWRhYmlsaXR5LCBh
bmQgc2ltcGxpZmllcyBmdXR1cmUgZXh0ZW5zaW9ucy4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6
IEFuZHJlIFByenl3YXJhIDxhbmRyZS5wcnp5d2FyYUBhcm0uY29tPgo+ID4+IC0tLQo+ID4+IGRy
aXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMgfCA1MCArKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0KPiA+PiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMzUgZGVs
ZXRpb25zKC0pCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYWxsd2lubmVyL3Bo
eS1zdW40aS11c2IuYyBiL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMKPiA+
PiBpbmRleCA1MWZiMjRjNmRjYjMuLjQyMjEyOWM2NjI4MiAxMDA2NDQKPiA+PiAtLS0gYS9kcml2
ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5jCj4gPj4gKysrIGIvZHJpdmVycy9waHkv
YWxsd2lubmVyL3BoeS1zdW40aS11c2IuYwo+ID4+IEBAIC05OSwyNyArOTksMTcgQEAKPiA+PiAj
ZGVmaW5lIERFQk9VTkNFX1RJTUUJCQltc2Vjc190b19qaWZmaWVzKDUwKQo+ID4+ICNkZWZpbmUg
UE9MTF9USU1FCQkJbXNlY3NfdG9famlmZmllcygyNTApCj4gPj4KPiA+PiAtZW51bSBzdW40aV91
c2JfcGh5X3R5cGUgewo+ID4+IC0Jc3VuNGlfYTEwX3BoeSwKPiA+PiAtCXN1bjZpX2EzMV9waHks
Cj4gPj4gLQlzdW44aV9hMzNfcGh5LAo+ID4+IC0Jc3VuOGlfYTgzdF9waHksCj4gPj4gLQlzdW44
aV9oM19waHksCj4gPj4gLQlzdW44aV9yNDBfcGh5LAo+ID4+IC0Jc3VuOGlfdjNzX3BoeSwKPiA+
PiAtCXN1bjUwaV9hNjRfcGh5LAo+ID4+IC0Jc3VuNTBpX2g2X3BoeSwKPiA+PiAtfTsKPiA+PiAt
Cj4gPj4gc3RydWN0IHN1bjRpX3VzYl9waHlfY2ZnIHsKPiA+PiAJaW50IG51bV9waHlzOwo+ID4+
IAlpbnQgaHNpY19pbmRleDsKPiA+PiAtCWVudW0gc3VuNGlfdXNiX3BoeV90eXBlIHR5cGU7Cj4g
Pj4gCXUzMiBkaXNjX3RocmVzaDsKPiA+PiAJdTMyIGhjaV9waHlfY3RsX2NsZWFyOwo+ID4+IAl1
OCBwaHljdGxfb2Zmc2V0Owo+ID4+IAlib29sIGRlZGljYXRlZF9jbG9ja3M7Cj4gPj4gCWJvb2wg
cGh5MF9kdWFsX3JvdXRlOwo+ID4+ICsJYm9vbCBwaHkyX2lzX2hzaWM7ICAKPiA+IAo+ID4gTWF5
YmUgdXNlIGEgYGludCBoc2ljX3BoeWAgaW5zdGVhZD8gQnV0IHRoZSBwcm9ibGVtIGlzIHRoaXMg
cHJhY3RpY2UgaXMKPiA+IGFzc3VtaW5nIFVTQjAgY291bGQgbm90IGJlIEhTSUMgLS0gYWx0aG91
Z2ggVVNCMCBpcyB1c3VhbGx5IE9URy4gIAo+IAo+IFRoZXJlIGlzIGFscmVhZHkgYSBgaHNpY19p
bmRleGAgdmFyaWFibGUgaW4gdGhlIHN0cnVjdCB3ZSBjYW4gdXNlLgoKSGEsIGluZGVlZCwgZ29v
ZCBmaW5kISBBbmQgd2UgYXJlIGFscmVhZHkgY2hlY2tpbmcgZm9yIHRoZSBzYW1lCmNvbmRpdGlv
biAoaXMgdGhpcyB0aGUgSFNJQyBwb3J0PykgdXNpbmcgdGhpcyB2YXJpYWJsZS4gU2F2ZXMgb25l
IG1vcmUKbWVtYmVyIGluIHRoZSBzdHJ1Y3QuCgpUaGFua3MhCkFuZHJlCgoKPiAKPiBSZWdhcmRz
LAo+IFNhbXVlbAo+IAo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
