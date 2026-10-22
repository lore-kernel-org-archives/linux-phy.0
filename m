Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8029B606A319
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 11:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XcON/87I;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=AelrLk3u
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mHu2/krfij/njb+YjA+G9TwRMStY7AWnSzmMSsUHOwI=; b=XcON/87I4VrqLjHKpYW9NbFJvR
	rezcdkyOea1okz2SyGAZT/Ryh+lGRFzyMhVigP8Z1dyOHV7oTU5y5K/0dUdqNp0mDOzyAiy9Q7SS8
	ZzvokaMKHzheNxWtl5B1cgSBuREtDp55CCMOLSlidlq0qrcLO/r2yEdS8GmVLmanXy0DiI/O020AS
	LSh26Q3jXho2honYqYUZGIOJSqA4n3l20EQkcCMRZ8m0ueeB6c8PTGTQZ++VUpeRc+i4STpOCuwR9
	9gVdWq7oU0owBM4L68QJS+wcRW8U2h/5yzdYJDegO1F8keQ//ZKXBh5SB5Go4sC4gRAo4V0o3ZWzO
	aGd2W9WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqZG-0000000DyqG-13OA;
	Thu, 22 Oct 2026 11:02:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqZE-0000000Dypv-1v7b
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 11:02:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 82496601F1;
	Thu, 22 Oct 2026 11:02:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCFE01F000C1;
	Thu, 22 Oct 2026 11:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792666959;
	bh=QYZ3fs9cFYJFXUw+8gWabK6qdxJuNjU+AqP9IEeFBuQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AelrLk3uOnBR0225xoZ+QfQ/r7gkoTsFmBC4NBpK6zoWAxZ6/yjS2xOxJCzNkThv6
	 3EROr9xTz/nSyIdrN21DO3GCdFE/rPdzb+qi4f1nDLCZBev+pYbfAe/4ALjFuxUCyn
	 dFnnjvCDKbcb/zieZA1sG2q19G7ZyBazzkQHCoeeUBTJxNGdh/FtqNedNIGusKTiTC
	 St3RIN8tb/mY21SzRDREZEfKUidpe3UJmHmqbrqOYYs9S875EKp2KHrJ4+eY+nVX/x
	 +6NcxV6qddtk3bZPQS5nofu3FMjJib8wRjcqchx8QJgXvPQd2syStLDschbNwVTe2g
	 39cbiq/GE5tyQ==
Message-ID: <sashiko-outbox-181354@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 1/2] phy: qcom: qmp-combo: Add PM suspend/resume
 callbacks
To: "Prashanth K" <prashanth.k@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261022104321.306679-2-prashanth.k@oss.qualcomm.com>
References: <20261022104321.306679-1-prashanth.k@oss.qualcomm.com>
 <20261022104321.306679-2-prashanth.k@oss.qualcomm.com>
