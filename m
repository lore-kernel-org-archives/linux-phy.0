Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CBA1606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 07:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ta+UjCX3;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=dSoY2mcq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=VLcTlngyiCMPkILoMemMHIoOyoBzubKObv39oNVn09o=; b=Ta+UjCX3yxtlrO46j9FB0x+f99
	J93gEC8NTo3C0sJ/bZuz4O/JyurL5QWVOdy6iIq/UeRLcmtDWvhcjngSqVa/uZ8lLNPvw+SLYg9GN
	CY5odZk/GYTTnLPQ8g2MHY+7PHek03cAZzbwbwtMRXMDeLoz5wCbJRQR6+ZGK4y1T4pDjE9nWhfTX
	9uXIDmyEdy1gcY3EM8GuWxx3bzqzJ93cNLKOW9iZqVHBzDHDOGBeHYA/ew0UmoifKGm1GRb1mIpem
	aT6/OkXMAvqlvkRZw+RYyxE0ZaRI76+kkxX9L4uLI8ZIddLPfYMZJoHM0Uq0Qw4baEh4APi8Dz+Dm
	tNR8LIfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMgfC-0000000Ay9r-07LR;
	Fri, 30 Oct 2026 07:04:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMgfB-0000000Ay9l-2YG9
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 07:04:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C8B4F42E63;
	Fri, 30 Oct 2026 07:04:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A94C1F000C1;
	Fri, 30 Oct 2026 07:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793343872;
	bh=AQViuW8zNNdDAkH107WPOx22iLQNlN+ChjPHckc5kic=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dSoY2mcqvqDL58RwSOhHCB5YpG++Rnuw+wuGxJW6GLLCmp+zxBEIkUeSBCfXXFTwF
	 i9yXIVDIipmzmiA2xPVuXOu0BBY4CBlA2jJ147qUO33Yr//TeyteBZ9jyZGQGFWV9Y
	 LoyH8uKCmLE7fKfC6z5d2sw9lmh+Pl7/r9hvspPWUA1pz/ELJ5OX0KrudtgH7lkUkP
	 F6xYUH0o0G0oXyGe+cFf56/Jfq1i3XjfL1bKtIrUNfbNkaO5XsgxgNtfwxV/woZUkk
	 TjJdk3Hc0zIF2ktnzbb8DGdi6IBxITdyLdiSSKbj08c6iW6O47y8cksTbLM8LkXTH4
	 6NVDprYg2LTRg==
Message-ID: <sashiko-outbox-190625@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 6/6] arm64: dts: rockchip: rk356x: Add eDP controller
 and phy nodes
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261030064905.2248999-7-damon.ding@rock-chips.com>
References: <20261030064905.2248999-1-damon.ding@rock-chips.com>
 <20261030064905.2248999-7-damon.ding@rock-chips.com>
