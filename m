Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96637CA6004
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 02:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpYTevjOoM4y5SVTEMI5dk7MUSd0iz+ljjGAUYy665c=; b=ZfqkeHTe50sMv+
	SAqGHe8kRErCuT98hV91Iy98dv/IZ3tvx3bQASR9d5n9HOJDIo6+UpjIU2GlzIX+3VJxQwAsuoodM
	+mAqxu6Li6MRwE1GKcVIMBsNejJ8NMhfwTKZaqGytKXcnDESM4Vgc8VHKV3bFnWNB+SunEgWU//ur
	NtzwbgBzPhw2wYZ0o2edZp8QcGfQbq5bQ1zX/e3isppe/4HViz8tLdQZ8WYRI07kQLWXkLFgnFdki
	xoALeX2OxFFWwfQLhg8cdNKScpYVT/wPI1r6x1dbkqtHblcb4J0t5NM1LWmRksWS4r1LiKrjtPMd2
	n7mLK7/DnzkgWjlFeFmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEdQN-00000003NgE-3XJF;
	Thu, 08 Oct 2026 01:59:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEdQM-00000003Ng8-0OmC
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 01:59:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 18DD060136;
	Thu,  8 Oct 2026 01:59:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 723721F000FF;
	Thu,  8 Oct 2026 01:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791424796;
	bh=CULGASgaM5QwicWqxVjMv2H10qJZYBMk49z7tW84dlk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HGmt42y0pB81p5iZJtDQIQEqzu1ejin5yyTRreydzL4ZDHopbJ7x1ECgn5muvR2Eq
	 +KPhr4/Kk6TfEi6feAG8AY+LZVhJErNR3c09Bqip6h+zXTOvLRgP/F6jbNc2iPYvzb
	 yfhfGyZJ0j5lpaj5PcNbmqojhoI7G+7l7kqkiDztBy68yR8WXt1vQlUmzm4KCYftUI
	 kO27Gw/GQvG5m32yqmSxcUM8yBVN8d0uHcdb0O/1ZUqEyxk0EceDPFlJ2UTIngIOJw
	 hsYO7kwqEQUsTL710kEJ5cWn+jxnMvOZICXAN6Zpb3A7//7VQfkXkfpCcFhVY2YtRs
	 O9kgx0ASA8LrA==
Message-ID: <sashiko-outbox-163503@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add Nord cfg_ahb clock
To: "Shawn Guo" <shengchao.guo@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org
In-Reply-To: <20261008015017.3359804-2-shengchao.guo@oss.qualcomm.com>
References: <20261008015017.3359804-1-shengchao.guo@oss.qualcomm.com>
 <20261008015017.3359804-2-shengchao.guo@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 01:59:56 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IHBo