Date: Thu, 22 Oct 2026 11:02:38 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogcWNvbS1xbXAt
Y29tYm86IHJhY2UgYW5kIHVuY2xvY2tlZCBNTUlPIGluIFBNIHN1c3BlbmQvcmVzdW1lCi0tCgpj
b21taXQgZTQ2NDk2NGQ1ZTQ3Y2U0Njg1N2VlODU4OTM4NDgyMDNmNzE5NDMxMApBdXRob3I6IFBy
YXNoYW50aCBLIDxwcmFzaGFudGgua0Bvc3MucXVhbGNvbW0uY29tPgoKcGh5OiBxY29tOiBxbXAt
Y29tYm86IEFkZCBQTSBzdXNwZW5kL3Jlc3VtZSBjYWxsYmFja3MKClRoaXMgY29tbWl0IGFkZHMg
c3lzdGVtIHNsZWVwIHN1c3BlbmQgYW5kIHJlc3VtZSBjYWxsYmFja3MgZm9yIHRoZQpxbXAtY29t
Ym8gcGh5IGRyaXZlciB0byB0b2dnbGUgcGh5IGNsb2NrcyBvZmYgYW5kIG9uIGFjcm9zcyBzeXN0
ZW0Kc3VzcGVuZCB3aGVuIHRoZSBkZXZpY2UgaXMgbm90IHJ1bnRpbWUgc3VzcGVuZGVkLgoKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMgYi9k
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwo+IGluZGV4IDE4N2YwY2Qx
MWY2YzMuLjNiNGExYjE3NGM4ODIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tcW1wLWNvbWJvLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtY29tYm8uYwo+IEBAIC00NzU4LDkgKzQ3NTgsMjYgQEAgc3RhdGljIGludCBfX21heWJl
X3VudXNlZCBxbXBfY29tYm9fcnVudGltZV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICAJ
cmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgcW1wX2NvbWJv
X3BtX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICt7Cj4gKwlpZiAocG1fcnVudGltZV9z
dXNwZW5kZWQoZGV2KSkKPiArCQlyZXR1cm4gMDsKPiArCj4gKwlyZXR1cm4gcW1wX2NvbWJvX3J1
bnRpbWVfc3VzcGVuZChkZXYpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IF9fbWF5YmVfdW51c2Vk
IHFtcF9jb21ib19wbV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICt7Cj4gKwlpZiAocG1f
cnVudGltZV9zdXNwZW5kZWQoZGV2KSkKPiArCQlyZXR1cm4gMDsKPiArCj4gKwlyZXR1cm4gcW1w
X2NvbWJvX3J1bnRpbWVfcmVzdW1lKGRldik7Cj4gK30KCltTZXZlcml0eTogSGlnaF0KQ2FuIHFt
cF9jb21ib19wbV9zdXNwZW5kKCkgYW5kIHFtcF9jb21ib19wbV9yZXN1bWUoKSByYWNlIHdpdGgg
dGhlIHR5cGUtYwpzd2l0Y2ggYW5kIG11eCBjYWxsYmFja3Mgb3IgbGVhdmUgdGhlIHBoeSBjbG9j
a3MgZGlzYWJsZWQgd2hpbGUgdHlwZS1jCmV2ZW50cyBhY2Nlc3MgbW1pbyByZWdpc3RlcnM/CgpJ
biBxbXBfY29tYm9fcHJvYmUoKSwgcnVudGltZSBwbSBpcyBmb3JiaWRkZW4gYnkgZGVmYXVsdCB2
aWEKcG1fcnVudGltZV9mb3JiaWQoKSwgc28gcG1fcnVudGltZV9zdXNwZW5kZWQoKSBpcyBmYWxz
ZS4gRHVyaW5nIHN5c3RlbQpzdXNwZW5kIHdpdGggdXNiIGluIGhvc3QgbW9kZSBhbmQgd2FrZXVw
IGVuYWJsZWQsIGR3YzNfc3VzcGVuZF9jb21tb24oKQprZWVwcyB0aGUgcGh5IGluaXRpYWxpemVk
LCBsZWF2aW5nIHFtcC0+aW5pdF9jb3VudCA+IDAuCgpXaGVuIHFtcF9jb21ib19wbV9zdXNwZW5k
KCkgcnVucywgaXQgY2FsbHMgcW1wX2NvbWJvX3J1bnRpbWVfc3VzcGVuZCgpCndpdGhvdXQgaG9s
ZGluZyBxbXAtPnBoeV9tdXRleDoKCmRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1j
b21iby5jOnFtcF9jb21ib19ydW50aW1lX3N1c3BlbmQoKSB7CglpZiAoIXFtcC0+aW5pdF9jb3Vu
dCkgewoJCWRldl92ZGJnKGRldiwgIlBIWSBub3QgaW5pdGlhbGl6ZWQsIGJhaWxpbmcgb3V0XG4i
KTsKCQlyZXR1cm4gMDsKCX0KCglxbXBfY29tYm9fZW5hYmxlX2F1dG9ub21vdXNfbW9kZShxbXAp
OwoKCWNsa19kaXNhYmxlX3VucHJlcGFyZShxbXAtPnBpcGVfY2xrKTsKCWNsa19idWxrX2Rpc2Fi
bGVfdW5wcmVwYXJlKHFtcC0+bnVtX2Nsa3MsIHFtcC0+Y2xrcyk7Cn0KClRoaXMgZGlzYWJsZXMg
cW1wLT5waXBlX2NsayBhbmQgcW1wLT5jbGtzIHdoaWxlIHFtcC0+aW5pdF9jb3VudCByZW1haW5z
Cm5vbi16ZXJvLgoKTWVhbndoaWxlLCB0aGUgdHlwZS1jIG9yaWVudGF0aW9uIGFuZCBtb2RlIGNh
bGxiYWNrcwpxbXBfY29tYm9fdHlwZWNfc3dpdGNoX3NldCgpIGFuZCBxbXBfY29tYm9fdHlwZWNf
bXV4X3NldCgpIGRvIG5vdCBoYXZlIGEKZGV2aWNlIGxpbmsgdG8gcW1wLT5kZXYgYW5kIGNhbiBi
ZSBpbnZva2VkIGZyb20gd29ya3F1ZXVlcyBvciBrdGhyZWFkCndvcmtlcnMgKHN1Y2ggYXMgcG1p
Y19nbGlua191Y3NpX25vdGlmeSgpIC0+IHVjc2lfaGFuZGxlX2Nvbm5lY3Rvcl9jaGFuZ2UoKQpv
ciB0Y3BtKSBkdXJpbmcgc3lzdGVtIHN1c3BlbmQsIHMyaWRsZSwgb3IgYmVmb3JlIHFtcF9jb21i
b19wbV9yZXN1bWUoKQpydW5zOgoKZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNv
bWJvLmM6cW1wX2NvbWJvX3R5cGVjX3N3aXRjaF9zZXQoKSB7CglndWFyZChtdXRleCkoJnFtcC0+
cGh5X211dGV4KTsKCXFtcC0+b3JpZW50YXRpb24gPSBvcmllbnRhdGlvbjsKCglpZiAocW1wLT5p
bml0X2NvdW50KSB7CgkJaWYgKHFtcC0+dXNiX2luaXRfY291bnQgfHwgcW1wLT51c2I0X2luaXRf
Y291bnQpCgkJCXFtcF9jb21ib191c2JfcG93ZXJfb2ZmKHFtcC0+dXNiX3BoeSk7CgkJcW1wX2Nv
bWJvX2NvbV9leGl0KHFtcCwgdHJ1ZSk7CgoJCXFtcF9jb21ib19jb21faW5pdChxbXAsIHRydWUp
OwoJCS4uLgoJfQp9CgpBbmQgc2ltaWxhcmx5IGluIHFtcF9jb21ib190eXBlY19tdXhfc2V0KCk6
Cgpkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYzpxbXBfY29tYm9fdHlw
ZWNfbXV4X3NldCgpIHsKCWd1YXJkKG11dGV4KSgmcW1wLT5waHlfbXV0ZXgpOwoJLi4uCglpZiAo
IXFtcC0+aW5pdF9jb3VudCkKCQlyZXR1cm4gMDsKCglyZXR1cm4gcW1wX2NvbWJvX3JlY29uZmln
dXJlX3BoeShxbXAsIG5ld19tb2RlKTsKfQoKSWYgYSB0eXBlLWMgZXZlbnQgYXJyaXZlcyBjb25j
dXJyZW50bHkgd2l0aCBxbXBfY29tYm9fcG1fc3VzcGVuZCgpIG9yCnFtcF9jb21ib19wbV9yZXN1
bWUoKSwgb3Igd2hpbGUgcW1wLT5kZXYgaXMgc3lzdGVtLXN1c3BlbmRlZCB3aXRoCnFtcC0+aW5p
dF9jb3VudCA+IDAsIHdvbid0IHRoZXNlIHBhdGhzIGFjY2VzcyBxbXAtPnBjcyBhbmQgb3RoZXIg
cGh5IG1taW8KcmVnaXN0ZXJzIHdoaWxlIHFtcC0+cGlwZV9jbGsgYW5kIHFtcC0+Y2xrcyBhcmUg
ZGlzYWJsZWQsIGNhdXNpbmcgYW4KdW5jbG9ja2VkIHJlZ2lzdGVyIGFjY2VzcyBjcmFzaCwgdW5k
ZXJmbG93aW5nIHRoZSBjbG9jayBlbmFibGUgY291bnRzIGluCnFtcF9jb21ib19jb21fZXhpdCgp
LCBhbmQgbGVhdmluZyB0aGUgY2xvY2tzIGVuYWJsZWQgYWdhaW4gYmVmb3JlCnFtcF9jb21ib19w
bV9yZXN1bWUoKSBlbmFibGVzIHRoZW0gYSBzZWNvbmQgdGltZT8KClsgLi4uIF0KCi0tIApTYXNo
aWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMjIx
MDQzMjEuMzA2Njc5LTEtcHJhc2hhbnRoLmtAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTEKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
