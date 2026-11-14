Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC4C606A32D
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Aq97cPu1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=oGe5G61S
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Xj5QqpO5YvalzQ9mlLsDU1blQsMV6O55qG6xqyEakHk=; b=Aq97cPu1+LzE4csqpUlhUdT1vC
	1aqeS3jeb64udfJT7589GexQIjSvC6CGLaLuJc8lhzRaoI3MTnJX72H0ZoW/0rjrwbOtblekttRHU
	AJVO98wPxFBXmgAyuVlB2C/vrhGNTna4GYEJ0IY3PEJbmEKCCa/ORgApI/f+n5ny/39dMly5FuGMI
	gWkgTFp7C4yOEd1kI5tzeakr5b012l0Wn5sA3QpwWqGDjcegrhl/nafGhRrdxi6SScNds5yZ6OSwF
	BtViYwlSO8+Q6cJumDcbPCo/jcUoj5WFeyQtmO8lptDW5iQwyLBOe4o9pmzzyS6OBHwajRiAeTXrV
	zD1rQv5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSCA8-0000000Fut8-1J7u;
	Sat, 14 Nov 2026 11:43:16 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSCA6-0000000Fusx-1tFC
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:43:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AA608601F5;
	Sat, 14 Nov 2026 11:43:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E23B01F000C4;
	Sat, 14 Nov 2026 11:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794656593;
	bh=KDVvlmbhZZ5Xe9yM/HY/pX+dlZaAbTCHdKWFCZxTDCg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oGe5G61SsgmZ7VpCOTxR4LE6DXFG4hU1hmAuHzwQ5eSWhcDLFe5Uz7S0uRhtI7uGE
	 Ud4y46Rttdvr6MuinNMK6UVh+LCm6nVcUG0wBwzxsgZZdl8PJ/PirU3lZXTs8pPx0u
	 iuwRGm1jCIMRgs0Opj03cciD1zfVUhDGINXTwgDuO1/EDBRZp+jPDBj6Oy0RK5XLXT
	 GjRrGafv2Zl7mHqD5F7tg46iWn0+7NfGK8HQUKBsRkiJoHJSVGWibRn1HdcNjT3VNB
	 hZQBV5F9LSydYIr8+qKBEnmr+xiphONm6rKZww/dqfzJb/iEZoHOSfVoUS+h30IRZA
	 1830iPCNQ4Z7g==
Message-ID: <sashiko-outbox-214428@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 04/23] dt-bindings: media: qcom,eliza-camss: Add
 Eliza CAMSS
