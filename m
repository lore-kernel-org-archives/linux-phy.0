Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C59606A329
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 14:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GAnateOf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=FjS724oK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=G54f6+XLAOoBeL1UjLssZPruVKLcbdJGbtzpLya3edw=; b=GAnateOfDoYeAj1DtOdsKNbme9
	p8jQqmIYXuq41sVOYiley0hmHc8OlEJtEPqSy3tOHyIHoQJIP/8S1Hwc/22gSlJpDPdYfahmwlHlN
	2lLCWH/dm0YWPJpeR8l8BjxvXRLLwb5eIfBl63g4IzcKZKRe9krSGFaabA7nDWzOK+wVkW3TCfZqL
	ku4lHIJ/GNzf92Qio17AKdwV0OdQA8nBnlfI+oz4FqYTpf9lNSy32+h2Eng4nzxOfZ8AAZQuC0MeS
	A76lpcIPKREvUQpIt/hg3Rqy5XdzDn0+2JM14CVOIWKaOhQfhIBpW/g0e7kaes3LUWOq71DDZd2rX
	5YNQ7BOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtA7-0000000GqzQ-1wNf;
	Mon, 02 Nov 2026 14:37:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtA6-0000000Gqyk-1Tkh
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 14:37:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5D9196022A;
	Mon,  2 Nov 2026 14:37:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFEB71F00A17;
	Mon,  2 Nov 2026 14:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793630245;
	bh=UKt7oqsUaqpl1AUC4pC5ObzYOEU/m0gZbkDJVPPTcvQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FjS724oKVn4XkIkSNXDMzhB1cXJdymDbXmbLnaow0DjoMhjMbz143eLQuHUx09+W1
	 YY3ewqORav2n4Wd4C3f9FsyxWwNrxvRPoQ4uKh/Y/iCbnfo53ChjhbJN7REvgENXqB
	 hNGV6Gc6dYZPTWaivqyaBpd8DU4gcHWDElfgf3pW8qa+JI7na/+ZivMF5xzErTQ/VM
	 +DJJXCR4iQgLI5ofe5as2y+pAz2OthdMbznrAYu57OsPp4xzmtXj3hr2ncmbWkQ5ZE
	 Uyo05EPSmp7pjiznsijItwNklOlJ7NcPGUXgxTuoVbVzrrfRq0GtYMs0BZatpOLiQ5
	 6AekVTujoxxpw==
Message-ID: <sashiko-outbox-193588@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] phy: qcom: qmp-combo: Make v4/v5 targets use the
 right clamp
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261102-topic-qmp_aon_clamp-v1-2-141c2cb6cdf6@oss.qualcomm.com>
References: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
 <20261102-topic-qmp_aon_clamp-v1-2-141c2cb6cdf6@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 14:37:24 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGh5OiBxY29tOiBxbXAt
