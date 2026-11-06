Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30159606A32F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 09:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qMp/G/Ok;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ki2Y6VM1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=e0T52J2Qc+sLzZqwPpvMSIt/PUN+e9gyIg1NQ6mL+AE=; b=qMp/G/Okpl+r6G6DjGoPmCB1eT
	FzMTy/tG5ofTv+rSCr8tsNRzFdO5rsGmjkBI22NcN2vDkmxyWiYI7jGP8QuLXBhKuZsNFRoFCP617
	1z+gmHYuMYLa6ezQ8vZyrjV/EQZJzumMCS/c7EIDfkHfgjUr09G9LTSlXEcKh+5oBNb6mNudw+A4z
	+ndnBrkwJzOdOPGJAQduDgLusUiFaUVyvF51oy3Zb74A/QETS5Gedf9FtvAbCzdABlzGD8kPUgxnH
	nPNRYcbm8c9sp9AsHNLNengbccXunQb+pGqcuQELwTroq05WSxmflyPUm1NBtPjCz/6GCr/j5LDNp
	IxGF39sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGay-0000000BoVU-3tD4;
	Fri, 06 Nov 2026 09:50:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGat-0000000BoUK-440J
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 09:50:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 68EAF44530;
	Fri,  6 Nov 2026 09:50:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D78831F0089F;
	Fri,  6 Nov 2026 09:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793958647;
	bh=+PeAqe5CPXxdSOZLrj9lW/HMctWWJka2EQwhjd7PBpk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ki2Y6VM1yJg+RmSJZlGbytEO7ho2Ewa2faoib1xLWl/f4rDtUZ5yg9+dxnsnMYUXx
	 r/FE9kk7ay4zXyc6Fe05bsAtSnag8b1NzupzBJJ5t/pPmq4bd+D1SK5LZpfSmZx1uY
	 Md76NMuFif5M5bdZ4fU0kTIULQpj5hbJsEOhpEgJcW7AVh7xEUvL7MaBPSaJzxGvLu
	 MTgjsyjPYI4OHeiBqmgMUQn8i27NUw3Ww08NtSziesS/jhfIjxvQ5Fn7djTb4BuoVG
	 G3koUXls1RxaSEZDlPGO5oGJWQWH8UEjCmZ+fcGcz9+uPnc7C8wqpnnPwEiaI1tQwz
	 ZDGZlrk16KRLg==
Message-ID: <sashiko-outbox-201154@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 24/25] riscv: add Metanoia MT2824 SoC and MT5824 EVB
 support
To: =?utf-8?b?QmVub8OudCBNb25pbg==?= <benoit.monin@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, linux-watchdog@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261106-mt2824-v1-24-86087eaf5af4@bootlin.com>
References: <20261106-mt2824-v1-0-86087eaf5af4@bootlin.com>
 <20261106-mt2824-v1-24-86087eaf5af4@bootlin.com>
Date: Fri, 06 Nov 2026 09:50:46 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcmlzY3Y6IGR0czogbWV0
YW5vaWE6IGludmFsaWQgdWFydDAvdWFydDEgYWxpYXNlcyBpbgogIG10NTgyNC1ldmIuZHRzCi0t
Cgpjb21taXQgOWY4MmU2MGU5ZDI3ZGFmMGQyYjUwYzkxNDU3YjMzZDRmYjYwZTUwNwpBdXRob3I6
IEJlbm/DrnQgTW9uaW4gPGJlbm9pdC5tb25pbkBib290bGluLmNvbT4KCnJpc2N2OiBhZGQgTWV0
YW5vaWEgTVQyODI0IFNvQyBhbmQgTVQ1ODI0IEVWQiBzdXBwb3J0CgpUaGlzIGNvbW1pdCBhZGRz
IGRldmljZSB0cmVlIGZpbGVzIGZvciB0aGUgTWV0YW5vaWEgTVQyODI0IFNvQyBhbmQgdGhlCk1U
NTgyNCBldmFsdWF0aW9uIGJvYXJkLgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9ib290L2R0
cy9tZXRhbm9pYS9tdDU4MjQtZXZiLmR0cyBiL2FyY2gvcmlzY3YvYm9vdC9kdHMvbWV0YW5vaWEv
bXQ1ODI0LWV2Yi5kdHMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAw
MDAuLmQwZThlYjBhNDlhNDMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9yaXNjdi9ib290
L2R0cy9tZXRhbm9pYS9tdDU4MjQtZXZiLmR0cwo+IEBAIC0wLDAgKzEsODEgQEAKPiArLy8gU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4gKy8qCj4gKyAqIENvcHly
aWdodCAoQykgMjAyNiBNZXRhbm9pYSBDb21tdW5pY2F0aW9ucyBJbmMuLiBBbGwgcmlnaHRzIHJl
c2VydmVkLgo+ICsgKi8KPiArCj4gKy9kdHMtdjEvOwo+ICsKPiArI2luY2x1ZGUgIm10MjgyNC5k
dHNpIgo+ICsKPiArLyB7Cj4gKwltb2RlbCA9ICJNZXRhbm9pYSBNVDU4MjQgRVZCIjsKPiArCWNv
bXBhdGlibGUgPSAibWV0YW5vaWEsbXQ1ODI0LWV2YiIsICJtZXRhbm9pYSxtdDI4MjQiOwo+ICsK
PiArCWFsaWFzZXMgewo+ICsJCXVhcnQwID0gJnNlcmlhbDA7Cj4gKwkJdWFydDEgPSAmc2VyaWFs
MTsKPiArCQlzcGkwID0gJnNwaTA7Cj4gKwkJc3BpMSA9ICZzcGkxOwo+ICsJCXNwaTIgPSAmc3Bp
MjsKPiArCX07Cj4gKwo+ICsJY2hvc2VuIHsKPiArCQlzdGRvdXQtcGF0aCA9ICJ1YXJ0MDoxMTUy
MDBuOCI7Cj4gKwl9OwoKW1NldmVyaXR5OiBNZWRpdW1dClNob3VsZCB0aGUgVUFSVCBhbGlhc2Vz
IGluIC9hbGlhc2VzIGFuZCBzdGRvdXQtcGF0aCBiZSBuYW1lZCBzZXJpYWwwIGFuZApzZXJpYWwx
IGluc3RlYWQgb2YgdWFydDAgYW5kIHVhcnQxPwoKVGhlIGRldmljZXRyZWUgc2VyaWFsIGJpbmRp
bmcgKHNlcmlhbC55YW1sKSByZXF1aXJlcyBVQVJUIGFsaWFzZXMgdG8gdXNlCnRoZSBzZXJpYWxO
IG5hbWluZyBjb252ZW50aW9uLCBzbyB1YXJ0MCBhbmQgdWFydDEgZmFpbCBkdGJzX2NoZWNrCnZh
bGlkYXRpb24uICBJbiBhZGRpdGlvbiwgX191YXJ0X3JlYWRfcHJvcGVydGllcygpIGxvb2tzIHVw
IHRoZSAic2VyaWFsIgphbGlhcyBzdGVtIHZpYSBvZl9hbGlhc19nZXRfaWQoZGV2X29mX25vZGUo
ZGV2KSwgInNlcmlhbCIpIHdoZW4gYXNzaWduaW5nCnBvcnQtPmxpbmUsIGNhdXNpbmcgdGhlIHVh
cnQwIGFuZCB1YXJ0MSBhbGlhcyBpbmRpY2VzIHRvIGJlIGlnbm9yZWQuCgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTA2LW10Mjgy
NC12MS0wLTg2MDg3ZWFmNWFmNEBib290bGluLmNvbT9wYXJ0PTI0CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
