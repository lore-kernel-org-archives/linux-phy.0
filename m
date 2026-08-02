Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DB0DC55175
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 14:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kkZSop21lDFyxd8IqUA1v7enHy8Lkks22ovyC/g4Xxk=; b=TWJ9G3hW3IiP7a
	t/vNFHqQZ3G2EM05O0S0PGe5RCsPl4Wf3C54QB+xjRAagfegKDtp/erRfqh+oSQbCEgBHWmFo2r4j
	g1JjJBLsq82Wd9GlOFwTFZo8b6rJjtTBBpXpTRtebyRWX7jCgFi98hubg5EgIS8E/IYk2o9JM5TfL
	h0MRnZwxxIjNjrvohaauPO+L4l9FP7GvfQ6Ie5Rv3u3QULbiFsZINaGZjsz7FLFA3BJfostbJetgV
	VWLlLd52ts7DS986XMLQ2C/tN4uXuzvHu2QGRMAKrW35Rcw1V/7BHhj37BpJSBp8lHdK4YEPuDGJv
	sUO7QqoK0VRqUV6/Q2Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqX8K-0000000FiCL-0ns5;
	Sun, 02 Aug 2026 14:25:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqX8J-0000000FiBq-0zUQ
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 14:25:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 53D8B60DC3;
	Sun,  2 Aug 2026 14:25:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 395631F000E9;
	Sun,  2 Aug 2026 14:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785680742;
	bh=L+E1mF6rZDCHYzAMlcdWAOgrc1pmDLuOneN2jwhlMgo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PoEtBlY/+DIHBNcXSfyYq3KCNL5uCkUd5+JKKFmw0iPnp2kgLWgZo+d2WCtdhRaP7
	 QWii7p4Un5Huy8/5YNlYJUG/OddgchElYtbmnNdztIlRkxOTk7g1UE+7vtrUbhAheS
	 dnGMD0AkS1ZtHOWB/Lmm8ur4aB395wHPyaMu2C8nOdsXMHctTWr1LZ02AjazcgSIzd
	 Zi6br2rttZmuDYvj1IkwEVNl7TszWwPKrEZUNMdsYr/NSbPxhWGB1K/bz+FUBqWND3
	 wLeHoJNcoh6OMqtfJ4S9WJsYUvdiVdMlRf3ovqav8I0QbPPbhd1X4m7E7W7Kzs8NCb
	 M/ApS2kEr862g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 02/10] dt-bindings: phy: rockchip: naneng-combphy:
 add rockchip,sgmii-mac-sel property
To: "Coia Prant" <coiaprant@gmail.com>
Cc: wsa+renesas@sang-engineering.com, neil.armstrong@linaro.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260801142244.679437-4-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
 <20260801142244.679437-4-coiaprant@gmail.com>
Date: Sun, 02 Aug 2026 14:25:40 +0000
Message-Id: <20260802142541.395631F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGByb2NrY2hp
cCxzZ21paS1tYWMtc2VsYCBwcm9wZXJ0eSBpcyBkZWZpbmVkIGluIHRoZSBkZXZpY2UgdHJlZSBi
aW5kaW5ncyBidXQgaXMgbm90IGltcGxlbWVudGVkIGluIGFueSBrZXJuZWwgZHJpdmVyLgotLQoK
LS0tIFBhdGNoIFsyXTogW1BBVENIIHYyIDAyLzEwXSBkdC1iaW5kaW5nczogcGh5OiByb2NrY2hp
cDogbmFuZW5nLWNvbWJwaHk6IGFkZCByb2NrY2hpcCxzZ21paS1tYWMtc2VsIHByb3BlcnR5IC0t
LQpjb21taXQgZDA2NzY3OGFlMjhjY2IxZTFkMWYyMGE4Y2I4MDEzZjIyYTM4N2FiYwpBdXRob3I6
IENvaWEgUHJhbnQgPGNvaWFwcmFudEBnbWFpbC5jb20+CgpkdC1iaW5kaW5nczogcGh5OiByb2Nr
Y2hpcDogbmFuZW5nLWNvbWJwaHk6IGFkZCByb2NrY2hpcCxzZ21paS1tYWMtc2VsIHByb3BlcnR5
CgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBvcHRpb25hbCByb2NrY2hpcCxzZ21paS1tYWMtc2VsIHBy
b3BlcnR5IHRvIHRoZSBSb2NrY2hpcApOYW5lbmcgY29tYnBoeSBkZXZpY2UgdHJlZSBiaW5kaW5n
LiBUaGUgcHJvcGVydHkgaXMgaW50ZW5kZWQgdG8gYWxsb3cgcm91dGluZwp0aGUgU0dNSUkgaW50
ZXJmYWNlIHRvIGVpdGhlciBHTUFDMCBvciBHTUFDMSB2aWEgR1JGIHJlZ2lzdGVycy4KCj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXJvY2tj
aGlwLW5hbmVuZy1jb21icGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS55YW1sCj4gLS0tIGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHku
eWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXJv
Y2tjaGlwLW5hbmVuZy1jb21icGh5LnlhbWwKWyAuLi4gXQo+IEBAIC04MCw2ICs4MCwxNSBAQCBw
cm9wZXJ0aWVzOgo+ICAgICAgZGVzY3JpcHRpb246Cj4gICAgICAgIFNvbWUgYWRkaXRpb25hbCBw
aXBlIHNldHRpbmdzIGFyZSBhY2Nlc3NlZCB0aHJvdWdoIEdSRiByZWdzLgo+ICAKPiArICByb2Nr
Y2hpcCxzZ21paS1tYWMtc2VsOgo+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVm
aW5pdGlvbnMvdWludDMyCj4gKyAgICBlbnVtOiBbMCwgMV0KCltTZXZlcml0eTogTWVkaXVtXQpJ
cyB0aGUgZHJpdmVyIGltcGxlbWVudGF0aW9uIGZvciB0aGlzIHByb3BlcnR5IG1pc3NpbmcgZnJv
bSB0aGUgc2VyaWVzPwoKVGhlIGRldmljZSB0cmVlIGJpbmRpbmcgZGVmaW5lcyByb2NrY2hpcCxz
Z21paS1tYWMtc2VsLCBidXQgaXQgYXBwZWFycwpubyBrZXJuZWwgZHJpdmVyIGN1cnJlbnRseSBw
YXJzZXMgdGhpcyBwcm9wZXJ0eSBvciB3cml0ZXMgdGhlIGNvcnJlc3BvbmRpbmcKY29uZmlndXJh
dGlvbiB0byB0aGUgR1JGIHJlZ2lzdGVycy4KCldpdGhvdXQgZHJpdmVyIHN1cHBvcnQsIGJvYXJk
cyByZWx5aW5nIG9uIHRoaXMgcHJvcGVydHkgdG8gY29uZmlndXJlIHRoZSBNQUMKd2lsbCBmYWls
IHRvIHJvdXRlIFNHTUlJIHRvIEdNQUMwLCBsZWF2aW5nIGl0IGF0IHRoZSBkZWZhdWx0IEdNQUMx
LgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDgwMTE0MjI0NC42Nzk0MzctMi1jb2lhcHJhbnRAZ21haWwuY29tP3BhcnQ9MgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
