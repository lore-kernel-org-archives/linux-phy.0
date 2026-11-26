Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86D5606A31C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 19:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0c3oDn+d;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Amg8hjhM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=RPAcjBzAV6N0gM8E0WEzu/8CVKTvWSq7z+HI+soKg/w=; b=0c3oDn+dp10Uh3Tbd+BW9Bgngd
	pg5r8dnh2BKzzpUfQZfAntFU2Ohtwc8BIi0n2tvHzJa3RvlIwLSte3Q2hY703YAOfcLDJ3Un/hEDE
	7bFRt3uvTxGljEELlNUH2JJtt2P/apqdB1nsThwB536lZX5KQBc3giLbcrWQFhekJJgWnGqUCvRnn
	pgrRPPIecGKZGpX1oKCQriJdmdhLCUWcmjqtsmbRoRu98D4IyYnjUahjUOkxGKYTkYVpn+HLtWaxt
	IqG1mVQwV+bVUUvddJpzZdMsVvYpsUbMGaxzkd2a+Na65JHs/nzFcAPjMn9cXMDMK7jj3tUX4t8Nh
	xHbyVbvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWeyt-0000000EHAm-1zg2;
	Thu, 26 Nov 2026 19:18:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWeyr-0000000EHA7-1vPP
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 19:18:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C766D60D47;
	Thu, 26 Nov 2026 19:18:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 134241F000D3;
	Thu, 26 Nov 2026 19:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795720684;
	bh=xnLsaFFd7DaXIqgQI5tpr1pHVZGrCvHyloCd0xXcLik=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Amg8hjhMWKg2cthveCbNXTCSSzg7Pnkck01PpFSvWAeotfydb5Z0gjNieOdqFkiYw
	 dokAtJuA/DFagP2X31fp0qPF8wtsv/eaAheweA2psi8jA9hZX6RaTvcXgiE6I3W8tv
	 k7M9/ioMIBFZXUBdGkKd/k7BqSZ/S4hNw5rVqkNYUoOaDx7yMWCVylhizfXr/wVDfR
	 z+Q7IfiNs/diVXQYeWDmh3yHMesC1Un/9gap6tJFNlpGeqIhbdU32YiVP4v9iTLhtJ
	 QkurW74p3q0xACnBpoqEehdFnVxI/mJfIZsDu6p/vYCv+eOAONVmXDf7HxH7tMtBHx
	 te+VqKazZ7n1Q==
Message-ID: <sashiko-outbox-236076@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/8] usb: dwc3: qcom: Add support to keep GDSC On during
 host mode bus suspend
To: "Jagadeesh Kona" <jagadeesh.kona@oss.qualcomm.com>
Cc: linux-clk@vger.kernel.org, linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261127-usb-pcie-gdsc-suspend-v1-5-485a08ffdc6f@oss.qualcomm.com>
References: <20261127-usb-pcie-gdsc-suspend-v1-0-485a08ffdc6f@oss.qualcomm.com>
 <20261127-usb-pcie-gdsc-suspend-v1-5-485a08ffdc6f@oss.qualcomm.com>
