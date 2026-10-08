Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E54C9CA600B
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 07:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tixjPk863VOBIbUMLiH9FmUgZ6YKLQ0neQrqpR/6VKg=; b=ayDiOLGGiacTDw
	6a9Ps0ajONP5244cqT0hu3MInL2TaV2zhQmVdpnJMOyK2QFmy5hOCx5m3N1IPXtUlo7Ss4Ukr0Tgq
	VapY/Uh6fpD98lG37iKT0pLZMpS/cT2yZMYSafDdeuYNr5N1+iDXNpEvYaKwpxT2/2ZN7sSN4ob5L
	l4rJrglxZQLJdalfU0dfKabFVOED3UfWMo2CisGfH0lOwm8QDJUti/FaKiB7+h1gbnlEJeVmoTW16
	g72eiyxPh0YYQCPIMWY//VI4P7emmxFBOUyeV6p8Jyl2uYr75OTosIQW9RzF1xCwZBn8bfxsk7Tv9
	2qxTzpTFD+ppnNPuBDVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEii7-00000003m8A-24gB;
	Thu, 08 Oct 2026 07:38:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEii6-00000003m7c-0mLh
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 07:38:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8CEEB40510;
	Thu,  8 Oct 2026 07:38:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECAB11F000FF;
	Thu,  8 Oct 2026 07:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791445117;
	bh=fD5/VzPOP285tieFjJYzmjPCcIpVKLL0xt86IeL/mic=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ioZJo469BuFcNtLdK0rPqLD7dzSO/3TIgGQb7q2wxp+bPMqvE3GoOrFb1yW9eegCR
	 VrpSuJ923URVcx8A8eVvU1I5soMbUEdC1VNwBMunJu02XOJCm80LOj/QRvScirAG+P
	 TZpzgihG2sCEx5PdJnYpfkujuxHvK6pzWQAspV1YZrwQ/O0TGsyjobqoLSjHjPZVKp
	 MVuGn01KpjZCYPVuk+CCNmlexBJSE4dlm0kdi9Q4/NBdv0C4wKyww2CRBrNPQ5j+II
	 dIOcR2PPlNQJw3k+SaxlCmi3b9ruTe9HsVeqNqbOFpEkskhdcxwnvtPATvL0tQOPyC
	 g2NY1tihtfGlg==
Message-ID: <sashiko-outbox-163772@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v19 10/12] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, vkoul@kernel.org, media-ci@linuxtv.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20261008-kaanapali-camss-v19-10-b2c583ef50e0@oss.qualcomm.com>
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
 <20261008-kaanapali-camss-v19-10-b2c583ef50e0@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 07:38:36 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGR0czogbWlzc2luZyBT
