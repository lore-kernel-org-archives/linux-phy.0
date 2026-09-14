Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6C5EC88E74
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 12:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hnKYIVBn53A+JL30eb+C+q8rooAbogma5Q+bOHvGGFo=; b=kOVKTxbQLKwLHV
	+m4baOkB1kVF4Zi/ppgbyytTZwwNAM6ffSZ4Z41pFlwliS6auhdfhrFgWaPp92f3VcV1cHEkkKom2
	4tm0t5VuMEsPiRgOUAfJl4hHc9gsp9eks7vyWWhDhJ0JOBDh5zFHBa/Cfeqw6zb37oPX+FVxJRsho
	11+apTtZG7SrPEMa5YBFEksldrapJfzWasZfxiQsQggw9DvlzjJTxsu9iguQovJUdS1Bse3J+ao5R
	JJTnlAb85w9Jdjx66EreaJKqgsUgB1rxR4eorDY8liPGg7qQDVQvs58yUOM8LLtIAoVr8ysFBiT9s
	zvYh18vc8cZXBcSVxTaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x65ef-00000003Vr7-34bb;
	Mon, 14 Sep 2026 12:19:26 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x65ec-00000003VmN-45E9
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 12:19:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6DE34413D1;
	Mon, 14 Sep 2026 12:19:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3E671F000FF;
	Mon, 14 Sep 2026 12:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789388362;
	bh=di97jBEzaBHuvQ8ntyVXnOUhi1XQP51jT/lsjlP0UQg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QW03ejSpKeWDSuO/bRnDDmPFLDsPbRMJvNlvKfmiEU2qfRSBGTOdZ9ApNi2hMofzQ
	 44lHALmt/ur52x4+JcvFTHW41NcVO7/2ZpKEiJt9gLOdhWUR8e6GeIk/+Yr26KX9sZ
	 RO6t+yrLRsR7gd0R43VROt62SJ1Qpb4qKJAcV/vvtXUh8/W1gyZBxvTDKWEXqlJ0Ln
	 YsD30iJhdt1bBJeYsgT5in/GIR3bGksYYndkzFxZ0byAAIqavwz+SHbBXuAPsi4NhE
	 NhUbh1CMHL/M8qJqZYJwD3ymz2MB708wCtUCd5qJ5TYj2vGLgVurz8aUZHnh97j2pr
	 jvO6QvCPVOYCQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 07/24] scsi: ufs: mediatek: Rework 0.9V regulator
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, robh@kernel.org, linux-scsi@vger.kernel.org
In-Reply-To: <20260914-mt8196-ufs-v12-7-9279d7ef814d@collabora.com>
References: <20260914-mt8196-ufs-v12-0-9279d7ef814d@collabora.com>
 <20260914-mt8196-ufs-v12-7-9279d7ef814d@collabora.com>
