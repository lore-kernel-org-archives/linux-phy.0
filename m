Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CC02C44501
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 19:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LsjdYzoozBEO4tKRlfiWPuhoAJxx44+xcmOXhTdrJo=; b=JQLRfJzdiPApHH
	jqWBMbUqMetGz54CWESnQ5Vfi3XlWac7HX5j9vGxeolEZnkgWsOLrL0UKTSZ/T8fZ5NGSY3Y9VbfR
	FFFm4zcic+HENoa/O78m/1QlaMbqqRWg0vy/0oQnuZtRANweRQjJJoWmWudRKLByxgaBk7HwglwDY
	pioK9V4OEXTvrhjo6yQcWCpqFxvzW9HQwEYo2pq0gLXePqnihzcuK6OOFjNF1PJxKVTrW+fZRcFaX
	fXvPrRPZ+G2v/NE7F/I2wn27pO722aamfR8oEGDhKoDiaRqKcYBqQ8PIdCxE1OOynngcxjKC42v4M
	sv4TyLWawVcQeHdFZjTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk54F-0000000Flw1-2NZC;
	Wed, 15 Jul 2026 19:14:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk54E-0000000Flvr-2IFY
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 19:14:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D92E640080;
	Wed, 15 Jul 2026 19:14:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 437E11F00A3A;
	Wed, 15 Jul 2026 19:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784142889;
	bh=QaPvJvsUGfaYOnyKvojyIFNtpOj23a4t4/Ky9KmWBbs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fQbZpVGFZCA5viPknyLXtBRQdB6/PhAC1hsdaD+m4jf74vrvtIpcQZl5Cp31rGH2Q
	 NieTGaLas+UREXQTkii6ZcmG4k8OibaeVH4HARPyuwtoque/R39J9PidaB0fo+Gvz7
	 1oy/jUiy3KpaIhFV0qHM0x9By3dQpbsgIInwiY02g0VmXCi6cW96jBZfU4QNaoG5TC
	 oIWnG2Wd/pueZAScIDfGtaZgvcyNRQ1Lx3UIM9E984E6nOxvTeBhjN37dfdd8Oln2V
	 VlGPl49I9Rs5DlLFhMDDGrmhJ6Zky7nlW+MZErkArZpEzJllCbx6/8UbmvO4L3ztc1
	 KyqmhhZQv8CMg==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 02/10] dt-bindings: phy: rockchip: naneng-combphy:
 add rockchip,sgmii-mac-sel property
To: "Coia Prant" <coiaprant@gmail.com>
Cc: olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260714191341.690906-3-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
 <20260714191341.690906-3-coiaprant@gmail.com>
