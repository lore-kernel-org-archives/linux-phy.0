Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BA5606A326
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 16:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SlMbTKMm;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=k9GrE7MG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8n9lina1oRFq8ctSDbY/9S8Sv9eO5UjoTvl9Pz3BsXY=; b=SlMbTKMm9xnkUqv8hPcI7b12kW
	m5wyR+8shalgZuI1+W2ulkGjyH4VS4q+OvxLPi/pBU5O+bRzJuPip2DLowKMhc6iZDaRk6oBFfHPj
	DNOL3sgLOJdq0h0BlDHmh8x3wbNwoJaBqeF3lCLoyIsEP7zTJPD1P7T0BpfNNW5S6wCBw/oMYy9TT
	R5+z+nrJoYMMC4QvHSuwR4kKbmy3o6b3wtz9kddTxmjfGcmFxOmEIReJ7TWOtxFcVLxNyC3gEm63i
	H3DR0XntKC1LZApdAUfufpZp3Kp9dtHuTCHoc5/xHI/phdZ4LUN2lL+FTa5D0zWWkqTVrzyd3UJEk
	JdE1Qb2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyas-0000000H1HF-03NL;
	Fri, 27 Nov 2026 16:14:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyar-0000000H1H9-1urC
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 16:14:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E24B8452BC;
	Fri, 27 Nov 2026 16:14:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB8A21F000C1;
	Fri, 27 Nov 2026 16:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795796076;
	bh=jrypLR0X0eLwSt5FL6Fsdv4qNePy86+fgdrhz4CbdLU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k9GrE7MGjynZTWoqPJOH1mhcg2vVTwEydcRDGpkLe/iTCppVZkoBlyCFHGClDMbSj
	 G/YKyzWI5fZNlGHqT0tIOL2e94IlBOT8nFDHK+pLlg/Aw1G6D0+lIWofmBk3qmHwdp
	 NsfT5zbJKZVhVVKgcQe30J9o5FNTR8HsyiqEimk0TA3UniqU96n9a2oBWxDyq3cH/I
	 s8obDvdG+xr4RHwB3Pt530KBhUIgOsM5jUopX9IY6VZkQaJ7VnBIXOx9v63Q3GCr78
	 ITQQsXu4G365Bv+cwoSM4ife5NHddXAHRAau0PllvuUwaVrJcE+4Tfs4fxdDUbDFFQ
	 ByXxRl9M4ry2w==
Message-ID: <sashiko-outbox-237853@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v16 14/23] scsi: ufs: mediatek: Use the common PHY
 framework
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261127-mt8196-ufs-v16-14-6f2568f7c119@collabora.com>
References: <20261127-mt8196-ufs-v16-0-6f2568f7c119@collabora.com>
 <20261127-mt8196-ufs-v16-14-6f2568f7c119@collabora.com>
