Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4A1AC43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LuEtp3FUBPahB3mJz4g5KA/bQzB+kw68Okt7fz2v3+A=; b=o8hrsjvyyG1dfl
	XJHG1jz/WimPLjwiVh9q29fGxRDN6Rsn5amZBE1wr73ZEJ3JsoKEUylZlakI4Idl86XLllW1j0u6z
	rrJ/mxHkv9BhEkjo75bWq5Ox3qpLJSVzVrEVVsjkh16Fy9kdMhz6z4H8CfoWt1nXF0T9AruDVf3go
	E4uABzUWLJJuDoVCwYrlYb6tg7ePLutnAqW8Ck+FKG+7pYLSO7Fw80lnJuHCYNfq3a4iAPbHoL4ur
	W3WWCVS4bF4QKkyVgFM1WOpbY85JIXw0D0Jc1s/VGo3rRCS1fztGaQeMvRFhNiRz/hHrPyA6CbTAJ
	zeG+HUucsRxxOdwm64pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIRp-00000005laD-2O7Z;
	Fri, 10 Jul 2026 21:07:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIRo-00000005la1-2LkV
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:07:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A217760051;
	Fri, 10 Jul 2026 21:07:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E752F1F000E9;
	Fri, 10 Jul 2026 21:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783717667;
	bh=7dchypg2t5RA7C2oLIg2jyC66usHbCwahs5TrnmSHL8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cYxrpbS/IVKgZBUZfPN+W53R8Haa3E7clcVLb6U6B1381W2CVrBcMXcCef2Jfsiis
	 CMWEVFG8/FqebZNKOUAFY7I1w5YAcP2HOyid8hLQLkHxbeU9EkESuyrn5xiX+FC0rE
	 t1PDmLlhvA2Iox1r8wYkv13KUmbg2Nga4WZespnhiUvqBo51sYgePcZafoe7R/PzEr
	 nLvjdK3iy2aDG857mZ+l6C4Oho2wJOtWGFF9GUC6kAojdmkhHbRR04N1VnZ/52x9bC
	 MtoNTH1stzLvVu6vWiifyUQb0fgmHgUni88DA5aAyUd+Op306tSJ2SawbLjAtcmkjn
	 Lrmt/0JNBPXXQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 05/36] phy: rockchip: usbdp: Handle missing
 clock-names DT property gracefully
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-5-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-5-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:07:46 +0000
Message-Id: <20260710210746.E752F1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBNaXNzaW5nIE5VTEwgY2hlY2sgZm9yIGNsb2NrIElEcyB3aGVuIGl0ZXJhdGluZyBv
dmVyIGNsb2NrcywgbGVhZGluZyB0byBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSB3aXRoIG5v
bi1jb21wbGlhbnQgZGV2aWNlIHRyZWVzLgotIFtNZWRpdW1dIFJlc291cmNlIGxlYWsgb2YgY2xv
Y2sgZW5hYmxlIGNvdW50cyBvbiBwcm9iZSBlcnJvciBwYXRocyBhbmQgdXBvbiBkcml2ZXIgdW5i
aW5kaW5nIGR1ZSB0byBtaXNzaW5nIGAucmVtb3ZlYCBjYWxsYmFjay4KLS0KCi0tLSBQYXRjaCBb
NV06IFtQQVRDSCB2MTIgMDUvMzZdIHBoeTogcm9ja2NoaXA6IHVzYmRwOiBIYW5kbGUgbWlzc2lu
ZyBjbG9jay1uYW1lcyBEVCBwcm9wZXJ0eSBncmFjZWZ1bGx5IC0tLQpjb21taXQgYTExOTI0ZDgx
YzMxNWUyMjIzZDJiN2RlNjc2MTg0NjY2ZDk4YjQ4YQpBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVs
IDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDogdXNiZHA6
IEhhbmRsZSBtaXNzaW5nIGNsb2NrLW5hbWVzIERUIHByb3BlcnR5IGdyYWNlZnVsbHkKClRoaXMg
Y29tbWl0IGZpeGVzIGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGluIHJrX3VkcGh5X2Nsa19p
bml0KCkgYnkKZW5zdXJpbmcgdGhlIGNsb2NrIElEIGlzIG5vdCBOVUxMIGJlZm9yZSBjYWxsaW5n
IHN0cm5jbXAoKS4gVGhpcyBncmFjZWZ1bGx5CmhhbmRsZXMgY2FzZXMgd2hlcmUgdGhlIGRldmlj
ZSB0cmVlIHNwZWNpZmllcyAnY2xvY2tzJyBidXQgbWlzc2VzIHRoZSByZXF1aXJlZAonY2xvY2st
bmFtZXMnIHByb3BlcnR5LgoKQ2xvc2VzOiBodHRwczovL3Nhc2hpa28uZGV2LyMvbWVzc2FnZS8y
MDI2MDYxOTE1NDM0OS4wNzEzMjFGMDAwRTklNDBzbXRwLmtlcm5lbC5vcmcKCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRleCAyODQ1YTAxMmVhZmNjLi4z
ZmM4MjIyZmNhZWMyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVz
YmRwLmMKPiBAQCAtNDMyLDYgKzQzMiw5IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfY2xrX2luaXQo
c3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwgc3RydWN0IGRldmljZSAqZGV2KQo+ICAKPiAgCS8qIHVz
ZWQgZm9yIGNvbmZpZ3VyZSBwaHkgcmVmZXJlbmNlIGNsb2NrIGZyZXF1ZW5jeSAqLwo+ICAJZm9y
IChpID0gMDsgaSA8IHVkcGh5LT5udW1fY2xrczsgaSsrKSB7Cj4gKwkJaWYgKCF1ZHBoeS0+Y2xr
c1tpXS5pZCkKPiArCQkJY29udGludWU7Cj4gKwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEg
cHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB0aGUgc2FtZSBOVUxMIHBvaW50ZXIgZGVyZWZl
cmVuY2UKZXhpc3QgaW4gb3RoZXIgcm9ja2NoaXAgUEhZIGRyaXZlcnMgd2hlbiAnY2xvY2stbmFt
ZXMnIGlzIG1pc3Npbmc/CgpGb3IgZXhhbXBsZSwgbG9va2luZyBhdCByb2NrY2hpcF91c2IycGh5
X2NsazQ4MG1fcmVnaXN0ZXIoKSBpbgpwaHktcm9ja2NoaXAtaW5uby11c2IyLmM6CgoJZm9yIChp
ID0gMDsgaSA8IHJwaHktPm51bV9jbGtzOyBpKyspIHsKCQlpZiAoIXN0cm5jbXAocnBoeS0+Y2xr
c1tpXS5pZCwgInBoeWNsayIsIDYpKSB7CgkJCXJlZmNsayA9IHJwaHktPmNsa3NbaV0uY2xrOwoK
QW5kIHNpbWlsYXJseSBpbiByb2NrY2hpcF9jb21icGh5X3BhcnNlX2R0KCkgaW4gcGh5LXJvY2tj
aGlwLW5hbmVuZy1jb21icGh5LmM6CgoJZm9yIChpID0gMDsgaSA8IHByaXYtPm51bV9jbGtzOyBp
KyspIHsKCQlpZiAoIXN0cm5jbXAocHJpdi0+Y2xrc1tpXS5pZCwgInJlZiIsIDMpKSB7CgkJCXBy
aXYtPnJlZmNsayA9IHByaXYtPmNsa3NbaV0uY2xrOwoKRG8gdGhlc2UgZHJpdmVycyBhbHNvIG5l
ZWQgc2ltaWxhciBjaGVja3MgYmVmb3JlIGNhbGxpbmcgc3RybmNtcCgpIHRvIGF2b2lkCmNyYXNo
aW5nIHdpdGggbm9uLWNvbXBsaWFudCBkZXZpY2UgdHJlZXM/Cgo+ICAJCWlmICghc3RybmNtcCh1
ZHBoeS0+Y2xrc1tpXS5pZCwgInJlZmNsayIsIDYpKSB7Cj4gIAkJCXVkcGh5LT5yZWZjbGsgPSB1
ZHBoeS0+Y2xrc1tpXS5jbGs7Cj4gIAkJCWJyZWFrOwoKW1NldmVyaXR5OiBNZWRpdW1dClRoaXMg
aXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBkb2VzIHRoaXMgZHJpdmVyIGxlYWsgY2xvY2sg
ZW5hYmxlIGNvdW50cwpkdXJpbmcgcHJvYmUgZmFpbHVyZXMgb3IgdXBvbiB1bmJpbmRpbmc/CgpM
b29raW5nIGF0IHJrX3VkcGh5X3Byb2JlKCksIGlmIHJrX3VkcGh5X2dldF9pbml0aWFsX3N0YXR1
cygpIGRldGVjdHMgdGhhdAp0aGUgaGFyZHdhcmUgd2FzIGFscmVhZHkgZW5hYmxlZCwgaXQgbGVh
dmVzIHRoZSBjbG9ja3MgbWFudWFsbHkgZW5hYmxlZC4KSG93ZXZlciwgaWYgYSBzdWJzZXF1ZW50
IHN0ZXAgZmFpbHMsIHN1Y2ggYXMgdGhlIG9yaWVudGF0aW9uLXN3aXRjaCBzZXR1cDoKCglpZiAo
ZGV2aWNlX3Byb3BlcnR5X3ByZXNlbnQoZGV2LCAib3JpZW50YXRpb24tc3dpdGNoIikpIHsKCQly
ZXQgPSBya191ZHBoeV9zZXR1cF9vcmllbl9zd2l0Y2godWRwaHkpOwoJCWlmIChyZXQpCgkJCXJl
dHVybiByZXQ7Cgl9CgpUaGUgZXJyb3IgcGF0aCByZXR1cm5zIGRpcmVjdGx5IHdpdGhvdXQgZGlz
YWJsaW5nIHRoZSBjbG9ja3MuIElmIHRoaXMgZmFpbHMKd2l0aCAtRVBST0JFX0RFRkVSLCB3aWxs
IHRoZSBsZWFrZWQgY2xvY2sgZW5hYmxlIGNvdW50IGluY3JlbWVudCBvbiBlYWNoCnJldHJ5PwoK
QWRkaXRpb25hbGx5LCB0aGUgZHJpdmVyIGFwcGVhcnMgdG8gbGFjayBhIC5yZW1vdmUgY2FsbGJh
Y2sgZW50aXJlbHk6CgpzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBya191ZHBoeV9kcml2
ZXIgPSB7CgkucHJvYmUJCT0gcmtfdWRwaHlfcHJvYmUsCgkuZHJpdmVyCQk9IHsKCQkubmFtZQk9
ICJyb2NrY2hpcC11c2JkcC1waHkiLAoKRG9lcyB1bmJpbmRpbmcgdGhlIGRyaXZlciB3aGlsZSB0
aGUgUEhZIGlzIGFjdGl2ZSBsZWF2ZSB0aGUgY2xvY2tzCnBlcm1hbmVudGx5IGVuYWJsZWQgYW5k
IHJlc2V0IHN0YXRlcyBkZWFzc2VydGVkPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcxMC1yb2NrY2hpcC11c2JkcC1jbGVhbnVw
LXYxMi0wLThiNDFhOWE5YmVmMEBjb2xsYWJvcmEuY29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
