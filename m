Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB5DACA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 08:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugF0dAdyHc5sZTIuYu26mKjCNC3j454wq/d24UejgIs=; b=XJFaGYgMtckO6J
	TROAii/7nosjHA05o4vczRYUJZNFWfmKvav4IV7UbugTc+ICIcpmmnRqyin3iI9JXORFxH5Bu6926
	foaZj/58ufVbiYYFLIOa+IuOmuKPVB6B3lkBrtt4WS+VlSI4MmAjEKgasjMw14W3hXNthsR529SGd
	TYTtH+IfbdyL/E500FkI7Jct2SSEWchl3AXrAoPDDm2BN4RMcYS1RL3K0n2ag7XmH1TZNPFO7SmAb
	obAWv6ZW42cfgqKxIt2d9rPSo698n5A9MrvY9LjT4cXc+XkOV9PgUEw4M8V1XT4zVDYKVm7hb9qpG
	nKv4hTOJNI/B1GVaxqIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBmM-00000009zrW-2fbz;
	Mon, 12 Oct 2026 08:53:06 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBmL-00000009zqh-05pH
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 08:53:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F333760DC9;
	Mon, 12 Oct 2026 08:53:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5DCB1F0089B;
	Mon, 12 Oct 2026 08:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791795183;
	bh=45YrvmMDQ6QVG161kTArk+3NDJg159pe8dpu5wmApkc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kOTmSrlcBdrAmyMqCKn7Ia8fP1pHCxHhIqw6G3Zl7oI9By7NbC5DitpZbnNZotBb/
	 tHsIUmZ5Y55XUdlAhy5OIBRMXUVeR0D7L0RaUqufrqAQph8fzJToht1vfjzx5BjQ9O
	 4SuscqM1083vgDwu3nsbPyIL3Gq8HoCV1jxZPLc99IL1sTtSOPWV8lGOfoDMXLscjG
	 PXEH3R8R2GF07CW4kzPCBkYcmTxIdj/JgNxSjW2o9pStiHYVAak0rtpJkyvmKyNCbJ
	 lHA1g+r0gNzmkv06ngePIy1/EmTK+4omLetk24TQv9dac6Bt85wOQ1siq04QkKk/cf
	 GJ+0dpfhBX8WQ==
Date: Mon, 12 Oct 2026 14:22:56 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Pengpeng Hou <pengpeng@iscas.ac.cn>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: m31: propagate reset errors
Message-ID: <asyfzmoj6xlLKUhD@debian>
References: <20260830131442.3025-1-pengpeng@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260830131442.3025-1-pengpeng@iscas.ac.cn>
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

T24gU3VuLCBBdWcgMzAsIDIwMjYgYXQgMDk6MTQ6NDJQTSArMDgwMCwgUGVuZ3BlbmcgSG91IHdy
b3RlOgo+IG0zMXVzYl9waHlfaW5pdCgpIGVuYWJsZXMgdGhlIHJlZ3VsYXRvciBhbmQgY2xvY2ss
IHRoZW4gcGVyZm9ybXMgYW4KPiB1bmNoZWNrZWQKPiByZXNldCBwdWxzZSBiZWZvcmUgcmVwb3J0
aW5nIHRoYXQgdGhlIFBIWSBwb3dlcmVkIG9uLgo+IAo+IFJldHVybiByZXNldC1jb250cm9sbGVy
IGVycm9ycyBhbmQgcmVsZWFzZSB0aGUgY2xvY2sgYW5kIHJlZ3VsYXRvciB0aGF0Cj4gd2VyZQo+
IGVuYWJsZWQgZm9yIHRoZSBmYWlsZWQgcG93ZXItb24gYXR0ZW1wdC4KPiAKPiBGaXhlczogMDhl
NDlhZjUwNzAxICgicGh5OiBxY29tOiBJbnRyb2R1Y2UgTTMxIFVTQiBQSFkgZHJpdmVyIikKPiBT
aWduZWQtb2ZmLWJ5OiBQZW5ncGVuZyBIb3UgPHBlbmdwZW5nQGlzY2FzLmFjLmNuPgoKUmV2aWV3
ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5x
dWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
