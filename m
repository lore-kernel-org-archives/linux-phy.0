Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FC04C5AD4E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 07:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mspg/6t9sVgXeuO6DVgXaA3J8yYEEiJ9jYHUFYEo5oY=; b=yTJdM7LH79G2yV
	c6qq4jmDl1D5BqJ6yvo1pXw3iCD4zfcGJza+U/JxLibZlg2TZiEvX42G2qrU/7ZUT02eMRk228DQP
	vezHJiyidwQ3g16vddZscQ3Jo0d/DAsbElaiVrwGXLtoHXwnYsNd7KNUagvlckoK9I7OHFVeeNHrt
	TZx0A2WBU1H0ISuAfv8nK6s+DFPeeoPv6/XfbCXTgRtE9KTwmYn6AE3s9hYK8olpAAAiLLHhDUlLd
	nFXIq7kpccPOhEPRpVRJb1H8BuZUjGNB8wgY7jKT/eAi2nwqZlfB24XRi6gSX0YL9jXBPU49uN51l
	8x5K4WGymq+VsSSsLH2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKDU-0000000BBKt-3LYN;
	Mon, 10 Aug 2026 07:14:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKDT-0000000BBKP-12pr
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 07:14:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0766943BBB;
	Mon, 10 Aug 2026 07:14:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 564011F00A3A;
	Mon, 10 Aug 2026 07:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786346074;
	bh=6OTn8+yVpF8MULe5C69638LKQctt8U4SZZHZOoyVWOA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KDE83Osck3mrMqIkQgLzxLG/ugS5BoyLps6rH4W9h5449zoGM53084qDlNAHskQg5
	 1deRJbkHaaq3LXKJfaMRG/mGMqjiy8mtT6klqhqreLlCpDk2Ck1OkRr6esS2Xae7zQ
	 ifu3O63JRGIaJB7wRvOafW2qmdCE3cXx3FJ44HhsTTbUt0dkvm8knsZh+/XSJcEIy/
	 U2EwKY2MTQT4H3qwROH5MG1UNXAZBVDduZkAwRA7TNK7HEFIiSEeEk59CsQZ8JG7O4
	 WjqtjvxuOy5NNCSjMFLvOYe2+nXJVYY3P4ksFSTcRXWP4kR1R6OechmqhdjVKGKTly
	 WtI9VVg6x7btA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 09/12] clk: zte: Introduce a driver for zx297520v3
 matrix clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, lee@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, mfd@lists.linux.dev
In-Reply-To: <20260810-zx29clk-v10-9-63846490712c@gmail.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-9-63846490712c@gmail.com>
Date: Mon, 10 Aug 2026 07:14:33 +0000
Message-Id: <20260810071434.564011F00A3A@smtp.kernel.org>
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

PiBUaGlzIGNsb2NrIGNvbnRyb2xsZXIgY29udHJvbHMgaGlnaCBzcGVlZCBkZXZpY2VzOiBDUFUs
IERNQSwgUkFNLCBTRElPLAo+IEV0aGVybmV0LiBUaGUgb25seSBub24tY2xvY2ssIG5vbi1yZXNl
dCByZWdpc3RlcnMgSSBoYXZlIHNwb3R0ZWQgaGVyZQo+IGFyZSBoYXJkd2FyZSBzcGlubG9ja3Mu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIETDtnNpbmdlciA8c3RlZmFuZG9lc2luZ2VyQGdt
YWlsLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlz
c3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9z
YXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODEwLXp4MjljbGstdjEwLTAtNjM4NDY0OTA3MTJj
QGdtYWlsLmNvbT9wYXJ0PTkKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
