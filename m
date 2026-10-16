Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B909CCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 12:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzQhJbBkPoYnDeSdyzD72fKkJAN9ZBluIi/A2SdwzRE=; b=TSueoCfuaRkfej
	M3MXhVVQ0J0JW0hRf7T/zBHjf0k8xCh5sp7por5p2QgbHeK7PmpRJ8+NgfRCUelWagdgQMF8QxuuG
	mSfxfszn/XlazBe0yi4qC4v3e3dFYU+xGye2r2f2S25l2wBu5j3BZr6Je0FFPCVYqbcipG0oRS7ms
	CAo4XaPEtd5e3On435CrLtogUUrTwXJg5dkKN1EDaoNG96s78gYxpww6Ky5Eo3M0+lu4a9Jj3ocje
	jN5Z0tgyWVhb5mAQVKP3aEt8siPD4+AaMP4WgwgC5BFRRXAiFou8Exdw0eda7lGZoPmi4SecOtsRf
	wnip8sVL0qxO7twsbf6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhHg-00000002wmP-3e2t;
	Fri, 16 Oct 2026 12:43:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhHf-00000002wmD-3Aq1
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 12:43:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F157460018;
	Fri, 16 Oct 2026 12:43:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 366DE1F000C4;
	Fri, 16 Oct 2026 12:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792154618;
	bh=sFVNTFoGHUrASjkmYtjqwEFnuAOqRGnu4QXjJP3mM8E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=d1MTx9Bp17fkiU+2EgdscZLYd+23JjVfiT17kwNdnFAbA0rzBYYT44HI0f1POl0TS
	 NWOMfHQAuBvTDuM9Kb7wibrYjEvC07nrwkeGBMqTe/LBEG6f0Q+bmR9KUv73a5WYoz
	 7wE3HQ0qhvRfPMasY/gwwnTNm6RMPBLtD9j1Bhd6Jj/Zy9kA6g9qNwADx66rfP60QS
	 TGq8zk8Fcne5BuoT0uDvIbbBC0k3aTPo1SqCB3ne7iRN3SobYYQ7msNzYsQQVjCnwJ
	 hW8OyjLK9BWM4BR4bMHO2JBMPknqUYl1tVWZxO8knk6t9pRgOmSvT4/5xlF/82sb0w
	 e92tVO3s8U/YA==
Message-ID: <sashiko-outbox-174328@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 13/23] scsi: ufs: mediatek: Remove vendor kernel
 quirks cruft
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261016-mt8196-ufs-v14-13-e8d565e0cd45@collabora.com>
References: <20261016-mt8196-ufs-v14-0-e8d565e0cd45@collabora.com>
 <20261016-mt8196-ufs-v14-13-e8d565e0cd45@collabora.com>
Date: Fri, 16 Oct 2026 12:43:37 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gc2NzaTogdWZzOiBtZWRp
YXRlazogT3JwaGFuZWQgU0lQIG1hY3JvIGFuZCBlbnVtIGRlZmluaXRpb25zCi0tCgpjb21taXQg
ZTdiYWMwZTc0ODg0NjdkNzJkYmJjMWIzZTk1N2UxZTlmOWY1NTYzYQpBdXRob3I6IE5pY29sYXMg
RnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+CgogICAgc2NzaTog
dWZzOiBtZWRpYXRlazogUmVtb3ZlIHZlbmRvciBrZXJuZWwgcXVpcmtzIGNydWZ0CiAgICAKQm90
aCB1ZnNfbXRrX3ZyZWdfZml4X3ZjYyBhbmQgdWZzX210a192cmVnX2ZpeF92Y2NxeCBsb29rIGxp
a2UgdGhleSBhcmUKdmVuZG9yIGtlcm5lbCBoYWNrcyB0byB3b3JrIGFyb3VuZCBleGlzdGluZyBk
b3duc3RyZWFtIGRldmljZSB0cmVlcy4KTWFpbmxpbmUgZG9lcyBub3QgbmVlZCBvciB3YW50IHRo
ZW0sIHNvIHJlbW92ZSB0aGVtLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMvaG9zdC91ZnMt
bWVkaWF0ZWsuYyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiBpbmRleCA0NmM5
MTUzYmU2ZTIyLi40MWUyZTlmODY3MDEzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdWZzL2hvc3Qv
dWZzLW1lZGlhdGVrLmMKPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4g
QEAgLTEwNjYsNzMgKzEwNjYsNiBAQCBzdGF0aWMgdm9pZCB1ZnNfbXRrX2luaXRfY2xvY2tzKHN0
cnVjdCB1ZnNfaGJhICpoYmEpCj4gIAl9Cj4gIH0KPiAgCj4gLSNkZWZpbmUgTUFYX1ZDQ19OQU1F
IDMwCj4gLXN0YXRpYyBpbnQgdWZzX210a192cmVnX2ZpeF92Y2Moc3RydWN0IHVmc19oYmEgKmhi
YSkKPiAtewo+IC0Jc3RydWN0IHVmc192cmVnX2luZm8gKmluZm8gPSAmaGJhLT52cmVnX2luZm87
Cj4gLQlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gaGJhLT5kZXYtPm9mX25vZGU7Cj4gLQlzdHJ1
Y3QgZGV2aWNlICpkZXYgPSBoYmEtPmRldjsKPiAtCWNoYXIgdmNjX25hbWVbTUFYX1ZDQ19OQU1F
XTsKPiAtCXN0cnVjdCBhcm1fc21jY2NfcmVzIHJlczsKPiAtCWludCBlcnIsIHZlcjsKPiAtCj4g
LQlpZiAoaW5mby0+dmNjKQo+IC0JCXJldHVybiAwOwo+IC0KPiAtCWlmIChvZl9wcm9wZXJ0eV9y
ZWFkX2Jvb2wobnAsICJtZWRpYXRlayx1ZnMtdmNjLWJ5LW51bSIpKSB7Cj4gLQkJdWZzX210a19n
ZXRfdmNjX251bShyZXMpOwoKW1NldmVyaXR5OiBMb3ddClJlbW92aW5nIHVmc19tdGtfdnJlZ19m
aXhfdmNjKCkgcmVtb3ZlcyB0aGUgb25seSBjYWxsZXIgb2YKdWZzX210a19nZXRfdmNjX251bSgp
LiBEb2VzIHRoaXMgbGVhdmUgdGhlIHVmc19tdGtfZ2V0X3ZjY19udW0oKSBtYWNybywKdGhlIFVG
U19NVEtfU0lQX0dFVF9WQ0NfTlVNIGRlZmluaXRpb24sIGFuZCBlbnVtIHVmc19tdGtfdmNjX251
bSBjb21wbGV0ZWx5CnVudXNlZCBpbiBkcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay1zaXAu
aD8KCkNvdWxkIHRoZXNlIGRlZmluaXRpb25zIGFsc28gYmUgcmVtb3ZlZCB0byBhdm9pZCBsZWF2
aW5nIGRlYWQgY29kZT8KCj4gLQkJaWYgKHJlcy5hMSA+IFVGU19WQ0NfTk9ORSAmJiByZXMuYTEg
PCBVRlNfVkNDX01BWCkKPiAtCQkJc25wcmludGYodmNjX25hbWUsIE1BWF9WQ0NfTkFNRSwgInZj
Yy1vcHQlbHUiLCByZXMuYTEpOwoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAxNi1tdDgxOTYtdWZzLXYxNC0wLWU4
ZDU2NWUwY2Q0NUBjb2xsYWJvcmEuY29tP3BhcnQ9MTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
