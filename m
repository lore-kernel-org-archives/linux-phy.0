Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 675BDC44512
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 22:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xs67TcGSOp6pRVChaBY5+73E5UO2hOIwHhhTW9lY2WA=; b=GCFMs7ZfF3QExL
	47HzO0FS0dc2g5jh91hmhMftoOpkT4UNSOFbAUdJ6aoGCaMP/4CyLyns9hq0+DjtluRYtYQ2CcMCV
	4Y9h2r+6SxdfdXbQHItyIgxXJLHCwWKDBWMeovd20gBj6yyRGEfcrgBxQ/YfMlJjK3EHnWNWEUi8d
	lo6RVayCCTFyaNqAoX/G7CKmpyEuUJAWJHUK7+Y/F7HYSUnLp0qbRsGdO4SxRrXc7EPTPbfqb2eSR
	Fm/udS1p6DxdoWebfEIn+MyOPwZLSVoL944YN2i+UJcMPv/AaYhZxVTiow2GffAY0NYY/TlmSL+6u
	1nmM46Yd+dsmeGc8bScg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkUmz-00000000l7r-3zh0;
	Thu, 16 Jul 2026 22:42:45 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkUmy-00000000l7g-05OY
	for linux-phy@lists.infradead.org;
	Thu, 16 Jul 2026 22:42:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 374F260A5E;
	Thu, 16 Jul 2026 22:42:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAFFF1F000E9;
	Thu, 16 Jul 2026 22:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784241762;
	bh=219E/M8ThrQ4GKvUqub4sdBil8Tcs5WqQb+YTtFsf8w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ixulkd/sRaDahiWMSguxN4t9cyDDxpTGLAOyQUYXlE/6kQr1tges3BpOP0XAPim/u
	 hsauTRrdSYAbFBcxmF0qhdaqLuCJJ/b3q9fjTjQqBK4ms1XbbnxARE2i2uSf1CuP2H
	 JxsDLcGHI7a99+FMjVdxLfhtMdw+cEDpwSdXe5VTwIPghSH0WQWJpF91AWhzMbYLhZ
	 SUMdAUve/13GlqMFi95hKrn0vVW9Qf47j87w5OS+Hopdoc18G79IlVpx1cJOJBt+nu
	 +MeKJmJ9D1EQoeSWUt06asGMuKoYjvVp47KU1QLe2nmGuA57SGzYaRepZ6gjuNpVCU
	 xfL7iNY51lJBw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 09/13] clk: zte: Introduce a driver for zx297520v3
 top clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260717-zx29clk-v7-9-408411cfcf36@gmail.com>
References: <20260717-zx29clk-v7-0-408411cfcf36@gmail.com>
 <20260717-zx29clk-v7-9-408411cfcf36@gmail.com>
