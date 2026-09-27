Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 649F3C98338
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTxRijBz8C2XxItyYRPCc4SMgzaUm5cv4irj5eJMhG8=; b=m6Oui8QRxfftue
	Y0usF0SdxH1ytuW9K9BwHJsafF+OEnW5pzyTL2iwYd4lf9m1pZq6kjZtcXxreZJ6yba5wwFOxGEzY
	gcqpuhsuULCMwqxJacvEASUggDfOVwUKCCc4KgQhJQGwZzqic4usGwsHnNvWmBrnPavaspslXdyKg
	scApcz5q0g9EjFqxEpJsVwZpJUgvaHlFjjzjG2hktKoVBYtWGVrlr+08D0Uva2IqcdIscIduYsPOx
	eMz5RHOJXFGUGs6mbR0gYMCjWggZNCp8V3r4oNmDpqzhTBCVoUU82zmtxHl1pd3mQy7IJapOFe/fF
	+mkmg7IMgI1otmJhZkyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvtd-0000000Gr5v-0SZV;
	Sun, 27 Sep 2026 20:54:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvtc-0000000Gr5Q-0uLM
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 20:54:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 00A2243A50;
	Sun, 27 Sep 2026 20:54:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A2C51F000FF;
	Sun, 27 Sep 2026 20:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790542491;
	bh=S9/QhM/37a1i0wL4uKRWX1bWF6Kjw3MIZ0fO2jxzwhM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Cvff8DhfV5LWNL2Frl9Sa5bla4kWKZb8jyfN2/aO4JIMvwti+t6BuT9ZIdfHE6iiw
	 YgaL7BZr1PAf0tVt2bkMr3UTLH33xjttwiPJHNuZlfO9JPIcZEWX18LYcKwP9cKN0z
	 9T4DAeSG9z3KwgiyHBPYhZbsGfej7ktTZk7I5pSUBs2EAbjz9Vg61ME63IvSjqcMvp
	 pnzAsgoJKWaUdAjdFFJsoL6Nj8hirh3fdBwFyXOX8AL47aMu/58x6Pr8clH7mDmfWl
	 uzsMvQMTV6xU8R/iOdb2cz7e0oGjsbrdHZKOCUc9voic5+EKkVcZDJF8dr/HzhnCma
	 nGfxChvxIo5hA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 03/13] dt-bindings: clk: zte: Add zx297520v3 LSP
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, olteanv@gmail.com, vkoul@kernel.org, mfd@lists.linux.dev, lee@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260927-zx29clk-v13-3-70d8f673386c@gmail.com>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
 <20260927-zx29clk-v13-3-70d8f673386c@gmail.com>
Date: Sun, 27 Sep 2026 20:54:51 +0000
Message-Id: <20260927205451.7A2C51F000FF@smtp.kernel.org>
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
NjA5MjctengyOWNsay12MTMtMC03MGQ4ZjY3MzM4NmNAZ21haWwuY29tP3BhcnQ9MwoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
