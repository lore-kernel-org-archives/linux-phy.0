Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B67E7C53219
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 06:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pbO9lMNGC6yQrjCuneRQ/XetCMgp7z4idXt328VMPns=; b=2V/Bumsta7Zcsu
	/XcXMkz95QgPS+PhaQyONAvoRr5nywXTJr5BgM8tBMZ4PN/iMaZlzAX9HvbEGaQ2m7fvFNF3x6KCt
	iBVCKg7SfIdMDSBLZcbeH6/ycX1zm9B1BHcpAvzP9kZlZmnq9WIkJ/IGZ8ZFyRtpLiDjXz5y+R5Th
	41plkh0l0BBVi+LEwlebnUoSSY20IhzahPma7SeKmUi6vFvSuS2onqZRPCfCkfAHoQRkQ+wr9OGD6
	F2GDQN3nSsKtDkUpEbcHDbnGdD/J6dtHth/3kf0Bw4Ods/cFP/FoKyWEhbegtRY8sqRgKn1jM1lJD
	ASsEYKMVO0QkRXHoOQWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woyCL-000000074GH-17UM;
	Wed, 29 Jul 2026 06:55:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woyCI-000000074GB-1yvb
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 06:55:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E052E40323;
	Wed, 29 Jul 2026 06:55:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32C7E1F00A3A;
	Wed, 29 Jul 2026 06:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785308121;
	bh=ttxN0hKlmC4CSDbZqC/7BbYU1Z/HN33gMR+UE7M/Tbo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Lv3yS+jDSNSLYHa9DiwUNhPIzxPxtjPlourIqWVRzc5yws1JcrQyx/XL/oUUsGNlg
	 R7uQIpqCsvWit0est3y4KMH1OPBmM75jSHRdvX6PlBzmWNf6ky8SdfkbuxB3239alQ
	 fRRl2p6WOfqocaEwNUZ9LBEvrTfeSaGKFdIIIEe5C1xJsE7Sz3qU6wwToTGPlmlfIB
	 iDrjQNQJz1CNx2tLESyAzEgNWnnZckTRC5F66QX/5884GyTsShZ7Rel/bsOt+X/SJA
	 +PgKaPAQVVSO/E5kGNRql0Mv9Xvy88wp6IS2QftLyokz91FomXTD/Xs0L7q+y6d2zP
	 zWUoGtB/GKY3A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 3/6] phy: fsl-imx8mq-usb: add runtime PM support
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, Frank.Li@kernel.org, imx@lists.linux.dev, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260729-imx8mp-usb-phy-improvement-v7-3-c385ee40ade6@nxp.com>
References: <20260729-imx8mp-usb-phy-improvement-v7-0-c385ee40ade6@nxp.com>
 <20260729-imx8mp-usb-phy-improvement-v7-3-c385ee40ade6@nxp.com>
