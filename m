Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9487ACA5FCF
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 08:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDtlemvb7DD+4F/oR8kUpI4nyN96CKUakLB9It/h7Ik=; b=TOVbr/G9HXyBbm
	H+PR29V/kqlG6FQsX30YifP+ghrpljZldtm3+o+FZsrrp4vGmaK8e6pOdlS2HSJLsSspY8wDlFckw
	+5rmAvKvgctXV2nOXAZLtEkipTdeYsSkJ4z1miRZd1vvFVp8xaPMkCsHMuhjEX/Ba3RH1boethhKb
	T6R3f+ztL06oQGZ9YAthj/pCfFy2E216pJ21zvK2a2WZk7/cr7WW+nfPx+egFVR6S7xlOhV8UP/Vo
	igekI4Ln0ztoUtxgwLV9Y3dQsNJt7L4277/ED69idiqo3+K8XAitpfkukUvSo4tA6i3eK0r1YaKzG
	EoYuBbRak700ZNCLCRlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCBW-00000008AjX-1FWn;
	Thu, 01 Oct 2026 08:30:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCBU-00000008Aj8-428G
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 08:30:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7ABBB43A1D;
	Thu,  1 Oct 2026 08:30:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 339681F000FF;
	Thu,  1 Oct 2026 08:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790843432;
	bh=tx802UC4J2g+jpO1y12LT8axhFS70v9Ik/UZtnMKgCI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QgnR3HH+O19Vw4ah1ceswscnK77HynLb0Q5JqBQegxRjRYI0S1AdrgLtis1wO7/CV
	 G+ihxG5+Teo/cBJpls93amMtB1KgBssOlb0/Mn8UckDeF6+CxXtP1t4LxppkbQqa3I
	 s5io3Gufw0QgZxsRvSeRF7I/oPGzHj5Pv/U4j+4jlnDGt84nHLmKo//Ig5V9NXwDl6
	 9cf5wSxr6kS0Ny7R7fgOPRKa6knQqU4frB5l+v9pFoMYG3a7LmygXVAl0fpMU8w3iH
	 BMoHE6ZNi6MmvQJwc3A6mlvCA6XFPaZ4VRbfGAXY69jOoRcoLAUwnz3E+VuBHaAwR7
	 RuEzPvWtOnNEA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 19/24] scsi: ufs: mediatek: Don't acquire
 dvfsrc-vcore twice
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20261001-mt8196-ufs-v13-19-60854adab6d9@collabora.com>
References: <20261001-mt8196-ufs-v13-0-60854adab6d9@collabora.com>
 <20261001-mt8196-ufs-v13-19-60854adab6d9@collabora.com>