Date: Fri, 30 Oct 2026 07:04:31 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGFybTY0OiBkdHM6IHJv
Y2tjaGlwOiByazM1Nng6IFBDTEtfRURQUEhZX0dSRiBuZXZlciBlbmFibGVkIGZvciBlZHBfcGh5
Ci0tCgpjb21taXQgNGZjOTNiZTdjYWFiOTU0MDBhYmU3ODJiMjY4ZmYyMmI5YzEyYjkwNQpBdXRo
b3I6IERhbW9uIERpbmcgPGRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20+Cgphcm02NDogZHRzOiBy
b2NrY2hpcDogcmszNTZ4OiBBZGQgZURQIGNvbnRyb2xsZXIgYW5kIHBoeSBub2RlcwoKVGhpcyBj
b21taXQgYWRkcyB0aGUgZURQIFBIWSBHUkYgc3lzY29uIG5vZGUsIGl0cyBjaGlsZCBlRFAgUEhZ
IG5vZGUsIGFuZAp0aGUgZURQIGNvbnRyb2xsZXIgbm9kZSB0byB0aGUgUkszNTY2L1JLMzU2OCBi
YXNlIGRldmljZSB0cmVlLgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NngtYmFzZS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NngtYmFzZS5kdHNpCj4gaW5kZXggYTU4MzI4OTViZDM5Mi4uN2E1MTY4NTQ4ZTU1YSAxMDA2NDQK
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kKPiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kKPiBAQCAt
NDAzLDYgKzQwMywyNCBAQCB1c2IycGh5MV9ncmY6IHN5c2NvbkBmZGNhODAwMCB7Cj4gIAkJcmVn
ID0gPDB4MCAweGZkY2E4MDAwIDB4MCAweDgwMDA+Owo+ICAJfTsKPiAgCj4gKwllZHBfcGh5X2dy
Zjogc3lzY29uQGZkY2IwMDAwIHsKPiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC1l
ZHAtcGh5LWdyZiIsICJzeXNjb24iLCAic2ltcGxlLW1mZCI7Cj4gKwkJcmVnID0gPDB4MCAweGZk
Y2IwMDAwIDB4MCAweDgwMDA+Owo+ICsJCWNsb2NrcyA9IDwmY3J1IFBDTEtfRURQUEhZX0dSRj47
Cj4gKwkJcmFuZ2VzID0gPDB4MCAweDAgMHhmZGNiMDAwMCAweDEwMD47Cj4gKwkJI2FkZHJlc3Mt
Y2VsbHMgPSA8MT47Cj4gKwkJI3NpemUtY2VsbHMgPSA8MT47Cj4gKwo+ICsJCWVkcF9waHk6IHBo
eUAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgtZWRwLXBoeSI7Cj4gKwkJ
CXJlZyA9IDwweDAgMHgxMDA+Owo+ICsJCQljbG9ja3MgPSA8JnBtdWNydSBYSU5fT1NDMF9FRFBQ
SFlfRz47Cj4gKwkJCWNsb2NrLW5hbWVzID0gInJlZmNsayI7Cj4gKwkJCSNwaHktY2VsbHMgPSA8
MD47Cj4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKwkJfTsKPiArCX07CgpbU2V2ZXJpdHk6
IEhpZ2hdCldpdGggUENMS19FRFBQSFlfR1JGIHBsYWNlZCBvbiB0aGUgcGFyZW50IGVkcF9waHlf
Z3JmIG5vZGUgd2hpbGUgZWRwX3BoeSBtYXBzCml0cyByZWdpc3RlciB3aW5kb3cgZGlyZWN0bHks
IHdpbGwgUENMS19FRFBQSFlfR1JGIGV2ZXIgZ2V0IGVuYWJsZWQgYmVmb3JlCnRoZSBQSFkgZHJp
dmVyIGFjY2Vzc2VzIHRoZSByZWdpc3RlcnMgYXQgMHhmZGNiMDAwMD8KCkluIGRyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctZWRwLmMsIHJvY2tjaGlwX2VkcF9waHlfcHJv
YmUoKQptYXBzIHRoZSBjaGlsZCByZWcgd2luZG93IGRpcmVjdGx5IGFuZCBjcmVhdGVzIGl0cyBv
d24gTU1JTyByZWdtYXAgcmF0aGVyCnRoYW4gbG9va2luZyB1cCB0aGUgcGFyZW50IHN5c2NvbiBy
ZWdtYXAsIGFuZCBvbmx5IGdldHMgcmVmY2xrOgoKZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLW5hbmVuZy1lZHAuYzpyb2NrY2hpcF9lZHBfcGh5X3Byb2JlKCkgewoJLi4uCglyZWdz
ID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDApOwoJaWYgKElTX0VSUihy
ZWdzKSkKCQlyZXR1cm4gUFRSX0VSUihyZWdzKTsKCgllZHBwaHktPnJlZ21hcCA9IGRldm1fcmVn
bWFwX2luaXRfbW1pbyhkZXYsIHJlZ3MsICZyb2NrY2hpcF9lZHBfcGh5X3JlZ21hcF9jb25maWcp
OwoJaWYgKElTX0VSUihlZHBwaHktPnJlZ21hcCkpCgkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2
LCBQVFJfRVJSKGVkcHBoeS0+cmVnbWFwKSwKCQkJCSAgICAgIkZhaWxlZCB0byBpbml0IHJlZ21h
cFxuIik7CgoJZWRwcGh5LT5yZWZjbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAicmVmY2xrIik7Cgku
Li4KfQoKQmVjYXVzZSBubyBjb25zdW1lciBjYWxscyBzeXNjb25fbm9kZV90b19yZWdtYXAoKSBv
biBlZHBfcGh5X2dyZiAoYW5kIGV2ZW4gaWYKb25lIGRpZCwgc3lzY29uIG9ubHkgYXR0YWNoZXMg
dGhlIGNsb2NrIHRvIGl0cyBvd24gcmVnbWFwKSwgYW5kIHNpbXBsZS1wbS1idXMKdHJlYXRzIHNp
bXBsZS1tZmQgYXMgT05MWV9CVVMgd2l0aG91dCBtYW5hZ2luZyBpdHMgY2xvY2tzLCBub3RoaW5n
IGNsYWltcyBvcgplbmFibGVzIFBDTEtfRURQUEhZX0dSRi4KCkluIGRyaXZlcnMvY2xrL3JvY2tj
aGlwL2Nsay1yazM1NjguYywgUENMS19FRFBQSFlfR1JGIGlzIGEgZ2F0ZWQgY2xvY2sgdGhhdApp
cyBub3QgbWFya2VkIGNyaXRpY2FsOgoKCUdBVEUoUENMS19FRFBQSFlfR1JGLCAicGNsa19lZHBw
aHlfZ3JmIiwgInBjbGtfdG9wIiwgMCwKCQkJUkszNTY4X0NMS0dBVEVfQ09OKDM0KSwgMTQsIEdG
TEFHUyksCgpXb3VsZG4ndCBjbGtfZGlzYWJsZV91bnVzZWQoKSBnYXRlIFBDTEtfRURQUEhZX0dS
RiBvZmYsIGNhdXNpbmcgdW5jbG9ja2VkCk1NSU8gYWNjZXNzZXMgaW4gcm9ja2NoaXBfZWRwX3Bo
eV9jb25maWd1cmUoKSBhbmQgcm9ja2NoaXBfZWRwX3BoeV9wb3dlcl9vbigpCndoZW4gYW4gUksz
NTY2L1JLMzU2OCBib2FyZCBlbmFibGVzIGVkcCBhbmQgZWRwX3BoeT8KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMzAwNjQ5MDUu
MjI0ODk5OS0xLWRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20/cGFydD02CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
