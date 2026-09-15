Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7361C88E7F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLhaSbLntxbXc/3qWUlcwFSSmu/FxX8kAhdn86gL3OI=; b=m4X7/yNtCGhhYx
	sBjoJwGz5qEi/z0EjcjOLMcp5Ra3bep+u5K7JKXymdhm9JIYLVzzHcY5fmUncV+Azor1pR0iIxcs3
	I+yHYk+C7UTwhcIHlguy7fhHsFgskmzDXgek8QUwAWqWKQ12n/sgJjL6zLhDJgzNG/3vjfEU+iK5O
	MZ2GeuvrkFgjuGU2LIO4OYMBO1HV1dY2g+CBR1XhBwArjm6KFUFifEo/JrubOUIQ3ncLlnPKQQrfg
	R39MvPoBt79nB0cbwsGkkT9NKIr6NKnOt8tahWa6e0MH8OrOI6w2CJconeOObLfsxX/VlFASkZj22
	WSQLv6lPwYsAmrn4NJIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VDY-00000007Foc-2eTU;
	Tue, 15 Sep 2026 15:37:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VDX-00000007FoN-1SpD
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:37:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id ED8FD41475;
	Tue, 15 Sep 2026 15:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EFC11F000FF;
	Tue, 15 Sep 2026 15:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486626;
	bh=4CrTuEZSFu9uoLUwd8D9N7dRg15ETOXWQTzotPiLW0g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ibC5vlZUdyOkLs5sqekYWmSBsu57nxQ5tiEzp8lroSkfdxR4Y2Br8prUaCJTs+5Xe
	 Ilxo47omY2qYUJJqnrcj7DcIupfnAEiBPZvamBw3U0qcclxHP0JVXqYWVIgq22rR8K
	 rLXsdE6pDcM31MoNAkVGCvUxihTvp+9sHec3EGePsBRXx9fODrq7j8tKajwLNUOTvU
	 DFrIvO2bQNjUPe9uRwT8MSECIpv5vKJ4KGUCFcQq2BdW2lCYpIxLbkV8AYjdkJxMdy
	 EhpNKGhitYQaTy5dY7XQ330DhU4hVFswj1yDsWlTNXYG+Q8Ws41fzudlyFRULjaH2C
	 YpLBFP7j0/5FQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 10/20] drm/bridge: inno-hdmi: Add .mode_valid
 platform operation
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: lee@kernel.org, linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org, olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, mfd@lists.linux.dev, vkoul@kernel.org
In-Reply-To: <20260915-jh7110-clean-send-v4-10-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153231eucas1p1e106fee2d6f7db2aa8bb93d18d0f5dc1@eucas1p1.samsung.com>
 <20260915-jh7110-clean-send-v4-10-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:37:05 +0000
Message-Id: <20260915153706.3EFC11F000FF@smtp.kernel.org>
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

PiBpbm5vX2hkbWlfYnJpZGdlX21vZGVfdmFsaWQoKSB2YWxpZGF0ZXMgdGhlIHBpeGVsIGNsb2Nr
IGFnYWluc3QKPiBoZG1pLT5yZWZjbGssIGJ1dCB0aGF0IGNsb2NrIGlzIG9wdGlvbmFsIGFuZCBp
cyBvbmx5IHByZXNlbnQgb24KPiBwbGF0Zm9ybXMgdGhhdCBkZXNjcmliZSBhICJyZWYiIGNsb2Nr
LiBQbGF0Zm9ybXMgd2hlcmUgdGhlIHBpeGVsIGNsb2NrCj4gaXMgcHJvZHVjZWQgYnkgYSBzZXBh
cmF0ZSBkZXZpY2UgLSBzdWNoIGFzIHRoZSBTdGFyRml2ZSBKSDcxMTAsIHdob3NlCj4gUEhZIGlz
IGJvdGggdGhlIGNsb2NrIGFuZCB0aGUgUEhZIHByb3ZpZGVyIC0gaGF2ZSBubyAicmVmIiBjbG9j
aywgc28KPiB0aGUgY2hlY2sgaXMgc2tpcHBlZCBlbnRpcmVseSBhbmQgZXZlcnkgbW9kZSBpcyBy
ZXBvcnRlZCBhcyB2YWxpZC4KPiAKPiBBIG1vZGUgdGhlIHBsYXRmb3JtIGNhbm5vdCBnZW5lcmF0
ZSBpcyB0aGVuIGFkdmVydGlzZWQgdG8gdXNlcnNwYWNlLgo+IFRoZSBzdWJzZXF1ZW50IG1vZGVz
ZXQgYXBwZWFycyB0byBzdWNjZWVkLCBzaW5jZSB0aGUgYXRvbWljIGVuYWJsZSBwYXRoCj4gY2Fu
bm90IGZhaWwsIGFuZCB0aGUgZGlzcGxheSBzaWxlbnRseSBzdGF5cyBibGFuay4KPiAKPiBBZGQg
YSAubW9kZV92YWxpZCBwbGF0Zm9ybSBvcGVyYXRpb24gc28gcGxhdGZvcm1zIGNhbiByZWplY3Qg
bW9kZXMgdGhleQo+IGFyZSB1bmFibGUgdG8gZHJpdmUuIFBsYXRmb3JtcyB0aGF0IGRvIG5vdCBp
bXBsZW1lbnQgaXQgYXJlIHVuYWZmZWN0ZWQuCj4gCj4gUmV2aWV3ZWQtYnk6IEpvc2h1YSBQZWlz
YWNoIDxqcGVpc2FjaEB1YnVudHUuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXaWxjenlu
c2tpIDxtLndpbGN6eW5za2lAc2Ftc3VuZy5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlz
IHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxNS1qaDcx
MTAtY2xlYW4tc2VuZC12NC0wLWYwZTRmZDZmMmNjOEBzYW1zdW5nLmNvbT9wYXJ0PTEwCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
