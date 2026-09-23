Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78812C98304
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 18:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0lfdN743bjE3CWn9D30Nc38ZHEdT+3nYA89zVftHcDY=; b=vE9krqJh0G/Xwp
	dunRpW7UC5Y8nnfySn8GAyiCPZnLOz+LjasoXByqumM46CCqxGyfrXcFL+ISyKqW1OsVdHClKJNad
	u8ydhS6Q5DnFZAnYpW+oq/z1O39GdRRafehyjsF3jnCoZGHirMRI1hUryKuOxapT/ij7K7pQXVEEO
	7kUjC4h4LQXGa58GjzZ8GCQApuS91ZY4hS97DFhAerDzUpGRUw13o9TVOkbX6sUqgG9gmVdjdl4QL
	p7ztntGC6dpG6/ErTUZutfLmnedH/t0LyFCFeuJ1+vZCFLKag9fs0J7AXjDacbMeaDw7vZS70kgPp
	6iLCmxGfv4L/4XTp/wdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rtj-00000009Ey8-0aKk;
	Wed, 23 Sep 2026 18:40:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9RtD-00000009EsZ-0iIr
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 18:40:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D77DE4041D;
	Wed, 23 Sep 2026 18:40:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B28A1F000FF;
	Wed, 23 Sep 2026 18:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790188818;
	bh=vV0fvju4+EMTqwsDD6KRaSk1zgkxUgO6ApN7zcO5Jas=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PYRc/MlyWTfVtmJMwMwzutz5cWs4FFeZOrWjLtTJ0CYNf1KfwZC9XtTI1DsSALlHj
	 S5LKyX9GOvy3mp+MF2f3ALZ3YITZ4iwdRRptYS8TVZOrJGkQuvYKtqcOl1tRVg/8AC
	 u2ZGPhPV/eMAIC83+F1BuwbyAwGKi6W2hF5d43UNrA/YwTQUueimnn1/FIPYdNDc3B
	 Do+o2ecDSYBs3tyztcNiugZRDCOGV4X9uMRkbFs6nz+abqlOddhE/wJ8ph1VzmmicL
	 MGPhPGf1PkiB6D0KMAowPvSkvXUiuHMuVo0QefzYvJuwHM8l7mvbADr0GcklUEMEV8
	 awUqqwaFedSfg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 10/12] clk: zte: Introduce a driver for zx297520v3
 LSP clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, mfd@lists.linux.dev, neil.armstrong@linaro.org, lee@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260923-zx29clk-v12-10-9c243796b6d2@gmail.com>
References: <20260923-zx29clk-v12-0-9c243796b6d2@gmail.com>
 <20260923-zx29clk-v12-10-9c243796b6d2@gmail.com>
Date: Wed, 23 Sep 2026 18:40:18 +0000
Message-Id: <20260923184018.5B28A1F000FF@smtp.kernel.org>
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

PiAiTFNQIiBpcyBaVEUncyB0ZXJtIGZvciB0aGlzIHBhcnQgb2YgdGhlIFNvQywgSSBzdXNwZWN0
IGl0IHN0YW5kcyBmb3IKPiAibG93IHNwZWVkIHBlcmlwaGVyYWxzIi4gVGhlIG1haW4gVUFSVCBp
cyBoZXJlLCB0b2dldGhlciB3aXRoIHRoZSBmbGFzaAo+IGNvbnRyb2xsZXIgYW5kIG1vcmUgc3Vy
cGx1cyBwcm9wcmlldGFyeSB0aW1lcnMuCj4gCj4gSXQgYWxzbyBoYXMgb25lIG1vcmUgSTJDIGNv
bnRyb2xsZXIgdGhhdCBzdXBwb3NlZGx5IGNvbm5lY3RzIHRvIGEKPiBiYXR0ZXJ5IGNoYXJnZXIs
IFNQSSBmb3IgZGlzcGxheXMgYW5kIEkyUyBmb3IgYW5hbG9nIHRlbGVwaG9uZXMuIFRoZQo+IGJv
YXJkcyBJIGhhdmUgZG9uJ3QgaGF2ZSBhbnkgb2YgdGhlc2UgY29tcG9uZW50cyB0aG91Z2guCj4g
Cj4gUmV2aWV3ZWQtYnk6IEJyaWFuIE1hc25leSA8Ym1hc25leUByZWRoYXQuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpT
YXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxv
b2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDkyMy16eDI5Y2xrLXYxMi0wLTljMjQzNzk2YjZkMkBnbWFpbC5jb20/
cGFydD0xMAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