Date: Mon, 14 Sep 2026 12:19:21 +0000
Message-Id: <20260914121921.D3E671F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgcmV0dXJuIHZhbHVlIG9mIGBwaHlfcG93ZXJfb24oKWAgaXMgaWdub3JlZCwg
bGVhZGluZyB0byBhbiBpbmNvbnNpc3RlbnQgc3RhdGUgaWYgdGhlIFBIWSBmYWlscyB0byBwb3dl
ciBvbi4KLSBbSGlnaF0gSW5jb21wbGV0ZSBzdGF0ZSB1cGRhdGUgZHVyaW5nIGVycm9yIGhhbmRs
aW5nIGluIGB1ZnNfbXRrX21waHlfcG93ZXJfb24oKWAgd2hlbiBgdWZzX210a18wOXZfb2ZmKClg
IGZhaWxzIGNhdXNlcyBNUEhZIHBvd2VyIHN0YXRlIGRlc3luY2hyb25pemF0aW9uLgotLQoKY29t
bWl0IGNmYjA5MDM5MThlZjEzYTcwNzcxMDk1MTFmYmU3NTQyYjJiNTcyOGYKQXV0aG9yOiBOaWNv
bGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoKc2NzaTog
dWZzOiBtZWRpYXRlazogUmV3b3JrIDAuOVYgcmVndWxhdG9yCgpUaGlzIGNvbW1pdCByZXdvcmtz
IGhvdyB0aGUgbWVkaWF0ZWsgVUZTIGRyaXZlciBoYW5kbGVzIHRoZSAwLjlWIHJlZ3VsYXRvci4K
SXQgdHJhbnNpdGlvbnMgZnJvbSBhIGRvd25zdHJlYW0gdmEwOSBjaGVjayB0byBzdGFuZGFyZCBh
dmRkMDkgc3VwcGx5Cm5hbWluZyBhbmQgc3BsaXRzIHRoZSByZWd1bGF0b3Igb3BlcmF0aW9ucyBp
bnRvIHNlcGFyYXRlIGhlbHBlcnMgaW5zdGVhZCBvZgpoYW5kbGluZyB0aGVtIGRpcmVjdGx5IHdp
dGhpbiB0aGUgcGh5IHBvd2VyLW9uIGZ1bmN0aW9uLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91
ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMK
PiAtLS0gYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4gKysrIGIvZHJpdmVycy91
ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwoKWyAuLi4gXQoKPiBAQCAtNTA4LDQ0ICs1MTAsNzAgQEAg
c3RhdGljIGludCB1ZnNfbXRrX3dhaXRfbGlua19zdGF0ZShzdHJ1Y3QgdWZzX2hiYSAqaGJhLCB1
MzIgc3RhdGUsCgpbIC4uLiBdCgo+ICBzdGF0aWMgaW50IHVmc19tdGtfbXBoeV9wb3dlcl9vbihz
dHJ1Y3QgdWZzX2hiYSAqaGJhLCBib29sIG9uKQo+ICB7Cj4gIAlzdHJ1Y3QgdWZzX210a19ob3N0
ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4gIAlzdHJ1Y3QgcGh5ICptcGh5ID0g
aG9zdC0+bXBoeTsKPiAtCXN0cnVjdCBhcm1fc21jY2NfcmVzIHJlczsKPiAtCWludCByZXQgPSAw
Owo+ICsJaW50IHJldDsKPiAgCj4gLQlpZiAoIW1waHkgfHwgIShvbiBeIGhvc3QtPm1waHlfcG93
ZXJlZF9vbikpCj4gKwlpZiAoIW1waHkgfHwgb24gPT0gaG9zdC0+bXBoeV9wb3dlcmVkX29uKQo+
ICAJCXJldHVybiAwOwo+ICAKPiAgCWlmIChvbikgewo+IC0JCWlmICh1ZnNfbXRrX2lzX3ZhMDlf
c3VwcG9ydGVkKGhiYSkpIHsKPiAtCQkJcmV0ID0gcmVndWxhdG9yX2VuYWJsZShob3N0LT5yZWdf
dmEwOSk7Cj4gLQkJCWlmIChyZXQgPCAwKQo+IC0JCQkJZ290byBvdXQ7Cj4gLQkJCS8qIHdhaXQg
MjAwIHVzIHRvIHN0YWJsaXplIFZBMDkgKi8KPiAtCQkJdXNsZWVwX3JhbmdlKDIwMCwgMjEwKTsK
PiAtCQkJdWZzX210a192YTA5X3B3cl9jdHJsKHJlcywgMSk7Cj4gLQkJfQo+ICsJCXJldCA9IHVm
c19tdGtfMDl2X29uKGhvc3QpOwo+ICsJCWlmIChyZXQpCj4gKwkJCXJldHVybiByZXQ7Cj4gIAkJ
cGh5X3Bvd2VyX29uKG1waHkpOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVnIGlu
dHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IGRvZXMgaWdub3JpbmcgdGhlIHJldHVybgp2YWx1
ZSBvZiBwaHlfcG93ZXJfb24oKSBsZWF2ZSB0aGUgZHJpdmVyIGluIGFuIGluY29uc2lzdGVudCBz
dGF0ZT8KCklmIHBoeV9wb3dlcl9vbigpIGZhaWxzIGR1ZSB0byB1bmRlcmx5aW5nIGNsb2NrIG9y
IGkyYyBjb21tdW5pY2F0aW9uCnRpbWVvdXRzLCB0aGlzIGZ1bmN0aW9uIGlnbm9yZXMgdGhlIGZh
aWx1cmUsIHVuY29uZGl0aW9uYWxseSBzZXRzCmhvc3QtPm1waHlfcG93ZXJlZF9vbiA9IHRydWUs
IGFuZCByZXR1cm5zIHN1Y2Nlc3MuIFRoaXMgbWlnaHQgY2F1c2UgdGhlCmRyaXZlciB0byBwcm9j
ZWVkIGFzIGlmIHRoZSBwaHkgaXMgZnVsbHkgb3BlcmF0aW9uYWwsIGxlYWRpbmcgdG8gaGFyZHdh
cmUKdGltZW91dHMgb3Igc3lzdGVtIGhhbmdzIGR1cmluZyBzdWJzZXF1ZW50IGNvbnRyb2xsZXIg
SS9PIG9wZXJhdGlvbnMuCgo+ICAJfSBlbHNlIHsKPiAgCQlwaHlfcG93ZXJfb2ZmKG1waHkpOwo+
IC0JCWlmICh1ZnNfbXRrX2lzX3ZhMDlfc3VwcG9ydGVkKGhiYSkpIHsKPiAtCQkJdWZzX210a192
YTA5X3B3cl9jdHJsKHJlcywgMCk7Cj4gLQkJCXJldCA9IHJlZ3VsYXRvcl9kaXNhYmxlKGhvc3Qt
PnJlZ192YTA5KTsKPiAtCQl9Cj4gLQl9Cj4gLW91dDoKPiAtCWlmIChyZXQpIHsKPiAtCQlkZXZf
aW5mbyhoYmEtPmRldiwKPiAtCQkJICJmYWlsZWQgdG8gJXMgdmEwOTogJWRcbiIsCj4gLQkJCSBv
biA/ICJlbmFibGUiIDogImRpc2FibGUiLAo+IC0JCQkgcmV0KTsKPiAtCX0gZWxzZSB7Cj4gLQkJ
aG9zdC0+bXBoeV9wb3dlcmVkX29uID0gb247Cj4gKwkJcmV0ID0gdWZzX210a18wOXZfb2ZmKGhv
c3QpOwo+ICsJCWlmIChyZXQpCj4gKwkJCXJldHVybiByZXQ7CgpbU2V2ZXJpdHk6IEhpZ2hdClRo
aXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBkb2VzIHRoaXMgZWFybHkgcmV0dXJuIGNh
dXNlIGEgcGVybWFuZW50CnN0YXRlIGRlc3luY2hyb25pemF0aW9uIHdoZW4gZGlzYWJsaW5nIHRo
ZSByZWd1bGF0b3IgZmFpbHM/CgpJZiB1ZnNfbXRrXzA5dl9vZmYoKSBmYWlscyBkdXJpbmcgYSBw
b3dlci1vZmYgdHJhbnNpdGlvbiwgdGhlIGZ1bmN0aW9uCnJldHVybnMgZWFybHkgYW5kIGJ5cGFz
c2VzIHVwZGF0aW5nIGhvc3QtPm1waHlfcG93ZXJlZF9vbi4gQmVjYXVzZQpwaHlfcG93ZXJfb2Zm
KCkgd2FzIGFscmVhZHkgY2FsbGVkIGFib3ZlLCB0aGUgcGh5c2ljYWwgaGFyZHdhcmUgaXMgcG93
ZXJlZApkb3duLCBidXQgdGhlIHNvZnR3YXJlIHN0YXRlIHN0aWxsIGV2YWx1YXRlcyBob3N0LT5t
cGh5X3Bvd2VyZWRfb24gYXMgdHJ1ZS4KCk9uIGEgc3Vic2VxdWVudCByZXN1bWUgYXR0ZW1wdCwg
dGhlIGRyaXZlciB3b3VsZCBldmFsdWF0ZQpvbiA9PSBob3N0LT5tcGh5X3Bvd2VyZWRfb24gYXMg
dHJ1ZSBhbmQgc2lsZW50bHkgc2tpcCBwb3dlcmluZyB0aGUgcGh5IGJhY2sKb24sIHdoaWNoIGNv
dWxkIHJlc3VsdCBpbiBhIGRlYWQgc3RvcmFnZSBjb250cm9sbGVyLgoKPiAgCX0KPiAgCj4gLQly
ZXR1cm4gcmV0Owo+ICsJaG9zdC0+bXBoeV9wb3dlcmVkX29uID0gb247Cj4gKwo+ICsJcmV0dXJu
IDA7Cj4gIH0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjA5MTQtbXQ4MTk2LXVmcy12MTItMC05Mjc5ZDdlZjgxNGRAY29sbGFib3Jh
LmNvbT9wYXJ0PTcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
