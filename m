Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B33F5C5AD4E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 07:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJ5jtBuWtKvtz5AjOQAG7XNmyRH37MWUWQLBqHtZZuc=; b=s8gyl9txhgMWCh
	oigstv2rQbHUIjK3SFt8lfCjniXLrxxhMtCFzVqLZwHLdRWkqDtgJwM4O0RQzcNTtMvs8K8SYMdCH
	lpY1GGZb3ILf9CbqQ5FnGMOhae46pGqm+MANWuRri+go2cS1cZcwxvngNfMMtqQuFTNiOUVExx/Xg
	0hqKJo6mOvwLOULKIMn6lgjjZpHzyK6qBoglosJ+EVqfrlKsdXjmxGooeED5GOlOk6IOKhgJnJAfr
	0vtf04W38Lx/CZna2EhwFvrYtt6ZLmrVw8tjC+4sd+INVhsf78eAM3xc9E0r9J2mZJgPTwgqYkp7b
	bvL/7o5aFE2yGrWzJaOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKAO-0000000BB2O-1Nkc;
	Mon, 10 Aug 2026 07:11:24 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKAN-0000000BB2A-1z6E
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 07:11:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3EF3640B37;
	Mon, 10 Aug 2026 07:11:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91C581F000E9;
	Mon, 10 Aug 2026 07:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786345883;
	bh=lW3zJJwLmzYDz5SFrMRO3XErykbKpFqesISfjZ2rsuM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ubc3TEJGwmUVtKWNOXJG9ks8hHqYK2ETOPGK35NKB9ZGEIKdlBcqQpbha+C2Weql6
	 lR2B3ebAkuHB4tZ7nPZp8iBTogA64/0yrvssQVde1QthZ71T6EWBh7kjYYu3v6vnbQ
	 azNw6farn4DCn4VzWae2P4eJOsFcsJSSy5UhbyBaB8HYT63ilesJvSU27l0Ff8kIms
	 o6WyfBwa+N+XU0hog3kTUFYzl8NZ9VTpS4f57f8zFy+OcItmtRY3khRO4XR7d/6MFQ
	 4gwI6eq3RVpMLLymaN5gYsY9QS0NiijEsESzrDhR51m3rptILv9XbOWkR5w3yI7prr
	 J0f7v8C95S6OQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 12/12] ARM: dts: zte: Declare zx297520v3 CRM device
 nodes
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, lee@kernel.org, vkoul@kernel.org, mfd@lists.linux.dev
In-Reply-To: <20260810070311.1110849-1-stefandoesinger@gmail.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810070311.1110849-1-stefandoesinger@gmail.com>
Date: Mon, 10 Aug 2026 07:11:22 +0000
Message-Id: <20260810071122.91C581F000E9@smtp.kernel.org>
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
Iy9wYXRjaHNldC8yMDI2MDgxMC16eDI5Y2xrLXYxMC0wLTYzODQ2NDkwNzEyY0BnbWFpbC5jb20/
cGFydD0xMgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
