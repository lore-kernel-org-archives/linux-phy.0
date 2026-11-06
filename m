Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE43606A32C
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 10:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KLRKyNXE;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=kkxdlxQb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6E5CYqlFUz2yzS8+o40v1LY4J8rwCglAZvRD7je7rw8=; b=KLRKyNXEPdXqT/RjAVmJ8dVxC2
	muWjXi593szwSnWPIza72+vzYABvdS//2oBbCoV2wX9BAeEZHzyFIG9OULlkb8gMKMxv3nT7Z7rht
	Hb1RL38W9JUXX+yA+1oq3p0r/hHNYlTLEaIt8nNQHy/O/1419/5z6lOKIv6DCtIw1lTg9cAe3NCCZ
	vXVAYk7czGr0zFPYWNt9qMJxs7j43ucfiJ47hYjmlsX6D/gtutdKZx7RB1j2sqzN7e+bdXWFdDe3v
	zimPT+HIjzIIrIaC2etnKRJSVm60uQXoiH2FfC4n9jJPMdlggBPjJgBJeuglFzwqUQVGOSss46vog
	9Zcl/ndA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGnp-0000000BqED-2IaO;
	Fri, 06 Nov 2026 10:04:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGno-0000000BqDL-07yF
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 10:04:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8D8B942223;
	Fri,  6 Nov 2026 10:04:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E00A51F008A3;
	Fri,  6 Nov 2026 10:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793959447;
	bh=dgrHCuDJnbtPR7u+3NWd60PWg1h/9OvoC3YLPNhdMoI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kkxdlxQbTEqcGLzcidDZF0+I7GkyRxa/iObrhwLPl+BTpsjPOyMapF4t5BghYMtuL
	 qHL2tbL0UvrtovSKpLbLY+PfVWgC8MM5nM+jpx6X4A0XlRWVnEyq3Nmdy2rXBMvHc7
	 0FMPFp1W6djUzyBkwPyPb5Q58WQqRK+2YgbBRpjs5y8pDyW5iE7WAJDI24VuDVS47j
	 gseHJvRWOdfPbvu0tjOTuRRmHYsBd3+SNfFgJrzwWO9e1jDkB19UpgzUrkhCgoajm8
	 jQu3SXEKYJgZAXPJTU/EoWbcqBMBMW3mqQaRyt9xH4wKhFDmoFv0QrM9uJbPta5Uxg
	 fDqk2gU5mlA+w==
Message-ID: <sashiko-outbox-201169@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 20/25] mmc: sdhci-of-dwcmshc: add MT2824 support
To: =?utf-8?b?QmVub8OudCBNb25pbg==?= <benoit.monin@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, linux-watchdog@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261106-mt2824-v1-20-86087eaf5af4@bootlin.com>
References: <20261106-mt2824-v1-0-86087eaf5af4@bootlin.com>
 <20261106-mt2824-v1-20-86087eaf5af4@bootlin.com>
