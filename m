Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4ABCC61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSXRcHzlH8iYIwRVBtKGSUNtduWHDnx1c8wshWQ8nAw=; b=SUvW6r1Tgd3F42
	kTqMaPeuNIq2brPmvkQW8ck4yZWiseJpe4CPVPgGtpI2sj4d8fAwpQcWJR2wicmVXRnl+VfWcDE6P
	Y82LJc8Xd9KzfNoWpzCY45W4mKXia3za8I7pS5yoS9RR636MtCIHNZ2T/S/ZG4Yq7F5W6Zz2VZn2L
	SRbhb1i160nFg7d4qrFqq+McLYvwqSAERgSSOYZaZ6JJKgzANhVLhu8V150lyRHkWqAXNcw7Em6lO
	USFUQJNF2pF+tUsAAWPkdaOQbLPFH17D5SvUQzdXjoJOPf/lfXqAdhna9bD2+dU8zfZPo6+VoBqRk
	SO7tEyLglZZ9ZajWpbGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx9D-00000005vtO-2bWb;
	Fri, 28 Aug 2026 14:01:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx9C-00000005vtD-2TOy
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:01:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5B57F406F7;
	Fri, 28 Aug 2026 14:01:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 977481F000E9;
	Fri, 28 Aug 2026 14:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787925694;
	bh=yQd6qsG83TrABDNJhnMxz4ZOai3+liNS/8tuJVDfUkk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GsAOb+Fn7op6wFEOlD3sNtVrsQ/rKtwUm10Xy3L7xcHO752Uar0bNGbAYgzqrYdRS
	 fh4t7hXWmD/2yoBDCCdg1FPxQoxcvmo6rarWs9Cy10SBmfa6tgnWWitprAMfHmcEjp
	 x+L45W/ykzQDpGTCqk5aGDJEEVtZjFvuS3sVwPANx2Drhgj7VyHNvXbeZrKUBdLKkX
	 1tlLho6167nfyzGwV8BMNfd7g2+Ga/ZXraw9BFRK2dAuPkuHCfHJgwHfAOMdI1MFhA
	 sX4Xj3EUyeNr+fQ213EcCHZD1GpIJlTID9Y7pOJScVLIGR9PZaUom/ZtmG1zGd8uiL
	 3UjEvZbYEVO4A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 09/15] clk: starfive: jh7110-vout: Allow pixel clock
 rate propagation
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: lee@kernel.org, linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, mfd@lists.linux.dev, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org
In-Reply-To: <20260828-jh7110-clean-send-v2-9-331680c8b9d1@samsung.com>
References: <20260828-jh7110-clean-send-v2-0-331680c8b9d1@samsung.com>
 <CGME20260828134830eucas1p1188cde4642239a10afedf46b415dfde4@eucas1p1.samsung.com>
 <20260828-jh7110-clean-send-v2-9-331680c8b9d1@samsung.com>
