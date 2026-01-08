Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F04AD1D462
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 14:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JXHZ/8pkjbrgOMdujUDLYrX8nutY2RTMq9gw5+q3Vs=; b=VPm1yBPEaNG2wt
	PfiPVvHcmqWpEUbSyEprzC3DgNRKNVn2+qNvtaxUCEU9Uynntn2j7+oMshEMTsvdMYQHiw0d5XWux
	REXzsaDGmyxpC6XXxzm7cn90jGl5QC0rnZccnjxWKlIn74GamHxUCjpPrubK3Rx9ZKjMmXMRtDtJz
	19UlbP2BssB3OgUJHw9H9qw27raY6BdhWOGOoAe4xG4Gznaq5q30Wtl8KKDV0LWzUJpLvYAlPF+zm
	LyoZw2TP/y0lO22yZICY+4V34XNlGOSbQt1SQyK73pHib7y3P0yqhBG2v9KBOzbKpgnHPoWXEO2iV
	oHu1BvtBVOFVM1YuAqlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdrIP-0000000HP4q-3bkj;
	Thu, 08 Jan 2026 14:47:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdrIO-0000000HP42-3CKg;
	Thu, 08 Jan 2026 14:47:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=nQUgsMQ5jvqItU8dCXxHEIGvMiHPPcibzrzgNYGiwJA=; b=AziNj+c7Tbd95wPVaRZR5mJ4Ky
	r8jrV22J1sGuoRXbDW5YSdk+4XUtq6kPFt9dW0Ln4yVdVr4ru7b/bFuq4Bc60hnBQs1JLcVpqs7qI
	eLTSt2cKvoun2HFmc7K6VSPEBium//IZ1AA83SlqXTNPmpRO20ZpgsimF3FK379ftN0mVyFp7ee7v
	iCJmJvFULQIT4DgAWYgDUGAavXUydFuSh+SjlJ1H8hP/9CoDkvvtQq71/jicSZdxac0Kk+5L4KRDJ
	TAV0voLqNu31MjbOKq0dleYwtMgSvg/lfdlAUjCpFvSjK8Gz3SAAEl/Cyw//m+Ul/vAbEhR8zDdS6
	bHmC5m0g==;
Received: from vps0.lunn.ch ([156.67.10.101])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdrIM-0000000DPkw-09jP;
	Thu, 08 Jan 2026 14:47:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=nQUgsMQ5jvqItU8dCXxHEIGvMiHPPcibzrzgNYGiwJA=; b=fl
	HdKeHc0+XcPmpYUEA9fz7MduvxbadrOiIM5W5YDw2ab0FTSZgcJKREVD5H9GVO3/BkalG5jbYY5UC
	GCA27pJO/z3SsJ2leu9Qri705bymstZGiOkGCMI6rOobH/5pgtdudcczgy6GIlz4zH1mFt8ZdUVek
	+zlwn+btNPNdrLE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vdrID-001xo9-1h; Thu, 08 Jan 2026 15:47:17 +0100
Date: Thu, 8 Jan 2026 15:47:17 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, shawnguo@kernel.org,
	kernel@pengutronix.de, festevam@gmail.com, jun.li@nxp.com,
	Frank.Li@nxp.com, linux-phy@lists.infradead.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: fsl-imx8mq-usb: add debugfs to access control
 register
Message-ID: <0b61c962-9aa1-4275-a40a-220f6d7f1210@lunn.ch>
References: <20251224111716.2925597-1-xu.yang_2@nxp.com>
 <9870fd41-bafb-4ab0-91ff-8fcea53ca0a9@lunn.ch>
 <7bbvfiy5wceantklz6lav5rwak53yhasfvzddtsirqorcylrf6@rbcrocqftznj>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7bbvfiy5wceantklz6lav5rwak53yhasfvzddtsirqorcylrf6@rbcrocqftznj>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_144726_161373_D4ADE5B1 
X-CRM114-Status: GOOD (  25.85  )
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

