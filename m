Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25E48C43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 20:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72jVXBBK6Sb0i5XOLQSRDMaDdzYj79OZ1LTvpPqLx9A=; b=c5ZhavgS1O18tL
	1ytxm96rwtGOCRugJjEkBQ3ePtgECzk7NDwMKxz6ydo6Qg0Eb+lJR9/2vM6BZdMI8kcRwgy6KnJiY
	rh6t9OUuEZr42nLakdbcP885FAbvA42PjepRn0H0s7fWF8qoPfjxG/yPD69cRHu26efdlCBkOnJIk
	RbESDhto0Q/crV6SRjZyofRO8eHWPtxOZicvW8c0OlO83s7cbmpm2na+6AQyiglwvdtKluO/5Tmh7
	jO0MliaRVSCTtK+hKSuRpFWUDIe9gVpoTK3VzXGmAJifw8RKMCrk7btjrIypXbnXb0gRlRmvDYde+
	hoD+lwShB5ibc+rSIviA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjLg-0000000DBMj-3cPU;
	Tue, 14 Jul 2026 20:03:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjLf-0000000DBMX-3EIF
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 20:03:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 87E3D41902;
	Tue, 14 Jul 2026 20:03:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F13D51F00A3A;
	Tue, 14 Jul 2026 20:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784059403;
	bh=cQtB/9gmuDtsjTSXmfGDwguH+t2INntnsFfQTcRQfmc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BgknFs7Fu+QSZ38a4z9tjhWjHTp1Ib+d8vNiiOkafIzjc+Iwx57GCe+Kf3z7HpDav
	 0ypQ0SmcATqSU4tWm5h6IfQdmpJ1LTpnyCQvMR187hRR1lcDciJZEM56Rg2Tuya5Dd
	 QO2rnuVpF2oTOf6g1DVcZK0ysTe/PNzBS8iaY/Div/gv6jHDdJrsRDGlZOl7Bkhtdu
	 m5KRNmn30trPMudwdPCPoMAI5PXi5D6fCUY35cXDOALxIVNmoWvmgliIf94RD8ki/0
	 gzVMBtzBtgq9gacw+SoCFqpTQJqCLCeR4qyu72fR/0P3hHzEEixPG6AA5L5uA1lcgJ
	 wId5ykZKiuikA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 17/35] phy: rockchip: usbdp: Drop DP HPD handling
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-17-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-17-6cb3e769d4c5@collabora.com>
Date: Tue, 14 Jul 2026 20:03:22 +0000
Message-Id: <20260714200322.F13D51F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgVHlwZS1DIG11eCBoYW5kbGVyIGlnbm9yZXMgc3RhbmRhcmQgVVNCIGFuZCBT
YWZlIG1vZGUgcmVzZXQgZXZlbnRzLCBwcmV2ZW50aW5nIGR5bmFtaWMgcmVjb3Zlcnkgb2YgVVNC
IDMuMCBmdW5jdGlvbmFsaXR5IHdoZW4gZXhpdGluZyBEUCBBbHQgTW9kZS4KLS0KCi0tLSBQYXRj
aCBbMTddOiBbUEFUQ0ggdjEzIDE3LzM1XSBwaHk6IHJvY2tjaGlwOiB1c2JkcDogRHJvcCBEUCBI
UEQgaGFuZGxpbmcgLS0tCmNvbW1pdCA3YTIzYjkzNThkNjM5MTUwYWU5NWQwNjI2MWE3ODk2ODli
MDg1YTBjCkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxh
Ym9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiB1c2JkcDogRHJvcCBEUCBIUEQgaGFuZGxpbmcKClRo
aXMgY29tbWl0IHJlbW92ZXMgdGhlIEhQRCBoYW5kbGluZyBsb2dpYyBmcm9tIHRoZSBVU0JEUCBQ
SFksIGRlbGVnYXRpbmcKdGhlIHJlc3BvbnNpYmlsaXR5IHRvIHRoZSBkaXNwbGF5cG9ydCBjb250
cm9sbGVyIGl0c2VsZi4gSXQgYWxzbyBhZGp1c3RzCnRoZSBUeXBlLUMgbXV4IHNldCByb3V0aW5l
IHRvIGlnbm9yZSBtdXggZXZlbnRzIG5vdCBpbnZvbHZpbmcgRFAgQWx0TW9kZS4KCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiAtLS0gYS9kcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC11c2JkcC5jCgpbIC4uLiBdCgo+IEBAIC0xMzA5LDYgKzEyNjcsMTQgQEAg
c3RhdGljIGludCBya191ZHBoeV90eXBlY19tdXhfc2V0KHN0cnVjdCB0eXBlY19tdXhfZGV2ICpt
dXgsCj4gIAlzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5ID0gdHlwZWNfbXV4X2dldF9kcnZkYXRhKG11
eCk7Cj4gIAl1OCBtb2RlOwo+ICAKPiArCS8qCj4gKwkgKiBJZ25vcmUgbXV4IGV2ZW50cyBub3Qg
aW52b2x2aW5nIERQIEFsdE1vZGUsIGJlY2F1c2UKPiArCSAqIHRoZSBtb2RlIGZpZWxkIGlzIGJl
aW5nIHJldXNlZCwgZS5nLiBzdGF0ZS0+bW9kZSA9PSA0Cj4gKwkgKiBjb3VsZCBiZSBlaXRoZXIg
VFlQRUNfTU9ERV9VU0I0IG9yIFRZUEVDX0RQX1NUQVRFX0MuCj4gKwkgKi8KPiArCWlmICghc3Rh
dGUtPmFsdCB8fCBzdGF0ZS0+YWx0LT5zdmlkICE9IFVTQl9UWVBFQ19EUF9TSUQpCj4gKwkJcmV0
dXJuIDA7Cj4gKwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3Vl
LCBidXQgZG9lcyB0aGlzIGVhcmx5IHJldHVybiBjYXVzZSB0aGUgUEhZIHRvCmlnbm9yZSBzdGFu
ZGFyZCBUWVBFQ19TVEFURV9TQUZFIGFuZCBUWVBFQ19TVEFURV9VU0IgcmVzZXQgZXZlbnRzPwoK
V2hlbiBhIGR5bmFtaWMgZXhpdCBmcm9tIERQIEFsdCBNb2RlIG9jY3VycyAoZm9yIGV4YW1wbGUs
IHZpYSBWRE0pLCBUQ1BNCnR5cGljYWxseSBzZXRzIHRoZSBtdXggdG8gVFlQRUNfU1RBVEVfU0FG
RSBhbmQgdGhlbiBUWVBFQ19TVEFURV9VU0IuIER1cmluZwp0aGVzZSB0cmFuc2l0aW9ucywgc3Rh
dGUtPmFsdCB3aWxsIGJlIE5VTEwuCgpCZWNhdXNlIHRoaXMgZWFybHkgcmV0dXJuIGNvbXBsZXRl
bHkgaWdub3JlcyB0aG9zZSBzdGF0ZXMsIHVkcGh5LT5tb2RlCmFwcGVhcnMgdG8gZ2V0IHN0dWNr
IGluIFVEUEhZX01PREVfRFAsIGxlYXZpbmcgdGhlIFBIWSBsYW5lcyBwZXJtYW5lbnRseQptYXBw
ZWQgdG8gRGlzcGxheVBvcnQuCgpDb3VsZCB0aGlzIGNhdXNlIHN1YnNlcXVlbnQgVVNCIHBvd2Vy
LW9uIGF0dGVtcHRzIHRvIGZhaWwgdGhlCiEodWRwaHktPm1vZGUgJiBtb2RlKSBjaGVjayBpbiBy
a191ZHBoeV9wb3dlcl9vbigpIGFuZCBzaWxlbnRseSBhYm9ydCwKYnJlYWtpbmcgVVNCIDMuMCBT
dXBlclNwZWVkIGZ1bmN0aW9uYWxpdHkgdW50aWwgYSBwaHlzaWNhbCByZXBsdWcgb2NjdXJzPwoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDcxNC1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXYxMy0wLTZjYjNlNzY5ZDRjNUBjb2xsYWJv
cmEuY29tP3BhcnQ9MTcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
