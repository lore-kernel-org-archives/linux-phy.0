Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70663606A320
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pipGOeVA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=R5ma+i7u
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4okEMrSGZkwJj8JTBwmDgi7EgiKKurm6xHXq07SVxeA=; b=pipGOeVA5rLxTKX9e1t1HCiKQQ
	ExdMQJZhF93KrOrNVsa3Z0qRlc5t/BOuCJb6Amo4mMrk9z8C96GHIhsKYSJv6t427z2Gl7qk/1LEm
	T9zMp3cRnxThjguiU0nxjWVKxPEpoOX/BFFH/I95C9B5ReLuMrBucETn/SKvF4X+LCiXbcT/U+ELt
	DZNC4hC5+ghn76mEiMFugYmiBDKiYk9X0UyjSonaWe6bpbZivgJaYKwmEpauAPpL6PCZvza4+Hw77
	8IAa16P4rl4fWqodkD6+cCn/jte8XRPME4b0YU9ZfiIEQwz7iCKMyd8bqzhw5TxpHke2jZYY/HBP6
	2LIlUtEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5n4-00000007Qjb-09et;
	Wed, 28 Oct 2026 15:42:14 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5n2-00000007Qj1-3MXI
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:42:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 69A05434E2;
	Wed, 28 Oct 2026 15:42:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEBA71F01825;
	Wed, 28 Oct 2026 15:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793202132;
	bh=mmc1A2QB0Cixr0/n1LGttHhxMhAVpjNFSaTPqJwmkZ0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=R5ma+i7uR4MB6hvHOJrsaM0HsSmLIxohGoZb8nr/GlnlPakLFln6nJa5u/y+Ufvr9
	 g0DEGjsekPsvojFEP7hZphfrSMinqB0yyIGCL4jYdLJPkK8X10FKyHujapZnfXOrV8
	 R5Zo97401pHouriRRJV4oGMlzBnapYTdY5+Jn1k9qdUkHzkR3u2nfqqqF1enI0YI9z
	 A1VTRD4vSDZhcTax/LfUZSwLrUG8UTSB0fUiTKpT/S87SYEYj7hV4IuIx/IlIGEV74
	 A8lzhkzaIDggYVzR+9ppN4BiW9bUTS7udlNmLfQpWaZrMiECWyg30Wmzo6iR4dgtYx
	 TGVAy/wdfGaeQ==