T24gVGh1LCBKYW4gMDgsIDIwMjYgYXQgMDQ6MjI6MjRQTSArMDgwMCwgWHUgWWFuZyB3cm90ZToK
PiBPbiBXZWQsIERlYyAyNCwgMjAyNSBhdCAwMjo1MToxMVBNICswMTAwLCBBbmRyZXcgTHVubiB3
cm90ZToKPiA+IE9uIFdlZCwgRGVjIDI0LCAyMDI1IGF0IDA3OjE3OjE2UE0gKzA4MDAsIFh1IFlh
bmcgd3JvdGU6Cj4gPiA+IFRoZSBDUiBwb3J0IGlzIGEgc2ltcGxlIDE2LWJpdCBkYXRhL2FkZHJl
c3MgcGFyYWxsZWwgcG9ydCB0aGF0IGlzCj4gPiA+IHByb3ZpZGVkIGZvciBvbi1jaGlwIGFjY2Vz
cyB0byB0aGUgY29udHJvbCByZWdpc3RlcnMgaW5zaWRlIHRoZQo+ID4gPiBVU0IgMy4wIGZlbXRv
UEhZLiBXaGlsZSBhY2Nlc3MgdG8gdGhlc2UgcmVnaXN0ZXJzIGlzIG5vdCByZXF1aXJlZAo+ID4g
PiBmb3Igbm9ybWFsIFBIWSBvcGVyYXRpb24sIHRoaXMgaW50ZXJmYWNlIGVuYWJsZXMgeW91IHRv
IGFjY2Vzcwo+ID4gPiBzb21lIG9mIHRoZSBQSFnigJlzIGRpYWdub3N0aWMgZmVhdHVyZXMgZHVy
aW5nIG5vcm1hbCBvcGVyYXRpb24gb3IKPiA+ID4gdG8gb3ZlcnJpZGUgc29tZSBiYXNpYyBQSFkg
Y29udHJvbCBzaWduYWxzLgo+ID4gPiAKPiA+ID4gMyBkZWJ1Z2ZzIGZpbGVzIGFyZSBjcmVhdGVk
IHRvIHJlYWQgYW5kIHdyaXRlIGNvbnRyb2wgcmVnaXN0ZXJzLAo+ID4gPiBhbGwgdXNlIGhleGFk
ZWNpbWFsIGZvcm1hdDoKPiA+ID4gY3RybF9yZWdfYmFzZTogdGhlIHJlZ2lzdGVyIG9mZnNldCB0
byB3cml0ZSwgb3IgdGhlIHN0YXJ0IG9mZnNldAo+ID4gPiAgICAgICAgICAgICAgICB0byByZWFk
Lgo+ID4gPiBjdHJsX3JlZ19jb3VudDogaG93IG1hbnkgY29udGludW91cyByZWdpc3RlcnMgdG8g
YmUgcmVhZC4KPiA+ID4gY3RybF9yZWdfdmFsdWU6IHJlYWQgdG8gc2hvdyB0aGUgY29udGludW91
cyByZWdpc3RlcnMgdmFsdWUgZnJvbQo+ID4gPiAgICAgICAgICAgICAgICAgdGhlIG9mZnNldCBp
biBjdHJsX3JlZ19iYXNlLCB0byBjdHJsX3JlZ19iYXNlCj4gPiA+ICAgICAgICAgICAgICAgICAr
IGN0cmxfcmVnX2NvdW50IC0gMSwgb25lIGxpbmUgZm9yIG9uZSByZWdpc3Rlci4KPiA+ID4gICAg
ICAgICAgICAgICAgIHdoZW4gd3JpdGUsIG92ZXJyaWRlIHRoZSByZWdpc3RlciBhdCBjdHJsX3Jl
Z19iYXNlLAo+ID4gPiAgICAgICAgICAgICAgICAgb25lIHRpbWUgY2FuIG9ubHkgY2hhbmdlIG9u
ZSAxNmJpdHMgcmVnaXN0ZXIuCj4gPiAKPiA+IEFyZSB0aGUgcmVnaXN0ZXJzIG9wZW5seSBkb2N1
bWVudGVkIHNvbWV3aGVyZT8gQ291bGQgeW91IGluY2x1ZGUgYQo+ID4gbGluayBpbiB0aGUgY29t
bWl0IG1lc3NhZ2UuCj4gCj4gV2UgaW50ZWdyYXRlIGEgU05QUyBQSFkgaW4gU29jLiBTbyB0aGUg
cmVnaXN0ZXJzIGFyZSBkb2N1bWVudGVkCj4gaW4gU05QUyBkb2MuIEFueXdheSwgSSBjYW4gYWRk
IGEgbGluayBmb3IgcmVmZXJlbmNlLgoKSHVtbSwgc28gdGhlIHJlZ2lzdGVycyBhcmUgZGVmaW5l
ZCBieSBhIFN5bm9wc3lzIGRhdGFib29rPwoKU2hvdWxkbid0IHRoaXMgcGF0Y2ggYmUgc3BsaXQg
aW50byB0d28/IFRoZSBhY2Nlc3MgbWVjaGFuaXNtIHRvIHRoZQpyZWdpc3RlcnMgaXMgc3BlY2lm
aWMgdG8gdGhlIGlteDhtcS4gQnV0IHRoZSByZWdpc3RlcnMgdGhlbXNlbHZlcwpzaG91bGQgYmUg
cGFydCBvZiB0aGUgZ2VuZXJpYyBTTlBTIFBIWSBkcml2ZXIgd2hpY2ggc2hvdWxkIGJlIHNoYXJl
ZApieSBhbGwgZGV2aWNlcyB1c2luZyB0aGlzIGxpY2Vuc2VkIElQPwoKSSBzaG91bGQgc2F5LCBn
ZW5lcmljIFBIWSBpcyBub3QgbXkgdXN1YWwgc3Vic3lzdGVtLiBCdXQgaSd2ZSBzZWVuIHRoZQpt
ZXNzIGNoaXAgdmVuZG9ycyBtYWtlIHdpdGggbGljZW5zZWQgU3lub3BzeXMgRXRoZXJuZXQgZHJp
dmVycywgbG90cwpvZiBibGluZCBjb3B5L3Bhc3RlLCBubyByZWFsIHRob3VnaHQgYWJvdXQgd2hh
dCBpcyBnZW5lcmljIHRvIHRoZSBJUAphbmQgd2hhdCBpcyBzcGVjaWZpYyB0byB0aGUgU29DIGlu
dGVncmF0aW9uLCBhbmQgd2hhdCBjYW4gYmUgc2hhcmVkCmJldHdlZW4gZGlmZmVyZW50IFNvQyBp
bnRlZ3JhdGlvbidzLCBldGMuIEkganVzdCB3YW50IHRvIG1ha2Ugc3VyZSB0aGUKc2FtZSBpc3N1
ZXMgYXJlIG5vdCBiZWluZyByZXBlYXRlZCBoZXJlLgoKCUFuZHJldwoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
