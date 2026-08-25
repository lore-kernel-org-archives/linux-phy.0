Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C56D0C61DBD
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 21:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/FCNayUxwaP7JFKIN2VfSbyM7DanN/meFu5dvH0Ly8=; b=1Jpx76+HHhzatj
	MYTMHBYB/BoGcdygS+AMq7kQ16yZoWrK6nrbSyjiFP0rb9kk4ayM2rSG/F2ha2PxwA8NlPy7XZEpD
	y2PZ257D4Hbu28/Fsro1Sn6tufmwGakocxibd7lyyiQJNE6EM08Sj3if1wILet+pzfE8GlulRigxs
	nt0lc8rBmRuGQzuCV/9HHN/drH/fwaMgLOKvGuGAY7LjQfO1NMRKUE/vvpgl4qCTPXRjI9DixBukb
	chVeDItam2aK7ECqjund10Pu6FzOI/yqr+ZQhcQHIzKGT7GRvwnH8ObSTJrEcQUwWQH4iARaZQTKJ
	4nImk2z1kUBtA736q1oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyl4-00000001XTh-28yx;
	Tue, 25 Aug 2026 21:32:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyl4-00000001XTY-02Cz
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 21:32:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B8EB1409DC;
	Tue, 25 Aug 2026 21:32:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CCBE1F000E9;
	Tue, 25 Aug 2026 21:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787693557;
	bh=SUC54+43F1hf0qzQIv3VS47F/8oZat89ZOQQO5SprqU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HBoj23J7bfZ+45ahGYU96uX7yhOiReC65m+QUDgSh/8jjp1kzY/xKa9P9WCUDMOAw
	 ZreDPnCJIElCKT0v/rsHfdaHYLePKpt7ZB4CegIwjv6J8icfLiUPGNPfFn9Hb2SzIm
	 BE0Jcc+Hki0U+z9IczN9WzEffunATTOTvTgXLyQbJNs5Z/tynqwzh0Svu5CzqDZNrD
	 cvbxGZ2wiry6JghkfwezT1jjpVOEgF7F4rivss63R/doVd8SUyWaKudvGlRl8htuD6
	 PjNHJZWm9OsLW8oPB5/m6FGM8/k8qTGCCKiT1aCIdiIAuLdwyWR8kmZFRhw4bHjGk0
	 iOdFwUuNiADaA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 06/12] clk: zte: Add Clock registration
 infrastructure
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, conor+dt@kernel.org, lee@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260826-zx29clk-v11-6-f8ad59c6426c@gmail.com>
References: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
 <20260826-zx29clk-v11-6-f8ad59c6426c@gmail.com>
Date: Tue, 25 Aug 2026 21:32:36 +0000
Message-Id: <20260825213237.0CCBE1F000E9@smtp.kernel.org>
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

PiBUaGUgbmV4dCBwYXRjaGVzIHdpbGwgaW1wbGVtZW50IHRoZSByZWdtYXAgY2xvY2tzIGFuZCBQ
TEwgZHJpdmVyLiBUaGUKPiBhY3R1YWwgaGFyZHdhcmUgc3BlY2lmaWMgY2xvY2sgbGlzdGluZyB3
aWxsIGxpdmUgaW4gYSBzZXBhcmF0ZSBtb2R1bGUuCj4gCj4gUmV2aWV3ZWQtYnk6IEJyaWFuIE1h
c25leSA8Ym1hc25leUByZWRoYXQuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5n
ZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlz
IHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgyNi16eDI5
Y2xrLXYxMS0wLWY4YWQ1OWM2NDI2Y0BnbWFpbC5jb20/cGFydD02CgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