Message-ID: <sashiko-outbox-188068@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v23 12/15] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261028-kaanapali-camss-v23-12-95f250b18612@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-12-95f250b18612@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 15:42:11 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGFybTY0OiBkdHM6IHFj
b206IGthYW5hcGFsaTogY3NpcGh5X214Y19vcHBfdGFibGUgdXNlcyBpbnZhbGlkIDMwMCBNSHog
T1BQCi0tCgpjb21taXQgMGNmYTNhMDIwN2QxNzMwZDljN2ZmNzE2MzA5ZGY5YWFkMDZmMDBiYQpB
dXRob3I6IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+Cgphcm02
NDogZHRzOiBxY29tOiBrYWFuYXBhbGk6IEFkZCBDQU1TUyBhbmQgQ1NJUEhZIGJsb2NrIGRlZmlu
aXRpb25zCgpUaGlzIGNvbW1pdCBhZGRzIGRldmljZSB0cmVlIGRlZmluaXRpb25zIGZvciB0aGUg
Q0FNU1MgSVNQLCBzaXggQ1NJUEhZIGJsb2NrcywKYW5kIHRoZSBhc3NvY2lhdGVkIENTSVBIWSBN
WEMgb3BlcmF0aW5nIHBvaW50cyB0YWJsZSBvbiB0aGUgUXVhbGNvbW0gS2FhbmFwYWxpCnBsYXRm
b3JtLgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2thYW5hcGFsaS5k
dHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2thYW5hcGFsaS5kdHNpCj4gaW5kZXggZTQ4
YTE3OWQwNzIyMC4uMGM4ZmQ3ZGE1NWI3OCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3Fjb20va2FhbmFwYWxpLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
a2FhbmFwYWxpLmR0c2kKWyAuLi4gXQo+IEBAIC02NTQ4LDYgKzY5MjcsMjggQEAgcGRwX3R4OiBz
Y3Atc3JhbS1zZWN0aW9uQDEwMCB7Cj4gIAkJfTsKPiAgCX07Cj4gIAo+ICsJY3NpcGh5X214Y19v
cHBfdGFibGU6IG9wcC10YWJsZS1teGMgewo+ICsJCWNvbXBhdGlibGUgPSAib3BlcmF0aW5nLXBv
aW50cy12MiI7Cj4gKwo+ICsJCW9wcC0zMDAwMDAwMDAgewo+ICsJCQlvcHAtaHogPSAvYml0cy8g
NjQgPDMwMDAwMDAwMD47Cj4gKwkJCXJlcXVpcmVkLW9wcHMgPSA8JnJwbWhwZF9vcHBfbG93X3N2
c19kMT4sCj4gKwkJCQkJPCZycG1ocGRfb3BwX2xvd19zdnNfZDE+Owo+ICsJCX07Cj4gKwo+ICsJ
CW9wcC00MDAwMDAwMDAgewo+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDQwMDAwMDAwMD47Cj4g
KwkJCXJlcXVpcmVkLW9wcHMgPSA8JnJwbWhwZF9vcHBfbG93X3N2cz4sCj4gKwkJCQkJPCZycG1o
cGRfb3BwX2xvd19zdnM+Owo+ICsJCX07CgpbU2V2ZXJpdHk6IEhpZ2hdClNob3VsZCB0aGUgbG93
ZXN0IG9wZXJhdGluZyBwb2ludCBpbiBjc2lwaHlfbXhjX29wcF90YWJsZSBiZSAyNjY2NjY2Njcg
SHoKaW5zdGVhZCBvZiAzMDAwMDAwMDAgSHo/CgpJbiBkcml2ZXJzL2Nsay9xY29tL2NhbWNjLWth
YW5hcGFsaS5jLCB0aGUgcGFyZW50IFJDRyBmb3IKQ0FNX0NDX0NTSVBIWTBfQ0xLIHRocm91Z2gg
Q0FNX0NDX0NTSVBIWTVfQ0xLIHVzZXMgY2xrX3JjZzJfc2hhcmVkX29wcwood2hpY2ggcm91bmRz
IHVwIHZpYSBxY29tX2ZpbmRfZnJlcSgpKSBhbmQgZGVmaW5lcyB0aGUgZm9sbG93aW5nIGZyZXF1
ZW5jeQp0YWJsZToKCnN0YXRpYyBjb25zdCBzdHJ1Y3QgZnJlcV90YmwgZnRibF9jYW1fY2NfY3Bo
eV9yeF9jbGtfc3JjW10gPSB7CglGKDI2NjY2NjY2NywgUF9DQU1fQ0NfUExMMF9PVVRfTUFJTiwg
NC41LCAwLCAwKSwKCUYoNDAwMDAwMDAwLCBQX0NBTV9DQ19QTEwwX09VVF9NQUlOLCAzLCAwLCAw
KSwKCUYoNDgwMDAwMDAwLCBQX0NBTV9DQ19QTEwwX09VVF9NQUlOLCAyLjUsIDAsIDApLAoJeyB9
Cn07CgpXaGVuIGEgc2Vuc29yIGNvbm5lY3RlZCB0byBjc2lwaHkwLi5jc2lwaHk1IGNvbmZpZ3Vy
ZXMgYSBsaW5rIGZyZXF1ZW5jeSBvZgoxLjIgR0h6IG9yIGxvd2VyIChzbyBvcHBfcmF0ZSA9IGxp
bmtfZnJlcSAvIDQgPD0gMzAwMDAwMDAwIEh6KSwKcGh5X3Fjb21fbWlwaV9jc2kyX2NvbmZpZ3Vy
ZSgpIC0+IHBoeV9xY29tX21pcGlfY3NpMl9zZXRfY2xvY2tfcmF0ZXMoKSBpbgpkcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTItY29yZS5jIGxvb2tzIHVwIHRoZSBjZWlsaW5n
IE9QUCBhbmQKdm90ZXMgdGhlIHBvd2VyIGRvbWFpbnMgYmVmb3JlIHNldHRpbmcgdGhlIGNsb2Nr
IHJhdGU6CgoJb3BwID0gZGV2X3BtX29wcF9maW5kX2ZyZXFfY2VpbChkZXYsICZvcHBfcmF0ZSk7
CgkuLi4KCWZvciAoaSA9IDA7IGkgPCBjc2kycGh5LT5wZF9saXN0LT5udW1fcGRzOyBpKyspIHsK
CQkuLi4KCQlwZXJmID0gZGV2X3BtX29wcF9nZXRfcmVxdWlyZWRfcHN0YXRlKG9wcCwgcHN0YXRl
KTsKCQlwc3RhdGUgKz0gMTsKCgkJcmV0ID0gZGV2X3BtX2dlbnBkX3NldF9wZXJmb3JtYW5jZV9z
dGF0ZShjc2kycGh5LT5wZF9saXN0LT5wZF9kZXZzW2ldLCBwZXJmKTsKCQkuLi4KCX0KCWRldl9w
bV9vcHBfcHV0KG9wcCk7CgoJcmV0ID0gZGV2X3BtX29wcF9zZXRfcmF0ZShkZXYsIG9wcF9yYXRl
KTsKCkJlY2F1c2UgY3NpcGh5X214Y19vcHBfdGFibGUgbGlzdHMgMzAwMDAwMDAwIEh6LApwaHlf
cWNvbV9taXBpX2NzaTJfc2V0X2Nsb2NrX3JhdGVzKCkgc2VsZWN0cyBvcHAtMzAwMDAwMDAwLCB2
b3RlcwpSUE1IUERfTU1DWCBhbmQgUlBNSFBEX01YQyB0byBycG1ocGRfb3BwX2xvd19zdnNfZDEs
IGFuZCB0aGVuIGNhbGxzCmRldl9wbV9vcHBfc2V0X3JhdGUoZGV2LCAzMDAwMDAwMDApLgoKV29u
J3QgcmVxdWVzdGluZyAzMDAwMDAwMDAgSHogc2tpcCB0aGUgMjY2LjY3IE1IeiBmcmVxdWVuY3kg
YW5kIHJvdW5kIHRoZQpDU0lQSFkgY29yZSBjbG9jayB1cCB0byA0MDAwMDAwMDAgSHogd2hpbGUg
bGVhdmluZyBNTUNYIGFuZCBNWEMgYXQKcnBtaHBkX29wcF9sb3dfc3ZzX2QxIGluc3RlYWQgb2Yg
dGhlIHJwbWhwZF9vcHBfbG93X3N2cyBjb3JuZXIgcmVxdWlyZWQgZm9yCjQwMCBNSHo/CgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYx
MDI4LWthYW5hcGFsaS1jYW1zcy12MjMtMC05NWYyNTBiMTg2MTJAb3NzLnF1YWxjb21tLmNvbT9w
YXJ0PTEyCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
