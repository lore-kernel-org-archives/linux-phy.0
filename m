Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF6BEC982C7
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jan 2026 15:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+YT6lD+f84CFZxZZw3gzSEIAkBguBiR4Qo1zG5x7X/I=; b=FKR1uAG2+4zhvf
	nd7mQWaInZjN39879UK8vT9ngSlMtdF9i+O8X/yb3j9r0nXC5i1F5PhZTx2IDFKk4j9fJSiIfZxqY
	PVC+mWpcdvcba9pCFS6oUBjUi+31OiQiM3k2MO082Q/IbZeIzxAQK9I/rrNqWuBwPsvl3UGB1LwWA
	WNWkzCf0dQYRpzUUWHmOdEWYQBXuz71GBqRDAhQQqkDLt1t5MyU6VqYPzRuGciq4BfOS2rEjevWmV
	gcR0ZL6lZSrj5qJqWObTigFSkIj6ettuCNT4hn3ZVoQ2eEBHpdRn1aiFmxXtbmWwqZlFtI/Xl9nCQ
	/EMEhWgzBQUWl+p9ciOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vglbW-0000000ELVu-24yA;
	Fri, 16 Jan 2026 15:19:14 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vglbS-0000000ELUM-37aG;
	Fri, 16 Jan 2026 15:19:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=4jzKf9K6CFuNeCcOT9ezQxETaHyJXF+75vK3fagkWV0=; b=3O
	oSGdO79FDY0Jzz/pb91kj6GNBfN+05zx4fjlyVR47VhJnOlnIrsnwt+SojRu3D1cZ5jcekwumRGKa
	OuzysH1W9Zg2tHLFsBOODK3bCKYcUGeKBtYTf7zfaeBpqwHEZAh/g8two2dzOgngWP+jOpmjOrhfC
	RTCY6l9Jl3djMpU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vglbJ-0035XQ-MB; Fri, 16 Jan 2026 16:19:01 +0100
Date: Fri, 16 Jan 2026 16:19:01 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: Frank Li <Frank.li@nxp.com>, vkoul@kernel.org,
	neil.armstrong@linaro.org, shawnguo@kernel.org,
	kernel@pengutronix.de, festevam@gmail.com, jun.li@nxp.com,
	linux-phy@lists.infradead.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] phy: fsl-imx8mq-usb: add debugfs to access control
 register
Message-ID: <6d27a8b1-1407-40ff-945b-927ef0a39eb1@lunn.ch>
References: <20260108083641.2119616-1-xu.yang_2@nxp.com>
 <aV/Qha0CQ+LJHo76@lizhi-Precision-Tower-5810>
 <das6ud7gep5hrcdn4bnmoyl2pb7okbxslpnawch2osaezd6xm5@psbizlufjec4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <das6ud7gep5hrcdn4bnmoyl2pb7okbxslpnawch2osaezd6xm5@psbizlufjec4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_071910_784065_F90FDE0D 
X-CRM114-Status: GOOD (  23.66  )
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

