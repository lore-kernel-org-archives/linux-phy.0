Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1397C9832F
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 20:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+uu3egCQ7+ZO6ZgaPsC6GYh9Y9BESkqsa1YdWyOqiMY=; b=k3vY6NU8AaX22C
	ezJRkF7puB+pkqI24spt2BmmW/7eEWhS68XUlKuAKwIbhtiWIwCSJWxB9eV9CeZ8VoPV+/fdQjTWX
	LyEM+8YmAS1qpjnUFg0M0dVn/LmR4Eo2lZcZQaEcEwKoOHqDUtKxLKJnpHbPkds8JuNzt/DpbS33o
	H4Yf1i8fCtaCSmH2+MWn3vuFhcqym/ywjW3wk9M1s9rejeDUkmiFOwqREXkZsz4TQPyWf1FQEMLFh
	uHtasA9Xifqv+VeMOTq5bM+sAWToMvfykP/iwGwTitGK/+WzvQKnEfP+bVJA8upm+fp22hPsYtizL
	yj5ayJUIKa9fP1BpsBUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvwA-0000000GrEP-2Hkq;
	Sun, 27 Sep 2026 20:57:30 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvw9-0000000GrEJ-1lsb
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 20:57:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 237C74191C;
	Sun, 27 Sep 2026 20:57:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 935741F000FF;
	Sun, 27 Sep 2026 20:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790542649;
	bh=pAV2/m4s9s0DycIjaLsUYzYqAH9x2316qRLAKaf1HkI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jzI7l27fQYjr7Tg9ryRjuObbIgOFDzgz2BizWts6kcBt+w2L1KQ2hozeoViU55d9T
	 QHv+qVrpEYtUWNDEX8EWhTqyIB1ChU6SVcyt/Rt378SEsEuaRSE9o3v+gVkueKbLhQ
	 h6jZ+ttUoicxbjbgwSBpRnuOj5qcuCR1zX7JFq3t9H2p/O+OIwez+EFHSb93g6l61H
	 2C0O4QE4TXm4LzN1IKofjTviWv5twNJJTMcm8cL6Dv9acLA2DuelTfUP5KPxkY7MnC
	 ge/fCIWBCnSgp9/xIEn6C2EZrUeOsEaWvkWhH6oyMqKrBCDEb4Zh3v27r/fEZD5Wm0
	 bNC8cCjgUUG6A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 13/13] ARM: dts: zte: Declare zx297520v3 CRM device
 nodes
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: linux-clk@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, conor+dt@kernel.org, lee@kernel.org
In-Reply-To: <20260927-zx29clk-v13-13-70d8f673386c@gmail.com>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
 <20260927-zx29clk-v13-13-70d8f673386c@gmail.com>
Date: Sun, 27 Sep 2026 20:57:28 +0000
Message-Id: <20260927205728.935741F000FF@smtp.kernel.org>
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

PiBUaGlzIHBhdGNoIGFkZHMgRFQgbm9kZXMgZm9yIHRoZSBtYWluIGNsb2NrIGFuZCByZXNldCBj
b250cm9sbGVycyBvbiB0aGUKPiB6eDI5NzUyMHYzIGJvYXJkLiBJdCByZXBsYWNlcyB0aGUgdGVt
cG9yYXJ5IHBsYWNlaG9sZGVyIFVBUlQgY2xvY2tzIHdpdGgKPiB0aGUgcHJvcGVyIGNsb2NrcyBl
eHBvcnRlZCBieSB0b3Bjcm0gYW5kIGxzcGNybS4KPiAKPiBSZXZpZXdlZC1ieTogS3J6eXN6dG9m
IEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBvc3MucXVhbGNvbW0uY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpT
YXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxv
b2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDkyNy16eDI5Y2xrLXYxMy0wLTcwZDhmNjczMzg2Y0BnbWFpbC5jb20/
cGFydD0xMwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
