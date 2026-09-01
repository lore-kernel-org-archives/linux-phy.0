Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C388C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 16:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ovgrtx4u/VN1WOZ41zR3JwV83ARS9pctr2w/Sys4Ls=; b=hjKzd2vcn1Lqy9
	dxPLKiOaUOT3kmCd/I+N7Rd3o29OlFw+xu2w7z1yX6PlVl/6/9ZESWdc5gsLKujtyOQVxQsmbU2Kg
	5ZGXVo31uDZmIRPDH4Oz/+c0KnAZvneQjpGfAi5DRiUwn5FHRfbk0y7nc4C6F+ievDTIOcoZg2Gye
	3FhPTmg8Y3Oh6pm0A8s5Z5++4HhczUnxPDcNaWEPFIPrUYwHEeDunkjDniiSi9AnY8J7Z0Jry3FUZ
	OS7WYGR+CXrbxkTYrR/HPtqsR8Vbhv94SKbH79/NrXWB/8nmQxy6ucWR3MohW08reqy4xKldzctYu
	fr3pYaMgmhgmYFrmvCnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1R9y-0000000Cdq3-3JY4;
	Tue, 01 Sep 2026 16:16:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1R9x-0000000Cdpr-3Y2y
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 16:16:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 44523403E6;
	Tue,  1 Sep 2026 16:16:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C4B61F000E9;
	Tue,  1 Sep 2026 16:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788279389;
	bh=1ULfzuk6SCvsD92qGEoFRFVf2Tf/24qgQyvN/na9zwg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DJj6cdALes8mwwlS3CeOV4/7y6E8OLX8CeUm69pTaRoqG5O5wxFJxUpjMfhBKStye
	 9TWHWfXffDzFvqWXAawAAcTM/DYsj+z+SNs16jjRZGmj1Jpq5D5HrrtfCrRp3sDRKE
	 vV87qWCEGKyuhc4NAK9mv+5ux5r1KOsR5WqOGXu7vgUF5KMe9zblktvGHsTNal+gZz
	 oSsdlfhC5mzEHBiGCtU/oJa4PF1LKKt3xGmCj0m23k67m7xDjYqG07nCYhE+TN1Ne4
	 trf783hFbKO9IyI358Z+RI4EXEfwaur7SDKVhUg9EIMmp1jwj3sM4PpwaCBO3qsTSp
	 GOS0OJgGwwccQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 16/24] scsi: ufs: mediatek: Rework
 _ufs_mtk_clk_scale error paths
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, conor+dt@kernel.org, linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260901-mt8196-ufs-v11-16-dbd007704490@collabora.com>
References: <20260901-mt8196-ufs-v11-0-dbd007704490@collabora.com>
 <20260901-mt8196-ufs-v11-16-dbd007704490@collabora.com>