Date: Wed, 15 Jul 2026 19:14:48 +0000
Message-Id: <20260715191449.437E11F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTG9naWNhbCBjb250
cmFkaWN0aW9uIGJldHdlZW4gdGhlIHByb3BlcnR5J3MgZG9jdW1lbnRlZCBkZWZhdWx0IHZhbHVl
IGFuZCB0aGUgY29tbWl0IG1lc3NhZ2UncyBleHBsaWNpdCBjb25maWd1cmF0aW9uIHJlcXVpcmVt
ZW50LgotIFtMb3ddIFRoZSBgcm9ja2NoaXAsc2dtaWktbWFjLXNlbGAgcHJvcGVydHkgaXMgZGVm
aW5lZCBnbG9iYWxseSBhbmQgbm90IGNvbmRpdGlvbmFsbHkgY29uc3RyYWluZWQgdG8gdGhlIFJL
MzU2OCBTb0MuCi0tCgotLS0gUGF0Y2ggWzJdOiBbUkZDIFBBVENIIDAyLzEwXSBkdC1iaW5kaW5n
czogcGh5OiByb2NrY2hpcDogbmFuZW5nLWNvbWJwaHk6IGFkZCByb2NrY2hpcCxzZ21paS1tYWMt
c2VsIHByb3BlcnR5IC0tLQpjb21taXQgMGQ5NTBiNDA1NWRkMTQ0ZmVjZjUwNTlmMTY1MzVmMmM4
ZDk0YjVkMwpBdXRob3I6IENvaWEgUHJhbnQgPGNvaWFwcmFudEBnbWFpbC5jb20+CgpkdC1iaW5k
aW5nczogcGh5OiByb2NrY2hpcDogbmFuZW5nLWNvbWJwaHk6IGFkZCByb2NrY2hpcCxzZ21paS1t
YWMtc2VsIHByb3BlcnR5CgpUaGlzIGNvbW1pdCBhZGRzIHRoZSAicm9ja2NoaXAsc2dtaWktbWFj
LXNlbCIgcHJvcGVydHkgdG8gdGhlIFJvY2tjaGlwCk5hbmVuZyBjb21icGh5IGRldmljZSB0cmVl
IGJpbmRpbmcuIEl0IGFsbG93cyBzZWxlY3RpbmcgYmV0d2VlbiBHTUFDMAphbmQgR01BQzEgZm9y
IHRoZSBTR01JSSBpbnRlcmZhY2Ugb24gdGhlIFJLMzU2OCBTb0MuCgo+IFRoaXMgaXMgbmVjZXNz
YXJ5IGZvciBib2FyZHMgc3VjaCBhcyB0aGUgQXJpYWJvYXJkIFBob3RvbmljYXQsIHdoZXJlCj4g
dGhlIFNHTUlJIGludGVyZmFjZSBpcyBjb25uZWN0ZWQgdG8gR01BQzAgYW5kIG5lZWRzIHRvIGJl
IGV4cGxpY2l0bHkKPiBjb25maWd1cmVkLgoKW1NldmVyaXR5OiBNZWRpdW1dCklzIGl0IGFjdHVh
bGx5IG5lY2Vzc2FyeSB0byBleHBsaWNpdGx5IGNvbmZpZ3VyZSB0aGUgcHJvcGVydHkgdG8gMCBm
b3IKR01BQzA/IAoKVGhlIHNjaGVtYSBkZWZpbmVzIHRoZSBkZWZhdWx0IGFzIDAsIHdoaWNoIGlt
cGxpZXMgdGhhdCBvbWl0dGluZyB0aGUgcHJvcGVydHkKd291bGQgbmF0dXJhbGx5IGRlZmF1bHQg
dGhlIGhhcmR3YXJlIHRvIEdNQUMwLiBJZiBleHBsaWNpdCBjb25maWd1cmF0aW9uIGlzCnJlcXVp
cmVkLCBkb2VzIHRoaXMgbWVhbiB0aGUgaGFyZHdhcmUgb3IgYm9vdGxvYWRlciBsZWF2ZXMgdGhl
IHJlZ2lzdGVyIGF0IDEsCm1ha2luZyB0aGUgYGRlZmF1bHQ6IDBgIGRvY3VtZW50ZWQgaW4gdGhl
IHNjaGVtYSBpbmNvcnJlY3Q/Cgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJw
aHkueWFtbAo+IGluZGV4IDM3OWIwOGJkOWU5N2EuLjYxNzMxOTJlMzFhYjIgMTAwNjQ0Cj4gLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtbmFu
ZW5nLWNvbWJwaHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LnlhbWwKWyAuLi4gXQo+IEBAIC04MCw2
ICs4MCwxMyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgZGVzY3JpcHRpb246Cj4gICAgICAgIFNvbWUg
YWRkaXRpb25hbCBwaXBlIHNldHRpbmdzIGFyZSBhY2Nlc3NlZCB0aHJvdWdoIEdSRiByZWdzLgo+
ICAKPiArICByb2NrY2hpcCxzZ21paS1tYWMtc2VsOgo+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlw
ZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyCj4gKyAgICBlbnVtOiBbMCwgMV0KCltTZXZlcml0
eTogTG93XQpTaG91bGQgdGhpcyBwcm9wZXJ0eSBiZSBjb25kaXRpb25hbGx5IHJlc3RyaWN0ZWQg
dG8gdGhlIFJLMzU2OCBjb21wYXRpYmxlCnN0cmluZz8gCgpCZWNhdXNlIGl0IGlzIGRlZmluZWQg
aW4gdGhlIHRvcC1sZXZlbCBwcm9wZXJ0aWVzIGJsb2NrLCBpdCB3aWxsIHBhc3MKdmFsaWRhdGlv
biBmb3IgYWxsIG90aGVyIGhhcmR3YXJlIHZhcmlhbnRzIChsaWtlIFJLMzUyOCBvciBSSzM1ODgp
IHRoYXQgZG8Kbm90IGFjdHVhbGx5IHN1cHBvcnQgU0dNSUkuIENvdWxkIGFuIGBpZi10aGVuYCBi
bG9jayBpbiB0aGUgYGFsbE9mYCBzZWN0aW9uCmJlIHVzZWQgdG8gc2V0IHRoaXMgcHJvcGVydHkg
dG8gZmFsc2UgZm9yIGNvbXBhdGlibGVzIG90aGVyIHRoYW4KYHJvY2tjaGlwLHJrMzU2OC1uYW5l
bmctY29tYnBoeWA/Cgo+ICsgICAgZGVmYXVsdDogMAo+ICsgICAgZGVzY3JpcHRpb246Cj4gKyAg
ICAgIFNlbGVjdCBnbWFjMCBvciBnbWFjMSB0byBiZSB1c2VkIGFzIFNHTUlJIGNvbnRyb2xsZXIu
Cj4gKwo+ICAgICIjcGh5LWNlbGxzIjoKPiAgICAgIGNvbnN0OiAxCj4KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MTQxOTEzNDEu
NjkwOTA2LTEtY29pYXByYW50QGdtYWlsLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
