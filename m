Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4AF4C531D0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 19:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7MyEWcFLcoaE0w34JeUmxMjJYDXBwYaZRBn7Za/qEg=; b=G7EFnkgTSb0SvS
	4y5bik6ZHun33qqE+p1gcF1rCLH/n3bGF9CIirCE98VDHCvJKC8M/3shhUIFCMnE2K4L9HyzjJhvp
	nPdjWvelecU/AUxFBAJly6qSAOb0yqiJnFzAA21nFOe4FYM8pwfrOeRNX0bUVDBYsuCSr99R7wbDb
	vTQ8gVxntAcZz+oeKTN7L8cNThvhvW6ZjGRz+/PkA3dsPwKO4yYdsQ37H/ASOEds1UZwa6dQNBVYD
	svBtWXOpPWdF5ADHXV95czFFXRYiXcyeivn3SdAbtDIKc8BGhin+yvkRF6Ixt9qWPkePSU0uF3wlK
	y+qqy88cAaRuVj8n0lCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woRCj-00000003lwL-1e4k;
	Mon, 27 Jul 2026 19:41:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woRCi-00000003lw9-2BGo
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 19:41:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ABB0760008;
	Mon, 27 Jul 2026 19:41:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFFDD1F000E9;
	Mon, 27 Jul 2026 19:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785181295;
	bh=NXZ01KRGPMGOj00getszVzMdpSsaQmnkNWAK37M3n/g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KsfBC8WKwAvkkFn307EM+YTnBJ6P+q+7aCNFiaalNL7KOP+jsQSbvTbRP9Ca6DE1h
	 2QoSJaw6r0L6CCLIbtd66vpbz7BzUp4oinbTEgBVsV3oVtJw9Amn8XbDJCNj1Xekf3
	 34BqQOHy5JPpwgGH8w+DFByeYYb8KHYn3UsSJhHf9MEXxSh+XC5IVSctDex588K7h1
	 2Sn4jpAYmzcnth0F65JJHUdqPK6h2TX+7XlDMp27/g3ktNZJ3zyxOKDz83CPBLLO4S
	 48DbVj7BYG8b9S6AaMHIjdt8BT19eL8XuS7OgHTdjwv5e4pJbdde/OnqZtuokQ3UX0
	 U/FglnuaT2ivQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 09/12] clk: zte: Introduce a driver for zx297520v3
 matrix clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org, mfd@lists.linux.dev, vkoul@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, lee@kernel.org
