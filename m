Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93742C61DBD
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 21:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6QiNaUI1/b73DtEoVZFiSEjzmIkxyALOSnwMOgG+FI=; b=RWH40EWmnYEoEJ
	BxkKCHBEaj1N7UrLyBFmRd/qU30gqCL4jUvhmmGTCAl5+oxZUjrZacXQ+jY5PMbB+88udv3Hj2TKs
	/8zbpY+j9pWUIfsyl5JoiE8+ZEKFkRqGMrmNmJduj7OQmpgxZHlK+1LvWsHqSjQSt+XnHrX8Geq30
	vxqG+gmwti2uJTNWfzvzcCY8TeQA9cRZK8pZz6MkjMjaCQ156mt0O54umgZXATbK3mS1ofeWT/ysW
	FUMPrbwAZpnvFDVBFUvxFWaevbYca78wMlTQ9zQ8rebMyCDBVe1VYGOb5Kw87dZV6WhEm+sXvxegR
	JSnkUQF3I6/V06WQl+4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyjk-00000001XMV-1RMj;
	Tue, 25 Aug 2026 21:31:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyjj-00000001XML-0bBn
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 21:31:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9B00041312;
	Tue, 25 Aug 2026 21:31:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E03E41F00A3A;
	Tue, 25 Aug 2026 21:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787693474;
	bh=CkcDxPN9x+COMhvEjvpoKsak0vJaqJV305Yrs+E5ab8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dzLwTNI8poar3fxOQwAMABLC6A5+6V1l8HpW1lPY6z8dxFzNbXjWeUVXoPQEeCbOn
	 Vvz7xQrwQtBZSE6jqpu5Xhs/vT/fzy+GAXHS41lQSjx1RgRgLzDI4ZHqkm4Y4CXlPH
	 DYWwjaIh39q9AxYRfwNkuHwGd6xPQNE1O2hcnsQIzwYwrgB4+qqtm6Va+c6MgKxXrq
	 zI+3MUjnBBItKBFqshZk9X/5Mpvj7AlK/naQVToXd0/eBvG6T+2UAywMR4sbQTn/t6
	 5wfDDV66IY3hezAF7c1gVhMh6wJhbsAzjB1uzZC+K88sE82YTtqLfNYCZAqJW4EwKp
	 zP048kQwXjH7g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 05/12] mfd: zx297520v3: Add a clock and reset MFD
 driver
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, conor+dt@kernel.org, robh@kernel.org, linux-clk@vger.kernel.org, lee@kernel.org, mfd@lists.linux.dev, vkoul@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260826-zx29clk-v11-5-f8ad59c6426c@gmail.com>
References: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
 <20260826-zx29clk-v11-5-f8ad59c6426c@gmail.com>
Date: Tue, 25 Aug 2026 21:31:13 +0000
Message-Id: <20260825213113.E03E41F00A3A@smtp.kernel.org>
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

PiBUaGlzIGRyaXZlciByZWdpc3RlcnMgY2hpbGQgZGV2aWNlcyBmb3IgdGhlIHp4Mjk3NTIwdjMg
Y2xvY2sgYW5kIHJlc2V0Cj4gY29udHJvbGxlcnMuIFRoZSBjbGstengyOTc1MjB2MyBhbmQgcmVz
ZXQtenRlLXp4Mjk3NTIwdjMgc3VibWl0dGVkIGluCj4gdGhlIG5leHQgcGF0Y2hlcyB3aWxsIGRy
aXZlIHRoZSByZXNwZWN0aXZlIGZ1bmN0aW9uYWxpdGllcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBT
dGVmYW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKU2FzaGlrbyBoYXMg
cmV2aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEK
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjA4MjYtengyOWNsay12MTEtMC1mOGFkNTljNjQyNmNAZ21haWwuY29tP3BhcnQ9NQoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
