Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2A7606A321
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 08:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NeMDXYKQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=kQ/Hr+R2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oeAz67pC1pcrET9X9RZACACl9sCRSf+e+/fm1MMkwJc=; b=NeMDXYKQIBHHFiPq+aBy6zrA0N
	+aZQqJfxqLPxM+/rTneA8YiP+YHUCKjnxmNbcOs5OWnPhGPniOvkbGxkDCEJG+cjU7Ai8wLYr6YUj
	0cY05lmUlDtlhgL63XtL+GT7+QuUxnDcI7/hGJ2Q75iiytcyxnhGfDpJ+ISMR3o15xoghIPNnVqNr
	tQ4LWv1vDlz62wKjFZbOqobkeyvlg/b3QsSI+eQr6ifPKvg5jKUxjYcsx5Bqa8yNlg2CE4gn6MtIr
	snPUzbCSAqHbh1NVqvLRuio6TS22+zcbFRajU+bVBiSBdJ9u0glP/l/B/UIHa4oj+YkTcekpEIX7M
	HLqM7wkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQhGq-00000003871-0WVv;
	Tue, 10 Nov 2026 08:32:00 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQhGo-0000000386h-3B2g
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 08:31:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4C2B040DFB;
	Tue, 10 Nov 2026 08:31:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B10621F0089F;
	Tue, 10 Nov 2026 08:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794299518;
	bh=XvORE3MO+QpGTemEFXAK4gwUdDzsakLGghinRkb/8ug=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kQ/Hr+R2cN7g1jzkNe+Nqe79U6K048oMkC5WBsV3+mUuZDeyt1VyoEiQirVWOkb9U
	 5DJ/SqiOJ5VVwWIqhx3bSO0hYrhha9yk4noizWv8npokMmbIBCIMd0ygtydN8m5PM9
	 /mUX/77S9FDX6FRauI7XQEtSS15jNGEYTHmUwyjsY3I61D/x+SLv8IEmKvolHet6sv
	 W6hNhqIeBy1zAUS4b5Hl8xn9kKXIy6KFY/0rHOtcOtObLYZP7bK57GUTD2JM9GDoMp
	 rKFWWRLNR5aRmcVbBQm7Fa6ZXXaN4OKgq3UcsLXL3Eg4HLgsbqW/2FJcTO9LlLD3xu
	 FHo2wB7+lW2wg==
Message-ID: <sashiko-outbox-206627@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: rk356x: Add eDP controller
 and phy nodes
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261110074533.4052196-4-damon.ding@rock-chips.com>
References: <20261110074533.4052196-1-damon.ding@rock-chips.com>
 <20261110074533.4052196-4-damon.ding@rock-chips.com>
