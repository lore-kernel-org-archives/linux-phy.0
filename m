Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8F18C61DB9
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 21:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KzDe0g25ftFnMr+oaIDZzf1KndJVJq+WPQIqWnlWoOk=; b=jEjcVI4gFRTsvH
	QOraKQtxGRMaZb8byQdQNwcTy4y35afOkFXR8lU4Ak2do/vt7pP2RJm6pngvf0lP4cyuI0jkFb3hW
	ZUIjqntCz9GAeCzte0rRH3K2+bPovMy1PjTj265TSvM76Vj2jirShNNArHWtdthe/QVcytefJV+C9
	MQXYGXIlFZbrH0vWnCV8uizzO16v8DJNU9eydPOaDMKwUT3hEXkqV5ONX6J/88QJXJGGTO/qNNHY1
	2LlXHXJBVaANwpCF6Z/+hHJz/SEhbq6IX/6Kqql30BHSlIUPCI4IzL6nwLl/tauPKZiY3qFdyth+D
	1jPYhx2IuT+kgEf0XxGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyrG-00000001Y0n-2POF;
	Tue, 25 Aug 2026 21:39:02 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyrF-00000001Y0b-0htA
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 21:39:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4A8C660053;
	Tue, 25 Aug 2026 21:39:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 625271F000E9;
	Tue, 25 Aug 2026 21:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787693940;
	bh=aqmkmT7wtFvyC5BegtZqMt+78mk7sHfKD7OyrIkx6FU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iRcLPxnj/PDGemmUmP1DlRGsuu8Vhb+cjGsaL6muz3DNeV/0D6Sw9q2ZBme8Dwejp
	 OF9pEcfxkSxg9vEzRSukQoG9tiqQfPhbM9UHGlAScRnNKDvRXmroD9Vff6Y3aqAY9s
	 ZEZ59cIpCIIDWRtUKt5FsxszMNdfmipxVKmSMeUoBQoVzhYY41La5UCghXLG6eflwJ
	 lAeRjCntH/sqHFyxfkX73DVUxI6qeIfM5ld6RQlesiRHfypo4TkiGKwi4rqAXwIbO2
	 eJJQzS9yo9zwbMFIokGB5FyQ+VlkULNmwhBofDc0DFGVBO+EGQwenVsBXAEyskPDXk
	 G5GREy20yLdDA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 07/12] clk: zte: Add regmap-based clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: linux-clk@vger.kernel.org, lee@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, neil.armstrong@linaro.org, mfd@lists.linux.dev, linux-phy@lists.infradead.org
In-Reply-To: <20260826-zx29clk-v11-7-f8ad59c6426c@gmail.com>
References: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
 <20260826-zx29clk-v11-7-f8ad59c6426c@gmail.com>
Date: Tue, 25 Aug 2026 21:38:59 +0000
Message-Id: <20260825213859.625271F000E9@smtp.kernel.org>
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

PiBUaGlzIGlzIGJhc2VkIG9uIG1lc29uL2Nsay1yZWdtYXAuYywgYWx0aG91Z2ggc2xpZ2h0bHkg
c2ltcGxpZmllZC4gSQo+IGhhdmUga2VwdCB0aGUgY29weXJpZ2h0IGxpbmVzIGF0IHRoZSB0b3Ag
b2YgdGhlIGZpbGUgdG8gaW5kaWNhdGUgaXRzCj4gb3JpZ2luLgo+IAo+IFJldmlld2VkLWJ5OiBC
cmlhbiBNYXNuZXkgPGJtYXNuZXlAcmVkaGF0LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTdGVmYW4g
RMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKU2FzaGlrbyBoYXMgcmV2aWV3
ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEKCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4
MjYtengyOWNsay12MTEtMC1mOGFkNTljNjQyNmNAZ21haWwuY29tP3BhcnQ9NwoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
