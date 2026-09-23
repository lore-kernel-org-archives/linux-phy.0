Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A12C8C98311
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 20:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQnL9hN+c2BIZ9PCfcU7YvWvRcEUddWnuxFQMnynvZ4=; b=byHqgV8xPRO3VP
	feUCn9jfMnaaxCRw9duYA4s719484r/FobFA98SkY6g/oTNX37p5pUZMOTLjqfPS2azZQ/9cm5Lkj
	lIrvSh4ovzitpjDiXRGUzI/PqN8ynL/J4Y37d3iJCQQm7j4TPYxWspb560grb5DGgkoxhAFAwAJCj
	cuM6aBH79O3Sj4P/slT0v2x9myyoSVNBh/sJ8d/W95hxu0smfzS0+Hs4Id2MI+d2c3tOedw9oUxjf
	6l/6qxcXDVFj/n4DjJ8bIKOOQYl9KBFA5o7ATVkp87BoVm4g/rDcm9saasg7St/GpsuvCFsXBJMFl
	tNOZm0pur3efs46ea6Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9TDa-00000009OJ7-15Wp;
	Wed, 23 Sep 2026 20:05:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9TDZ-00000009OIP-0d2v
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 20:05:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 96803601FF;
	Wed, 23 Sep 2026 20:05:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E766D1F00898;
	Wed, 23 Sep 2026 20:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790193924;
	bh=WdpJuFz3RQWOtX8bjMEYw+dYLsgVqM3pIQ9fiEeoXmA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=a9RjOfR3ZCRI/4IKWC4AMSKi1Oy4iXDwoZ7DBFyDsky8kf2FW1keVkd4ysCIc2g9U
	 fmMBBOdN8j5AMPY+q9UMtlnOOb9nRLmNRdesiTGCU1Lb2MfFrBGT52aJoAlymO172I
	 6fxLuL7LO231n/JwV1q4U/Fq5O7MIM2yyazJ9R4p+xrPqf1lxmmZMGMn6ukIrmah0K
	 aS58amAKbVVVV4WyioFwo2EEXDT3HcHuBOJNbL0XNedAs0SmaDzgXbchb25qCS36/g
	 JdzhGVCYb9i06MagZxrbLn8gXSyf6FHcNVtox1+dFxB02M9K/PDW8PGWpD6zftl2t2
	 I/TQZ454Wk97g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v10 07/11] net: pcs: xpcs: add Rockchip RK3568
 platform glue driver
To: "Coia Prant" <coiaprant@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, wsa+renesas@sang-engineering.com, vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org
In-Reply-To: <20260922200336.2201212-8-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
 <20260922200336.2201212-8-coiaprant@gmail.com>
