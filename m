Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB17FCA5FB3
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 08:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CoMx6yjyujTnUW2EaFu0P4BpH/e6SObNur89neJqkf0=; b=Eim2naWwh3AW7D
	R0k3X8AgJvDuKulIwmshVWnsfoo8FZcIEQKehOclMS5WlsKR6BMnaqX+oVHsr6NzX3r7cM4r2BKle
	m9HChcJn8/98p9smuYz8BXSJKnjFrgSpXVgv1ehbX3exAR9tdfF91q7a1zeUVh0b7ti4CJR0+9O+O
	D5hVT4WAE2uc226RthwcvZegnM7JJ+7TsSk9EY/HdxrdeejrY+knhx9Lo0dz7P7JPZB18cdfp0Zzd
	h97RAPA9iARI9eR1iHCdmbYN959g4c768YbNqLwUIgizAt5bCtdRwm44PvLKsa5cWYnamoWlc+MQf
	G3XMLWSvMuGz9peABcyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCJd-00000008CFX-1tB0;
	Thu, 01 Oct 2026 08:38:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCJc-00000008CFB-06D2
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 08:38:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7A5B2601FE;
	Thu,  1 Oct 2026 08:38:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE44A1F0089E;
	Thu,  1 Oct 2026 08:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790843935;
	bh=Jb7hOi/gVtdfFV1e2VDg6t2YGXHGD52QPs/n1x58YTU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UrBvg0mbg3KNtEWHs1Bd1BMHDtdeoCcvvqhX8Y8CRaSA8pUfRZFhjFKHJgLALmwlC
	 CErLdLJWI7qT0xMBIUp8Oxc5yo+Gh6Term20Tz11fmB/ZZggFP6a3k+F8aoDPyJNr6
	 vknJLTwGO3z4EmFgmN57uR45dJVZKEMToZe+QdLIAR5I1/scv0HfWq7TLK9KAIqXFs
	 K3t7x4td2q/2/hKtPoADdoAAEbbyzvBph/k9k+Xy3V0/8ZdRSkaqExXevCblOQwaq/
	 u9aVKbYifqx5IGSmd1W+gdP7aDSwbeTE6yHh5ThfKGyh55L+onwjJqi9sPLMyQ87/L
	 QUmJBg9O/CgpA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 05/24] phy: mediatek: ufs: Add support for resets
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, linux-scsi@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20261001-mt8196-ufs-v13-5-60854adab6d9@collabora.com>
References: <20261001-mt8196-ufs-v13-0-60854adab6d9@collabora.com>
 <20261001-mt8196-ufs-v13-5-60854adab6d9@collabora.com>