Date: Tue, 10 Nov 2026 08:31:57 +0000
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
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtNZWRpdW1dIGFybTY0OiBkdHM6IHJv
Y2tjaGlwOiByazM1NjgtZWRwIGxhY2tzIGJpbmRpbmcvZHJpdmVyIG1hdGNoCiAgYW5kIHJvY2tj
aGlwLGdyZgotIFtMb3ddIGFybTY0OiBkdHM6IHJvY2tjaGlwOiByazM1Nng6IGR1cGxpY2F0ZSBQ
Q0xLX0VEUFBIWV9HUkYgY2xvY2sgaW4KICBlZHBfcGh5X2dyZgotLQoKY29tbWl0IDM5ZDAwMGNl
OGFlMDcxOTQ5MWZkMDY1MDZjNTFhMjc1OTI5ZmM0Y2UKQXV0aG9yOiBEYW1vbiBEaW5nIDxkYW1v
bi5kaW5nQHJvY2stY2hpcHMuY29tPgoKYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJrMzU2eDogQWRk
IGVEUCBjb250cm9sbGVyIGFuZCBwaHkgbm9kZXMKClRoaXMgY29tbWl0IGFkZHMgdGhlIGVEUCBQ
SFkgR1JGLCBlRFAgUEhZIGNoaWxkIG5vZGUsIGFuZCBlRFAgY29udHJvbGxlcgpub2RlcyB0byBy
azM1NngtYmFzZS5kdHNpIGZvciB0aGUgUkszNTY4L1JLMzU2NiBTb0NzLgoKPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNpCj4gaW5kZXggMWE0NTYyZGYy
MGVlNS4uZTNmMzcwY2FkNWQ1MSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2eC1iYXNlLmR0c2kKPiBAQCAtNDAyLDYgKzQwMiwyNCBAQCB1c2IycGh5MV9ncmY6
IHN5c2NvbkBmZGNhODAwMCB7Cj4gIAkJcmVnID0gPDB4MCAweGZkY2E4MDAwIDB4MCAweDgwMDA+
Owo+ICAJfTsKPiAgCj4gKwllZHBfcGh5X2dyZjogc3lzY29uQGZkY2IwMDAwIHsKPiArCQljb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC1lZHAtcGh5LWdyZiIsICJzeXNjb24iLCAic2ltcGxl
LW1mZCI7Cj4gKwkJcmVnID0gPDB4MCAweGZkY2IwMDAwIDB4MCAweDgwMDA+Owo+ICsJCWNsb2Nr
cyA9IDwmY3J1IFBDTEtfRURQUEhZX0dSRj47Cj4gKwkJcmFuZ2VzID0gPDB4MCAweDAgMHhmZGNi
MDAwMCAweDEwMD47Cj4gKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKwkJI3NpemUtY2VsbHMg
PSA8MT47Cj4gKwo+ICsJCWVkcF9waHk6IHBoeUAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJyb2Nr
Y2hpcCxyazM1NjgtZWRwLXBoeSI7Cj4gKwkJCXJlZyA9IDwweDAgMHgxMDA+Owo+ICsJCQljbG9j
a3MgPSA8JnBtdWNydSBYSU5fT1NDMF9FRFBQSFlfRz4sIDwmY3J1IFBDTEtfRURQUEhZX0dSRj47
Cj4gKwkJCWNsb2NrLW5hbWVzID0gInJlZiIsICJhcGIiOwoKW1NldmVyaXR5OiBMb3ddClNob3Vs
ZCBjbG9ja3MgPSA8JmNydSBQQ0xLX0VEUFBIWV9HUkY+IGJlIGRyb3BwZWQgZnJvbSB0aGUgcGFy
ZW50CmVkcF9waHlfZ3JmIG5vZGUgKGFuZCBmcm9tIHJvY2tjaGlwLHJrMzU2OC1lZHAtcGh5LWdy
Zi55YW1sIGluIGNvbW1pdAoiZHQtYmluZGluZ3M6IHBoeTogQWRkIHJvY2tjaGlwLHJrMzU2OC1l
ZHAtcGh5Iikgbm93IHRoYXQgdGhlIGNoaWxkCmVkcF9waHkgbm9kZSBjbGFpbXMgYW5kIGVuYWJs
ZXMgUENMS19FRFBQSFlfR1JGIGRpcmVjdGx5PwoKPiBAQCAtODc4LDYgKzg5NiwzMyBAQCBoZG1p
X291dDogcG9ydEAxIHsKPiAgCQl9Owo+ICAJfTsKPiAgCj4gKwllZHA6IGVkcEBmZTBjMDAwMCB7
Cj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgtZWRwIjsKPiArCQlyZWcgPSA8MHgw
IDB4ZmUwYzAwMDAgMHgwIDB4MTAwMDA+Owo+ICsJCWNsb2NrcyA9IDwmcG11Y3J1IFhJTl9PU0Mw
X0VEUFBIWV9HPiwgPCZjcnUgUENMS19FRFBfQ1RSTD4sIDwmY3J1IEhDTEtfVk8+Owo+ICsJCWNs
b2NrLW5hbWVzID0gImRwIiwgInBjbGsiLCAiaGNsayI7Cj4gKwkJaW50ZXJydXB0cyA9IDxHSUNf
U1BJIDE4IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsJCXBoeXMgPSA8JmVkcF9waHk+Owo+ICsJ
CXBoeS1uYW1lcyA9ICJkcCI7Cj4gKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTY4X1BE
X1ZPPjsKPiArCQlyZXNldHMgPSA8JmNydSBTUlNUX0VEUF8yNE0+LCA8JmNydSBTUlNUX1BfRURQ
X0NUUkw+Owo+ICsJCXJlc2V0LW5hbWVzID0gImRwIiwgImFwYiI7Cj4gKwkJc3RhdHVzID0gImRp
c2FibGVkIjsKCltTZXZlcml0eTogTWVkaXVtXQpDYW4gdGhlIGVkcEBmZTBjMDAwMCBub2RlIHBh
c3MgZHRic19jaGVjayBvciBwcm9iZSB3aGVuIGVuYWJsZWQ/Cgoicm9ja2NoaXAscmszNTY4LWVk
cCIgaXMgbm90IGRvY3VtZW50ZWQgaW4KRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAsYW5hbG9naXgtZHAueWFtbApvciBtYXRjaGVkIGlu
IHJvY2tjaGlwX2RwX2R0X2lkc1tdLiAgSW4gYWRkaXRpb24sIHRoZSBiaW5kaW5nIHJlcXVpcmVz
CnJvY2tjaGlwLGdyZiBhbmQgcm9ja2NoaXBfZHBfb2ZfcHJvYmUoKSBmYWlscyB3aXRoIC1FTk9E
RVYgd2hlbiB0aGF0CnByb3BlcnR5IGlzIGFic2VudDoKCmRyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9hbmFsb2dpeF9kcC1yb2NrY2hpcC5jOnJvY2tjaGlwX2RwX29mX3Byb2JlKCkgewoJLi4uCglk
cC0+Z3JmID0gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZShucCwgInJvY2tjaGlwLGdy
ZiIpOwoJaWYgKElTX0VSUihkcC0+Z3JmKSkKCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIFBU
Ul9FUlIoZHAtPmdyZiksCgkJCQkgICAgICJmYWlsZWQgdG8gZ2V0IHJvY2tjaGlwLGdyZiBwcm9w
ZXJ0eVxuIik7CgkuLi4KfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MTExMDA3NDUzMy40MDUyMTk2LTEtZGFtb24uZGluZ0Byb2Nr
LWNoaXBzLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