Date: Fri, 06 Nov 2026 10:04:06 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gbW1jOiBzZGhjaS1vZi1k
d2Ntc2hjOiBtaXNzZWQgcmVzZXQgaW4KICBtdDI4MjRfc2V0X3Voc19zaWduYWxpbmcoKQotLQoK
Y29tbWl0IGY2ZjlhNzgwMmMyODU3ZTNkM2U4NDdjNmEyYjczMzljYmMzNTdhMDgKQXV0aG9yOiBC
ZW5vw650IE1vbmluIDxiZW5vaXQubW9uaW5AYm9vdGxpbi5jb20+CgptbWM6IHNkaGNpLW9mLWR3
Y21zaGM6IGFkZCBNVDI4MjQgc3VwcG9ydAoKVGhpcyBjb21taXQgYWRkcyBzdXBwb3J0IGZvciB0
aGUgU3lub3BzeXMgRFdDIE1TSEMgY29udHJvbGxlciBhbmQgUEhZIG9uCnRoZSBNZXRhbm9pYSBN
VDI4MjQgU29DLCBpbmNsdWRpbmcgY2FyZCB0eXBlIHByb2JpbmcsIHZvbHRhZ2Ugc3dpdGNoaW5n
LAphbmQgd29ya2Fyb3VuZHMgZm9yIEhPU1RfQ09OVFJPTDIgd3JpdGVzIGFuZCBjbG9jayBzdGFi
aWxpemF0aW9uLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Nt
c2hjLmMgYi9kcml2ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3Y21zaGMuYwo+IGluZGV4IDA5NzAy
MDIyZTcwODcuLmNiMjQ4ZmM1NzJlMjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tbWMvaG9zdC9z
ZGhjaS1vZi1kd2Ntc2hjLmMKPiArKysgYi9kcml2ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3Y21z
aGMuYwpbIC4uLiBdCj4gQEAgLTIxMDgsNiArMjEyMiw0NzAgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBzZGhjaV9vcHMgc2RoY2lfZHdjbXNoY19rMjMwX29wcyA9IHsKWyAuLi4gXQo+ICsvKgo+ICsg
KiBBIHRpbWluZyBjaGFuZ2UgbXVzdCB3cml0ZSB0aGUgbmV3IGJ1cyBzcGVlZCBtb2RlIHRvIEhP
U1RfQ09OVFJPTDIuCj4gKyAqIFJlc2V0IHRoZSBDTUQgYW5kIERBVEEgbGluZXMgYWZ0ZXIgdGhl
IHdyaXRlLCB3aGlsZSB0aGUgY2FyZCBjbG9jayBpcwo+ICsgKiBvZmYsIHNvIHRoYXQgdGhlIG5l
eHQgY29tbWFuZCBnZXRzIGEgZ29vZCByZXNwb25zZS4KPiArICovCj4gK3N0YXRpYyB2b2lkIG10
MjgyNF9zZXRfdWhzX3NpZ25hbGluZyhzdHJ1Y3Qgc2RoY2lfaG9zdCAqaG9zdCwKPiArCQkJCSAg
ICAgdW5zaWduZWQgaW50IHRpbWluZykKPiArewo+ICsJc3RydWN0IHNkaGNpX3BsdGZtX2hvc3Qg
KnBsdGZtX2hvc3QgPSBzZGhjaV9wcml2KGhvc3QpOwo+ICsJc3RydWN0IGR3Y21zaGNfcHJpdiAq
ZHdjX3ByaXYgPSBzZGhjaV9wbHRmbV9wcml2KHBsdGZtX2hvc3QpOwo+ICsJdTMyIHJlZyA9IGR3
Y19wcml2LT52ZW5kb3Jfc3BlY2lmaWNfYXJlYTEgKyBEV0NNU0hDX0hPU1RfQ1RSTDM7Cj4gKwl1
MTYgY3RybDIgPSBzZGhjaV9yZWFkdyhob3N0LCBTREhDSV9IT1NUX0NPTlRST0wyKTsKPiArCXU4
IGN0cmw7Cj4gKwo+ICsJY3RybCA9IHNkaGNpX3JlYWRiKGhvc3QsIHJlZyk7Cj4gKwljdHJsICY9
IH5NVDI4MjRfSE9TVF9DVFJMM19ORUdFREdFX0RBVEFPVVQ7Cj4gKwlpZiAodGltaW5nID09IE1N
Q19USU1JTkdfTU1DX0REUjUyIHx8Cj4gKwkgICAgdGltaW5nID09IE1NQ19USU1JTkdfVUhTX0RE
UjUwKQo+ICsJCWN0cmwgfD0gTVQyODI0X0hPU1RfQ1RSTDNfTkVHRURHRV9EQVRBT1VUOwo+ICsJ
c2RoY2lfd3JpdGViKGhvc3QsIGN0cmwsIHJlZyk7Cj4gKwo+ICsJZHdjbXNoY19zZXRfdWhzX3Np
Z25hbGluZyhob3N0LCB0aW1pbmcpOwo+ICsJaWYgKHNkaGNpX3JlYWR3KGhvc3QsIFNESENJX0hP
U1RfQ09OVFJPTDIpICE9IGN0cmwyKQo+ICsJCWR3Y21zaGNfcmVzZXQoaG9zdCwgU0RIQ0lfUkVT
RVRfQ01EIHwgU0RIQ0lfUkVTRVRfREFUQSk7Cj4gK30KCltTZXZlcml0eTogTWVkaXVtXQpDYW4g
YSBkcml2ZXIgc3RyZW5ndGggY2hhbmdlIHdyaXRlIHRvIHRoZSBsb3cgYnl0ZSBvZiBTREhDSV9I
T1NUX0NPTlRST0wyCndpdGhvdXQgdHJpZ2dlcmluZyB0aGUgQ01EIGFuZCBEQVRBIGxpbmUgcmVz
ZXQgaGVyZT8KCkluIHNkaGNpX3NldF9pb3MoKSwgdGhlIHVwZGF0ZWQgZHJpdmVyIHR5cGUgYml0
cyAoU0RIQ0lfQ1RSTF9EUlZfVFlQRV9NQVNLLAppbiB0aGUgbG93IGJ5dGUgb2YgU0RIQ0lfSE9T
VF9DT05UUk9MMikgYXJlIHdyaXR0ZW4gYmVmb3JlCnNldF91aHNfc2lnbmFsaW5nKCkgaXMgY2Fs
bGVkOgoKZHJpdmVycy9tbWMvaG9zdC9zZGhjaS5jOnNkaGNpX3NldF9pb3MoKSB7CiAgICAuLi4K
CQkJc2RoY2lfd3JpdGV3KGhvc3QsIGN0cmxfMiwgU0RIQ0lfSE9TVF9DT05UUk9MMik7CgkJCWhv
c3QtPmRydl90eXBlID0gaW9zLT5kcnZfdHlwZTsKCQl9CgoJCWhvc3QtPm9wcy0+c2V0X3Voc19z
aWduYWxpbmcoaG9zdCwgaW9zLT50aW1pbmcpOwogICAgLi4uCn0KCkJlY2F1c2UgbXQyODI0X3Nl
dF91aHNfc2lnbmFsaW5nKCkgc2FtcGxlcyBjdHJsMiBhZnRlciB0aGF0IHdyaXRlIGhhcwphbHJl
YWR5IGhhcHBlbmVkLCBjaGFuZ2luZyBpb3MtPmRydl90eXBlIHZpYSBtbWNfc2V0X2RyaXZlcl90
eXBlKCkgd2hpbGUKaW9zLT50aW1pbmcgaXMgdW5jaGFuZ2VkIGxlYXZlcyBTREhDSV9IT1NUX0NP
TlRST0wyIGVxdWFsIHRvIGN0cmwyIGFjcm9zcwpkd2Ntc2hjX3NldF91aHNfc2lnbmFsaW5nKCku
IFRoZSByZXNldCBpcyB0aGVuIHNraXBwZWQgYW5kIHRoZSBuZXh0CmNvbW1hbmQgKHN1Y2ggYXMg
Q01ENiBkdXJpbmcgSFMyMDAgb3IgVUhTLUkgaW5pdGlhbGl6YXRpb24pIGdldHMgYSBicm9rZW4K
cmVzcG9uc2UuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYxMTA2LW10MjgyNC12MS0wLTg2MDg3ZWFmNWFmNEBib290bGluLmNvbT9w
YXJ0PTIwCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
