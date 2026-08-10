Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DE7AC5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 07:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8ek/1SnOrtscT46l9MqadH0sLaBx8Gm9105k0E9Udw=; b=oJsOzlW1mbfg89
	7e/S+N1puucmmp8VIv3hdHbDT8Yq/teqe5842Od5JlI0DKLvwuCZ2scS+m60XjyeK2JEyJM7J4vVz
	co/jP4A+/pQqK7AQX1wP5IQDhSi6dmg0lQDhNqPF3KtJHZu1ouKspxLNd2SeisTCKEf3ZvPhxZDYD
	O482Ra4Wxwp7uosFhAQtZKvB30aMmYijnS+R4bk+Fxe9sRKegK1ke5E3QFEUNTk6UQ4QQIKXiC3f6
	lrTSlwkePikBeUBLr6KsQam7shgAgd0m/awx/XmlZm7K/nj6WVqH4zGNKxwr+xl/sSOPlWqQbJXkr
	2R8iMFAt/RfhSRWvaqJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKE1-0000000BBQj-40Np;
	Mon, 10 Aug 2026 07:15:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKE0-0000000BBQV-2uo2
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 07:15:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 743AE411EE;
	Mon, 10 Aug 2026 07:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4CD11F000E9;
	Mon, 10 Aug 2026 07:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786346108;
	bh=QbYftZKohLDayC5vZpFy2SUkABxfV2wz4hxMSwTCPy0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UqwkZAq7/crOaY0Hh4iXPWK7HpReQh583AhT1BpYtB8H1iP4aM2EehuqYCdjB68/L
	 XF4xVuK4lOPGrBO8fwofMWJfGWzm32MOoTwHYGxmpjD/qo5JNsJDf3ZZIFQJDBBX/s
	 wCvfSAqSgg9+CBabdZYazmBciapYBpwydWVxLq9M3B3jAM4ayRMSeRBYAG98/dyb7E
	 k503SLOCKhVla9UrRf1+MSWZ4OMuuBL48qQA9Bc1QsDiYijjvtU6fLjtMxJnZTQ/RM
	 q+YTosvF1kfOYDv8XEahNcRDgXx8oJ+pOHKbq0VGFR5CbUSFJVdDO9jXcR9eVJypVr
	 bo2T57XnUB7ew==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 11/12] reset: zte: Add a zx297520v3 reset driver
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: mfd@lists.linux.dev, neil.armstrong@linaro.org, lee@kernel.org, conor+dt@kernel.org, robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260810-zx29clk-v10-11-63846490712c@gmail.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-11-63846490712c@gmail.com>
Date: Mon, 10 Aug 2026 07:15:06 +0000
Message-Id: <20260810071507.A4CD11F000E9@smtp.kernel.org>
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
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgxMC16eDI5Y2xr
LXYxMC0wLTYzODQ2NDkwNzEyY0BnbWFpbC5jb20/cGFydD0xMQoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
