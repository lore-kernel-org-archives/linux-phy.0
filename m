Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1027BC9832F
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 20:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3fuAhdTyhxmAPmWTBrwl9KFgY2a1uXrJgT5WqrMo5k=; b=ngH9PI1zK0vw2c
	xZQiHR5KWDyX44BP8BSxwNdAx5q6tahO4KM9Ona0Nw7PEMIyiCD91ebFvyoCZC7a4234rhS86DxKM
	R5EcFcjHZZFVT/6tW3P43d44++yTel1mMYiyeoLgogfwSqsMCFTMFVVKer0RSFAqwc4CDJhGuGCJ0
	s/uRBAwvH7oxHcFt5T4UwaWTsFA5kEq9tI8brRKl0fXYllAOqo2JETvlFzZCGQhuddVH3V/359sVZ
	P19Lk3L7u4BcTxGQ2xAmOH24hs4Ykj2j6608QQ79EgBc9pdxzb8BhpBC/uu2fDiai+xiHWxZI1HSe
	VLjx02NmgoqksIKvOI5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvxk-0000000GrHY-36ju;
	Sun, 27 Sep 2026 20:59:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvxi-0000000GrHQ-2j16
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 20:59:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 673B94075E;
	Sun, 27 Sep 2026 20:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADD361F000FF;
	Sun, 27 Sep 2026 20:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790542746;
	bh=BDM5MbOUOezyajcPRyt6vAUTkmAntOUfKfV/C38k/j0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EHNnqBDWWAXqC2c6W264+8xs44qNgyRw8EOfSLs3q9YrUu1xRzwBk1qsgts7FKfGE
	 yjUb7rtdC0VLU31EFahUW+i2z4ZwoX1R/4uGsXJEAzAacLZfwS08VTksYLqTOS8JqH
	 qqoZ27MttbJA7OloDRw85g9QS35xeHY0mVZTZT7Nqr1H0KUXgYQbOXRxjj6lqmoZY+
	 UUlyTXKskzdVMFLJMLg983clW6CS56ohslSkUZHLvDDwEzB3XWO8cGR882TmHJFvU3
	 SpL1tjRPgA/3ocRhV2rkzyuX2Vocrh8r7Ev0wIwZO6QDlo0YxY1Ckj645HyESudMS8
	 n+cFcrFkr1NHQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 12/13] reset: zte: Add a zx297520v3 reset driver
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: vkoul@kernel.org, linux-clk@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, olteanv@gmail.com, lee@kernel.org, linux-phy@lists.infradead.org, mfd@lists.linux.dev, conor+dt@kernel.org
In-Reply-To: <20260927-zx29clk-v13-12-70d8f673386c@gmail.com>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
 <20260927-zx29clk-v13-12-70d8f673386c@gmail.com>
Date: Sun, 27 Sep 2026 20:59:05 +0000
Message-Id: <20260927205905.ADD361F000FF@smtp.kernel.org>
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

PiBUaGlzIGRyaXZlcyB0aGUgTUZEIGNoaWxkIGRldmljZXMgY3JlYXRlZCBieSB0aGUgenRlLXp4
Mjk3NTIwdjMtY3JtCj4gZHJpdmVyLgo+IAo+IFJldmlld2VkLWJ5OiBQaGlsaXBwIFphYmVsIDxw
LnphYmVsQHBlbmd1dHJvbml4LmRlPgo+IFNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIg
PHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBh
dGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkyNy16eDI5Y2xr
LXYxMy0wLTcwZDhmNjczMzg2Y0BnbWFpbC5jb20/cGFydD0xMgoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
