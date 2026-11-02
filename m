Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692A5606A324
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iJQ7MOIt;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=fMbdkBFf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nB/Ro5sgxdLqTrZSFex4u2Zv9k1pOqVCqLIe0sWIciw=; b=iJQ7MOIt6PhAVPWoJTGBk8D0eO
	95OkmLydCcMJUH5HsF0coAuxfGLKyWn4YFmwwOJ3wFB6WovzTWlN0SXgk8D8UdlMbKR118FNSENn6
	LE6WGBMMJw/HLpDCrKZaOuRKZi5gr+oAlc3yFW5BeZ+u8nIUJ/1le+ldGwI1FnVzgp1ULk0cK6iIk
	VkcyprVyqJKy1sqfbg+rUi/qmYG+CMaAbkGgkPX/GCI8hdrryeKRTx+DilE4zNuk88AbViXzlLH5K
	Toig5CtJBWin29KxLdwT0F3X5PgioDsykAqlSgMfyZ5fD0JjOI92mGqRnVmbX3o0mc1ViwmorLu7z
	hDiDcfFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpjh-0000000GEZK-0Y1r;
	Mon, 02 Nov 2026 10:57:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpjf-0000000GEYJ-19jP
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:57:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5181A60EFF;
	Mon,  2 Nov 2026 10:57:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AD831F00A17;
	Mon,  2 Nov 2026 10:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793617074;
	bh=Qt69dui3vM1hwfTQp40iWXN67/TizZiz9/GxVsOWtr0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fMbdkBFf2z4tPwm/mjEERGxtwXgw1RXkhFJM+BoORC16ZP+vyV9CYKP4yCPy3yoZN
	 S5k+GuvR13ysPsQiaCTCub9eEKa6CZkrDjWxboTbE/D74hlbA/ZVfgPWRFwyUEHhQD
	 AF5aW+yvAcyk9gh1k1rDyLY+1T8s0zU2hkmAjlLHuSWazTe74WIigYKbWchBOiSW+G
	 KOLF2obC//1bosiv5+8PWCVjanPF9mwa765MNJpb6yQumwnvDvdRsXJ4AEE/W4ByWh
	 tZUxkclBCls47yRde14Y/4AFVP0Knz0z4FSKI+D+cbXsKPxATOzvhW02JruFpk8P6j
	 /U26gRwn9MyZQ==
