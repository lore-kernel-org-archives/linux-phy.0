Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B37160703A7
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 14:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vmlSGn5S;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=kTIJkYx9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DRicSu+AgssAP/eyU6M75f5IuDRPxoIzCJFNQYdUGj0=; b=vmlSGn5S0Z7magJwqn3brmzsb4
	NBYGngaD7xxkjv+yebCQ7VKcScJu5lbvr4OFVMPeDUdwDa70hcQrIej8BbQ6zb9igGbbddHb3loa3
	5JjHwrSSeEjYjZRuF3+0FoSXiEnST/MaL/W8+lJgPhpkVTbCUEw5JljI6hqLPCcbdoRp1yQdNk7J2
	+L8ve1bnDjT39h0tMUot3mVIaxCPZ2L0RI/DORNQyErM8WHZGG3IU+JuCembX50Cse+bFLPz72/No
	Q5Ly53stPbSs51yJSl5z52VM+xKF/IuDFGKYO3TmfHLLd5PomIpATcxFumIRNA4sUSatbrfCwBQWG
	ZgY7S0GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtIj-0000000Gsji-3VpI;
	Mon, 02 Nov 2026 14:46:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtIi-0000000Gsip-2g07;
	Mon, 02 Nov 2026 14:46:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C830F600DB;
	Mon,  2 Nov 2026 14:46:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51E231F00A17;
	Mon,  2 Nov 2026 14:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793630779;
	bh=1ed4ABVb5WuZx7ievrj1cvm+vrmzhLmj5yV4zTMhJQg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kTIJkYx932KW0rEFWbZ55+lbTtsZKF+4aG6/wsWGYG04/dedotlgN7zujoh8O2jQf
	 z+v8UjodVuo6CFRkW679nsHC4p/DPLC4jCFE523SoM4wk8cUzXSXbnZVaUMoCJZXuW
	 H7iYQvsi75Ucn/GauIsg7HpX1mHcJ3IuY+tXkV7YDSJu67E7yGUYsr0Ucvq2KDygtH
	 1ZYEkQ7mdXkmN3HmICVak/FMRLN+Vy77pVLZFXMKyUiGTLR2X60Yuk+8uWN/N3swsi
	 c+MBOCgIpfmjr3DeQn+wDTIRHm+vegoCu+ll1N4Ajue1ZEef9SKd6+TFT5wGzqqYYc
	 +SCxPpRiNg7XA==
Date: Mon, 2 Nov 2026 08:46:16 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	"open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH 2/9] dt-bindings: phy: bcm-ns-usb3-phy: Describe the NSP
 variant
Message-ID: <20261102144616.GE1232511-robh@kernel.org>
References: <20261021172819.668120-1-florian.fainelli@broadcom.com>
 <20261021172819.668120-3-florian.fainelli@broadcom.com>
 <20261030182151.GA1206797-robh@kernel.org>
 <e25714a5-98b3-4a0e-ad9a-a644b5485749@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e25714a5-98b3-4a0e-ad9a-a644b5485749@broadcom.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gRnJpLCBPY3QgMzAsIDIwMjYgYXQgMTI6MTQ6NTJQTSAtMDcwMCwgRmxvcmlhbiBGYWluZWxs