Date: Thu, 26 Nov 2026 19:18:03 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gdXNiOiBkd2MzOiBxY29t
OiBHZW5QRCBod21vZGUgbm90IHJlc2V0IGluIGR3YzNfcWNvbV9yZXN1bWUoKQogIG9yIHJlbW92
ZQotLQoKY29tbWl0IDQ5N2JhNTRjNTYxYTI3YTcwN2ZlODk4MGE4YWIxMjMzOTQ4ZWMyNzAKQXV0
aG9yOiBLcmlzaG5hIEt1cmFwYXRpIDxrcmlzaG5hLmt1cmFwYXRpQG9zcy5xdWFsY29tbS5jb20+
Cgp1c2I6IGR3YzM6IHFjb206IEFkZCBzdXBwb3J0IHRvIGtlZXAgR0RTQyBPbiBkdXJpbmcgaG9z
dCBtb2RlIGJ1cyBzdXNwZW5kCgpUaGlzIGNvbW1pdCB0b2dnbGVzIEdlblBEIGhhcmR3YXJlIG1v
ZGUgaW4gZHdjM19xY29tX3N1c3BlbmQoKSBzbyB0aGUgVVNCCkdEU0Mgc3RheXMgcG93ZXJlZCBk
dXJpbmcgaG9zdC1tb2RlIHdha2V1cCBzdXNwZW5kIGFuZCB0dXJucyBvZmYgb3RoZXJ3aXNlLgoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvZHdjMy9kd2MzLXFjb20uYyBiL2RyaXZlcnMvdXNi
L2R3YzMvZHdjMy1xY29tLmMKPiBpbmRleCA1YTY4MDI1Y2NlYTVlLi45OWRjZTI4ZGRhMDY1IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1xY29tLmMKPiArKysgYi9kcml2ZXJz
L3VzYi9kd2MzL2R3YzMtcWNvbS5jClsgLi4uIF0KPiBAQCAtMzkxLDYgKzM5Miw5IEBAIHN0YXRp
YyBpbnQgZHdjM19xY29tX3N1c3BlbmQoc3RydWN0IGR3YzNfcWNvbSAqcWNvbSwgYm9vbCB3YWtl
dXApCj4gIAkJZm9yIChpID0gMDsgaSA8IHFjb20tPm51bV9wb3J0czsgaSsrKQo+ICAJCQlxY29t
LT5wb3J0c1tpXS51c2IyX3NwZWVkID0gZHdjM19xY29tX3JlYWRfdXNiMl9zcGVlZChxY29tLCBp
KTsKPiAgCQlkd2MzX3Fjb21fZW5hYmxlX2ludGVycnVwdHMocWNvbSk7Cj4gKwkJZGV2X3BtX2dl
bnBkX3NldF9od21vZGUocWNvbS0+ZGV2LCB0cnVlKTsKPiArCX0gZWxzZSB7Cj4gKwkJZGV2X3Bt
X2dlbnBkX3NldF9od21vZGUocWNvbS0+ZGV2LCBmYWxzZSk7Cj4gIAl9Cj4gIAo+ICAJcWNvbS0+
aXNfc3VzcGVuZGVkID0gdHJ1ZTsKCltTZXZlcml0eTogTWVkaXVtXQpTaG91bGQgZHdjM19xY29t
X3Jlc3VtZSgpIGFsc28gcmVzZXQgZGV2X3BtX2dlbnBkX3NldF9od21vZGUocWNvbS0+ZGV2LApm
YWxzZSk/CgpPbmNlIGEgaG9zdC1tb2RlIHN1c3BlbmQgZW5hYmxlcyBod21vZGUgKHNldHRpbmcg
c2MtPmh3X3N0YXlfb24gPSB0cnVlIGluCnRoZSBHRFNDKSwgZHdjM19xY29tX3Jlc3VtZSgpIGxl
YXZlcyBpdCBlbmFibGVkIHdoaWxlIHRoZSBjb250cm9sbGVyIGlzCmFjdGl2ZS4gIElmIHRoZSBk
cml2ZXIgaXMgbGF0ZXIgdW5ib3VuZCBvciB1bmxvYWRlZCwgZHdjM19xY29tX3JlbW92ZSgpCnJl
c3VtZXMgdGhlIGRldmljZSBhbmQgZGV0YWNoZXMgZnJvbSBHZW5QRCB3aXRob3V0IGNhbGxpbmcK
ZHdjM19xY29tX3N1c3BlbmQoKSwgc28gZ2RzY19kaXNhYmxlKCkgc2VlcyBzYy0+aHdfc3RheV9v
biBzZXQgYW5kIGxlYXZlcwp0aGUgR0RTQyBwb3dlcmVkIG9uIGluIGhhcmR3YXJlLiAgSWYgdGhl
IGRyaXZlciBpcyB0aGVuIHJlLXByb2JlZCwKZ2VucGRfYWRkX2RldmljZSgpIHJlaW5pdGlhbGl6
ZXMgZGV2X2dwZF9kYXRhKGRldiktPmh3X21vZGUgdG8gZmFsc2Ugd2hpbGUKc2MtPmh3X3N0YXlf
b24gcmVtYWlucyB0cnVlLCBjYXVzaW5nIGZ1dHVyZSBkZXZfcG1fZ2VucGRfc2V0X2h3bW9kZShk
ZXYsCmZhbHNlKSBjYWxscyB0byBzaG9ydC1jaXJjdWl0LgoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTEyNy11c2ItcGNpZS1nZHNj
LXN1c3BlbmQtdjEtMC00ODVhMDhmZmRjNmZAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTUKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