Y29tYm86IGRlYWQgUVBIWV9QQ1NfTUlTQ19DTEFNUF9FTkFCTEUgZW50cnkgaW4gdjUgbGF5b3V0
Ci0tCgpjb21taXQgNTg1NGU2MWVkNmE1NWIwYmIxODZjYmUxYTVkNzI2Nzg3NmFjYjJjOQpBdXRo
b3I6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5keWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4KCnBoeTog
cWNvbTogcW1wLWNvbWJvOiBNYWtlIHY0L3Y1IHRhcmdldHMgdXNlIHRoZSByaWdodCBjbGFtcAoK
VGhpcyBjb21taXQgdXBkYXRlcyBRTVAgdjQgYW5kIHY1IGNvbWJvIFBIWSByZWdpc3RlciBsYXlv
dXRzIGFuZCBhdXRvbm9tb3VzCm1vZGUgaGVscGVycyB0byB1c2UgdGhlIFBDUyBjbGFtcCByZWdp
c3RlciBpbnN0ZWFkIG9mIHRoZSBQQ1NfTUlTQyBjbGFtcApyZWdpc3Rlci4KCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jIGIvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPiBpbmRleCA1YTRlMTI2OThkNTE2Li5m
ZjhjYzI2NjY3Y2RjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC1jb21iby5jCj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNv
bWJvLmMKPiBAQCAtMTU5LDcgKzE1OSw3IEBAIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgcW1w
X3Y0NV91c2IzcGh5X3JlZ3NfbGF5b3V0W1FQSFlfTEFZT1VUX1NJWkVdID0gewo+ICAJW1FQSFlf
UENTX0FVVE9OT01PVVNfTU9ERV9DVFJMXQk9IFFQSFlfVjRfUENTX1VTQjNfQVVUT05PTU9VU19N
T0RFX0NUUkwsCj4gIAlbUVBIWV9QQ1NfTEZQU19SWFRFUk1fSVJRX0NMRUFSXSA9IFFQSFlfVjRf
UENTX1VTQjNfTEZQU19SWFRFUk1fSVJRX0NMRUFSLAo+ICAKPiAtCVtRUEhZX1BDU19NSVNDX0NM
QU1QX0VOQUJMRV0JPSBRUEhZX1Y0X1BDU19NSVNDX0NMQU1QX0VOQUJMRSwKPiArCVtRUEhZX1BD
U19DTEFNUF9FTkFCTEVdCQk9IFFQSFlfVjRfUENTX0NMQU1QX0VOQUJMRSwKPiAgCj4gIAlbUVBI
WV9DT01fUkVTRVRTTV9DTlRSTF0JPSBRU0VSREVTX1Y0X0NPTV9SRVNFVFNNX0NOVFJMLAo+ICAJ
W1FQSFlfQ09NX0NfUkVBRFlfU1RBVFVTXQk9IFFTRVJERVNfVjRfQ09NX0NfUkVBRFlfU1RBVFVT
LAo+IEBAIC0xODYsNiArMTg2LDcgQEAgc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBxbXBfdjVf
NW5tX3VzYjNwaHlfcmVnc19sYXlvdXRbUVBIWV9MQVlPVVRfU0laRV0gPSB7Cj4gIAlbUVBIWV9Q
Q1NfQVVUT05PTU9VU19NT0RFX0NUUkxdCT0gUVBIWV9WNV9QQ1NfVVNCM19BVVRPTk9NT1VTX01P
REVfQ1RSTCwKPiAgCVtRUEhZX1BDU19MRlBTX1JYVEVSTV9JUlFfQ0xFQVJdID0gUVBIWV9WNV9Q
Q1NfVVNCM19MRlBTX1JYVEVSTV9JUlFfQ0xFQVIsCj4gIAo+ICsJW1FQSFlfUENTX0NMQU1QX0VO
QUJMRV0JCT0gUVBIWV9WNV9QQ1NfQ0xBTVBfRU5BQkxFLAo+ICAJW1FQSFlfUENTX01JU0NfQ0xB
TVBfRU5BQkxFXQk9IFFQSFlfVjVfUENTX01JU0NfQ0xBTVBfRU5BQkxFLAoKW1NldmVyaXR5OiBM
b3ddClRoaXMgaXNuJ3QgYSBidWcsIGJ1dCBzaG91bGQgUVBIWV9QQ1NfTUlTQ19DTEFNUF9FTkFC
TEUgYWxzbyBiZSByZW1vdmVkIGZyb20KcW1wX3Y1XzVubV91c2IzcGh5X3JlZ3NfbGF5b3V0IGhl
cmUsIG1hdGNoaW5nIHFtcF92NDVfdXNiM3BoeV9yZWdzX2xheW91dD8KCkluIHFtcF9jb21ib19l
bmFibGVfYXV0b25vbW91c19tb2RlKCkgYW5kIHFtcF9jb21ib19kaXNhYmxlX2F1dG9ub21vdXNf
bW9kZSgpLAp0aGUgbmV3IGNmZy0+cmVnc1tRUEhZX1BDU19DTEFNUF9FTkFCTEVdIGJyYW5jaCBp
cyBjaGVja2VkIGJlZm9yZSB0aGUKcGNzX21pc2MgZmFsbGJhY2s6CgoJfSBlbHNlIGlmIChjZmct
PnJlZ3NbUVBIWV9QQ1NfQ0xBTVBfRU5BQkxFXSkgewoJCXFwaHlfY2xyYml0cyhxbXAtPnBjcywg
Y2ZnLT5yZWdzW1FQSFlfUENTX0NMQU1QX0VOQUJMRV0sIENMQU1QX0VOKTsKCX0gZWxzZSBpZiAo
cGNzX21pc2MpIHsKCQlxcGh5X2NscmJpdHMocGNzX21pc2MsIGNmZy0+cmVnc1tRUEhZX1BDU19N
SVNDX0NMQU1QX0VOQUJMRV0sIENMQU1QX0VOKTsKCX0KClNpbmNlIFFQSFlfVjVfUENTX0NMQU1Q
X0VOQUJMRSBpcyBub24temVybyAoMHgwOGMpLCB0aGUgcGNzX21pc2MgYnJhbmNoIHVzaW5nClFQ
SFlfUENTX01JU0NfQ0xBTVBfRU5BQkxFIGlzIG5vIGxvbmdlciByZWFjaGFibGUgZm9yIHRoaXMg
bGF5b3V0LiBEcm9wcGluZwp0aGF0IGVudHJ5IHdvdWxkIGFsc28gYWxsb3cgcmVtb3ZpbmcgdGhl
IG5vdy11bnVzZWQgcGh5LXFjb20tcW1wLXBjcy1taXNjLXY0LmgKYW5kIHBoeS1xY29tLXFtcC1w
Y3MtbWlzYy12NS5oIGluY2x1ZGVzIGZyb20gcGh5LXFjb20tcW1wLWNvbWJvLmMuCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTAy
LXRvcGljLXFtcF9hb25fY2xhbXAtdjEtMC0xNDFjMmNiNmNkZjZAb3NzLnF1YWxjb21tLmNvbT9w
YXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
