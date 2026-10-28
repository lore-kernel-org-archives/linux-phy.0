Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D32606A31A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hrfBvZRi;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=DcyFxVsg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Okq2JBOvh5xk9UU9FAxN7To6sQfq+d7b9Br/h1QUi2w=; b=hrfBvZRiV1Axl9C6bLsJowklJJ
	Tu29YTnWSlRxNkhEjgiIsTQ25RswsT4vPN++8RXbQ+x4XEyPVfN+n0cZm429kF72sEvSTRvmxM90a
	OgR8MWsoTY/gPlXDrFj/d1ciCSGMsO9Cd5UcLDpgZv1VAs8CEcp0aMOWa4bFHtfpKNGcb7uQEsgXQ
	uzC0ZmUzXxgtnFiD5ERTitKKRF+7KGdvRxVEsV0n3kyyPI+Y16EpODVtiujF92h3fGcnOkpAZL2NR
	ttp0GtmLzB0bN9jnRAICmTDfqzr2bC/tCEe7HN6q6SkW+osjeI3rvEGFYdMahcKqUlChsszfVRJqL
	vQ+/LA3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5g3-00000007PT4-0Al4;
	Wed, 28 Oct 2026 15:34:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5g1-00000007PSr-2hf7
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:34:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C821D60210;
	Wed, 28 Oct 2026 15:34:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 108961F01825;
	Wed, 28 Oct 2026 15:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793201696;
	bh=sLumN3EmXqMht3zLNv6AhnKJMrZtggWYBOtzHUH0fcY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DcyFxVsgKHKvFA2zFYd0eiWhh5XuqgFFDY09OXeFEphHexHZCMfw3v45uHGahvzpY
	 tJJcClsVCvDzDnop/wzFQTnlyQaVYOAsgxomiftrCe7Sbn3cP5Nud0utX3EiSeee+P
	 82N5xpn7f5ta83lkUlVZ+6Jj4aTGgBBQNaCGEvpkHQQKrEraEYzREie6uTFWqLtXWk
	 enhdsr5o/uI1hRBfVsVPp20BQ6zDpI5uyVzR+YIQcwdf4o7s9RZYDEaD/aDImCvYHs
	 lfKmdALAWGbl6S+mK2R3mLmUeeBsFh/MPGfIaHC13sSL1vQURNxI77RshpE3IjEuds
	 PKYvFOmRld6Aw==