Date: Wed, 23 Sep 2026 20:05:23 +0000
Message-Id: <20260923200523.E766D1F00898@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcG06IHVuYmFsYW5j
ZWQgcG1fcnVudGltZV9lbmFibGUgb24gdGVhcmRvd24KLS0KCmNvbW1pdCA0M2QyODQ5M2YzZWVj
NjRhOTZhZjIxOWU1NDQ4ZmZlMGVmZTU2ZDU4CkF1dGhvcjogQ29pYSBQcmFudCA8Y29pYXByYW50
QGdtYWlsLmNvbT4KbmV0OiBwY3M6IHhwY3M6IGFkZCBSb2NrY2hpcCBSSzM1NjggcGxhdGZvcm0g
Z2x1ZSBkcml2ZXIKClRoaXMgY29tbWl0IGludHJvZHVjZXMgYSBuZXcgcGxhdGZvcm0gZ2x1ZSBk
cml2ZXIgZm9yIHRoZSBTeW5vcHN5cyBEZXNpZ25XYXJlClhQQ1Mgb24gUm9ja2NoaXAgUkszNTY4
IFNvQ3MuIEl0IGltcGxlbWVudHMgYW4gTURJTyBidXMgdGhhdCB0cmFuc2xhdGVzCnJlcXVlc3Rz
IHRvIEFQQjMgbWVtb3J5LW1hcHBlZCByZWdpc3RlcnMuIEl0IGFsc28gYWRkcyBuZWNlc3Nhcnkg
Y2xvY2sgYW5kCnBvd2VyIGRvbWFpbiBtYW5hZ2VtZW50IGZvciB0aGUgZGV2aWNlLgoKTGluazog
aHR0cHM6Ly9kbC5yYWR4YS5jb20vcm9jazMvZG9jcy9ody9kYXRhc2hlZXQvUm9ja2NoaXAlMjBS
SzM1NjglMjBUUk0lMjBQYXJ0MSUyMFYxLjEtMjAyMTAzMDEucGRmIChQYWdlIDU5LCBDUlVfQ0xL
U0VMX0NPTjI5KQpMaW5rOiBodHRwczovL2RsLnJhZHhhLmNvbS9yb2NrMy9kb2NzL2h3L2RhdGFz
aGVldC9Sb2NrY2hpcCUyMFJLMzU2OCUyMFRSTSUyMFBhcnQyJTIwVjEuMS0yMDIxMDMwMS5wZGYg
KFBhZ2UgMjA3OCkKCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy1yay5j
IGIvZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNzLXJrLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+
IGluZGV4IDAwMDAwMDAwMDAwMDAuLjM1ZWU5ODBhNzU5ZTUKPiAtLS0gL2Rldi9udWxsCj4gKysr
IGIvZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNzLXJrLmMKWyAuLi4gXQo+ICtzdGF0aWMgdm9pZCB4
cGNzX3JrX2V4aXRfY2xrKHZvaWQgKmRhdGEpCj4gK3sKPiArCXN0cnVjdCBkd194cGNzX3JrICpw
eHBjcyA9IGRhdGE7Cj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcHhwY3MtPnBkZXYtPmRldjsK
PiArCj4gKwlwbV9ydW50aW1lX2ZvcmNlX3N1c3BlbmQoZGV2KTsKPiArCWNsa19kaXNhYmxlX3Vu
cHJlcGFyZShweHBjcy0+ZWVlX2Nsayk7Cj4gK30KCltTZXZlcml0eTogTWVkaXVtXQpDb3VsZCB0
aGlzIGxlYWQgdG8gYW4gdW5iYWxhbmNlZCBwbV9ydW50aW1lX2VuYWJsZT8KCkluIHhwY3Nfcmtf
aW5pdF9jbGsoKSwgcG1fcnVudGltZV9lbmFibGUoZGV2KSBpcyBjYWxsZWQsIGFuZCB0aGlzIGZ1
bmN0aW9uCnhwY3NfcmtfZXhpdF9jbGsoKSBpcyByZWdpc3RlcmVkIGFzIHRoZSBkZXZtIHRlYXJk
b3duIGFjdGlvbi4gSG93ZXZlciwKcG1fcnVudGltZV9kaXNhYmxlKGRldikgaXMgbm90IGNhbGxl
ZCBoZXJlLgoKSWYgdGhlIGRyaXZlciBpcyB1bmJvdW5kIHZpYSBzeXNmcyBvciBmYWlscyB0byBw
cm9iZSBsYXRlciBpbiB0aGUgc2VxdWVuY2UsCnRoZSB0ZWFyZG93biBhY3Rpb24gcnVucyBidXQg
bGVhdmVzIFBNIHJ1bnRpbWUgZW5hYmxlZC4gVGhpcyBjYW4gdHJpZ2dlcgprZXJuZWwgd2Fybmlu
Z3MgYWJvdXQgYW4gdW5iYWxhbmNlZCBwbV9ydW50aW1lX2VuYWJsZSBhbmQgYnJlYWsgc3Vic2Vx
dWVudApkZXZpY2UgYmluZGluZyBQTSBzdGF0ZS4KCj4gKwo+ICtzdGF0aWMgaW50IHhwY3Nfcmtf
aW5pdF9jbGsoc3RydWN0IGR3X3hwY3NfcmsgKnB4cGNzKQo+ICt7ClsgLi4uIF0KPiArCXJldCA9
IGNsa19wcmVwYXJlX2VuYWJsZShweHBjcy0+ZWVlX2Nsayk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJ
ZGV2X2VycihkZXYsICJGYWlsZWQgdG8gZW5hYmxlIEVFRSBjbG9ja1xuIik7Cj4gKwkJcmV0dXJu
IHJldDsKPiArCX0KPiArCj4gKwlwbV9ydW50aW1lX3NldF9zdXNwZW5kZWQoZGV2KTsKPiArCXBt
X3J1bnRpbWVfZW5hYmxlKGRldik7Cj4gKwo+ICsJcmV0ID0gZGV2bV9hZGRfYWN0aW9uX29yX3Jl
c2V0KGRldiwgeHBjc19ya19leGl0X2NsaywgcHhwY3MpOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkyMjIwMDMzNi4yMjAxMjEy
LTEtY29pYXByYW50QGdtYWlsLmNvbT9wYXJ0PTcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