Date: Thu, 01 Oct 2026 08:38:54 +0000
Message-Id: <20261001083854.CE44A1F0089E@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFN0cmljdCBwcm9iZSBm
YWlsdXJlIHdoZW4gZmlybXdhcmUgbGFja3Mgb3B0aW9uYWwgTVBIWSBiYWNrdXAgU01DCi0gW01l
ZGl1bV0gVW5oYW5kbGVkIGZpcm13YXJlIGVycm9yIGNvZGVzIGFyZSBzaWxlbnRseSB0cmVhdGVk
IGFzIHN1Y2Nlc3MgaW4gdWZzX210a19waHlfY3RybCgpCi0tCgpjb21taXQgOTAwOWM0NzdkYzBh
OGVlZmQ3OTJmMjlkNmJlNzU4OTIxNGFkYjA5ZQpBdXRob3I6IE5pY29sYXMgRnJhdHRhcm9saSA8
bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+CgpwaHk6IG1lZGlhdGVrOiB1ZnM6IEFk
ZCBzdXBwb3J0IGZvciByZXNldHMKClRoZSBNZWRpYVRlayBVRlMgUEhZIHN1cHBvcnRzIFBIWSBy
ZXNldHMuIFVudGlsIG5vdywgdGhleSd2ZSBiZWVuCmltcGxlbWVudGVkIGluIHRoZSBVRlMgaG9z
dCBkcml2ZXIuIFRoaXMgY29tbWl0IG1pZ3JhdGVzIHRoZSBNUEhZIHJlc2V0IGxvZ2ljCmludG8g
dGhlIFBIWSBkcml2ZXIgdXNpbmcgdGhlIFBIWSBzdWJzeXN0ZW0ncyByZXNldCBvcC4KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstdWZzLmMgYi9kcml2ZXJzL3Bo
eS9tZWRpYXRlay9waHktbXRrLXVmcy5jCj4gaW5kZXggZmMxOWUwZmE4ZWQ1NS4uNDQzOWE5ZWI2
YjdhZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLXVmcy5jCj4g
KysrIGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay11ZnMuYwpbIC4uLiBdCj4gQEAgLTE0
MCw5ICsxNTEsNTkgQEAgc3RhdGljIGludCB1ZnNfbXRrX3BoeV9wb3dlcl9vZmYoc3RydWN0IHBo
eSAqZ2VuZXJpY19waHkpCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiArc3RhdGljIGludCB1ZnNf
bXRrX3BoeV9jdHJsKHN0cnVjdCB1ZnNfbXRrX3BoeSAqcGh5LCBlbnVtIHVmc19tdGtfbXBoeV9v
cCBvcCkKPiArewo+ICsJc3RydWN0IGFybV9zbWNjY19yZXMgcmVzOwo+ICsKPiArCWFybV9zbWNj
Y19zbWMoTVRLX1NJUF9VRlNfQ09OVFJPTCwgVUZTX01US19TSVBfTVBIWV9DVFJMLCBvcCwKPiAr
CQkgICAgICAwLCAwLCAwLCAwLCAwLCAmcmVzKTsKPiArCj4gKwlzd2l0Y2ggKHJlcy5hMCkgewo+
ICsJY2FzZSBTTUNDQ19SRVRfTk9UX1NVUFBPUlRFRDoKPiArCQlyZXR1cm4gLUVPUE5PVFNVUFA7
Cj4gKwljYXNlIFNNQ0NDX1JFVF9JTlZBTElEX1BBUkFNRVRFUjoKPiArCQlyZXR1cm4gLUVJTlZB
TDsKPiArCWRlZmF1bHQ6Cj4gKwkJcmV0dXJuIDA7Cj4gKwl9CgpbU2V2ZXJpdHk6IE1lZGl1bV0K
RG9lcyB0aGlzIGRlZmF1bHQgY2FzZSBtYXNrIHVuaGFuZGxlZCBmaXJtd2FyZSBlcnJvciBjb2Rl
cz8KCklmIHRoZSBmaXJtd2FyZSBlbmNvdW50ZXJzIGEgZmFpbHVyZSBkdXJpbmcgUEhZIGJhY2t1
cCBhbmQgcmVzdG9yZSBvcGVyYXRpb25zCmFuZCByZXR1cm5zIGFuIGVycm9yIGNvZGUgb3RoZXIg
dGhhbiBTTUNDQ19SRVRfTk9UX1NVUFBPUlRFRCBvcgpTTUNDQ19SRVRfSU5WQUxJRF9QQVJBTUVU
RVIsIGl0IHNlZW1zIGl0IHdpbGwgZmFsbCB0aHJvdWdoIHRvIHRoZSBkZWZhdWx0CmNhc2UgYW5k
IHJldHVybiAwIChzdWNjZXNzKS4KCkNvdWxkIHRoaXMgY2F1c2UgdGhlIGRyaXZlciB0byBzaWxl
bnRseSBpZ25vcmUgaGFyZHdhcmUgb3IgZmlybXdhcmUgZmFpbHVyZXMKYW5kIHByb2NlZWQgd2l0
aCBwb3RlbnRpYWxseSBjb3JydXB0ZWQgc3RhdGU/Cgo+ICt9ClsgLi4uIF0KPiBAQCAtMTYyLDgg
KzIyMywxOCBAQCBzdGF0aWMgaW50IHVmc19tdGtfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gIAlpZiAoSVNfRVJSKHBoeS0+bW1pbykpCj4gIAkJcmV0dXJuIFBUUl9F
UlIocGh5LT5tbWlvKTsKPiAgCj4gKwlwaHktPnJlc2V0ID0gZGV2bV9yZXNldF9jb250cm9sX2dl
dF9vcHRpb25hbF9leGNsdXNpdmUoZGV2LCBOVUxMKTsKPiArCWlmIChJU19FUlIocGh5LT5yZXNl
dCkpCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKHBoeS0+cmVzZXQpLCAi
RmFpbGVkIHRvIGdldCByZXNldFxuIik7Cj4gKwo+ICAJcGh5LT5kZXYgPSBkZXY7Cj4gIAo+ICsJ
aWYgKHBoeS0+cmVzZXQpIHsKPiArCQlyZXQgPSB1ZnNfbXRrX3BoeV9jdHJsKHBoeSwgVUZTX01Q
SFlfQkFDS1VQKTsKPiArCQlpZiAocmV0KQo+ICsJCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYs
IHJldCwgIkZhaWxlZCB0byBiYWNrIHVwIE1QSFlcbiIpOwoKW1NldmVyaXR5OiBIaWdoXQpEb2Vz
IHRoaXMgY3JlYXRlIGEgc3RyaWN0IHByb2JlIGZhaWx1cmUgb24gc3lzdGVtcyB3aXRoIG9sZGVy
IGZpcm13YXJlPwoKSWYgYSBEZXZpY2UgVHJlZSBhY2N1cmF0ZWx5IGRlc2NyaWJpbmcgdGhlIGhh
cmR3YXJlIGluY2x1ZGVzIHRoZSByZXNldCBsaW5lLApidXQgdGhlIHN5c3RlbSBpcyBydW5uaW5n
IGFuIG9sZGVyIEFURiBmaXJtd2FyZSB0aGF0IGxhY2tzIHRoZQpVRlNfTVBIWV9CQUNLVVAgU01D
IGNhbGwsIHVmc19tdGtfcGh5X2N0cmwoKSByZXR1cm5zIC1FT1BOT1RTVVBQLgoKQ291bGQgdGhp
cyBjYXVzZSB0aGUgZHJpdmVyIHByb2JlIHRvIGZhaWwgZW50aXJlbHksIHJlbmRlcmluZyB0aGUg
UEhZIGFuZApkZXBlbmRlbnQgVUZTIGhvc3Qgbm9uLWZ1bmN0aW9uYWw/IE1pZ2h0IGl0IGJlIGJl
dHRlciB0byBkZWdyYWRlCmdyYWNlZnVsbHkgaWYgdGhlIG9wdGlvbmFsIGZpcm13YXJlIGJhY2t1
cCBjb21tYW5kIGlzIHVuc3VwcG9ydGVkPwoKPiArCX0KPiArCj4gIAlyZXQgPSB1ZnNfbXRrX3Bo
eV9jbGtfaW5pdChwaHkpOwo+ICAJaWYgKHJldCkKPiAgCQlyZXR1cm4gcmV0OwoKLS0gClNhc2hp
a28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAwMS1t
dDgxOTYtdWZzLXYxMy0wLTYwODU0YWRhYjZkOUBjb2xsYWJvcmEuY29tP3BhcnQ9NQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
