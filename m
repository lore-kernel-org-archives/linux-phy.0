Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B390CA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 16:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9zRuAMz3YABQ99laxDqPcrrarqkkFhcCruNusLznmI=; b=JbO3v73oIGVKnw
	aZ8BaG2Hx4Ff2tfWgivpSY/PPvhtcACRfQ/eV09UoNcnIQoGx37uqzyAjO+rybITOHi7TqPVVHf6z
	MyHh9jTSZEpT94qxS9olurJ5y3fVyMuXxcZgqX+AFgVFxFTv9AwDKJGFh2+cn/daIMkrBiwo5Abae
	tQZSXfKT4g+IIRJYtb82hsCgwRXXWOuN7c3P3RPxERtef/two48c/goq0uVwB2s5mM3T3ZEwjuzKD
	hDmbCmqw7m4bnbLONw55t2JytPxXnmRxQzsFKMae0lmm75WqmtY7uDWaPTIYW2Ao1CPYLZj0sArep
	henleA+w4Tsy51u9qwwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIXz-0000000Av0t-3b6C;
	Mon, 12 Oct 2026 16:06:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIXy-0000000Av0f-3FLi
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 16:06:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4F09D41E8B;
	Mon, 12 Oct 2026 16:06:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 775731F0089B;
	Mon, 12 Oct 2026 16:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791821202;
	bh=gbkr106sXoUgppdlb+ZSrU2jd/q9tIoiewjkowRaRfg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WV5NNIbuTCFo2kzEUuJ6x5ZlINuthEvhTZcd0TCNpHCT8VL8HYaUDutljPXQTsuZ/
	 nUinJb59wS/oEfnjqewdH5z5pOAF+drVl/KdPdcrysY3veHHzvoTSEa02z1La5iNom
	 CBxSbvhqoQ0GGfW6KnBslU5jJH9rtNMtSR0v0mDeItmqpPWwgG4A7robOD8dZ3pON8
	 9/SPVIV70l2CKnR1kwVhuH8cqpHwpTFhNFxr0w9uSUS9SsQxYOd4K5HPPP3opZY4Qx
	 84BPioSvsOVkL0QKlQ1KMxVU7+80i5/FYoGvAAJ0uutSjCzv1Fuf5v1VW8VwbAXUgA
	 vquhjicD63Vuw==
Date: Mon, 12 Oct 2026 21:36:35 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Wentao Liang <vulab@iscas.ac.cn>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	mchehab+huawei@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, 
	stable@vger.kernel.org
Subject: Re: [PATCH] phy: HiSilicon: Fix PCIe device reference leak in
 hi3670_pcie_get_resources_from_pcie()
Message-ID: <as0Fef-JdS-fVBLI@debian>
References: <20260917133935.2153674-1-vulab@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260917133935.2153674-1-vulab@iscas.ac.cn>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBTZXAgMTcsIDIwMjYgYXQgMDE6Mzk6MzVQTSArMDAwMCwgV2VudGFvIExpYW5nIHdy
b3RlOgo+IGhpMzY3MF9wY2llX2dldF9yZXNvdXJjZXNfZnJvbV9wY2llKCkgZ2V0cyBhIHJlZmVy
ZW5jZSB0byB0aGUgUENJZQo+IHBsYXRmb3JtIGRldmljZSB3aXRoIGJ1c19maW5kX2RldmljZV9i
eV9vZl9ub2RlKCksIGJ1dCBuZXZlciByZWxlYXNlcwo+IGl0LiAgVGhlIHJlZmVyZW5jZSBpcyBu
b3Qgc3RvcmVkIGFueXdoZXJlLCBzbyBpdCBpcyBsZWFrZWQgYm90aCB3aGVuCj4gZGV2X2dldF9y
ZWdtYXAoKSBmYWlscyBhbmQgb24gdGhlIHN1Y2Nlc3MgcGF0aC4KPiAKPiBEcm9wIHRoZSByZWZl
cmVuY2UgcmlnaHQgYWZ0ZXIgdGhlIHJlZ21hcCBsb29rdXAsIHRoZSBsYXN0IHVzZSBvZiB0aGUK
PiBkZXZpY2UuCj4gCj4gRml4ZXM6IDczMDc1MDExZmZmZiAoInBoeTogSGlTaWxpY29uOiBBZGQg
ZHJpdmVyIGZvciBLaXJpbiA5NzAgUENJZSBQSFkiKQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwu
b3JnCgpQbGVhc2UgZG9uJ3QgQ0Mgc3RhYmxlIGZvciB0aGVzZSB0cml2aWFsIGZpeGVzLgoKPiBT
aWduZWQtb2ZmLWJ5OiBXZW50YW8gTGlhbmcgPHZ1bGFiQGlzY2FzLmFjLmNuPgoKUmV2aWV3ZWQt
Ynk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFs
Y29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k
4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
