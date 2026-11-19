Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACC8C606A330
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 15:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lCOK8QgW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ANb40fzP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uBo9UKKX46+8zVWYWjM+IUt5jJvyIXUdkm+bd+BNB7Y=; b=lCOK8QgWZU6Eo2QUSn+AJJZJY3
	d9Y/pj66EuJDZ0SqL9/J+XTQfTPZWdr1D4S3G4LB309qTbUXlPd2nZ6hzqxIFwmzoe1hkfHQRpvag
	OE+rNKdbO+zzgJo+Lqsmf19MoGVB6Lkb9hUhAkVdHN5MwH5YAdkmgCLMjS4eYZLPv6jb/8QqnOMlP
	Zdq2jgVfHUZ6a0v2uCcL0503FwH0n5MpFbkYnpC9YcpKhpHRbBGuv0p+JesfcstLkrJ/kPCVCxfC3
	HsLIa4T+MN5DcSQgSyNjNbUDYp5t0KFNKlqxT1cnRamtBWJH2qiOIIEFomDM7d68v1PRcJATiTYsY
	xAWQA9PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU3ta-0000000CP6y-12Qk;
	Thu, 19 Nov 2026 15:17:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU3tZ-0000000CP6A-0wi9
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 15:17:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BD34640BFB;
	Thu, 19 Nov 2026 15:17:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35A8F1F000C4;
	Thu, 19 Nov 2026 15:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795101472;
	bh=1yBhK8DzlTFvVGFf7TNM8ewNHyj6enCfbqFsZn6LpEk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ANb40fzPs8wTgrqkgrgJCj1YYvFlgFOj9apufe8p7k0lA7lmtosnDm4LF4W1QQ/l9
	 GwcWUFRl58SYl32C7JJQhbcAZxksWm4kZLovBLPbyu1H+Vx7u3zY9auMLgrWYmHkb3
	 zKhvwRiKvhbo0ghpSWrJbcEwvg2Ze9XXaxrnhWUlp66Ko7CHe4IP8sL5N3ps+HDypy
	 OGEUOdiAA0WbowzPyKYMfsyRcoVwRWxtHoWgYi+yT+kadqel7cAksZtuAW5mJAk2VP
	 pSnbLF8VvoTF2JvDEpIA/cZixXgWnaYErD4clh3UwHJcLEUSAQlZSrXtsSL0l/jdes
	 UJ3Vdc9z5tHHg==
Message-ID: <sashiko-outbox-223360@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 13/23] scsi: ufs: mediatek: Remove vendor kernel
 quirks cruft
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261119-mt8196-ufs-v15-13-aae1eb0382e8@collabora.com>
References: <20261119-mt8196-ufs-v15-0-aae1eb0382e8@collabora.com>
 <20261119-mt8196-ufs-v15-13-aae1eb0382e8@collabora.com>
Date: Thu, 19 Nov 2026 15:17:51 +0000
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
Y29tbWl0IDZlYjE1ZmRiNzkyMzUxOTg2MGYwNmZmMzI4OWY1MGIyNzkyMzdlZTMKQXV0aG9yOiBO
aWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoKc2Nz
aTogdWZzOiBtZWRpYXRlazogUmVtb3ZlIHZlbmRvciBrZXJuZWwgcXVpcmtzIGNydWZ0CgpUaGlz
IGNvbW1pdCByZW1vdmVzIHRoZSB1ZnNfbXRrX3ZyZWdfZml4X3ZjYygpIGFuZAp1ZnNfbXRrX3Zy
ZWdfZml4X3ZjY3F4KCkgcmVndWxhdG9yIGZpeHVwIGhlbHBlcnMgYW5kIHRoZWlyIGNhbGxzIGZy
b20KdWZzX210a19maXh1cF9kZXZfcXVpcmtzKCkuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Vm
cy9ob3N0L3Vmcy1tZWRpYXRlay5jIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+
IGluZGV4IDkwN2I1ZmU2ZWIyMmMuLmZlYzBmYjI0ZTdhMmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+ICsrKyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1l
ZGlhdGVrLmMKPiBAQCAtMTA2OCw3MyArMTA2OCw2IEBAIHN0YXRpYyB2b2lkIHVmc19tdGtfaW5p
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
L3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay1zaXAuaCBhbHNvIGJlCnJlbW92ZWQgbm93IHRoYXQgdWZz
X210a192cmVnX2ZpeF92Y2MoKSB3YXMgdGhlaXIgb25seSB1c2VyPwoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTExOS1tdDgxOTYt
dWZzLXYxNS0wLWFhZTFlYjAzODJlOEBjb2xsYWJvcmEuY29tP3BhcnQ9MTMKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