To: "Wenmeng Liu" <wenmeng.liu@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-4-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-4-8ff2a11835f6@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 11:43:12 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IG1lZGlh
OiBxY29tLGVsaXphLWNhbXNzOiBpbnZhbGlkIDAtYmFzZWQgZGF0YS1sYW5lcwogIGluIGV4YW1w
bGUKLS0KCmNvbW1pdCBiY2UwMTMzZGU5M2I4N2Q1ZTllMDAyZDQ3ZTk0ZjIzOTVkOTdiMTVmCkF1
dGhvcjogV2VubWVuZyBMaXUgPHdlbm1lbmcubGl1QG9zcy5xdWFsY29tbS5jb20+CgpkdC1iaW5k
aW5nczogbWVkaWE6IHFjb20sZWxpemEtY2Ftc3M6IEFkZCBFbGl6YSBDQU1TUwoKVGhpcyBjb21t
aXQgYWRkcyB0aGUgRGV2aWNlIFRyZWUgYmluZGluZyBzY2hlbWEgYW5kIGV4YW1wbGUgZm9yIHRo
ZSBDYW1lcmEKU3Vic3lzdGVtIChDQU1TUykgb24gdGhlIFF1YWxjb21tIEVsaXphIHBsYXRmb3Jt
LgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlh
L3Fjb20sZWxpemEtY2Ftc3MueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tZWRpYS9xY29tLGVsaXphLWNhbXNzLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGlu
ZGV4IDAwMDAwMDAwMDAwMDAuLjg3NzVlYzZhMmY2OWIKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3Fjb20sZWxpemEtY2Ftc3Mu
eWFtbAo+IEBAIC0wLDAgKzEsMjgyIEBAClsgLi4uIF0KPiArICAgICAgICBwcm9wZXJ0aWVzOgo+
ICsgICAgICAgICAgZW5kcG9pbnQ6Cj4gKyAgICAgICAgICAgICRyZWY6IHZpZGVvLWludGVyZmFj
ZXMueWFtbCMKPiArICAgICAgICAgICAgdW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQo+ICsK
PiArICAgICAgICAgICAgcHJvcGVydGllczoKPiArICAgICAgICAgICAgICBkYXRhLWxhbmVzOgo+
ICsgICAgICAgICAgICAgICAgbWluSXRlbXM6IDEKPiArICAgICAgICAgICAgICAgIG1heEl0ZW1z
OiA0ClsgLi4uIF0KPiArICAgICAgICAgICAgcG9ydHMgewo+ICsgICAgICAgICAgICAgICAgI2Fk
ZHJlc3MtY2VsbHMgPSA8MT47Cj4gKyAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsK
PiArCj4gKyAgICAgICAgICAgICAgICBwb3J0QDAgewo+ICsgICAgICAgICAgICAgICAgICAgIHJl
ZyA9IDwwPjsKPiArCj4gKyAgICAgICAgICAgICAgICAgICAgY2Ftc3NfY3NpcGh5MF9lcDogZW5k
cG9pbnQgewo+ICsgICAgICAgICAgICAgICAgICAgICAgICBkYXRhLWxhbmVzID0gPDAgMSAyIDM+
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JmNzaXBoeTBf
b3V0PjsKPiArICAgICAgICAgICAgICAgICAgICB9OwoKW1NldmVyaXR5OiBMb3ddClNob3VsZCBk
YXRhLWxhbmVzIGluIHRoZSBleGFtcGxlIGJlIDEtYmFzZWQgKDwxIDIgMyA0PikgaW5zdGVhZCBv
ZiAwLWJhc2VkCig8MCAxIDIgMz4pPwoKQmVjYXVzZSBFbGl6YSB1c2VzIHN0YW5kYWxvbmUgQ1NJ
UEhZIGRldmljZXMgd2l0aG91dCBsZWdhY3kgQ1NJUEhZCnJlc291cmNlcywgY2Ftc3NfZGV0ZWN0
X2xlZ2FjeV9waHkoKSBzZXRzIGNhbXNzLT5sZWdhY3lfcGh5IHRvIGZhbHNlIGFuZApjYW1zc19w
YXJzZV9wb3J0cygpIHNldHMgbGFuZV9iYXNlIHRvIDEuICBjYW1zc19wYXJzZV9lbmRwb2ludF9u
b2RlKCkgdGhlbgpyZWplY3RzIGxhbmUgMCB3aXRoIC1FSU5WQUw6Cgpkcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYzpjYW1zc19wYXJzZV9lbmRwb2ludF9ub2RlKCkgewog
ICAgLi4uCgkJaWYgKGxhbmUgPCBsYW5lX2Jhc2UgfHwgbGFuZSAtIGxhbmVfYmFzZSA+PSBNU01f
Q1NJUEhZX01BWF9EQVRBX0xBTkUpIHsKCQkJZGV2X2VycihkZXYsICJpbnZhbGlkIGRhdGEtbGFu
ZSAldVxuIiwgbGFuZSk7CgkJCXJldHVybiAtRUlOVkFMOwoJCX0KICAgIC4uLgp9CgpBbnkgRGV2
aWNlIFRyZWUgbW9kZWxlZCBhZnRlciB0aGlzIGV4YW1wbGUgd2lsbCBmYWlsIHRvIHByb2JlLiAg
VGhlCmVuZHBvaW50IGRhdGEtbGFuZXMgc2NoZW1hIGFib3ZlIGFsc28gb25seSBjb25zdHJhaW5z
IG1pbkl0ZW1zIGFuZAptYXhJdGVtcywgc28gYWRkaW5nIGl0ZW1zIHdpdGggbWluaW11bTogMSBh
bmQgbWF4aW11bTogNCB3b3VsZCBhbGxvdwpkdGJzX2NoZWNrIHRvIGNhdGNoIDAtYmFzZWQgbGFu
ZSBpbmRpY2VzLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MTExNC1hZGQtc3VwcG9ydC1mb3ItY2Ftc3Mtb24tc204NzUwLXY3LTAt
OGZmMmExMTgzNWY2QG9zcy5xdWFsY29tbS5jb20/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