Date: Tue, 01 Sep 2026 16:16:28 +0000
Message-Id: <20260901161628.9C4B61F000E9@smtp.kernel.org>
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
IFtIaWdoXSBfdWZzX210a19jbGtfc2NhbGUgaWdub3JlcyBoYXJkd2FyZSBjb25maWd1cmF0aW9u
IGZhaWx1cmVzLCBjYXVzaW5nIHRoZSBVRlMgY29yZSB0byBhcHBseSBjbG9jayByYXRlcyB0byB0
aGUgd3JvbmcgcGFyZW50LgotLQoKY29tbWl0IGVhNzkzOTJlY2QzZDA0MTVkZWI4ZGUwMGQ4M2Rl
ZWUwMjg3NzJiMDcKQXV0aG9yOiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9s
aUBjb2xsYWJvcmEuY29tPgoKc2NzaTogdWZzOiBtZWRpYXRlazogUmV3b3JrIF91ZnNfbXRrX2Ns
a19zY2FsZSBlcnJvciBwYXRocwoKVGhpcyBjb21taXQgdXBkYXRlcyB0aGUgZXJyb3IgbG9nZ2lu
ZyBpbiBfdWZzX210a19jbGtfc2NhbGUgdG8gdXNlCmRldl9lcnIgaW5zdGVhZCBvZiBkZXZfaW5m
by4gSXQgYWxzbyBhZGRzIG1pc3NpbmcgZ290byBzdGF0ZW1lbnRzIGluCnRoZSBzY2FsZS11cCBi
cmFuY2hlcyB0byBlbnN1cmUgcHJvcGVyIGNsZWFudXAgb24gZmFpbHVyZS4KCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vm
cy1tZWRpYXRlay5jCj4gaW5kZXggNWQ4YzAyYjdhODU3Yi4uNDNmYjVkYmIyNTBiMCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4gKysrIGIvZHJpdmVycy91
ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwoKWyAuLi4gXQoKPiBAQCAtMjAyOSw1MSArMjAyOSw0OCBA
QCBzdGF0aWMgdm9pZCBfdWZzX210a19jbGtfc2NhbGUoc3RydWN0IHVmc19oYmEgKmhiYSwgYm9v
bCBzY2FsZV91cCkKPiAgCQlpZiAoY2xrX2JpbmRfdmNvcmUpIHsKPiAgCQkJcmV0ID0gcmVndWxh
dG9yX3NldF92b2x0YWdlKHJlZywgdm9sdCwgSU5UX01BWCk7Cj4gIAkJCWlmIChyZXQpIHsKPiAt
CQkJCWRldl9pbmZvKGhiYS0+ZGV2LAo+IC0JCQkJCSJGYWlsZWQgdG8gc2V0IHZjb3JlIHRvICVk
XG4iLCB2b2x0KTsKPiArCQkJCWRldl9lcnIoaGJhLT5kZXYsICJGYWlsZWQgdG8gc2V0IHZjb3Jl
IHRvICVkXG4iLCB2b2x0KTsKPiAgCQkJCWdvdG8gb3V0OwoKW1NldmVyaXR5OiBIaWdoXQpUaGlz
IGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgYnkgaGFuZGxpbmcgdGhlIGVycm9yIGludGVy
bmFsbHkgYW5kIApyZXR1cm5pbmcgdm9pZCwgX3Vmc19tdGtfY2xrX3NjYWxlKCkgcHJldmVudHMg
ZXJyb3IgcHJvcGFnYXRpb24uCgpJZiByZWd1bGF0b3Jfc2V0X3ZvbHRhZ2UoKSBvciBjbGtfc2V0
X3BhcmVudCgpIGZhaWxzIGhlcmUgYW5kIGp1bXBzIHRvIG91dCwKdGhlIGNhbGxpbmcgZnVuY3Rp
b24gdWZzX210a19jbGtfc2NhbGUoKSB3aWxsIGluY29ycmVjdGx5IHVwZGF0ZSB0aGUgZHJpdmVy
CnN0YXRlIGFzIGlmIHRoZSBvcGVyYXRpb24gc3VjY2VlZGVkOgoKZHJpdmVycy91ZnMvaG9zdC91
ZnMtbWVkaWF0ZWsuYzp1ZnNfbXRrX2Nsa19zY2FsZSgpIHsKICAgIC4uLgogICAgaWYgKHNjYWxl
X3VwKQogICAgICAgIF91ZnNfbXRrX2Nsa19zY2FsZShoYmEsIHRydWUpOwogICAgLi4uCiAgICBo
b3N0LT5jbGtfc2NhbGVfdXAgPSBzY2FsZV91cDsKICAgIC4uLgogICAgY2xraS0+Y3Vycl9mcmVx
ID0gY2xraS0+bWF4X2ZyZXE7Cn0KCkJlY2F1c2UgdWZzX210a19jbGtfc2NhbGVfbm90aWZ5KCkg
dW5jb25kaXRpb25hbGx5IHJldHVybnMgMCB0byB0aGUgVUZTCmNvcmUgcmVnYXJkbGVzcyBvZiBQ
UkVfQ0hBTkdFIGZhaWx1cmVzLCB0aGUgVUZTIGNvcmUgd2lsbCBwcm9jZWVkIGFzIGlmIHRoZQpj
bG9jayBzY2FsaW5nIGNvbXBsZXRlZC4KCldpbGwgdGhpcyBtaXNtYXRjaCBiZXR3ZWVuIHRoZSBw
aHlzaWNhbCBoYXJkd2FyZSBzdGF0ZSBhbmQgdGhlIGRyaXZlciBzdGF0ZQpjYXVzZSB0aGUgVUZT
IGNvcmUgdG8gYXBwbHkgdGFyZ2V0IGZyZXF1ZW5jaWVzIHRvIHRoZSB3cm9uZyBjbG9jayBwYXJl
bnQsCnBvdGVudGlhbGx5IGxlYWRpbmcgdG8gY29udHJvbGxlciBoYW5ncyBvciBkYXRhIGNvcnJ1
cHRpb24/IFNob3VsZApfdWZzX210a19jbGtfc2NhbGUoKSBhbmQgdWZzX210a19jbGtfc2NhbGUo
KSBiZSB1cGRhdGVkIHRvIHJldHVybiBhbiBpbnQgc28KdWZzX210a19jbGtfc2NhbGVfbm90aWZ5
KCkgY2FuIHByb3Blcmx5IGFib3J0IHRoZSBzY2FsZSBvcGVyYXRpb24/Cgo+ICAJCQl9Cj4gIAkJ
fQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDkwMS1tdDgxOTYtdWZzLXYxMS0wLWRiZDAwNzcwNDQ5MEBjb2xsYWJvcmEuY29tP3Bh
cnQ9MTYKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
