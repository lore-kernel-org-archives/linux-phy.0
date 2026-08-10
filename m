Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CE26C5AD4E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 07:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IdwG1znYxW6gThXve2OOxw1TndN3h1BkvNJ+2ZpwMvA=; b=qbcfifQmS0x2sp
	6s8TtxtVc9qr9Zix7MUTfQx16koMq40BrY7Bb9QEBCtlX/VlPGgcB83PCQ4qeIVa4nuNM7hlxgfoJ
	WBeAGhvQH6Vj8IXihCmp3TUxjtOVxe9U3avLLx55a6eC06b77IUcoMRExXIRNFVvPfqoABfntjtZt
	WgetVGydnpZfCIuCrXy4lbibAtfBLK7nVwD2kS51msYUh535FhN3sftU6qb3eDHlmJHjYS0bU/WmE
	UB4/acdfnbWcLNfu6HOZhhi/jxnesr3M0vysquHNDqk+11/0YPrkWOo5lMEem5qi6BRrfZHQyL5Ct
	3LCQGTpYkG3OvzGt4VHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtK4Q-0000000BAZ2-0eau;
	Mon, 10 Aug 2026 07:05:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtK4O-0000000BAYw-34aU
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 07:05:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 88AA2600BC;
	Mon, 10 Aug 2026 07:05:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4AAC1F000E9;
	Mon, 10 Aug 2026 07:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786345511;
	bh=9eSJpSpUXzZqqmw5n7BNROjSVyvntoETmebtXIOhlS4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UR27ukmzzu7hReOoZ9/ap/TFvhEh4DszExI+xwfSXY4wZcv8X9rlFXau7q4aN5GV1
	 S9lhFLaEbMaVWTR1/n9oWnH2LVo1j0E7w5hsLth/lPypC03c1d4mrTr46/SHZmjwnN
	 AEvFy22dCgULup/wA7hcjLO+9IbYus9meRhbqRS3xTG22XtVoszU8N8SNhvZLCur0j
	 oJXktlBLunLBtb3mCo9ctkRQLi/2cnaQE/XMzjguwgo2Da4unALW9N4rY2t4oe6XQC
	 RBUEUNuAEtplezKlhTdyLIzPmvklqsPRXzDQnh05VKcAUiVkBrB5MLHUIFDWPpRyQz
	 SrtiLCg1WXQkQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 03/12] dt-bindings: clk: zte: Add zx297520v3 LSP
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, lee@kernel.org, mfd@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260810-zx29clk-v10-3-63846490712c@gmail.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-3-63846490712c@gmail.com>
Date: Mon, 10 Aug 2026 07:05:10 +0000
Message-Id: <20260810070510.B4AAC1F000E9@smtp.kernel.org>
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
NjA4MTAtengyOWNsay12MTAtMC02Mzg0NjQ5MDcxMmNAZ21haWwuY29tP3BhcnQ9MwoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