Message-ID: <sashiko-outbox-193302@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v24 12/15] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261102-kaanapali-camss-v24-12-d6b8f3f6f66f@oss.qualcomm.com>
References: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
 <20261102-kaanapali-camss-v24-12-d6b8f3f6f66f@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 10:57:53 +0000
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGFybTY0OiBkdHM6IHFj
b206IGthYW5hcGFsaTogY3NpcGh5X214Y19vcHBfdGFibGUgdXNlcyBpbnZhbGlkIDMwMCBNSHog
T1BQCi0gW0xvd10gYXJtNjQ6IGR0czogcWNvbToga2FhbmFwYWxpOiB1bnVzZWQgaW5jbHVkZSBv
ZiBkdC1iaW5kaW5ncy9waHkvcGh5LmgKLS0KCmNvbW1pdCBlNTVkYTY4ODliNzE3NGFlODE1ZjRh
ZTZmMDZhNzFhMTRmNTY2ODYxCkF1dGhvcjogSGFuZ3hpYW5nIE1hIDxoYW5neGlhbmcubWFAb3Nz
LnF1YWxjb21tLmNvbT4KCmFybTY0OiBkdHM6IHFjb206IGthYW5hcGFsaTogQWRkIENBTVNTIGFu
ZCBDU0lQSFkgYmxvY2sgZGVmaW5pdGlvbnMKClRoaXMgY29tbWl0IGFkZHMgZGV2aWNlIHRyZWUg
bm9kZXMgZm9yIHRoZSBDQU1TUyBjYW1lcmEgc3Vic3lzdGVtLCBzaXggQ1NJUEhZCmluc3RhbmNl
cywgYW5kIHRoZSBDU0lQSFkgT1BQIHRhYmxlIG9uIHRoZSBRdWFsY29tbSBLYWFuYXBhbGkgU29D
LgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2thYW5hcGFsaS5kdHNp
IGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2thYW5hcGFsaS5kdHNpCj4gaW5kZXggZTQ4YTE3
OWQwNzIyMC4uZTEwN2JjZGYwZjhlZiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20va2FhbmFwYWxpLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20va2Fh
bmFwYWxpLmR0c2kKPiBAQCAtMjAsNiArMjAsNyBAQAo+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3Mv
aW50ZXJjb25uZWN0L3Fjb20sa2FhbmFwYWxpLXJwbWguaD4KPiAgI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPiAgI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL21haWxib3gvcWNvbS1pcGNjLmg+Cj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9waHkvcGh5
Lmg+CgpbU2V2ZXJpdHk6IExvd10KVGhpcyBpc24ndCBhIGJ1ZywgYnV0IGlzIHRoZSBkdC1iaW5k
aW5ncy9waHkvcGh5LmggaW5jbHVkZSBuZWVkZWQgaGVyZT8gTm9uZQpvZiB0aGUgbWFjcm9zIGZy
b20gdGhhdCBoZWFkZXIgYXBwZWFyIHRvIGJlIHVzZWQgaW4ga2FhbmFwYWxpLmR0c2kuCgpbIC4u
LiBdCgo+IEBAIC02NTQ4LDYgKzY5MjUsMjggQEAgcGRwX3R4OiBzY3Atc3JhbS1zZWN0aW9uQDEw
MCB7Cj4gIAkJfTsKPiAgCX07Cj4gIAo+ICsJY3NpcGh5X214Y19vcHBfdGFibGU6IG9wcC10YWJs
ZS1teGMgewo+ICsJCWNvbXBhdGlibGUgPSAib3BlcmF0aW5nLXBvaW50cy12MiI7Cj4gKwo+ICsJ
CW9wcC0zMDAwMDAwMDAgewo+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDMwMDAwMDAwMD47Cj4g
KwkJCXJlcXVpcmVkLW9wcHMgPSA8JnJwbWhwZF9vcHBfbG93X3N2c19kMT4sCj4gKwkJCQkJPCZy
cG1ocGRfb3BwX2xvd19zdnNfZDE+Owo+ICsJCX07CgpbU2V2ZXJpdHk6IEhpZ2hdCkFzIHJlcG9y
dGVkIGJ5IFNhc2hpa28gb24gdjIzIFsxXSwgc2hvdWxkIHRoaXMgbG93ZXN0IE9QUCBpbgpjc2lw
aHlfbXhjX29wcF90YWJsZSBiZSAyNjY2NjY2NjcgSHogKG9wcC0yNjY2NjY2NjcpIGluc3RlYWQg
b2YgMzAwMDAwMDAwIEh6PwoKVGhlIENTSVBIWSBjb3JlIGNsb2NrcyAoQ0FNX0NDX0NTSVBIWTBf
Q0xLIHRocm91Z2ggQ0FNX0NDX0NTSVBIWTVfQ0xLKSBvbgpLYWFuYXBhbGkgYXJlIHNvdXJjZWQg
ZnJvbSBjYW1fY2NfY3BoeV9yeF9jbGtfc3JjLCB3aGljaCBvbmx5IHN1cHBvcnRzCjI2NjY2NjY2
NyBIeiwgNDAwMDAwMDAwIEh6LCBhbmQgNDgwMDAwMDAwIEh6IGFuZCB1c2VzIGNsa19yY2cyX3No
YXJlZF9vcHM6Cgpkcml2ZXJzL2Nsay9xY29tL2NhbWNjLWthYW5hcGFsaS5jOgpzdGF0aWMgY29u
c3Qgc3RydWN0IGZyZXFfdGJsIGZ0YmxfY2FtX2NjX2NwaHlfcnhfY2xrX3NyY1tdID0gewoJRigy
NjY2NjY2NjcsIFBfQ0FNX0NDX1BMTDBfT1VUX01BSU4sIDQuNSwgMCwgMCksCglGKDQwMDAwMDAw
MCwgUF9DQU1fQ0NfUExMMF9PVVRfTUFJTiwgMywgMCwgMCksCglGKDQ4MDAwMDAwMCwgUF9DQU1f
Q0NfUExMMF9PVVRfTUFJTiwgMi41LCAwLCAwKSwKCXsgfQp9OwoKV2hlbiBwaHlfcWNvbV9taXBp
X2NzaTJfcG93ZXJfb24oKSAtPiBwaHlfcWNvbV9taXBpX2NzaTJfc2V0X2Nsb2NrX3JhdGVzKCkg
aXMKY2FsbGVkIHdpdGggYSBsaW5rIGZyZXF1ZW5jeSB3aGVyZSBsaW5rX2ZyZXEgLyA0IDw9IDMw
MDAwMDAwMCBIeiwKZGV2X3BtX29wcF9maW5kX2ZyZXFfY2VpbCgpIHNlbGVjdHMgb3BwLTMwMDAw
MDAwMCBhbmQgc2V0cyB0aGUgUlBNSFBEX01NQ1ggYW5kClJQTUhQRF9NWEMgcG93ZXIgZG9tYWlu
cyB0byBycG1ocGRfb3BwX2xvd19zdnNfZDE6Cgpkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1taXBpLWNzaTItY29yZS5jOnBoeV9xY29tX21pcGlfY3NpMl9zZXRfY2xvY2tfcmF0ZXMoKSB7
CgkuLi4KCW9wcCA9IGRldl9wbV9vcHBfZmluZF9mcmVxX2NlaWwoZGV2LCAmb3BwX3JhdGUpOwoJ
Li4uCglmb3IgKGkgPSAwOyBpIDwgY3NpMnBoeS0+cGRfbGlzdC0+bnVtX3BkczsgaSsrKSB7CgkJ
Li4uCgkJcGVyZiA9IGRldl9wbV9vcHBfZ2V0X3JlcXVpcmVkX3BzdGF0ZShvcHAsIHBzdGF0ZSk7
CgkJcHN0YXRlICs9IDE7CgoJCXJldCA9IGRldl9wbV9nZW5wZF9zZXRfcGVyZm9ybWFuY2Vfc3Rh
dGUoY3NpMnBoeS0+cGRfbGlzdC0+cGRfZGV2c1tpXSwgcGVyZik7CgkJLi4uCgl9CglkZXZfcG1f
b3BwX3B1dChvcHApOwoKCXJldCA9IGRldl9wbV9vcHBfc2V0X3JhdGUoZGV2LCBvcHBfcmF0ZSk7
Cn0KCkJlY2F1c2UgY2xrX3JjZzJfc2hhcmVkX29wcyByb3VuZHMgdXAgdmlhIHFjb21fZmluZF9m
cmVxKC4uLiwgQ0VJTCksIGNhbGxpbmcKZGV2X3BtX29wcF9zZXRfcmF0ZSgpIHdpdGggb3BwX3Jh
dGUgPSAzMDAwMDAwMDAgc2tpcHMgMjY2NjY2NjY3IEh6IGFuZCByb3VuZHMKdGhlIENTSVBIWSBj
b3JlIGNsb2NrIHVwIHRvIDQwMDAwMDAwMCBIei4gRG9lcyB0aGlzIGxlYXZlIHRoZSAyNjYuNjcg
TUh6IHJhdGUKdW5yZWFjaGFibGUgYW5kIHJ1biB0aGUgQ1NJUEhZIGNvcmUgY2xvY2sgYXQgNDAw
IE1IeiB3aGlsZSBNTUNYIGFuZCBNWEMgcmVtYWluCmF0IHJwbWhwZF9vcHBfbG93X3N2c19kMSBp
bnN0ZWFkIG9mIHJwbWhwZF9vcHBfbG93X3N2cz8KClsxXSBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9yLzIwMjYxMDI4LWthYW5hcGFsaS1jYW1zcy12MjMtMTItOTVmMjUwYjE4NjEyQG9zcy5xdWFs
Y29tbS5jb20KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjExMDIta2FhbmFwYWxpLWNhbXNzLXYyNC0wLWQ2YjhmM2Y2ZjY2ZkBvc3Mu
cXVhbGNvbW0uY29tP3BhcnQ9MTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