Message-ID: <sashiko-outbox-188058@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v23 10/15] media: qcom: camss: vfe: Add support for VFE
 1080
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261028-kaanapali-camss-v23-10-95f250b18612@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-10-95f250b18612@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 15:34:55 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG1lZGlhOiBxY29tOiBj
YW1zczogdW5zeW5jaHJvbml6ZWQgQ1NJRCBSVVAvQVVQIHVwZGF0ZXMgaW4gdmZlX29wc18xMDgw
Ci0tCgpjb21taXQgNTlhNDJmNTg4OWU0ZTlmYjY5MzdlNTgxMTgzMGJjM2Y3OTZiMDE2YQpBdXRo
b3I6IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+CgptZWRpYTog
cWNvbTogY2Ftc3M6IHZmZTogQWRkIHN1cHBvcnQgZm9yIFZGRSAxMDgwCgpUaGlzIGNvbW1pdCBh
ZGRzIHN1cHBvcnQgZm9yIHRoZSBWRkUgMTA4MCBoYXJkd2FyZSBibG9jayBmb3VuZCBvbiB0aGUK
S2FhbmFwYWxpIFNvQywgaW5jbHVkaW5nIHdyaXRlIG1hc3RlciBjb25maWd1cmF0aW9uLCBDU0lE
IHJlZ2lzdGVyIGFuZAphZGRyZXNzIHVwZGF0ZSBmb3J3YXJkaW5nLCBhbmQgS2FhbmFwYWxpIFZG
RSByZXNvdXJjZSBkZWZpbml0aW9ucy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcWNvbS9jYW1zcy9jYW1zcy12ZmUtMTA4MC5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9xY29tL2NhbXNzL2NhbXNzLXZmZS0xMDgwLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGlu
ZGV4IDAwMDAwMDAwMDAwMDAuLjY4Nzk4ZjEzZmJlYTgKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXZmZS0xMDgwLmMKPiBAQCAt
MCwwICsxLDIxMyBAQAoKWyAuLi4gXQoKPiArc3RhdGljIHZvaWQgdmZlX3JlZ191cGRhdGUoc3Ry
dWN0IHZmZV9kZXZpY2UgKnZmZSwgZW51bSB2ZmVfbGluZV9pZCBsaW5lX2lkKQo+ICt7Cj4gKwlp
bnQgcG9ydF9pZCA9IGxpbmVfaWQ7Cj4gKwo+ICsJY2Ftc3NfcmVnX3VwZGF0ZSh2ZmUtPmNhbXNz
LCB2ZmUtPmlkLCBwb3J0X2lkLCBmYWxzZSk7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIHZmZV9y
ZWdfdXBkYXRlX2NsZWFyKHN0cnVjdCB2ZmVfZGV2aWNlICp2ZmUsCj4gKwkJCQkgZW51bSB2ZmVf
bGluZV9pZCBsaW5lX2lkKQo+ICt7Cj4gKwlpbnQgcG9ydF9pZCA9IGxpbmVfaWQ7Cj4gKwo+ICsJ
Y2Ftc3NfcmVnX3VwZGF0ZSh2ZmUtPmNhbXNzLCB2ZmUtPmlkLCBwb3J0X2lkLCB0cnVlKTsKPiAr
fQo+ICsKPiArc3RhdGljIHZvaWQgdmZlX2FkZHJfdXBkYXRlKHN0cnVjdCB2ZmVfZGV2aWNlICp2
ZmUsIGVudW0gdmZlX2xpbmVfaWQgbGluZV9pZCkKPiArewo+ICsJaW50IHBvcnRfaWQgPSBsaW5l
X2lkOwo+ICsKPiArCWNhbXNzX2FkZHJfdXBkYXRlKHZmZS0+Y2Ftc3MsIHZmZS0+aWQsIHBvcnRf
aWQsIGZhbHNlKTsKPiArfQoKW1NldmVyaXR5OiBIaWdoXQpDYW4gdmZlX3JlZ191cGRhdGUoKSBh
bmQgdmZlX2FkZHJfdXBkYXRlKCkgcmFjZSB3aXRoIGNzaWRfaXNyKCkgd2hlbgp1cGRhdGluZyBj
c2lkLT5yZWdfdXBkYXRlIGFuZCBjc2lkLT5hZGRyX3VwZGF0ZT8KCldoZW4gdXNlcnNwYWNlIHF1
ZXVlcyBhIGJ1ZmZlciB2aWEgdmZlX3F1ZXVlX2J1ZmZlcl92MigpIG9yIGVuYWJsZXMgYW4Kb3V0
cHV0IGxpbmUgdmlhIHZmZV9lbmFibGVfb3V0cHV0X3YyKCksIHRoZSBWRkUgZHJpdmVyIGhvbGRz
CnZmZS0+b3V0cHV0X2xvY2sgYW5kIGNhbGxzIHZmZV9hZGRyX3VwZGF0ZSgpIG9yIHZmZV9yZWdf
dXBkYXRlKCksIHdoaWNoCmZvcndhcmRzIHRocm91Z2ggY2Ftc3NfYWRkcl91cGRhdGUoKSBhbmQg
Y2Ftc3NfcmVnX3VwZGF0ZSgpIHRvCmRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9j
YW1zcy1jc2lkLTEwODAuYzoKCnN0YXRpYyB2b2lkIF9fY3NpZF9hZGRyX3VwZGF0ZShzdHJ1Y3Qg
Y3NpZF9kZXZpY2UgKmNzaWQsIGludCBwb3J0X2lkKQp7Cgljc2lkLT5hZGRyX3VwZGF0ZSB8PSBD
U0lEX1JVUF9BVVBfUkRJKHBvcnRfaWQpOwoJd3JpdGVsKGNzaWQtPmFkZHJfdXBkYXRlLCBjc2lk
LT5iYXNlICsgQ1NJRF9BVVBfQ01EKTsKCglfX2NzaWRfYXVwX3J1cF90cmlnZ2VyKGNzaWQpOwp9
CgpzdGF0aWMgdm9pZCBfX2NzaWRfcmVnX3VwZGF0ZShzdHJ1Y3QgY3NpZF9kZXZpY2UgKmNzaWQs
IGludCBwb3J0X2lkKQp7Cgljc2lkLT5yZWdfdXBkYXRlIHw9IENTSURfUlVQX0FVUF9SREkocG9y
dF9pZCk7Cgl3cml0ZWwoY3NpZC0+cmVnX3VwZGF0ZSwgY3NpZC0+YmFzZSArIENTSURfUlVQX0NN
RCk7CgoJX19jc2lkX2F1cF9ydXBfdHJpZ2dlcihjc2lkKTsKfQoKQ29uY3VycmVudGx5IG9uIGFu
b3RoZXIgQ1BVLCBjc2lkX2lzcigpIGluIGNhbXNzLWNzaWQtMTA4MC5jIGNsZWFycyB0aG9zZQpz
YW1lIGJpdG1hc2tzIHVwb24gSU5GT19SVVBfRE9ORSB3aXRob3V0IGhvbGRpbmcgdmZlLT5vdXRw
dXRfbG9jayBvciBhbnkKQ1NJRCBsb2NrIGJlZm9yZSBjYWxsaW5nIGNhbXNzX2J1Zl9kb25lKCk6
CgoJCQlpZiAodmFsICYgSU5GT19SVVBfRE9ORSkgewoJCQkJX19jc2lkX2FkZHJfdXBkYXRlX2Ns
ZWFyKGNzaWQsIGkpOwoJCQkJX19jc2lkX3JlZ191cGRhdGVfY2xlYXIoY3NpZCwgaSk7CgkJCX0K
CgkJCWlmIChidWZfZG9uZV92YWwgJiBCSVQoQlVGX0RPTkVfSVJRX1NUQVRVU19SRElfT0ZGU0VU
ICsgaSkpCgkJCQljYW1zc19idWZfZG9uZShjc2lkLT5jYW1zcywgY3NpZC0+aWQsIGkpOwoKSWYg
Y3NpZF9pc3IoKSBydW5zIGJldHdlZW4gdGhlIGJpdHdpc2UgT1Igb24gY3NpZC0+YWRkcl91cGRh
dGUgb3IKY3NpZC0+cmVnX3VwZGF0ZSBhbmQgdGhlIHdyaXRlbCgpIHRvIENTSURfQVVQX0NNRCBv
ciBDU0lEX1JVUF9DTUQgKG9yCnJhY2VzIHdpdGggdXBkYXRlcyBvbiBhbm90aGVyIFJESSBwb3J0
IG9mIHRoZSBzYW1lIENTSUQpLCBjb3VsZCB0aGUgbmV3bHkKc2V0IGJpdCBiZSBjbGVhcmVkIG9y
IGNsb2JiZXJlZCBiZWZvcmUgX19jc2lkX2F1cF9ydXBfdHJpZ2dlcigpIGlzIGNhbGxlZCwKY2F1
c2luZyB0aGUgaGFyZHdhcmUgdG8gbWlzcyBhIGJ1ZmZlciBhZGRyZXNzIHVwZGF0ZSB3aGlsZQpv
dXRwdXQtPmdlbjIuYWN0aXZlX251bSBpcyBpbmNyZW1lbnRlZD8KCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMjgta2FhbmFwYWxp
LWNhbXNzLXYyMy0wLTk1ZjI1MGIxODYxMkBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MTAKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
