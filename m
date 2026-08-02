Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9DE0C55174
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 21:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/UgJu98v/HnncAcH2ET9utoVvhCD/xp6EnfLs9Oal/Q=; b=cTR4czhtn1sBoz
	njDGogiINJUPRJIz0aelYA6k4fx1xGtogOUDNPdosv7euIC4EfgndVogt09LMk6J85UlcHasSPjz0
	/3pUFVKy9Dimq95emSqnOnho5KQEPupwa+h6GbLzNvg6ODwVdpXMaFfF+dR2v8lr8zSQf3bu6JA1H
	wJwJFc5AnVBZmWmIyE00fwOf5D16U7Q40i2Xa8ZfWIcd9N2jFHASD/vUm81jx9Uqq8sXLiW+Z2KuQ
	zFPPQl4PSLmKXRBm34dP1PlGlM92SMG5Pb7V7B8CJar0ac7XIxqAnYwPlMNFpI14OvriCYbNavhO9
	W270Y3MesqXE9ELJL/zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqdLP-0000000G3QF-2jIz;
	Sun, 02 Aug 2026 21:03:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqdLO-0000000G3Q4-1UVu
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 21:03:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B86AD4377F;
	Sun,  2 Aug 2026 21:03:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A3E31F000E9;
	Sun,  2 Aug 2026 21:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785704617;
	bh=hO+OoHLKKkox39ohtT28wGuGpm7pWF0RUNOC4LSXsiA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Mk3iF/0V2wP2dTS/dGUtsohxq3Qm94B5zIhG/jyqkLi6fJnBtjwReUKoN5WAGVGK5
	 5kPS85XuVXVact/DCZFk5UDETc9y2C1NQ0PxAkrW9woMNvGjhnxa4c95dBfrpXTwNx
	 vzgkRFvDEVs2KYxXQJIgsZwy6FGPVbw9xnlimiQcWC9XpFB8PjmuegkxqAI9X7JBTL
	 QJBqDWSWAXrYqwEKu/X/O3BpDQOJGxXJ8eaayV/bvjAqMLC/ly6jms5b42rHCndj7n
	 fomgpNHbeVL8IUcraHW4yVYEfpRQOTt6RD0HD0r7KqbGLAe9ur/umpHZX+pzLhQIZq
	 n9a8hO1LyJsRg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 12/12] ARM: dts: zte: Declare zx297520v3 CRM device
 nodes
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: mfd@lists.linux.dev, olteanv@gmail.com, lee@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org
In-Reply-To: <20260802-zx29clk-v9-12-d05530d85d28@gmail.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-12-d05530d85d28@gmail.com>
Date: Sun, 02 Aug 2026 21:03:36 +0000
Message-Id: <20260802210337.3A3E31F000E9@smtp.kernel.org>
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

PiBUaGlzIG1ha2VzIHVzZSBvZiB0aGUgZHJpdmVyIGFkZGVkIGluIHRoZSBwcmV2aW91cyBwYXRj
aGVzLiBJdCB3aXJlcyB1cAo+IHRoZSB1YXJ0IGNsb2NrcyBhbmQgcmVzZXRzIGFuZCBhbGxvd3Mg
Z2V0dGluZyByaWQgb2YgdGhlIHBsYWNlaG9sZGVyCj4gdWFydGNsayBub2RlLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpT
YXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxv
b2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDgwMi16eDI5Y2xrLXY5LTAtZDA1NTMwZDg1ZDI4QGdtYWlsLmNvbT9w
YXJ0PTEyCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
