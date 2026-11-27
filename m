Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E24606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 16:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SvRdNyNB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=cVF6Iy1A
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Nq1b9ow6YNJAeXwFvbT8b3RR7QdzJ75wJQXoxTFmEGk=; b=SvRdNyNBcWrrUujWx33Fmy9F/H
	oBwrHLnN14PU2kUXwwTLDmz7C20nLswxXb3dSsdu2+HS0X+dZ167S77wh3Wcg/dYi9yPdY+aYykBT
	jS3ITpbMfyxyADEK3pblaRivQfdFXMF0o8ypAJHK8Q7OeQ3MSF6Bca3PaWY1lwhy4ZXjULS7RSqap
	qLcdGVqJAkM3jDRarmWeyU6oGMkfD/RcLcywppiwXBb+n9L/wIAY8/udFALmNAsldiKxCYlxBRqls
	eYagJoIL6D5H9CSkIYJ5AnCO3kp303IDitLimFhWL1CD9ADdInYeY30+qO3+HdEe3aZiGInESGio6
	7P4pNo5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyXf-0000000H0xe-2rkE;
	Fri, 27 Nov 2026 16:11:19 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyXX-0000000H0x2-18TO
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 16:11:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 575E261FEA;
	Fri, 27 Nov 2026 16:11:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5C501F000C1;
	Fri, 27 Nov 2026 16:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795795870;
	bh=xMo6OFbZiERAuy+5msGQEpNEdcyP65mRm2aq/lFG9/A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cVF6Iy1A2nfHMRpv9AVyXTtVbcJlU3i+qd7sXChBgrXsof4lMiBXigfXU7REWe8ep
	 a4DZjCqyH6p7ffZ8v0DvaJ6zeGOT3B42IszBmtb3m8H7SEh0SN8sXO+blswRL7vECw
	 xKZWu84XpOAosBxDQiCFWSLxzyNctsaoczS11+fK5TBoj9zsQub7UkphWBJhNy5k5+
	 Sbmd0DR5Q7FG7bBvi4+YrfGSW16k4bac/UqA4TuQ/9ijrrhAo6whlfkXY6vs94t7Au
	 g7xBzgarTxzhqTvyYAyqUSx4+E8yYgn2S5sfshygQxhuTiTpNKKShENbQjQGnxz532
	 /5D9ZRQtxNONA==
Message-ID: <sashiko-outbox-237846@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v16 13/23] scsi: ufs: mediatek: Remove vendor kernel
 quirks cruft
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261127-mt8196-ufs-v16-13-6f2568f7c119@collabora.com>
References: <20261127-mt8196-ufs-v16-0-6f2568f7c119@collabora.com>
 <20261127-mt8196-ufs-v16-13-6f2568f7c119@collabora.com>
Date: Fri, 27 Nov 2026 16:11:09 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gc2NzaTogdWZzOiBtZWRpYXRl
azogZGVhZCBWQ0MgZGVmaW5pdGlvbnMgbGVmdCBpbgogIHVmcy1tZWRpYXRlay1zaXAuaAotLQoK
Y29tbWl0IDliNGMzMGQ2NDBhMGY2MjJkYjM5MDVmZWFkY2E1NDQyYzJmMWNjMDEKQXV0aG9yOiBO
aWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoKc2Nz
aTogdWZzOiBtZWRpYXRlazogUmVtb3ZlIHZlbmRvciBrZXJuZWwgcXVpcmtzIGNydWZ0CgpUaGlz
IGNvbW1pdCByZW1vdmVzIHRoZSB1ZnNfbXRrX3ZyZWdfZml4X3ZjYygpIGFuZAp1ZnNfbXRrX3Zy
ZWdfZml4X3ZjY3F4KCkgcmVndWxhdG9yIGZpeHVwIGhlbHBlcnMgYW5kIHRoZWlyIGNhbGxzIGZy
b20KdWZzX210a19maXh1cF9kZXZfcXVpcmtzKCkuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Vm
cy9ob3N0L3Vmcy1tZWRpYXRlay5jIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+
IGluZGV4IGU3NjhhZmRiYzNiZWYuLjMzZWQ1ZTZkYWJmZWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+ICsrKyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1l
ZGlhdGVrLmMKPiBAQCAtMTA3NCw3MyArMTA3NCw2IEBAIHN0YXRpYyB2b2lkIHVmc19tdGtfaW5p
dF9jbG9ja3Moc3RydWN0IHVmc19oYmEgKmhiYSkKPiAgCX0KPiAgfQo+ICAKPiAtI2RlZmluZSBN
QVhfVkNDX05BTUUgMzAKPiAtc3RhdGljIGludCB1ZnNfbXRrX3ZyZWdfZml4X3ZjYyhzdHJ1Y3Qg
dWZzX2hiYSAqaGJhKQo+IC17Cj4gLQlzdHJ1Y3QgdWZzX3ZyZWdfaW5mbyAqaW5mbyA9ICZoYmEt
PnZyZWdfaW5mbzsKPiAtCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBoYmEtPmRldi0+b2Zfbm9k
ZTsKPiAtCXN0cnVjdCBkZXZpY2UgKmRldiA9IGhiYS0+ZGV2Owo+IC0JY2hhciB2Y2NfbmFtZVtN
QVhfVkNDX05BTUVdOwo+IC0Jc3RydWN0IGFybV9zbWNjY19yZXMgcmVzOwo+IC0JaW50IGVyciwg
dmVyOwo+IC0KPiAtCWlmIChpbmZvLT52Y2MpCj4gLQkJcmV0dXJuIDA7Cj4gLQo+IC0JaWYgKG9m
X3Byb3BlcnR5X3JlYWRfYm9vbChucCwgIm1lZGlhdGVrLHVmcy12Y2MtYnktbnVtIikpIHsKPiAt
CQl1ZnNfbXRrX2dldF92Y2NfbnVtKHJlcyk7Cj4gLQkJaWYgKHJlcy5hMSA+IFVGU19WQ0NfTk9O
RSAmJiByZXMuYTEgPCBVRlNfVkNDX01BWCkKPiAtCQkJc25wcmludGYodmNjX25hbWUsIE1BWF9W
Q0NfTkFNRSwgInZjYy1vcHQlbHUiLCByZXMuYTEpOwo+IC0JCWVsc2UKPiAtCQkJcmV0dXJuIC1F
Tk9ERVY7CgpbU2V2ZXJpdHk6IExvd10KU2hvdWxkIFVGU19NVEtfU0lQX0dFVF9WQ0NfTlVNLCBl
bnVtIHVmc19tdGtfdmNjX251bSwgYW5kCnVmc19tdGtfZ2V0X3ZjY19udW0oKSBpbiBkcml2ZXJz
L3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay1zaXAuaCBhbHNvIGJlCnJlbW92ZWQgbm93IHRoYXQgdGhl
aXIgb25seSBjYWxsZXIgdWZzX210a192cmVnX2ZpeF92Y2MoKSBpcyBnb25lPwoKLS0gClNhc2hp
a28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTEyNy1t
dDgxOTYtdWZzLXYxNi0wLTZmMjU2OGY3YzExOUBjb2xsYWJvcmEuY29tP3BhcnQ9MTMKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
