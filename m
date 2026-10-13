Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0302CA9ED2
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 11:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPvRQnBaP1+w2ek8ON7ftSJz79yLR/y6OgzqPGQb7dU=; b=qpziSDqdfZl1wb
	7zNqysfxSbj6+RP2yCmLJDkWLOZsByMUvXWwChRiW2zsOL+/gZxfH3/OKLzEod9cDv5E4ac51SA06
	m40FMtnw6haLn5oAZKBJhaVzrtY2VcWQitrlVedlsmv3uIWONBAmWiPCzy3n25IODcycad2u7gUfp
	T5clCL85eOYxJ1niuNMAZvKgl4Rw6MkrqNwJNvtHNyavSzhXD0b9lXWqmTEQoi/9uuWfMvQcJJjfE
	guf1H/W4ugVFYHWfVcbEDFuhMmVqK9D/+DNWhk83SIF0+LHRwV/TjBZyTHV8lz991EN9cIvfPPdMI
	f3DGqKCicvaGReq3K9sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGacc-0000000ChHd-1g9R;
	Tue, 13 Oct 2026 11:24:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaca-0000000ChHK-1tWT
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 11:24:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 81A72602C3;
	Tue, 13 Oct 2026 11:24:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3C821F000FF;
	Tue, 13 Oct 2026 11:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791890679;
	bh=tVVqMALrY1nVpuqvEo5AFwzTDYwIBMeNnS7o6Txa0NM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gy3W0qBjOUSgXhplPX7T5pyydNVoMQ1528Ec1BBPFQ3KCSJAFMLjpjXejuRvtt7aV
	 uG1cqdwuAeR9amJG//jmXvr9rE80ZWIfSWIYdeOVbRMgFjSdFv5unu412shayzUGfc
	 10httFw06NhvQRV1D6F6+tKx6Zj0wX3Lxm3uwHjiNA7KXECHrPOTEJEtcmHyVF4ygH
	 2CeANfrrnLletaLezeVElyHZfNdV8bX4Vs79NqKeuUPHRy3kZv3Abepms8WoksMQ8O
	 T/7lebBIU1QprHzSgqLMCjIy5A1+CrpfEq/AFsIFayRXjHwlCKlmFlybAocRyD4N5C
	 hRXywXjnCwDUQ==