Date: Fri, 27 Nov 2026 16:14:35 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHNjc2k6IHVmczogbWVkaWF0
ZWs6IHByZW1hdHVyZSBwaHlfZXhpdCgpIGFuZCBwb3dlciBsZWFrIGluCiAgdWZzX210a19leGl0
KCkKLS0KCmNvbW1pdCA3ZjE3OGMzZmJlMDkxODJjZjIyNzU2MjY3NGExNmRiYjNkN2I2ZDAxCkF1
dGhvcjogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNv
bT4KCnNjc2k6IHVmczogbWVkaWF0ZWs6IFVzZSB0aGUgY29tbW9uIFBIWSBmcmFtZXdvcmsKClRo
aXMgY29tbWl0IHJlcGxhY2VzIGN1c3RvbSBPRiBwYXJzaW5nIGFuZCBydW50aW1lIFBNIG1hbmFn
ZW1lbnQgb2YgdGhlIFVGUwpQSFkgZGV2aWNlIHdpdGggZGV2bV9waHlfb3B0aW9uYWxfZ2V0KCks
IHBoeV9pbml0KCksIGFuZCBwaHlfZXhpdCgpIGluCnVmc19tdGtfaW5pdCgpIGFuZCB1ZnNfbXRr
X2V4aXQoKS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMg
Yi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4gaW5kZXggMzNlZDVlNmRhYmZlYi4u
OWQ3ZTRiYzk2MjAzYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRl
ay5jCj4gKysrIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwoKWyAuLi4gXQoKPiBA
QCAtMTMzNiw4ICsxMzA4LDE1IEBAIHN0YXRpYyB2b2lkIHVmc19tdGtfZXhpdChzdHJ1Y3QgdWZz
X2hiYSAqaGJhKQo+ICB7Cj4gIAlzdHJ1Y3QgdWZzX210a19ob3N0ICpob3N0ID0gdWZzaGNkX2dl
dF92YXJpYW50KGhiYSk7Cj4gIAo+IC0JaWYgKGhvc3QpCj4gLQkJdWZzX210a19tcGh5X3Bvd2Vy
X29uKGhiYSwgZmFsc2UpOwo+ICsJaWYgKCFob3N0KQo+ICsJCXJldHVybjsKPiArCj4gKwl1ZnNf
bXRrX21waHlfcG93ZXJfb24oaGJhLCBmYWxzZSk7Cj4gKwo+ICsJcGh5X2V4aXQoaG9zdC0+bXBo
eSk7Cj4gKwo+ICsJLyogU2V0IE1QSFkgdG8gbnVsbCBzbyBpdCBpcyBub3QgdXNlZCBhbnltb3Jl
ICovCj4gKwlob3N0LT5tcGh5ID0gTlVMTDsKPiAgfQoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHVm
c19tdGtfZXhpdCgpIGNhbGwgcGh5X2V4aXQoaG9zdC0+bXBoeSkgYW5kIGNsZWFyIGhvc3QtPm1w
aHkgd2hpbGUgYQpzZWNvbmQgcGh5X3Bvd2VyX29uKCkgcmVmZXJlbmNlIGlzIHN0aWxsIGhlbGQ/
Cgp1ZnNfbXRrX2luaXQoKSBjYWxscyBwaHlfcG93ZXJfb24oaG9zdC0+bXBoeSkgdHdpY2U6IGZp
cnN0IGluCnVmc19tdGtfbXBoeV9wb3dlcl9vbihoYmEsIHRydWUpIGFuZCB0aGVuIGluIHVmc19t
dGtfc2V0dXBfY2xvY2tzKGhiYSwKdHJ1ZSwgUE9TVF9DSEFOR0UpIC0+IHVmc19tdGtfcHdyX2N0
cmwoaGJhLCB0cnVlKSwgbGVhdmluZwptcGh5LT5wb3dlcl9jb3VudCBhdCAyLgoKRHVyaW5nIHRl
YXJkb3duLCB1ZnNoY2RfaGJhX2V4aXQoKSB1bmdhdGVzIGNsb2NrcyBpbgp1ZnNoY2RfZXhpdF9j
bGtfZ2F0aW5nKCkgYW5kIGNhbGxzIHVmc2hjZF92b3BzX2V4aXQoKSBiZWZvcmUKdWZzaGNkX3Nl
dHVwX2Nsb2NrcyhoYmEsIGZhbHNlKToKCmRyaXZlcnMvdWZzL2NvcmUvdWZzaGNkLmM6dWZzaGNk
X2hiYV9leGl0KCkgewogICAgLi4uCgkJdWZzaGNkX2V4aXRfY2xrX2dhdGluZyhoYmEpOwoJCWlm
IChoYmEtPmVoX3dxKQoJCQlkZXN0cm95X3dvcmtxdWV1ZShoYmEtPmVoX3dxKTsKCQl1ZnNoY2Rf
dm9wc19leGl0KGhiYSk7CgkJdWZzaGNkX3NldHVwX3ZyZWcoaGJhLCBmYWxzZSk7CgkJdWZzaGNk
X3NldHVwX2Nsb2NrcyhoYmEsIGZhbHNlKTsKICAgIC4uLgp9Cgp1ZnNfbXRrX21waHlfcG93ZXJf
b24oaGJhLCBmYWxzZSkgb25seSBkcm9wcyBtcGh5LT5wb3dlcl9jb3VudCBmcm9tIDIgdG8gMQph
bmQgdHVybnMgb2ZmIHRoZSAwLjlWIHN1cHBseSBiZWZvcmUgcGh5X2V4aXQoKSBydW5zIGFuZCBo
b3N0LT5tcGh5IGlzIHNldAp0byBOVUxMLiAgQmVjYXVzZSBob3N0LT5tcGh5IGlzIGFscmVhZHkg
TlVMTCB3aGVuIHVmc2hjZF9zZXR1cF9jbG9ja3MoaGJhLApmYWxzZSkgcnVucyAoYW5kIHVpY19s
aW5rX3N0YXRlIGlzIHN0aWxsIFVJQ19MSU5LX0FDVElWRV9TVEFURSBkdXJpbmcKdWZzaGNkX3Jl
bW92ZSgpLCBzbyB1ZnNfbXRrX3NldHVwX2Nsb2NrcygpIHNraXBzIHVmc19tdGtfcHdyX2N0cmwo
KQphbnl3YXkpLCB0aGUgc2Vjb25kIHBoeV9wb3dlcl9vZmYoKSBpcyBuZXZlciBjYWxsZWQuICBU
aGlzIGxlYWtzCm1waHktPnBvd2VyX2NvdW50LCB0aGUgUEhZIHJ1bnRpbWUgUE0gcmVmZXJlbmNl
LCBhbmQgdGhlIFBIWSBjbG9ja3MsIGFuZApjYXVzZXMgcGh5X2luaXQoKSB0byB3YXJuIGFuZCBw
aHlfcG93ZXJfb24oKSB0byBza2lwIHBvd2VyaW5nIG9uIHRoZSBQSFkKaWYgdGhlIGRyaXZlciBp
cyByZS1wcm9iZWQuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYxMTI3LW10ODE5Ni11ZnMtdjE2LTAtNmYyNTY4ZjdjMTE5QGNvbGxh
Ym9yYS5jb20/cGFydD0xNAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
