Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41F8BCC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 11:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23NiyiNrytGIUm4+6baTvuYxGWHr3ik/9mEli8mhZqE=; b=tZ/QinLQZFqlhK
	pVZ/VVYzOIapS/LX3tcvUlw5yFRLywTgCBcfn3FRcIGb/d1JEJQJ0HlziespZhAgP5pbEyxd/C4cd
	1q7mLxC0jet+YT17fp3AQub/lxmITX0/fXj6RVPSixLlx0UG4eu6abUsdPDOcZICqvIY8A06p6JD+
	X/6vkg9isAORjWJf9LDFGJ6f8kEIfqmO9wlDLy5yVpTi88PYWro5SVaFzhmznz2KjyCK7C76yH+78
	h6AA9rUbNOuR1mrBgUXX9UG3gdCiNszvMGcRqNVUFrfK+qPFxvPWGhvk6rTpQfnujggMU7XQUYxLp
	l2rKbRYonZkS7kgZtHlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaXh-0000000CgnK-3RGY;
	Tue, 13 Oct 2026 11:19:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaXf-0000000Cgn1-3gKL
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 11:19:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 467F2600D1;
	Tue, 13 Oct 2026 11:19:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74F071F000FF;
	Tue, 13 Oct 2026 11:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791890375;
	bh=wlSQFeKqqorcKsXMeHTMB202B8crFkNp892yruGdboY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aMkgdSqiDjj1e51hUTNpUuvoge3LVlxWCm0/YTCXw46OlLRkx5AcEil8X0ifoZmFC
	 riHpF0sakboMAud9BsHSag/rot7lBWdyxynVjDoyar21d3LOqscAB5OQQ3aVi0RnCK
	 tnz0cisDf+DPdGISp28WOQA2XLFvqjWASSjoeux2Z1G9m6GbBWjo754S9sUlHl3pEB
	 tDPtbhY3n3lIQXtvLcfcfcFskG47Apvqf6kPuuS7bmxDoZ4+jdVBoDZwg/oj+whrse
	 RCWv/QlUtj7qcrLidSHRgmAqVF9ebSa1p5aR0OtCNy7ilYMGqL9j8e6PjOFkU72XHY
	 BPr9G+sV3dD1w==
Message-ID: <sashiko-outbox-169606@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/8] dt-bindings: media: Add CAMSS device for Hawi
To: "Nihal Kumar Gupta" <nihal.gupta@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261013-hawi-maili-camss-v2-3-fc93222da89c@oss.qualcomm.com>
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-3-fc93222da89c@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 11:19:33 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6
IG1lZGlhOiBtaXNzaW5nIGRhdGEtbGFuZXMgcmVxdWlyZWQgcHJvcGVydHkgaW4gQ0FNU1MgZW5k
cG9pbnQgc2NoZW1hCi0tCgpjb21taXQgMTgwOTRjNzE2OWQ4MmI5MDM3NDQ1ZjUxMWY5ZTI2ZTRh
NTVjYzQ0OApBdXRob3I6IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5j
b20+CgpkdC1iaW5kaW5nczogbWVkaWE6IEFkZCBDQU1TUyBkZXZpY2UgZm9yIEhhd2kKClRoaXMg
cGF0Y2ggYWRkcyBiaW5kaW5ncyBmb3IgdGhlIENhbWVyYSBTdWJzeXN0ZW0gKENBTVNTKSBvbiB0
aGUgUXVhbGNvbW0gSGF3aQpwbGF0Zm9ybS4gVGhlIENBTVNTIElQIGluY2x1ZGVzIHZhcmlvdXMg
Y29tcG9uZW50cyBsaWtlIENTSVBIWSwgVFBHLCBDU0lELAphbmQgVkZFLgoKPiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3Fjb20saGF3aS1jYW1z
cy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3Fjb20saGF3
aS1jYW1zcy55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAw
Li41YmYwZGNhM2QyNDYyCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9xY29tLGhhd2ktY2Ftc3MueWFtbApbIC4uLiBdCj4gKyAg
ICBwYXR0ZXJuUHJvcGVydGllczoKPiArICAgICAgIl5wb3J0QFswLTVdJCI6Cj4gKyAgICAgICAg
JHJlZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMvJGRlZnMvcG9ydC1iYXNlCj4gKyAgICAgICAgdW5l
dmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQo+ICsgICAgICAgIGRlc2NyaXB0aW9uOgo+ICsgICAg
ICAgICAgSW5wdXQgcG9ydHMgZm9yIHJlY2VpdmluZyBDU0kgZGF0YSBvbiBDU0lQSFkgMC01Lgo+
ICsKPiArICAgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgICAgZW5kcG9pbnQ6Cj4gKyAgICAg
ICAgICAgICRyZWY6IHZpZGVvLWludGVyZmFjZXMueWFtbCMKPiArICAgICAgICAgICAgdW5ldmFs
dWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQo+ICsKPiArICAgICAgICAgICAgcHJvcGVydGllczoKPiAr
ICAgICAgICAgICAgICBkYXRhLWxhbmVzOgo+ICsgICAgICAgICAgICAgICAgbWluSXRlbXM6IDEK
PiArICAgICAgICAgICAgICAgIG1heEl0ZW1zOiA0Cj4gKwo+ICsgICAgICAgICAgICAgIGJ1cy10
eXBlOgo+ICsgICAgICAgICAgICAgICAgZW51bToKPiArICAgICAgICAgICAgICAgICAgLSAxICMg
TUVESUFfQlVTX1RZUEVfQ1NJMl9DUEhZCj4gKyAgICAgICAgICAgICAgICAgIC0gNCAjIE1FRElB
X0JVU19UWVBFX0NTSTJfRFBIWQoKW1NldmVyaXR5OiBNZWRpdW1dClNob3VsZCBkYXRhLWxhbmVz
IGJlIGFkZGVkIHRvIGEgcmVxdWlyZWQgYXJyYXkgZm9yIHRoaXMgZW5kcG9pbnQ/CgpEZXZpY2Ug
dHJlZSBjb25maWd1cmF0aW9ucyBtaXNzaW5nIHRoZSBkYXRhLWxhbmVzIHByb3BlcnR5IHdpbGwg
c2lsZW50bHkgcGFzcwpzY2hlbWEgdmFsaWRhdGlvbiBidXQgZmFpbCBhdCBydW50aW1lLiBUaGUg
VjRMMiBDQU1TUyBkcml2ZXIgcmVsaWVzIG9uIHRoZQpkYXRhLWxhbmVzIHByb3BlcnR5IHRvIHBy
b3Blcmx5IHByb2dyYW0gdGhlIENTSUQgaGFyZHdhcmUgZm9yIGxhbmUgZXh0cmFjdGlvbi4KCk9t
aXR0aW5nIGl0IGZyb20gYSByZXF1aXJlZCBhcnJheSBkZWZlYXRzIHRoZSBwdXJwb3NlIG9mIHRo
ZSBZQU1MIHNjaGVtYQpjb25zdHJhaW50cy4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMTMtaGF3aS1tYWlsaS1jYW1zcy12Mi0w
LWZjOTMyMjJkYTg5Y0Bvc3MucXVhbGNvbW0uY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