In-Reply-To: <20260727-zx29clk-v8-9-7a107b00f1dd@gmail.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-9-7a107b00f1dd@gmail.com>
Date: Mon, 27 Jul 2026 19:41:34 +0000
Message-Id: <20260727194134.EFFDD1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHVzZSBvZiBgY2xr
X21haW5bMF1gIHRvIGluaXRpYWxpemUgZmllbGRzIGluIHN0YXRpYyBnbG9iYWwgYXJyYXlzIGlz
IGludmFsaWQgQyBhbmQgY2F1c2VzIGEgY29tcGlsYXRpb24gZXJyb3IuCi0tCgotLS0gUGF0Y2gg
WzldOiBbUEFUQ0ggdjggMDkvMTJdIGNsazogenRlOiBJbnRyb2R1Y2UgYSBkcml2ZXIgZm9yIHp4
Mjk3NTIwdjMgbWF0cml4IGNsb2NrcyAtLS0KY29tbWl0IDg5NWQwOTVlOWUyMWQ4NGVhZWZlZmIy
ZTI4ODFhNGY4MTkzZWY0NTAKQXV0aG9yOiBTdGVmYW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5n
ZXJAZ21haWwuY29tPgoKY2xrOiB6dGU6IEludHJvZHVjZSBhIGRyaXZlciBmb3IgengyOTc1MjB2
MyBtYXRyaXggY2xvY2tzCgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIGEgbmV3IGNsb2NrIGRyaXZl
ciBmb3IgdGhlIHp4Mjk3NTIwdjMgbWF0cml4IGNsb2NrCmNvbnRyb2xsZXIsIHdoaWNoIG1hbmFn
ZXMgaGlnaC1zcGVlZCBkZXZpY2VzIHN1Y2ggYXMgQ1BVLCBETUEsIFJBTSwgU0RJTywKYW5kIEV0
aGVybmV0LiBJdCByZWdpc3RlcnMgbXVsdGlwbGV4ZXJzLCBmaXhlZCBkaXZpZGVycywgYW5kIGdh
dGVzIHdpdGhpbgp0aGUgY29udHJvbGxlci4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3p0
ZS9jbGstengyOTc1MjB2My5jIGIvZHJpdmVycy9jbGsvenRlL2Nsay16eDI5NzUyMHYzLmMKPiBp
bmRleCA0NDQ0YzJlYjEzODI1Li45Mjk5NDQ5MDk3YjRhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Y2xrL3p0ZS9jbGstengyOTc1MjB2My5jCj4gKysrIGIvZHJpdmVycy9jbGsvenRlL2Nsay16eDI5
NzUyMHYzLmMKWyAuLi4gXQo+IEBAIC01NDIsNiArNTQyLDM0MCBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHp4X2Nsa19kYXRhIHp4Mjk3NTIwdjNfdG9wY2xrX2RhdGEgPSB7ClsgLi4uIF0KPiArc3Rh
dGljIGNvbnN0IHN0cnVjdCB6eF9nYXRlX2Rlc2MgengyOTc1MjB2M19tYXRyaXhfZ2F0ZXNbXSA9
IHsKWyAuLi4gXQo+ICsJLyogQm90aCAweDI0IGFuZCAweDI4IGJpdHMgMSBhbmQgMiBzdG9wIHRo
ZSBDUFUuIFRoZXJlIGlzIGFsc28gYSBiaXQgaW4gdG9wY2xrKzB4MTM4LCB3aGljaAo+ICsJICog
WlRFJ3MgdWJvb3QgY2FsbHMgIkE1MyByZXNldCIsIHdoaWNoIGFsc28gc3RvcHMgdGhlIENQVS4g
SSBjYW4ndCByZWFsbHkgdGVsbCB0aGUKPiArCSAqIGRpZmZlcmVuY2UgYmV0d2VlbiBtYXRyaXgr
MHgyOCBhbmQgdG9wKzB4MTM4LiBUaGUgY2xvY2sgKG1hdHJpeCsweDI0KSBjYW4gYmUgZGlzYWJs
ZWQKPiArCSAqIGFuZCBlbmFibGVkIGZyb20gdGhlIENvcnRleCBNMCBhbmQgaXQgd2lsbCBuaWNl
bHkgc3RvcCBhbmQgcmVzdGFydCB0aGUgQTUzLCByZXRhaW5pbmcKPiArCSAqIGFsbCBzdGF0ZS4K
PiArCSAqLwo+ICsJR0FURShaWDI5NzUyMFYzX0NQVV9XQ0xLLCAgICAgICAgICAiY3B1LXdjbGsi
LCAgICAgICAiY3B1LW11eCIsICAgICAgICAweDI0LCAgMSwKPiArCSAgICAgQ0xLX0lTX0NSSVRJ
Q0FMKSwKPiArCUdBVEUoWlgyOTc1MjBWM19DUFVfUENMSywgICAgICAgICAgImNwdS1wY2xrIiwg
ICAgICAgY2xrX21haW5bMF0sICAgICAgMHgyNCwgIDIsCj4gKwkgICAgIENMS19JU19DUklUSUNB
TCksCgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIGNhdXNlIGEgY29tcGlsYXRpb24gZXJyb3I/
IEluIEMsIHN0YXRpYyBhcnJheSBpbml0aWFsaXplcnMgbXVzdAp1c2UgY29uc3RhbnQgZXhwcmVz
c2lvbnMuIEFjY2Vzc2luZyBhbiBhcnJheSBlbGVtZW50IGxpa2UgY2xrX21haW5bMF0gcmVxdWly
ZXMKcmVhZGluZyBtZW1vcnksIHdoaWNoIGlzIG5vdCBjb25zaWRlcmVkIGEgY29uc3RhbnQgZXhw
cmVzc2lvbiBieSB0aGUgY29tcGlsZXIsCmFuZCB3aWxsIGxpa2VseSByZXN1bHQgaW4gYW4gaW5p
dGlhbGl6ZXIgZWxlbWVudCBpcyBub3QgY29uc3RhbnQgYnVpbGQgZXJyb3IuCgpUaGlzIHBhdHRl
cm4gYWxzbyBhcHBlYXJzIGluIHNldmVyYWwgb3RoZXIgR0FURSBkZWZpbml0aW9ucyBmdXJ0aGVy
IGRvd24gaW4KdGhlIHp4Mjk3NTIwdjNfbWF0cml4X2dhdGVzIGFycmF5LgoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcyNy16eDI5
Y2xrLXY4LTAtN2ExMDdiMDBmMWRkQGdtYWlsLmNvbT9wYXJ0PTkKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