Date: Thu, 01 Oct 2026 08:30:29 +0000
Message-Id: <20261001083030.339681F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gdWZzOiBtZWRpYXRlazog
bWlzc2luZyBkZXZfZXJyX3Byb2JlKCkgY2F1c2VzIHByb2JlIGRlZmVycmFsIGxvZyBzcGFtCi0t
Cgpjb21taXQgZDc5MzczMmY0YmI3YjA2MTQ1ZTdiZDIzMjNhM2QyMWY5NTZlODI5YQpBdXRob3I6
IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+Cgpz
Y3NpOiB1ZnM6IG1lZGlhdGVrOiBEb24ndCBhY3F1aXJlIGR2ZnNyYy12Y29yZSB0d2ljZQoKVGhl
IHVmcy1tZWRpYXRlayBkcml2ZXIgbmVlZHMgdG8gbWFuYWdlIGFuIG9wdGlvbmFsIGR2ZnNyYy12
Y29yZSByZWd1bGF0b3IKYnV0IGN1cnJlbnRseSBhY3F1aXJlcyB0d28gZGlmZmVyZW50IHJlZmVy
ZW5jZXMgdG8gaXQgaW4gZGlmZmVyZW50IHBsYWNlcy4KVGhpcyBjb21taXQgY2VudHJhbGl6ZXMg
dGhlIHJlZ192Y29yZSBhY3F1aXNpdGlvbiBpbiB0aGUgaG9zdCBzdHJ1Y3QgYW5kCnJld29ya3Mg
dGhlIHJlZ3VsYXRvciB1c2VycyB0byBlbGltaW5hdGUgdGhlIGR1cGxpY2F0ZWQgbG9naWMuCgpS
ZXZpZXdlZC1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8u
ZGVscmVnbm9AY29sbGFib3JhLmNvbT4KUmV2aWV3ZWQtYnk6IFBldGVyIFdhbmcgPHBldGVyLndh
bmdAbWVkaWF0ZWsuY29tPgpTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29s
YXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgpTaWduZWQtb2ZmLWJ5OiBMb3Vpcy1BbGV4aXMg
RXlyYXVkIDxsb3Vpc2FsZXhpcy5leXJhdWRAY29sbGFib3JhLmNvbT4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1t
ZWRpYXRlay5jCj4gaW5kZXggY2EzMWYwN2QzODJiNC4uZDE0MTkyZGMzZTMxYyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4gKysrIGIvZHJpdmVycy91ZnMv
aG9zdC91ZnMtbWVkaWF0ZWsuYwpbIC4uLiBdCj4gQEAgLTExMDYsNiArMTA5MSwxNyBAQCBzdGF0
aWMgaW50IHVmc19tdGtfZ2V0X3N1cHBsaWVzKHN0cnVjdCB1ZnNfbXRrX2hvc3QgKmhvc3QpCj4g
IAljb25zdCBzdHJ1Y3QgdWZzX210a19zb2NfZGF0YSAqZGF0YSA9IG9mX2RldmljZV9nZXRfbWF0
Y2hfZGF0YShkZXYpOwo+ICAJaW50IHJldDsKPiAgCj4gKwlob3N0LT5yZWdfdmNvcmUgPSBkZXZt
X3JlZ3VsYXRvcl9nZXRfb3B0aW9uYWwoZGV2LCAiZHZmc3JjLXZjb3JlIik7Cj4gKwlpZiAoSVNf
RVJSKGhvc3QtPnJlZ192Y29yZSkpIHsKPiArCQlpZiAoUFRSX0VSUihob3N0LT5yZWdfdmNvcmUp
ICE9IC1FTk9ERVYpIHsKPiArCQkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gZ2V0IGR2ZnNyYy12
Y29yZSBzdXBwbHk6ICVwZVxuIiwKPiArCQkJCWhvc3QtPnJlZ192Y29yZSk7CgpbU2V2ZXJpdHk6
IExvd10KU2luY2UgZGV2bV9yZWd1bGF0b3JfZ2V0X29wdGlvbmFsKCkgY2FuIHJldHVybiAtRVBS
T0JFX0RFRkVSLCB3aWxsIHVzaW5nCmRldl9lcnIoKSBoZXJlIGNhdXNlIHNwdXJpb3VzIGVycm9y
IGxvZ3MgaW4gZG1lc2cgZXZlcnkgdGltZSB0aGUgcHJvYmUgaXMKZGVmZXJyZWQ/CgpDb3VsZCB0
aGlzIGJlIGNoYW5nZWQgdG8gZGV2X2Vycl9wcm9iZSgpIHRvIHF1aWV0bHkgaGFuZGxlIHRoZSAt
RVBST0JFX0RFRkVSCmNhc2Ugd2hpbGUgcHJvcGVybHkgbG9nZ2luZyByZWFsIGVycm9ycz8KCj4g
KwkJCXJldHVybiBQVFJfRVJSKGhvc3QtPnJlZ192Y29yZSk7Cj4gKwkJfQo+ICsKPiArCQlob3N0
LT5yZWdfdmNvcmUgPSBOVUxMOwo+ICsJfQo+ICsKPiAgCWlmICghZGF0YSkKPiAgCQlyZXR1cm4g
MDsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hz
ZXQvMjAyNjEwMDEtbXQ4MTk2LXVmcy12MTMtMC02MDg1NGFkYWI2ZDlAY29sbGFib3JhLmNvbT9w
YXJ0PTE5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