aSB3cm90ZToKPiBPbiAxMC8zMC8yNiAxMToyMSwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPiBPbiBX
ZWQsIE9jdCAyMSwgMjAyNiBhdCAxMDoyODoxMUFNIC0wNzAwLCBGbG9yaWFuIEZhaW5lbGxpIHdy
b3RlOgo+ID4gPiBOb3J0aHN0YXIgUGx1cyB1c2VzIHRoZSBOb3J0aHN0YXIgQnggUEhZIHJlZ2lz
dGVyIHNlcXVlbmNlIGJ1dCBhbHNvCj4gPiA+IHJlcXVpcmVzIGNvb3JkaW5hdGVkIFVTQjIgYW5k
IFVTQjMgY29yZSByZXNldHMgYW5kIGEgVVNCMiBJRE0gaW50ZXJmYWNlCj4gPiA+IGNsb2NrIGVu
YWJsZS4KPiA+ID4gCj4gPiA+IEFkZCBhbiBOU1AgY29tcGF0aWJsZSB3aXRoIGEgcmVxdWlyZWQg
VVNCMiBETVAgcGhhbmRsZS4gRGVzY3JpYmUgdGhlCj4gPiA+IHNoYXJlZCBQSFkgcmVsYXRpb25z
aGlwIHdpdGggRUhDSSwgT0hDSSBhbmQgeEhDSSBzbyBpbml0aWFsaXphdGlvbgo+ID4gPiBmaW5p
c2hlcyBiZWZvcmUgYW55IGhvc3Qgc3RhcnRzIG9wZXJhdGluZy4KPiA+ID4gCj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29t
Pgo+ID4gPiAtLS0KPiA+ID4gICAuLi4vYmluZGluZ3MvcGh5L2JjbS1ucy11c2IzLXBoeS55YW1s
ICAgICAgICAgfCAyMyArKysrKysrKysrKysrKysrKysrCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQs
IDIzIGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IzLXBoeS55YW1sIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMy1waHkueWFtbAo+ID4gPiBp
bmRleCA3ZmQ0MTlkYjQ1ZDAuLjAwZDY5Yjg2Y2JmZiAxMDA2NDQKPiA+ID4gLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMy1waHkueWFtbAo+ID4g
PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2Iz
LXBoeS55YW1sCj4gPiA+IEBAIC0xNCw2ICsxNCw5IEBAIGRlc2NyaXB0aW9uOiB8Cj4gPiA+ICAg
ICBLbm93biBCMTogQkNNNDcwNyByZXYgNgo+ID4gPiAgICAgS25vd24gQzA6IEJDTTQ3MDk0IHJl
diAwCj4gPiA+ICsgIE5vcnRoc3RhciBQbHVzIHVzZXMgdGhlIEJ4IHByb2dyYW1taW5nIHNlcXVl
bmNlLCB3aXRoIGNvb3JkaW5hdGVkIFVTQjIgYW5kCj4gPiA+ICsgIFVTQjMgcmVzZXRzLiBJdHMg
UEhZIGlzIHNoYXJlZCBieSB0aGUgRUhDSSwgT0hDSSBhbmQgeEhDSSBjb250cm9sbGVycy4KPiA+
ID4gKwo+ID4gPiAgIG1haW50YWluZXJzOgo+ID4gPiAgICAgLSBSYWZhxYIgTWnFgmVja2kgPHJh
ZmFsQG1pbGVja2kucGw+Cj4gPiA+IEBAIC0yMiw2ICsyNSw3IEBAIHByb3BlcnRpZXM6Cj4gPiA+
ICAgICAgIGVudW06Cj4gPiA+ICAgICAgICAgLSBicmNtLG5zLWF4LXVzYjMtcGh5Cj4gPiA+ICAg
ICAgICAgLSBicmNtLG5zLWJ4LXVzYjMtcGh5Cj4gPiA+ICsgICAgICAtIGJyY20sbnNwLXVzYjMt
cGh5Cj4gPiA+ICAgICByZWc6Cj4gPiA+ICAgICAgIGRlc2NyaXB0aW9uOiBhZGRyZXNzIG9mIE1E
SU8gYnVzIGRldmljZQo+ID4gPiBAQCAtMzIsNiArMzYsMTMgQEAgcHJvcGVydGllczoKPiA+ID4g
ICAgICAgZGVzY3JpcHRpb246Cj4gPiA+ICAgICAgICAgUGhhbmRsZSB0byB0aGUgRE1QIChEZXZp
Y2UgTWFuYWdlbWVudCBQbHVnaW4pIHN5c2Nvbgo+ID4gPiArICB1c2IyLWRtcC1zeXNjb246Cj4g
PiAKPiA+IGJyY20sdXNiMi1kbXAKPiAKPiBUaGF0IHdvdWxkIGJlIGluY29uc2lzdGVudCB3aXRo
IHRoZSB1c2IzLWRtcC1zeXNjb24gcHJvcGVydHkgdGhhdCBpcwo+IHByZS1leGlzdGluZywgaGVu
Y2UgdGhlIG5hbWUgY2hvc2VuIGhlcmUuCgpJJ20gbm90IHN1cmUgY29uc2lzdGVuY3kgaXMgcmVh
bGx5IGJldHRlciBoZXJlLCBidXQgb2theS4KClJvYgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