Date: Fri, 28 Aug 2026 14:01:33 +0000
Message-Id: <20260828140133.977481F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEFkZGluZyBDTEtfU0VU
X1JBVEVfUEFSRU5UIHdpdGhvdXQgQ0xLX1NFVF9SQVRFX05PX1JFUEFSRU5UIG9uIGhhcmR3YXJl
IHNpZ25hbC1yb3V0aW5nIG11eGVzIGFsbG93cyBjbGtfc2V0X3JhdGUoKSB0byBkeW5hbWljYWxs
eSBoaWphY2sgdGhlIGFjdGl2ZSBjbG9jayBwYXJlbnQuCi0tCgpjb21taXQgMDliMGM5MDQ2ZmVm
YjQ2N2FkNzk1ZGVmOTEyNzEzYmJhOTAwYmQxMQpBdXRob3I6IE1pY2hhbCBXaWxjenluc2tpIDxt
LndpbGN6eW5za2lAc2Ftc3VuZy5jb20+CgpjbGs6IHN0YXJmaXZlOiBqaDcxMTAtdm91dDogQWxs
b3cgcGl4ZWwgY2xvY2sgcmF0ZSBwcm9wYWdhdGlvbgoKVGhpcyBjb21taXQgYWRkcyBDTEtfU0VU
X1JBVEVfUEFSRU5UIHRvIHRoZSBkYzgyMDBfcGl4MCBhbmQgZGM4MjAwX3BpeDEKTVVYZXMsIGFs
bG93aW5nIGRpc3BsYXkgY29udHJvbGxlciByYXRlIHJlcXVlc3RzIHRvIHByb3BhZ2F0ZSB0byB0
aGUKcGFyZW50IGNsb2NrLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvc3RhcmZpdmUvY2xr
LXN0YXJmaXZlLWpoNzExMC12b3V0LmMgYi9kcml2ZXJzL2Nsay9zdGFyZml2ZS9jbGstc3RhcmZp
dmUtamg3MTEwLXZvdXQuYwo+IGluZGV4IGJhZDIwZDVkNzk0YTcuLmI2MDhmZTM1ODAzMTEgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9jbGsvc3RhcmZpdmUvY2xrLXN0YXJmaXZlLWpoNzExMC12b3V0
LmMKPiArKysgYi9kcml2ZXJzL2Nsay9zdGFyZml2ZS9jbGstc3RhcmZpdmUtamg3MTEwLXZvdXQu
Ywo+IEBAIC00MCwxMCArNDAsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBqaDcxeDBfY2xrX2Rh
dGEgamg3MTEwX3ZvdXRjbGtfZGF0YVtdID0gewo+ICAJSkg3MVgwX0dBVEUoSkg3MTEwX1ZPVVRD
TEtfREM4MjAwX0FYSSwgImRjODIwMF9heGkiLCAwLCBKSDcxMTBfVk9VVENMS19WT1VUX1RPUF9B
WEkpLAo+ICAJSkg3MVgwX0dBVEUoSkg3MTEwX1ZPVVRDTEtfREM4MjAwX0NPUkUsICJkYzgyMDBf
Y29yZSIsIDAsIEpINzExMF9WT1VUQ0xLX1ZPVVRfVE9QX0FYSSksCj4gIAlKSDcxWDBfR0FURShK
SDcxMTBfVk9VVENMS19EQzgyMDBfQUhCLCAiZGM4MjAwX2FoYiIsIDAsIEpINzExMF9WT1VUQ0xL
X1ZPVVRfVE9QX0FIQiksCj4gLQlKSDcxWDBfR01VWChKSDcxMTBfVk9VVENMS19EQzgyMDBfUElY
MCwgImRjODIwMF9waXgwIiwgMCwgMiwKPiArCUpINzFYMF9HTVVYKEpINzExMF9WT1VUQ0xLX0RD
ODIwMF9QSVgwLCAiZGM4MjAwX3BpeDAiLCBDTEtfU0VUX1JBVEVfUEFSRU5ULCAyLAo+ICAJCSAg
ICBKSDcxMTBfVk9VVENMS19EQzgyMDBfUElYLAo+ICAJCSAgICBKSDcxMTBfVk9VVENMS19IRE1J
VFgwX1BJWEVMQ0xLKSwKPiAtCUpINzFYMF9HTVVYKEpINzExMF9WT1VUQ0xLX0RDODIwMF9QSVgx
LCAiZGM4MjAwX3BpeDEiLCAwLCAyLAo+ICsJSkg3MVgwX0dNVVgoSkg3MTEwX1ZPVVRDTEtfREM4
MjAwX1BJWDEsICJkYzgyMDBfcGl4MSIsIENMS19TRVRfUkFURV9QQVJFTlQsIDIsCj4gIAkJICAg
IEpINzExMF9WT1VUQ0xLX0RDODIwMF9QSVgsCj4gIAkJICAgIEpINzExMF9WT1VUQ0xLX0hETUlU
WDBfUElYRUxDTEspLAoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIGFkZGluZyBDTEtfU0VUX1JBVEVf
UEFSRU5UIHdpdGhvdXQgQ0xLX1NFVF9SQVRFX05PX1JFUEFSRU5UIG9uIHRoZXNlCmhhcmR3YXJl
IHNpZ25hbC1yb3V0aW5nIG11eGVzIGFsbG93IENDRiB0byB1bmV4cGVjdGVkbHkgcmVwYXJlbnQg
dGhlIGFjdGl2ZQpjbG9jayBwYXJlbnQ/CgpXaGVuIHRoZSBkaXNwbGF5IGRyaXZlciBjYWxscyBj
bGtfc2V0X3JhdGUoKSBvbiB0aGUgZGM4MjAwX3BpeDAgb3IKZGM4MjAwX3BpeDEgY2xvY2ssIF9f
Y2xrX211eF9kZXRlcm1pbmVfcmF0ZSgpIHdpbGwgZXZhbHVhdGUgYWxsIHBhcmVudHMKYmVjYXVz
ZSBDTEtfU0VUX1JBVEVfTk9fUkVQQVJFTlQgaXMgbm90IHNldC4KCkJlY2F1c2UgdGhlIEhETUkg
UEhZIFBMTCBpcyBoaWdobHkgYWRqdXN0YWJsZSwgaXQgd2lsbCBsaWtlbHkgb2ZmZXIgYQptYXRo
ZW1hdGljYWxseSBjbG9zZXIgcmF0ZSB0aGFuIHRoZSBnZW5lcmljIERDODIwMF9QSVggZGl2aWRl
ci4gQ0NGIHdpbGwKdGhlbiBzZWxlY3QgdGhlIEhETUkgUEhZIGFzIHRoZSBiZXN0IHBhcmVudCBh
bmQgZHluYW1pY2FsbHkgcmVwYXJlbnQgdGhlCmNsb2NrIGJ5IGNhbGxpbmcgY2xrX2NvcmVfcmVw
YXJlbnQoKS4KCkNvdWxkIHRoaXMgc2lsZW50bHkgb3ZlcnJpZGUgdGhlIGRpc3BsYXkgZHJpdmVy
J3MgcGh5c2ljYWwgcm91dGluZwpjb25maWd1cmF0aW9uIGFuZCBzZXZlciB0aGUgcGh5c2ljYWwg
cm91dGluZywgYnJlYWtpbmcgdGhlIGRpc3BsYXkgb3V0cHV0PwoKLS0gClNhc2hpa28gQUkgcmV2
aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgyOC1qaDcxMTAtY2xl
YW4tc2VuZC12Mi0wLTMzMTY4MGM4YjlkMUBzYW1zdW5nLmNvbT9wYXJ0PTkKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