b0MtaW50ZXJuYWwgT0YgZ3JhcGggbGlua3MgYmV0d2VlbiBjYW1zcyBhbmQgc3RhbmRhbG9uZSBj
c2lwaHkgbm9kZXMKLS0KCmNvbW1pdCBhNjM2ODViMDc3ZTgwZmNiYjYxZDU4YjA0ZDQzN2FkZGVi
Mjc3YTkzCkF1dGhvcjogSGFuZ3hpYW5nIE1hIDxoYW5neGlhbmcubWFAb3NzLnF1YWxjb21tLmNv
bT4KCmFybTY0OiBkdHM6IHFjb206IGthYW5hcGFsaTogQWRkIENBTVNTIGFuZCBDU0lQSFkgYmxv
Y2sgZGVmaW5pdGlvbnMKClRoaXMgY29tbWl0IGRlc2NyaWJlcyB0aGUgQ0FNU1MgYW5kIENTSVBI
WSBibG9ja3Mgb24gdGhlIEthYW5hcGFsaSBTb0MuCkl0IGFkZHMgNiBDU0lQSFlzLCAzIFRQR3Ms
IDMgQ1NJRHMsIDIgQ1NJRCBMaXRlcywgMyBWRkVzLCBhbmQgMiBWRkUgTGl0ZXMKdG8gZW5hYmxl
IGNhbWVyYSBwaXBlbGluZXMgb24gYm9hcmQgZGV2aWNlIHRyZWVzLgoKPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL2thYW5hcGFsaS5kdHNpIGIvYXJjaC9hcm02NC9ib290
L2R0cy9xY29tL2thYW5hcGFsaS5kdHNpCj4gaW5kZXggZTQ4YTE3OWQwNzIyMC4uN2U1MTA2ODY1
ZTdlZSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0
c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20va2FhbmFwYWxpLmR0c2kKClsgLi4u
IF0KCj4gQEAgLTM1OTcsNiArMzU5OCwzMDcgQEAgdXNiX2RwX3FtcHBoeV9kcF9pbjogZW5kcG9p
bnQgewo+ICAJCQl9Owo+ICAJCX07Cj4gIAo+ICsJCWNhbXNzOiBpc3BAOTI1MzAwMCB7Cj4gKwkJ
CWNvbXBhdGlibGUgPSAicWNvbSxrYWFuYXBhbGktY2Ftc3MiOwoKWyAuLi4gXQoKPiArCQkJc3Rh
dHVzID0gImRpc2FibGVkIjsKPiArCj4gKwkJCXBvcnRzIHsKPiArCQkJCSNhZGRyZXNzLWNlbGxz
ID0gPDE+Owo+ICsJCQkJI3NpemUtY2VsbHMgPSA8MD47Cj4gKwo+ICsJCQkJcG9ydEAwIHsKPiAr
CQkJCQlyZWcgPSA8MD47Cj4gKwkJCQl9Owo+ICsKPiArCQkJCXBvcnRAMSB7Cj4gKwkJCQkJcmVn
ID0gPDE+Owo+ICsJCQkJfTsKCltTZXZlcml0eTogSGlnaF0KV2lsbCB0aGUgQ0FNU1MgZHJpdmVy
IGJlIGFibGUgdG8gZmluZCB0aGUgQ1NJUEhZIGRldmljZXMgd2l0aCB0aGVzZSBlbXB0eQpwb3J0
IGRlZmluaXRpb25zPwoKVGhlIENBTVNTIGRyaXZlciAobXNtX2NzaXBoeV9zdWJkZXZfaW5pdCBp
biBjYW1zcy1jc2lwaHkuYykgZGlzY292ZXJzIGl0cwpQSFlzIGJ5IHRyYXZlcnNpbmcgdGhlIE9G
IGdyYXBoIHVzaW5nIG9mX2dyYXBoX2dldF9lbmRwb2ludF9ieV9yZWdzIG9uIHRoZQpjYW1zcyBu
b2RlJ3MgcG9ydHMsIGZvbGxvd2luZyBpdCB0byB0aGUgcmVtb3RlIGVuZHBvaW50J3MgcGFyZW50
LCBhbmQgY2FsbGluZwpkZXZtX3BoeV9nZXRfYnlfb2Zfbm9kZS4KCkJlY2F1c2UgdGhlc2UgcG9y
dHMgbGFjayBlbmRwb2ludCBkZWZpbml0aW9ucyBsaW5raW5nIGJhY2sgdG8gdGhlIENTSVBIWQpv
dXRwdXRzLCB0aGUgbG9va3VwIHdpbGwgcmV0dXJuIE5VTEwgYW5kIHNpbGVudGx5IHNraXAgUEhZ
IGluaXRpYWxpemF0aW9uLgpUaGlzIGxlYXZlcyB0aGUgcGh5IHVuaW5pdGlhbGl6ZWQgYW5kIHBy
ZXZlbnRzIHRoZSBQSFlzIGZyb20gcG93ZXJpbmcgb24KZHVyaW5nIHN0cmVhbWluZy4KClsgLi4u
IF0KCj4gKwkJCX07Cj4gKwkJfTsKPiArCj4gKwkJY3NpcGh5MDogcGh5QDk1MjMwMDAgewo+ICsJ
CQljb21wYXRpYmxlID0gInFjb20sa2FhbmFwYWxpLWNzaTItcGh5IjsKPiArCQkJcmVnID0gPDB4
MCAweDA5NTIzMDAwIDB4MCAweDIwMDA+Owo+ICsKPiArCQkJY2xvY2tzID0gPCZjYW1jYyBDQU1f
Q0NfQ1NJUEhZMF9DTEs+LAoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgc3RhbmRhbG9uZSBj
c2lwaHkwIG5vZGUgYWxzbyBuZWVkIGEgcG9ydHMgc3RydWN0dXJlIHRvIGRlZmluZSBpdHMKQ0FN
U1Mgb3V0cHV0IGVuZHBvaW50PwoKV2l0aG91dCBhIHBvcnRzIGRlZmluaXRpb24gaW4gdGhlIGNz
aXBoeSBub2RlcywgdGhlIE9GIGdyYXBoIHRyYXZlcnNhbCBmcm9tCnRoZSBjYW1zcyBub2RlIGNh
bm5vdCByZXNvbHZlIHRoZSByZW1vdGUgZW5kcG9pbnQsIGJyZWFraW5nIHRoZSBpbnRlcm5hbApT
b0Mgcm91dGluZyByZXF1aXJlZCB0byBpbml0aWFsaXplIHRoZSBQSFlzLgoKU2luY2UgdGhlc2Ug
YXJlIGhhcmR3aXJlZCBTb0MtaW50ZXJuYWwgY29ubmVjdGlvbnMgYmV0d2VlbiB0aGUgUEhZIG91
dHB1dAphbmQgdGhlIENBTVNTIGlucHV0LCBzaG91bGRuJ3QgdGhleSBiZSBkZWZpbmVkIGhlcmUg
aW4gdGhlIC5kdHNpIHJhdGhlcgp0aGFuIGZvcmNpbmcgZG93bnN0cmVhbSBib2FyZCAuZHRzIGZp
bGVzIHRvIG1hbnVhbGx5IGNvbnN0cnVjdCB0aGUgaW50ZXJuYWwKU29DIHJvdXRpbmc/CgpbIC4u
LiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYxMDA4LWthYW5hcGFsaS1jYW1zcy12MTktMC1iMmM1ODNlZjUwZTBAb3NzLnF1YWxj
b21tLmNvbT9wYXJ0PTEwCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
