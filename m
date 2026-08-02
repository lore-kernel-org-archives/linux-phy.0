Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44150C55174
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 20:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfPbK5FWyI8U6id1GNXAOOv6ZnfWgcsrDDFjAebWz5Y=; b=rOm2swP6D87Jih
	2sjM3wl5D/9O+cdvsmgfc1WC56Eq2GzJ+3O6z2FUxOeCMi+Yn5UZENeh7tzKA9+kX1vzilLV3XvJZ
	QMwEJxuimrzclNvsxHEJWxB6scZxmdZgpKluT2zjJVPSdTdvJxYx/BEAW4qIU4hLV4bFEPK+zbZJI
	3xYJ9i/ZPLzqogyIBVq9R9Qd+MWk4s2HKAQIcHOEbxjLnFRpm8f7py1i4HNDxZSfnILTSAU92si1t
	Ezl9C7KJuETw8WGmxy7w0b8obdgyHrbzz3H0oznlv9PG02Kge662L8vpxSuDlfS1QpP+Jdbs1YaZU
	w8OFDap6di8SqlnxBWcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqcyb-0000000G2rd-3wRP;
	Sun, 02 Aug 2026 20:40:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqcya-0000000G2rX-1W7j
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 20:40:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BCA9242DC1;
	Sun,  2 Aug 2026 20:40:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 216441F00A3D;
	Sun,  2 Aug 2026 20:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785703203;
	bh=2K5hyEA9R9VPr/FHwaef66TY+flL91UhsjqL/M3Uyro=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l0QMjWikTHkFW8KPcMyAHz84YO8/ljLXguLZNBwtUUBlTcRFrsG0oNcYNE6VMfAs3
	 103sOygWSJ35Z/i2d/L2EFwmhBGLvYLGO5Ge7v2Jak004Gt4Nx9E+DRubIGd0D+qXd
	 e3ZJJa32Jbwlbck57HajOO4TvwEu0KhrHMCEJe9C3PwKzPOuaSGM3KkTWJL7zjcOh5
	 3HGKitOJRsq2eSbuXmYmt3MnYJGuVPltAMBAAQt+Kmx0Qe/qHVJ6AEHrxfvFXiSVdG
	 1tPbehh0VJhfi5hCyOxesl+6nTWyFgSZlsDJcOOjCZb4kdK3iLQdR9MXr7y8uf1eUY
	 cS6rf2UALM/mQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 03/12] dt-bindings: clk: zte: Add zx297520v3 LSP
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, mfd@lists.linux.dev, neil.armstrong@linaro.org, lee@kernel.org
In-Reply-To: <20260802-zx29clk-v9-3-d05530d85d28@gmail.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-3-d05530d85d28@gmail.com>
Date: Sun, 02 Aug 2026 20:40:02 +0000
Message-Id: <20260802204003.216441F00A3D@smtp.kernel.org>
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

PiBUaGUgY2xvY2sgY29udHJvbGxlciBvZiB0aGUgengyOTc1MjB2MyBMb3cgU3BlZWQgUGVyaXBo
ZXJhbHMgaXMKPiByZWxhdGl2ZWx5IGNsZWFuLiBPbmUgcmVnaXN0ZXIgcGVyIGRldmljZSB3aXRo
IGdhdGVzLCBtdXhlcyBhbmQgcmVzZXRzCj4gYW5kIGZvciBzb21lIGRldmljZXMgYSBkaXZpZGVy
LiBUaGVyZSBhcmUgZXZlbiBiaXRzIGluIHRoZSBtYXRyaXgKPiBjb250cm9sbGVyIHRvIGNvbnRy
b2wgcHJvcGFnYXRpb24gb2YgY2xvY2sgbGluZXMgZG93biB0byBMU1AuCj4gCj4gVGhlIGNsb2Nr
cyBhcmUgc29ydGVkIGJ5IHJlZ2lzdGVyIGFkZHJlc3MgYW5kIEkgYW0gY29udmluY2VkIHRoYXQg
dGhlCj4gZGV2aWNlIGxpc3QgaXMgY29tcGxldGUuIFRoZXJlIGFyZSwgaG93ZXZlciwgYSBmZXcg
bW9yZSByZWdpc3RlcnMgdGhhdAo+IGFyZSBsaWtlbHkgZXh0cmEgZGl2aWRlcnMgZm9yIFRETSBh
bmQgSTJTIGRldmljZXMuCj4gCj4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGty
enlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTdGVm
YW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKU2FzaGlrbyBoYXMgcmV2
aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEKCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjA4MDItengyOWNsay12OS0wLWQwNTUzMGQ4NWQyOEBnbWFpbC5jb20/cGFydD0zCgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