Date: Wed, 29 Jul 2026 06:55:20 +0000
Message-Id: <20260729065521.32C7E1F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gSW5jb3JyZWN0IGVy
cm9yIGNoZWNraW5nIG9mIHBtX3J1bnRpbWVfZ2V0X3N5bmMoKSByZXR1cm4gdmFsdWUgY2F1c2Vz
IHNwdXJpb3VzIHdhcm5pbmdzIHdoZW4gdGhlIGRldmljZSBpcyBhbHJlYWR5IGFjdGl2ZS4KLSBb
TG93XSBGYWlsdXJlIG9mIHBtX3J1bnRpbWVfZ2V0X3N5bmMoKSBpbiByZW1vdmUoKSBsZWFkcyB0
byBhbiB1bmJhbGFuY2VkIGNsb2NrIGRpc2FibGUgYnkgZGV2cmVzLCB0cmlnZ2VyaW5nIGEga2Vy
bmVsIFdBUk4uCi0tCgotLS0gUGF0Y2ggWzNdOiBbUEFUQ0ggdjcgMy82XSBwaHk6IGZzbC1pbXg4
bXEtdXNiOiBhZGQgcnVudGltZSBQTSBzdXBwb3J0IC0tLQpjb21taXQgZjA1NDc2NWY3ZWJkNTk3
MzVhNDU5MmM0ZDY4Yjc0NTg0YWJkYmVlYgpBdXRob3I6IFh1IFlhbmcgPHh1LnlhbmdfMkBueHAu
Y29tPgoKcGh5OiBmc2wtaW14OG1xLXVzYjogYWRkIHJ1bnRpbWUgUE0gc3VwcG9ydAoKQWRkIHJ1
bnRpbWUgUE0gc3VwcG9ydCB0byBlbnN1cmUgdGhlIFBIWSBjbG9ja3MgYXJlIHByb3Blcmx5IGdh
dGVkCndoZW4gdGhlIFBIWSBpcyBub3QgaW4gdXNlLCByZWR1Y2luZyBwb3dlciBjb25zdW1wdGlv
bi4gQ2xvY2sKbWFuYWdlbWVudCBpcyBtb3ZlZCBmcm9tIHBvd2VyX29uKCkvcG93ZXJfb2ZmKCkg
Y2FsbGJhY2tzIGludG8gdGhlCnJ1bnRpbWVfcmVzdW1lKCkvcnVudGltZV9zdXNwZW5kKCkgY2Fs
bGJhY2tzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14
OG1xLXVzYi5jIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jCj4g
aW5kZXggM2E1Nzg4YzYwOWUxYi4uNzRlNjY1NTI1ZWM0OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS9m
cmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKWyAuLi4gXQo+IEBAIC03MDgsNDQgKzY5Niwx
MDEgQEAgc3RhdGljIGludCBpbXg4bXFfdXNiX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQpbIC4uLiBdCj4gIHN0YXRpYyB2b2lkIGlteDhtcV91c2JfcGh5X3JlbW92ZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7Cj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYg
PSAmcGRldi0+ZGV2Owo+ICsJaW50IHJldDsKPiArCj4gKwlyZXQgPSBwbV9ydW50aW1lX2dldF9z
eW5jKGRldik7Cj4gKwlpZiAocmV0KQo+ICsJCWRldl93YXJuKGRldiwgImZhaWxlZCB0byByZXN1
bWUgb24gcmVtb3ZlOiAlZFxuIiwgcmV0KTsKCltTZXZlcml0eTogTWVkaXVtXQpJcyBpdCBpbnRl
bmRlZCB0byB3YXJuIHdoZW4gcG1fcnVudGltZV9nZXRfc3luYygpIHJldHVybnMgMT8KClNpbmNl
IHBtX3J1bnRpbWVfZ2V0X3N5bmMoKSByZXR1cm5zIDEgd2hlbiB0aGUgZGV2aWNlIGlzIGFscmVh
ZHkgYWN0aXZlCihvciB3aGVuIENPTkZJR19QTSBpcyBkaXNhYmxlZCksIGNoZWNraW5nICJpZiAo
cmV0KSIgaW5zdGVhZCBvZgoiaWYgKHJldCA8IDApIiB3aWxsIHRyaWdnZXIgdGhpcyB3YXJuaW5n
IGV2ZW4gb24gc3VjY2Vzc2Z1bCB1bmJpbmRzCndoZXJlIHRoZSBkZXZpY2Ugd2FzIGFscmVhZHkg
YWN0aXZlLgoKPiArCj4gKwlwbV9ydW50aW1lX2Rpc2FibGUoZGV2KTsKPiArCXBtX3J1bnRpbWVf
cHV0X25vaWRsZShkZXYpOwo+ICB9CgpbU2V2ZXJpdHk6IExvd10KQ291bGQgYSBmYWlsdXJlIGlu
IHBtX3J1bnRpbWVfZ2V0X3N5bmMoKSBsZWFkIHRvIGEgY2xvY2sgZW5hYmxlIGNvdW50CnVuZGVy
Zmxvdz8KClRoZSBjbG9ja3MgYXJlIGFjcXVpcmVkIHVzaW5nIGRldm1fY2xrX2dldF9lbmFibGVk
KCkgaW4gcHJvYmUoKSwgd2hpY2gKcmVnaXN0ZXJzIGEgZGV2cmVzIGNsZWFudXAgYWN0aW9uIHRv
IGRpc2FibGUgdGhlIGNsb2NrcyBvbiB0ZWFyZG93bi4gSWYKdGhlIHJ1bnRpbWUgcmVzdW1lIGZh
aWxzIGhlcmUgaW4gcmVtb3ZlKCksIHRoZSBjbG9ja3Mgd2lsbCByZW1haW4gZGlzYWJsZWQKYnkg
dGhlIHJ1bnRpbWUgUE0gZnJhbWV3b3JrLiBXaGVuIGRldnJlcyBzdWJzZXF1ZW50bHkgYXR0ZW1w
dHMgdG8gZGlzYWJsZQp0aGVtIGFnYWluIGR1cmluZyBjbGVhbnVwLCBpdCB3aWxsIGNhdXNlIGFu
IHVuYmFsYW5jZWQgY2xvY2sgZGlzYWJsZSBhbmQKYSBrZXJuZWwgV0FSTi4KCi0tIApTYXNoaWtv
IEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MjktaW14
OG1wLXVzYi1waHktaW1wcm92ZW1lbnQtdjctMC1jMzg1ZWU0MGFkZTZAbnhwLmNvbT9wYXJ0PTMK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