T24gRnJpLCBKYW4gMTYsIDIwMjYgYXQgMDc6Mjk6MzlQTSArMDgwMCwgWHUgWWFuZyB3cm90ZToK
PiBPbiBUaHUsIEphbiAwOCwgMjAyNiBhdCAxMDo0MzowMUFNIC0wNTAwLCBGcmFuayBMaSB3cm90
ZToKPiA+IE9uIFRodSwgSmFuIDA4LCAyMDI2IGF0IDA0OjM2OjQxUE0gKzA4MDAsIFh1IFlhbmcg
d3JvdGU6Cj4gPiA+IFRoZSBDUiBwb3J0IGlzIGEgc2ltcGxlIDE2LWJpdCBkYXRhL2FkZHJlc3Mg
cGFyYWxsZWwgcG9ydCB0aGF0IGlzCj4gPiA+IHByb3ZpZGVkIGZvciBvbi1jaGlwIGFjY2VzcyB0
byB0aGUgY29udHJvbCByZWdpc3RlcnMgaW5zaWRlIHRoZQo+ID4gPiBVU0IgMy4wIGZlbXRvUEhZ
WzFdLgo+ID4gCj4gPiAKPiA+ID4gV2hpbGUgYWNjZXNzIHRvIHRoZXNlIHJlZ2lzdGVycyBpcyBu
b3QgcmVxdWlyZWQKPiA+ID4gZm9yIG5vcm1hbCBQSFkgb3BlcmF0aW9uLCB0aGlzIGludGVyZmFj
ZSBlbmFibGVzIHlvdSB0byBhY2Nlc3MKPiA+ID4gc29tZSBvZiB0aGUgUEhZ4oCZcyBkaWFnbm9z
dGljIGZlYXR1cmVzIGR1cmluZyBub3JtYWwgb3BlcmF0aW9uIG9yCj4gPiA+IHRvIG92ZXJyaWRl
IHNvbWUgYmFzaWMgUEhZIGNvbnRyb2wgc2lnbmFscy4KPiA+IAo+ID4gU2ltcGxlIHNhaWQgIkV4
cG9ydCB0aGVzZSByZWdpc3RlcnMgYnkgZGVidWdmcyB0byBoZWxwIFBIWeKAmXMgZGlhZ25vc3Rp
Yy4iCj4gPiBzaG91bGQgYmUgZW5vdWdoCj4gCj4gT0suCj4gCj4gPiAKPiA+ID4KPiA+ID4gMyBk
ZWJ1Z2ZzIGZpbGVzIGFyZSBjcmVhdGVkIHRvIHJlYWQgYW5kIHdyaXRlIGNvbnRyb2wgcmVnaXN0
ZXJzLAo+ID4gPiBhbGwgdXNlIGhleGFkZWNpbWFsIGZvcm1hdDoKPiA+ID4gY3RybF9yZWdfYmFz
ZTogdGhlIHJlZ2lzdGVyIG9mZnNldCB0byB3cml0ZSwgb3IgdGhlIHN0YXJ0IG9mZnNldAo+ID4g
PiAgICAgICAgICAgICAgICB0byByZWFkLgo+ID4gPiBjdHJsX3JlZ19jb3VudDogaG93IG1hbnkg
Y29udGludW91cyByZWdpc3RlcnMgdG8gYmUgcmVhZC4KPiA+ID4gY3RybF9yZWdfdmFsdWU6IHJl
YWQgdG8gc2hvdyB0aGUgY29udGludW91cyByZWdpc3RlcnMgdmFsdWUgZnJvbQo+ID4gPiAgICAg
ICAgICAgICAgICAgdGhlIG9mZnNldCBpbiBjdHJsX3JlZ19iYXNlLCB0byBjdHJsX3JlZ19iYXNl
Cj4gPiA+ICAgICAgICAgICAgICAgICArIGN0cmxfcmVnX2NvdW50IC0gMSwgb25lIGxpbmUgZm9y
IG9uZSByZWdpc3Rlci4KPiA+ID4gICAgICAgICAgICAgICAgIHdoZW4gd3JpdGUsIG92ZXJyaWRl
IHRoZSByZWdpc3RlciBhdCBjdHJsX3JlZ19iYXNlLAo+ID4gPiAgICAgICAgICAgICAgICAgb25l
IHRpbWUgY2FuIG9ubHkgY2hhbmdlIG9uZSAxNmJpdHMgcmVnaXN0ZXIuCj4gPiAKPiA+IGhvdyBt
YW55IHJlZ3M/IGhvdyBhYm91dCBjcmVhdGUgZmlsZSByZWdOTk4sCj4gCj4gPkZyb20gMHgwIHRv
IDB4MjAxRi4KClJhdGhlciB0aGFuIHJlaW52ZW50IHRoZSB3aGVlbCwgY291bGQgeW91IHVzZSBy
ZWdtYXA/CgpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xMi4xL3NvdXJjZS9k
cml2ZXJzL2Jhc2UvcmVnbWFwL3JlZ21hcC1kZWJ1Z2ZzLmMjTDU0NgoKUmVnbWFwIHNob3VsZCBi
ZSBhYmxlIHRvIHByb3ZpZGUgYSBkZWJ1Z2ZzIGludGVyZmFjZSBmb3IgeW91LCBubwpkcml2ZXIg
Y29kZSBuZWVkZWQuCgpUaGlzIHdpbGwgYWxzbyBoZWxwIHlvdSB3aXRoIHRoZSBhYnN0cmFjdGlv
biBiZXR3ZWVuIHRoZSBjb3JlIGdlbmVyaWMKcGFydCBvZiB0aGUgUEhZIGRyaXZlciBhbmQgdGhl
IFNvQyBpbnRlZ3JhdGlvbiBnbHVlLiBZb3UgcGFzcyB0aGUKcmVnbWFwIHRvIHRoZSBjb3JlIGRy
aXZlciwgYW5kIHRoZSBmdW5ueSBtdXhpbmcgdGhyb3VnaCB0d28gcmVnaXN0ZXJzCmlzIGhpZGRl
biBhd2F5IGZyb20gdGhlIGNvcmUuIElmIHRoZSBuZXh0IFNvQyBpbnRlZ3JhdGVkIHVzZXMgcGxh
bgpNTUlPLCB0aGF0IFNvQyBnbHVlIGRyaXZlciBjYW4gaW5zdGFudGlhdGUgYW4gTU1JTyByZWdt
YXAuCgpVc2luZyByZWdtYXAgaXMgYSBnb29kIGlkZWEgZm9yIGNvcmUgZ2VuZXJpYyBkcml2ZXJz
IHdoaWNoIGNhbiBiZQppbnRlZ3JhdGVkIGludG8gU29DcyBpbiBkaWZmZXJlbnQgd2F5cy4gSXQg
aGlkZXMgdGhlIFNvQyBkZXRhaWxzCmJlaGluZCBhIHdlbGwga25vd24gQVBJLgoKICAgICAgQW5k
cmV3CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