Date: Thu, 16 Jul 2026 22:42:41 +0000
Message-Id: <20260716224241.BAFFF1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVXNpbmcgYGNsa19tYWlu
WzBdYCB0byBpbml0aWFsaXplIHRoZSBgLnBhcmVudGAgZmllbGQgaW4gdGhlIGB6eDI5NzUyMHYz
X3RvcF9nYXRlc2Agc3RhdGljIGFycmF5IGlzIGEgdmlvbGF0aW9uIG9mIElTTyBDIHJ1bGVzIGZv
ciBjb25zdGFudCBleHByZXNzaW9ucywgcmVzdWx0aW5nIGluIGEgaGFyZCBjb21waWxlIGVycm9y
LgotLQoKLS0tIFBhdGNoIFs5XTogW1BBVENIIHY3IDA5LzEzXSBjbGs6IHp0ZTogSW50cm9kdWNl
IGEgZHJpdmVyIGZvciB6eDI5NzUyMHYzIHRvcCBjbG9ja3MgLS0tCmNvbW1pdCA4YTdmZWUzODc5
Y2YwOGI2MDE1N2NkZTQyNWVlZDRiYmFhMDVmY2IxCkF1dGhvcjogU3RlZmFuIETDtnNpbmdlciA8
c3RlZmFuZG9lc2luZ2VyQGdtYWlsLmNvbT4KCmNsazogenRlOiBJbnRyb2R1Y2UgYSBkcml2ZXIg
Zm9yIHp4Mjk3NTIwdjMgdG9wIGNsb2NrcwoKVGhpcyBjb21taXQgaW50cm9kdWNlcyBhIGNsb2Nr
IGRyaXZlciBmb3IgdGhlIFpURSB6eDI5NzUyMHYzIFNvQyB0b3AgY2xvY2tzLgpJdCBzdXBwb3J0
cyBjb3JlIGRldmljZXMgc3VjaCBhcyBQTExzLCB0aGUgQUhCIGJ1cywgdGltZXJzLCB0aGUgVVNC
CmNvbnRyb2xsZXIsIGFuZCB0aGUgQ29ydGV4IE0wIHByb2Nlc3Nvci4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvY2xrL3p0ZS9jbGstengyOTc1MjB2My5jIGIvZHJpdmVycy9jbGsvenRlL2Nsay16
eDI5NzUyMHYzLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAu
LjIwZmYwMGJhNWY2NzAKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9jbGsvenRlL2Ns
ay16eDI5NzUyMHYzLmMKClsgLi4uIF0KCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgenhfZ2F0ZV9k
ZXNjIHp4Mjk3NTIwdjNfdG9wX2dhdGVzW10gPSB7CgpbIC4uLiBdCgo+ICsJLyogQUhCIGNsb2Nr
IGdhdGVzOiBEaXNhYmxpbmcgdGhlc2UgY3V0cyBvZmYgdGhlIEE1MyBmcm9tIHJlZ2lzdGVyIGFj
Y2VzcyBpbnRvIDB4MTMwMDAwLwo+ICsJICogMHgxNDAwMDAsIGluY2x1ZGluZyB0aGUgdG9wY3Jt
IHJlZ2lvbiwgc28gaXQgY2FuJ3QgYmUgcmUtZW5hYmxlZC4gTWFyayB0aGVtIGNyaXRpY2FsIGZv
cgo+ICsJICogdGhhdCByZWFzb24uCj4gKwkgKgo+ICsJICogR2F0aW5nIHRoaXMgb2ZmIGRvZXMg
bm90IHN0b3AgdGhlIE0wIHJwcm9jLCBub3IgZG9lcyBpdCBzdG9wIE0wIGZyb20gYWNjZXNzaW5n
IHRvcGNybS4gSXQKPiArCSAqIGRvZXMgaG93ZXZlciBnYXRlIG9mZiBNMCBmcm9tIHRoZSBBWEkg
aW50ZXJjb25uZWN0LCBzbyBpdCBjYW4ndCByZWFkIFJBTSwgTWF0cml4LCBldGMuIFNvCj4gKwkg
KiB0aGVzZSBiaXRzIGhlcmUgbWVyZWx5IGdhdGUgdGhlIGJ1cywgbm90IHRoZSBhY3R1YWwgZGV2
aWNlcy4KPiArCSAqLwo+ICsJR0FURShaWDI5NzUyMFYzX0FIQl9QQ0xLLCAgICAgICAgICAiYWhi
LXBjbGsiLCAgICAgICAiYWhiLW11eCIsICAgICAgICAweDU0LCAxMiwKPiArCQlDTEtfSVNfQ1JJ
VElDQUwpLAo+ICsJR0FURShaWDI5NzUyMFYzX0FIQl9XQ0xLLCAgICAgICAgICAiYWhiLXdjbGsi
LCAgICAgICAibTAtbXV4IiwgICAgICAgICAweDU0LCAxMywKPiArCQlDTEtfSVNfQ1JJVElDQUwp
LAo+ICsKPiArCS8qIFNSQU0xIGFuZCAyIGNsb2Nrcy4gTGVhdmUgdGhlbSBvbiBmb3Igbm93LCBh
cyB0dXJuaW5nIHRoZW0gb2ZmIGNhcmVsZXNzbHkgaGFuZ3MgdGhlIE0wICovCj4gKwlHQVRFKFpY
Mjk3NTIwVjNfU1JBTTFfUENMSywgICAgICAgICJzcmFtMS1wY2xrIiwgICAgIGNsa19tYWluWzBd
LCAgICAgIDB4NTQsIDE4LAo+ICsJCUNMS19JU19DUklUSUNBTCksCgpbU2V2ZXJpdHk6IExvd10K
RG9lcyB1c2luZyBjbGtfbWFpblswXSB0byBpbml0aWFsaXplIGVsZW1lbnRzIG9mIGEgc3RhdGlj
IGFycmF5IGNhdXNlIGEgYnVpbGQKZmFpbHVyZT8KCkluIEMsIGFycmF5IGFjY2Vzc2VzIGFyZSBu
b3QgdHJlYXRlZCBhcyBjb25zdGFudCBleHByZXNzaW9ucy4gSW5pdGlhbGl6aW5nIHRoZQp6eDI5
NzUyMHYzX3RvcF9nYXRlcyBzdGF0aWMgYXJyYXkgd2l0aCBjbGtfbWFpblswXSB3aWxsIGNhdXNl
IHRoZSBjb21waWxlcgp0byBmYWlsIHdpdGggYW4gImluaXRpYWxpemVyIGVsZW1lbnQgaXMgbm90
IGNvbnN0YW50IiBlcnJvci4KCkNvdWxkIGEgc3RyaW5nIGxpdGVyYWwgbGlrZSAiY2xvY2stMjZt
IiBiZSB1c2VkIGRpcmVjdGx5IGluc3RlYWQ/Cgo+ICsJR0FURShaWDI5NzUyMFYzX1NSQU0yX1BD
TEssICAgICAgICAic3JhbTItcGNsayIsICAgICBjbGtfbWFpblswXSwgICAgICAweDU0LCAxNiwK
PiArCQlDTEtfSVNfQ1JJVElDQUwpLAo+ICsKPiArCS8qIFBpbm11eCAoQU9OLCBUT1AsIElPQ0ZH
IGJ1dCBub3QgUERDRkcpLiBDcml0aWNhbCBhcyB3ZWxsIHVudGlsIHdlIGhhdmUgYSBkcml2ZXIg
dGhhdAo+ICsJICogY29uc3VtZXMgaXQuIEkgZG9uJ3QgdGhpbmsgd2UnbGwgcmVhbGlzdGljYWxs
eSBzaHV0IHRoaXMgb2ZmIGV2ZXIuCj4gKwkgKgo+ICsJICogU2V0dGluZyBlaXRoZXIgYml0IDAg
b3IgMSBpbiByZWdpc3RlciAweDU4IG1ha2VzIHRoZSBkZXZpY2Ugd29yay4KPiArCSAqLwo+ICsJ
R0FURShaWDI5NzUyMFYzX1BNTV9XQ0xLLCAgICAgICAgICAicG1tLXdjbGsiLCAgICAgICBjbGtf
bWFpblswXSwgICAgICAweDU4LCAgMCwKPiArCQlDTEtfSVNfQ1JJVElDQUwpLAo+ICsJR0FURSha
WDI5NzUyMFYzX1BNTV9QQ0xLLCAgICAgICAgICAicG1tLXBjbGsiLCAgICAgICBjbGtfbWFpblsw
XSwgICAgICAweDU4LCAgMSwKPiArCQlDTEtfSVNfQ1JJVElDQUwpLAoKWyAuLi4gXQoKLS0gClNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcx
Ny16eDI5Y2xrLXY3LTAtNDA4NDExY2ZjZjM2QGdtYWlsLmNvbT9wYXJ0PTkKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
