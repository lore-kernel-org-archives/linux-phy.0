Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70C36C61DFD
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 23:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IR+91KYJREz+R5Ik5OJVzlWqZo6WWOyweAKYeh9U76k=; b=KOosW89j7JPYwO
	Ac6yRkswM/ryGeycf5fXldb7l2I2hznzpRghnPIiTZmaBitlrQg7cx9Yr9TSXOlZst+kP3rSRwS7g
	S27N4jHEyZrXnr/X5SrPE6DT4DvvMr9K8C7zPim7Wwjd43H30g4pfOJpmdqXE3+JvekvaD9WpmsRN
	PybN78O1Z/aK8Xy0zTRPzfqeaQSjPWsBhrfDNRetoakJ38Sn4cGCMymycTnPr8mCvzLls+iRVIj8F
	ljcyL44uiFykIYEXk1ZRyUaQmY4gJtQKFbW+fXJhz2fROMNsvLqAESkrG8WBHf5cxDn8g3DhvQjpx
	GmniqpULJV724jI8w4JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BWJ-0000000Afa0-0mKh;
	Mon, 31 Aug 2026 23:34:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BWH-0000000AfZq-2EpE
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 23:34:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4D386404CB;
	Mon, 31 Aug 2026 23:34:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A606E1F000E9;
	Mon, 31 Aug 2026 23:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788219269;
	bh=3hUHG3ivPMOhp6I2g1WfIkXyPmqFRO3oZXtqy4IwaJw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HDk12PfYsbirnD7OLxaVsNFLCl3uHbmfUD+x9xRNIXcYYrgRYxptiAV7nyp4Oxax5
	 /fOWBWUFCbpGwivya3SKST+CmV9BPqf+fhbyHiSncUd2WI9AnWBiiTO0qnhIUvRY3x
	 PMbbD+QGaQe4bwfyKFJwR/0L9yTvkAdEk607ZEKOUM6cFSPfjS8vQNvycM1ld8852O
	 D/DmtKQLzuRj4dlPZyIAk+wMNOoVXsEjTbgmCF/2k+5XIaUTlRzCY6RYNJ7RxEmZP5
	 7MWrfFvfTEWgq1d1ruvegV7fEHajGYtSLj6HNenIN9oy6y2HkLDnZZ0MdclYy0Xg91
	 swMAc5By56s/w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/6] dt-bindings: usb: ti,musb-am33xx: Convert to DT
 schema
To: "Bhargav Joshi" <j.bhargav.u@gmail.com>
Cc: olteanv@gmail.com, conor+dt@kernel.org, vkoul@kernel.org, robh@kernel.org, dmaengine@vger.kernel.org, Frank.Li@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260901-ti-am33-usb-v3-3-5e15c617d2e9@gmail.com>
References: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
 <20260901-ti-am33-usb-v3-3-5e15c617d2e9@gmail.com>
Date: Mon, 31 Aug 2026 23:34:28 +0000
Message-Id: <20260831233428.A606E1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gTWlzc2luZyB0eXBlIGRl
ZmluaXRpb24gZm9yIHZlbmRvciBwcm9wZXJ0eSBgbWVudG9yLHJhbS1iaXRzYC4KLS0KCmNvbW1p
dCBiMTgxNjFkY2NlMGQ4ZDljOTI0MzJlMDZmMmQ2YjY4Y2MwZDBlMjYyCkF1dGhvcjogQmhhcmdh
diBKb3NoaSA8ai5iaGFyZ2F2LnVAZ21haWwuY29tPgoKZHQtYmluZGluZ3M6IHVzYjogdGksbXVz
Yi1hbTMzeHg6IENvbnZlcnQgdG8gRFQgc2NoZW1hCgpUaGlzIGNvbW1pdCBjb252ZXJ0cyB0aGUg
VEkgQU0zM3h4IE1VU0IgdGV4dCBiaW5kaW5ncyB0byBEVCBzY2hlbWEuIEl0IGFsc28KYWxsb3dz
IGFuIG9wdGlvbmFsIHZidXMgaW50ZXJydXB0IGFuZCBhZGRzIGludGVyZmFjZS10eXBlIGFuZCBw
aHktbmFtZXMKcHJvcGVydGllcyBmb3IgZG04MTZ4IGhhcmR3YXJlLgoKPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi90aSxtdXNiLWFtMzN4eC55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi90aSxtdXNiLWFtMzN4eC55
YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi5jYzAxZWRj
NzVkMTFlCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy91c2IvdGksbXVzYi1hbTMzeHgueWFtbAoKWyAuLi4gXQoKPiArICBtZW50b3IsbnVt
LWVwczoKPiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQz
Mgo+ICsgICAgZGVzY3JpcHRpb246IFNwZWNpZmllcyB0aGUgbnVtYmVyIG9mIGVuZHBvaW50cy4K
PiArICAgIGNvbnN0OiAxNgo+ICsKPiArICBtZW50b3IscmFtLWJpdHM6Cj4gKyAgICBkZXNjcmlw
dGlvbjogU3BlY2lmaWVzIHRoZSByYW0gYWRkcmVzcyBzaXplLgo+ICsgICAgY29uc3Q6IDEyCgpb
U2V2ZXJpdHk6IExvd10KSXMgbWVudG9yLHJhbS1iaXRzIG1pc3NpbmcgYSB0eXBlIGRlZmluaXRp
b24/CgpXaXRob3V0IGEgdHlwZSByZWZlcmVuY2UgZm9yIGEgY3VzdG9tIHByb3BlcnR5LCBtYWtl
IGR0X2JpbmRpbmdfY2hlY2sgaXNzdWVzCmEgJ21pc3NpbmcgdHlwZSBkZWZpbml0aW9uJyB3YXJu
aW5nIGFuZCBmYWlscyBjb25zdHJhaW50IGV2YWx1YXRpb24gYWdhaW5zdAp2YWxpZCBEVFMgdXNh
Z2UuIERUIHNjaGVtYSBwYXJzZXMgY2VsbCBhcnJheXMgbGlrZSA8MTI+IGFzIG1hdHJpY2VzIGxp
a2UKW1sxMl1dIGlmIG5vdCB0b2xkIHRoZXkgYXJlIHNjYWxhciBpbnRlZ2VycywgZmFpbGluZyB0
aGUgY29uc3Q6IDEyIGNoZWNrLgoKRG9lcyB0aGlzIG5lZWQgYSB0eXBlIHJlZmVyZW5jZSBsaWtl
CiRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMiBzaW1pbGFyIHRv
IG1lbnRvcixudW0tZXBzIGFuZAptZW50b3IscG93ZXI/Cgo+ICsKPiArICBtZW50b3IscG93ZXI6
Cj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKPiAr
ICAgIGRlc2NyaXB0aW9uOiBDb250cm9sbGVyIHN1cHBseSBjYXBhY2l0eSAoaW4gbUEpIHdoZW4g
b3BlcmF0aW5nIGluIGhvc3QgbW9kZS4KPiArICAgIGNvbnN0OiA1MDAKCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MDEtdGktYW0z
My11c2ItdjMtMC01ZTE1YzYxN2QyZTlAZ21haWwuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