Message-ID: <sashiko-outbox-169617@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/8] dt-bindings: media: Add CAMSS device for Maili
To: "Nihal Kumar Gupta" <nihal.gupta@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261013-hawi-maili-camss-v2-4-fc93222da89c@oss.qualcomm.com>
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-4-fc93222da89c@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 11:24:38 +0000
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6
IG1lZGlhOiBtaXNzaW5nIHBvcnQgY29uc3RyYWludHMgZm9yIG1haWxpLWNhbXNzIHZhcmlhbnQK
LSBbTWVkaXVtXSBkdC1iaW5kaW5nczogbWVkaWE6IGludmFsaWQgc3VwZXJzZXQgZmFsbGJhY2sg
Y29tcGF0aWJsZSBmb3IgaGFyZHdhcmUgc3Vic2V0Ci0tCgpjb21taXQgNTUzM2Y1MTIwNGU2YjJi
YjQ3MTNiYmYxNjJjNWZjNWUxMGVhNmMyYgpBdXRob3I6IE5paGFsIEt1bWFyIEd1cHRhIDxuaWhh
bC5ndXB0YUBvc3MucXVhbGNvbW0uY29tPgoKZHQtYmluZGluZ3M6IG1lZGlhOiBBZGQgQ0FNU1Mg
ZGV2aWNlIGZvciBNYWlsaQoKVGhpcyBjb21taXQgdXBkYXRlcyB0aGUgQ0FNU1MgZGV2aWNlIHRy
ZWUgYmluZGluZ3MgdG8gc3VwcG9ydCB0aGUgTWFpbGkKaGFyZHdhcmUgdmFyaWFudC4gSXQgYWRk
cyBxY29tLG1haWxpLWNhbXNzIGFzIGEgY29tcGF0aWJsZSBzdHJpbmcsIGZhbGxpbmcKYmFjayB0
byB0aGUgZXhpc3RpbmcgcWNvbSxoYXdpLWNhbXNzIGNvbXBhdGlibGUuCgo+IGRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcWNvbSxoYXdpLWNhbXNz
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcWNvbSxoYXdp
LWNhbXNzLnlhbWwKPiBpbmRleCA1YmYwZGNhM2QyNDYyLi5kMWQ1M2Q2ZjAyNGNiIDEwMDY0NAo+
IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9xY29tLGhhd2kt
Y2Ftc3MueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRp
YS9xY29tLGhhd2ktY2Ftc3MueWFtbApbIC4uLiBdCj4gIHByb3BlcnRpZXM6Cj4gICAgY29tcGF0
aWJsZToKPiAtICAgIGNvbnN0OiBxY29tLGhhd2ktY2Ftc3MKPiArICAgIG9uZU9mOgo+ICsgICAg
ICAtIGNvbnN0OiBxY29tLGhhd2ktY2Ftc3MKPiArICAgICAgLSBpdGVtczoKPiArICAgICAgICAg
IC0gY29uc3Q6IHFjb20sbWFpbGktY2Ftc3MKPiArICAgICAgICAgIC0gY29uc3Q6IHFjb20saGF3
aS1jYW1zcwoKW1NldmVyaXR5OiBNZWRpdW1dClNpbmNlIE1haWxpIGhhcyA1IENTSVBIWXMgd2hp
bGUgSGF3aSBoYXMgNiwgTWFpbGkgaXMgYSBoYXJkd2FyZSBzdWJzZXQgb2YgSGF3aS4KCklzIGl0
IHNhZmUgdG8gY2xhaW0gY29tcGF0aWJpbGl0eSB3aXRoIHRoZSBIYXdpIHN1cGVyc2V0PwoKSWYg
YW4gb2xkZXIga2VybmVsIHRoYXQgaW1wbGVtZW50cyBzdXBwb3J0IGZvciBxY29tLGhhd2ktY2Ft
c3MgYm9vdHMgb24KTWFpbGkgaGFyZHdhcmUgYW5kIGJpbmRzIHVzaW5nIHRoaXMgZmFsbGJhY2sg
Y29tcGF0aWJsZSwgaXQgbWlnaHQgYXR0ZW1wdAp0byBhY2Nlc3MgcmVnaXN0ZXJzLCBjbG9ja3Ms
IG9yIHN0YXRlIG1hY2hpbmVzIGZvciB0aGUgNnRoIENTSVBIWSB3aGljaApkb2VzIG5vdCBwaHlz
aWNhbGx5IGV4aXN0IG9uIHRoZSBNYWlsaSBoYXJkd2FyZS4KCkNvdWxkIHRoaXMgZmFsbGJhY2sg
Y2F1c2UgYm9vdCBmYWlsdXJlcyBvciB1bmRlZmluZWQgYmVoYXZpb3I/CgpbU2V2ZXJpdHk6IE1l
ZGl1bV0KV2lsbCB0aGlzIHNjaGVtYSBzaWxlbnRseSBwYXNzIGludmFsaWQgZGV2aWNlIHRyZWVz
IGZvciBNYWlsaSB0aGF0IGRlZmluZSBhCm5vbi1leGlzdGVudCA2dGggQ1NJUEhZIHBvcnQgKHBv
cnRANSk/CgpUaGUgYmFzZSBzY2hlbWEgaW4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL21lZGlhL3Fjb20saGF3aS1jYW1zcy55YW1sCnVuY29uZGl0aW9uYWxseSBkZWZpbmVzOgoK
ICAgIHBhdHRlcm5Qcm9wZXJ0aWVzOgogICAgICAiXnBvcnRAWzAtNV0kIjoKCndoaWNoIGFsbG93
cyB1cCB0byA2IHBvcnRzIGdsb2JhbGx5LgoKSWYgYSBkZXZpY2UgdHJlZSBpcyBjcmVhdGVkIGZv
ciBNYWlsaSB1c2luZyBxY29tLG1haWxpLWNhbXNzIGFuZCBpbmNvcnJlY3RseQppbmNsdWRlcyBh
IHBvcnRANSBub2RlLCBpdCB3aWxsIHBhc3MgdmFsaWRhdGlvbi4KClNpbmNlIE1haWxpIGhhcyBv
bmx5IDUgQ1NJUEhZIGluc3RhbmNlcywgc2hvdWxkIGFuIGFsbE9mIGNvbmRpdGlvbmFsIGJsb2Nr
IGJlCmFkZGVkIHRvIHJlc3RyaWN0IHRoZSBwb3J0cyBwcm9wZXJ0eSAoZm9yIGV4YW1wbGUsIHNl
dHRpbmcgcG9ydEA1OiBmYWxzZSBvcgpsb3dlcmluZyBtYXhJdGVtcykgd2hlbiB0aGUgY29tcGF0
aWJsZSBzdHJpbmcgY29udGFpbnMgcWNvbSxtYWlsaS1jYW1zcz8KCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMTMtaGF3aS1tYWls
aS1jYW1zcy12Mi0wLWZjOTMyMjJkYTg5Y0Bvc3MucXVhbGNvbW0uY29tP3BhcnQ9NAoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