eTogcW1wLXVzYjQzZHA6IG1pc3NpbmcgbWluSXRlbXMgY29uc3RyYWludCBmb3IgY2ZnX2FoYiBj
bG9jawotLQoKY29tbWl0IDc2NGJjNjQyOGJhZWZhNTJiZTQ3NmQ2NzJhYzg3ZGYyODU3NTFhNTkK
QXV0aG9yOiBTaGF3biBHdW8gPHNoZW5nY2hhby5ndW9Ab3NzLnF1YWxjb21tLmNvbT4KCmR0LWJp
bmRpbmdzOiBwaHk6IHFjb20sc2M4MjgweHAtcW1wLXVzYjQzZHAtcGh5OiBBZGQgTm9yZCBjZmdf
YWhiIGNsb2NrCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBOb3JkIGNvbXBhdGlibGUgc3RyaW5nIHRv
IHRoZSBxbXAtdXNiNDNkcCBQSFkgYmluZGluZy4KSXQgaW5jbHVkZXMgTm9yZCBpbiB0aGUgY29u
ZGl0aW9uYWwgYmxvY2tzIHRoYXQgcmVxdWlyZSBhIGZpZnRoIGNmZ19haGIgY2xvY2suCgo+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4
MjgweHAtcW1wLXVzYjQzZHAtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVzYjQzZHAtcGh5LnlhbWwKPiBpbmRleCAxM2U2
NGZlNTEwYjhmLi44MDliZDRlMTA5MGE3IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbAo+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4
cC1xbXAtdXNiNDNkcC1waHkueWFtbAo+IEBAIC0yMDksNiArMjA5LDcgQEAgYWxsT2Y6Cj4gICAg
ICAgICAgY29tcGF0aWJsZToKPiAgICAgICAgICAgIGNvbnRhaW5zOgo+ICAgICAgICAgICAgICBl
bnVtOgo+ICsgICAgICAgICAgICAgIC0gcWNvbSxub3JkLXFtcC11c2IzLWRwLXBoeQo+ICAgICAg
ICAgICAgICAgIC0gcWNvbSxzYzcxODAtcW1wLXVzYjMtZHAtcGh5Cj4gICAgICAgICAgICAgICAg
LSBxY29tLHNkbTg0NS1xbXAtdXNiMy1kcC1waHkKPiAgICAgIHRoZW46Cj4gICAgICAgIHByb3Bl
cnRpZXM6Cj4gICAgICAgICAgY2xvY2tzOgo+ICAgICAgICAgICAgbWF4SXRlbXM6IDUKPiAgICAg
ICAgICBjbG9jay1uYW1lczoKPiAgICAgICAgICAgIGl0ZW1zOgo+ICAgICAgICAgICAgICAtIGNv
bnN0OiBhdXgKPiAgICAgICAgICAgICAgLSBjb25zdDogcmVmCj4gICAgICAgICAgICAgIC0gY29u
c3Q6IGNvbV9hdXgKPiAgICAgICAgICAgICAgLSBjb25zdDogdXNiM19waXBlCj4gICAgICAgICAg
ICAgIC0gY29uc3Q6IGNmZ19haGIKCltTZXZlcml0eTogTG93XQpUaGUgY29uZGl0aW9uYWwgYmxv
Y2sgZm9yIHBsYXRmb3JtcyB0aGF0IHJlcXVpcmUgdGhlIGZpZnRoIGNmZ19haGIgY2xvY2sKZGVm
aW5lcyBhIDUtaXRlbSBsaXN0IGZvciBjbG9jay1uYW1lcywgYnV0IGl0IGZhaWxzIHRvIHNwZWNp
ZnkgbWluSXRlbXM6IDUgCmZvciBjbG9ja3Mgb3IgY2xvY2stbmFtZXMuCgpCZWNhdXNlIHRoZSBn
bG9iYWwgc2NoZW1hIGFsbG93cyBtaW5JdGVtczogNCwgYSBkZXZpY2UgdHJlZSBwcm92aWRpbmcg
b25seQo0IGNsb2NrcyB3aWxsIHBhc3Mgc2NoZW1hIHZhbGlkYXRpb24uCgpUaGUgZHJpdmVyIHVz
ZXMgZGV2bV9jbGtfYnVsa19nZXRfb3B0aW9uYWwoKSBmb3IgdGhlc2UgY2xvY2tzLCBzbyBpdCB3
b24ndApmYWlsIHRvIHByb2JlLiBIb3dldmVyLCBhcyBzdGF0ZWQgaW4gdGhlIGNvbW1pdCBtZXNz
YWdlLCB0aGUgY2ZnX2FoYiBjbG9jawppcyBzdHJpY3RseSByZXF1aXJlZCB0byBnYXRlIHRoZSBB
SEIyUEhZIGJyaWRnZSBhbmQgYWNjZXNzIFBIWSByZWdpc3RlcnMuCkFjY2Vzc2luZyB1bmNsb2Nr
ZWQgcmVnaXN0ZXJzIHdpbGwgbGVhZCB0byBhIHN5c3RlbSBoYW5nIG9yIFBIWSBmYWlsdXJlLgoK
U2hvdWxkIHRoaXMgYmxvY2sgaW5jbHVkZSBtaW5JdGVtczogNSB0byBjb3JyZWN0bHkgZW5mb3Jj
ZSB0aGUgcHJlc2VuY2Ugb2YKdGhlIDV0aCBjbG9jaz8gQSBmb2xsb3ctdXAgY2hlY2sgdGhyb3Vn
aCB0aGUgc2VyaWVzIGVuZHMgc2hvd3MgdGhpcyB3YXMgbm90CmNvcnJlY3RlZC4KClsgLi4uIF0K
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjEwMDgwMTUwMTcuMzM1OTgwNC0xLXNoZW5nY2hhby5ndW9Ab3NzLnF1YWxjb21tLmNvbT9w
YXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
