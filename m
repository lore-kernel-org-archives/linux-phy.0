Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57F28C53209
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 20:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxzD9/8NS4pzF7CIJ120jHs0J6fuI2YMHoVJpcc42bo=; b=KMmrIKKy8cE2Mo
	msBaylRC51HQVJ81Os7mNXNOXbqeKUJgfAcJj2HyWYZyQx1Qi4kD7HdkfUM07qrlxsl7q3IIZJeXa
	jxmirJ20jXaoqOMFnhb11tuvBOlvWlXkGD6LuN/MJF19Chnftmy7VzK9KwTBlNna9+vTBYhjnJwzq
	vzVecHDiyBHDiq5ZfOejCJjmnPkCxuPrenJI8Wj7Vxf9g+2nJuFHz1ym2GBv6XdZbhQkqjyHhmY3u
	T1oXDPSoxQPJ0xVYmov+I1N0kvAnIuxjmZ5fiQ0WYd7/mDetvXaNEDQWjsrmkE+3wg8pRj5AwpJtg
	WWz20ujzjqtSggzofx3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woRhJ-00000003oVw-3iEh;
	Mon, 27 Jul 2026 20:13:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woRhI-00000003oVe-3Ttc
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 20:13:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CA00B60008;
	Mon, 27 Jul 2026 20:13:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0BEB1F000E9;
	Mon, 27 Jul 2026 20:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785183191;
	bh=5hxWJ8fLVh63dP5SxRY8c9B0C70IaVjp/E0hFXzcp0c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HC5MTNkkbzsz9CmhVs6Yg86O6w7xdM5/0MxP8D/qMOSFxqVMRvee/hvpwFfYdfZWk
	 BRGUV263E7jlSEH4z7VK0+PPqyrHcJaLrxy5eIBHQdPum7Q8XDbmIHI/OqpUe8ziqg
	 /inc46OwgLkpQ4mEN37gEgCNX4vbyav1fzbUPgmhUg3fEfUuwjqg6YyECihAAnAXJX
	 wZ0d2j4F7FY3LiBB9J7CZ1uRnw/yyVjcm0IfZceAOQPCMvIS5mXotX4rGbTDxmDfHx
	 CvIwK+vmFH6mfYaey90uDLYB3iRWQlJSM8xH9dstQz2Fb9gTyFXgivEvvtNIg8K8CE
	 7HhEiCRFIY/og==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 12/12] ARM: dts: zte: Declare zx297520v3 CRM device
 nodes
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, mfd@lists.linux.dev, lee@kernel.org, robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260727-zx29clk-v8-12-7a107b00f1dd@gmail.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-12-7a107b00f1dd@gmail.com>
Date: Mon, 27 Jul 2026 20:13:10 +0000
Message-Id: <20260727201310.B0BEB1F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBsc3Bjcm0gZGV2
aWNlIGRlZmluZXMgYSBoYXJkd2FyZSByZXNldCBkZXBlbmRlbmN5IG9uIG1hdHJpeGNybSAoWlgy
OTc1MjBWM19MU1BfUkVTRVQpLCBidXQgdGhlIENSTSBkcml2ZXJzIG5ldmVyIHJlcXVlc3Qgb3Ig
ZGVhc3NlcnQgaXQsIHdoaWNoIGNhbiBsZWFkIHRvIGEgaGFyZHdhcmUgaGFuZyB3aGVuIGFjY2Vz
c2luZyB0aGUgcmVnaXN0ZXJzLgotIFtMb3ddIE5vZGVzIHVuZGVyIHRoZSBgc29jYCBidXMgYXJl
IG5vdCBzb3J0ZWQgYnkgdGhlaXIgdW5pdCBhZGRyZXNzLgotIFtMb3ddIE5vbi1nZW5lcmljIG5v
ZGUgbmFtZSBgc3lzY29uLXJlYm9vdGAuCi0tCgotLS0gUGF0Y2ggWzEyXTogW1BBVENIIHY4IDEy
LzEyXSBBUk06IGR0czogenRlOiBEZWNsYXJlIHp4Mjk3NTIwdjMgQ1JNIGRldmljZSBub2RlcyAt
LS0KY29tbWl0IGFlNDI0OTJiOGVmNmZjZTQ3MzE2NDZmNjkwN2JhNjNkYzk0ZTlmZmEKQXV0aG9y
OiBTdGVmYW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKQVJNOiBkdHM6
IHp0ZTogRGVjbGFyZSB6eDI5NzUyMHYzIENSTSBkZXZpY2Ugbm9kZXMKClRoaXMgY29tbWl0IHdp
cmVzIHVwIHRoZSB6eDI5NzUyMHYzIENSTSBkZXZpY2Ugbm9kZXMsIGNsb2NrIGlucHV0cywKYW5k
IHJlc2V0cywgZ2V0dGluZyByaWQgb2YgdGhlIHBsYWNlaG9sZGVyIHVhcnRjbGsgbm9kZS4KCj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3p0ZS96eDI5NzUyMHYzLmR0c2kgYi9hcmNo
L2FybS9ib290L2R0cy96dGUvengyOTc1MjB2My5kdHNpCj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9k
dHMvenRlL3p4Mjk3NTIwdjMuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3p0ZS96eDI5
NzUyMHYzLmR0c2kKClsgLi4uIF0KCj4gQEAgLTcwLDEzICs3NSw3NCBAQCBnaWM6IGludGVycnVw
dC1jb250cm9sbGVyQGYyMDAwMDAwIHsKPiAgCQkJICAgICAgPDB4ZjIwNDAwMDAgMHgyMDAwMD47
Cj4gIAkJfTsKPiAgCj4gKwkJdG9wY3JtOiBjbG9jay1jb250cm9sbGVyQDEzYjAwMCB7Cj4gKwkJ
CWNvbXBhdGlibGUgPSAienRlLHp4Mjk3NTIwdjMtdG9wY3JtIiwgInN5c2NvbiI7Cj4gKwkJCXJl
ZyA9IDwweDAwMTNiMDAwIDB4NDAwPjsKCltTZXZlcml0eTogTG93XQpBcmUgdGhlc2UgbmV3IG5v
ZGVzIGluc2VydGVkIG91dCBvZiBvcmRlciByZWxhdGl2ZSB0byB0aGVpciB1bml0IGFkZHJlc3Nl
cz8KClRoZSB0b3Bjcm0gbm9kZSBhdCAxM2IwMDAgaXMgcGxhY2VkIGJlZm9yZSBtYXRyaXhjcm0g
YXQgMTMwNjAwMCwgYW5kIGxzcGNybQphdCAxNDAwMDAwIGlzIHBsYWNlZCBiZWZvcmUgdWFydDAg
YXQgMTMxMDAwLiBJdCBpcyBjdXN0b21hcnkgdG8gc29ydCBub2Rlcwp1bmRlciBhIGJ1cyBieSB0
aGVpciB1bml0IGFkZHJlc3MgdG8gbWFpbnRhaW4gcmVhZGFiaWxpdHkuCgpbIC4uLiBdCgo+ICsJ
CQkjY2xvY2stY2VsbHMgPSA8MT47Cj4gKwkJCSNwaHktY2VsbHMgPSA8MT47Cj4gKwkJCSNyZXNl
dC1jZWxscyA9IDwxPjsKPiArCj4gKwkJCXN5c2Nvbi1yZWJvb3Qgewo+ICsJCQkJY29tcGF0aWJs
ZSA9ICJzeXNjb24tcmVib290IjsKPiArCQkJCW9mZnNldCA9IDwweDA+Owo+ICsJCQkJdmFsdWUg
PSA8MHgxPjsKPiArCQkJCW1hc2sgPSA8MHgxPjsKPiArCQkJfTsKCltTZXZlcml0eTogTG93XQpT
aG91bGQgdGhpcyBub2RlIHVzZSBhIGdlbmVyaWMgbmFtZSBsaWtlIHJlYm9vdCBpbnN0ZWFkIG9m
IHN5c2Nvbi1yZWJvb3Q/CgpUaGUgRGV2aWNldHJlZSBzcGVjaWZpY2F0aW9uIHVzdWFsbHkgcmVj
b21tZW5kcyBub2RlIG5hbWVzIHRvIHJlZmxlY3QgdGhlCmZ1bmN0aW9uIG9mIHRoZSBkZXZpY2Ug
cmF0aGVyIHRoYW4gaXRzIHByb2dyYW1taW5nIG1vZGVsIG9yIGRyaXZlciBuYW1lLgoKPiArCQl9
Owo+ICsKPiArCQltYXRyaXhjcm06IGNsb2NrLWNvbnRyb2xsZXJAMTMwNjAwMCB7Cj4gKwkJCWNv
bXBhdGlibGUgPSAienRlLHp4Mjk3NTIwdjMtbWF0cml4Y3JtIjsKPiArCQkJcmVnID0gPDB4MDEz
MDYwMDAgMHg0MDA+OwoKWyAuLi4gXQoKPiArCQlsc3Bjcm06IGNsb2NrLWNvbnRyb2xsZXJAMTQw
MDAwMCB7Cj4gKwkJCWNvbXBhdGlibGUgPSAienRlLHp4Mjk3NTIwdjMtbHNwY3JtIjsKPiArCQkJ
cmVnID0gPDB4MDE0MDAwMDAgMHgxMDA+Owo+ICsJCQkjY2xvY2stY2VsbHMgPSA8MT47Cj4gKwkJ
CSNyZXNldC1jZWxscyA9IDwxPjsKClsgLi4uIF0KCj4gKwkJCWNsb2NrLW5hbWVzID0gIm1wbGwt
ZDUiLCAibXBsbC1kNCIsICJtcGxsLWQ2IiwgIm1wbGwtZDgiLCAibXBsbC1kMTIiLAo+ICsJCQkJ
ICAgICAgIm9zYzI2bSIsICJvc2MzMmsiLCAicGNsayIsICJ0ZG0td2NsayIsICJkcGxsLWQ0IjsK
PiArCQkJcmVzZXRzID0gPCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfUkVTRVQ+Owo+ICsJCX07
CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBoYXJkd2FyZSByZXNldCBkZXBlbmRlbmN5IHJl
cXVpcmUgZXhwbGljaXQgaGFuZGxpbmcgaW4gdGhlIGRyaXZlcj8KClRoZSBEVFMgY29ycmVjdGx5
IGRlZmluZXMgdGhlIGRlcGVuZGVuY3ksIGJ1dCBsb29raW5nIGF0IHp4X2Nsa19jb21tb25fcHJv
YmUoKQppbiBkcml2ZXJzL2Nsay96dGUvY2xrLXp4LmMsIHRoZSByZWdtYXAgaXMgb2J0YWluZWQg
dXNpbmc6Cgpkcml2ZXJzL2Nsay96dGUvY2xrLXp4LmM6enhfY2xrX2NvbW1vbl9wcm9iZSgpIHsK
ICAgIC4uLgogICAgbWFwID0gZGV2aWNlX25vZGVfdG9fcmVnbWFwKG9mX25vZGUpOwogICAgaWYg
KElTX0VSUihtYXApKQogICAgICAgIHJldHVybiBQVFJfRVJSKG1hcCk7CiAgICAuLi4KfQoKQmVj
YXVzZSB0aGUgbHNwY3JtIG5vZGUgbGFja3MgdGhlIHN5c2NvbiBjb21wYXRpYmxlIHN0cmluZywg
dGhpcyBieXBhc3NlcyB0aGUKZ2VuZXJpYyBzeXNjb24gcmVzZXQgaGFuZGxpbmcuIEFzIG5laXRo
ZXIgdGhlIE1GRCBkcml2ZXIgbm9yIGNoaWxkIGRyaXZlcnMKbWFudWFsbHkgZGVhc3NlcnQgdGhp
cyByZXNldCwgd29uJ3Qgc3Vic2VxdWVudCByZWdpc3RlciBhY2Nlc3NlcyBoaXQgYSByZXNldApi
bG9jayBhbmQgcG90ZW50aWFsbHkgaGFuZyB0aGUgaGFyZHdhcmU/Cgo+ICsKPiAgCQl1YXJ0MDog
c2VyaWFsQDEzMTAwMCB7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwNzI3LXp4MjljbGstdjgtMC03YTEwN2IwMGYxZGRAZ21haWwu
Y29tP3BhcnQ9MTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
