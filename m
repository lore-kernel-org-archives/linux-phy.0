Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6446C55162
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 21:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNFDO8bcjyOwQkdAkJd+9LCODfjSKD1pRUgMwN225V4=; b=sIAWAFTCX1SNdD
	3ZN72hpSFgsJddOclC7A1O6fLb7LEmN/Kf7UIvfm23gxfQ0iudUTL87+t3Amz3UtvI8tUwrElnNI7
	PcTGZpLo3kDE8kD4IdIFlIM7D3DCbpeMKsuGvTuWaZdIQ95eVVvCfMrN5b3kYsrvNBqEf/HUmIdE7
	niLfXa8sTgoDoztQSSeLYacL6GviKfe5sogfXf8wEPFF+YYkYz9tOJRe/NzZldhCBKKCvwsM26Ei1
	sF32+s3RroYCKQCODfOSDhREr9hUYxEoqNtRuCePXEBFUg/Es2X6OeN440CuQEfMgabXUdnLssQl3
	LdVp9EmlgTmP+0r+Cmvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqdh8-0000000G44X-1YB4;
	Sun, 02 Aug 2026 21:26:06 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqdh7-0000000G44M-3QBJ
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 21:26:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B595F600FF;
	Sun,  2 Aug 2026 21:26:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D401F1F000E9;
	Sun,  2 Aug 2026 21:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785705964;
	bh=0gkFw9OMVdRNv6WvW4l3U8SpNesPnDmt+Ie557rJdLQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WPvM84SCAwFKe9STRRdRIJfLGMyHg154aNpjSRXWjs2RLwBXAX9reYD9FBaYtpG7R
	 S/BmTwMLMmg7zHL5yKDBvN4FpAAMQzOZ/O/GgcIBajUUjxiXI4w5iykWWF8Rtnzj0m
	 Fqq08nXxKfi6N7mRni7NV4LF914GN+F1QioMIAYS7r5xzBy8YbtQCV8m09abL5wpbe
	 voO3UyCf8JKenmd0dSjltzL3mo+jK6bBdRGa4NV+HMlfoGObviztcf/zcBqt36F6Zy
	 ZUhRQCmVUWrUtd0jMJE3A9JbJguvMBCsjcXph0gjkhIFYK8XDlx1/IxUUNWoc1MV1W
	 JUxEdt1Zkj83g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 09/12] clk: zte: Introduce a driver for zx297520v3
 matrix clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: mfd@lists.linux.dev, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, lee@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260802-zx29clk-v9-9-d05530d85d28@gmail.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-9-d05530d85d28@gmail.com>
Date: Sun, 02 Aug 2026 21:26:03 +0000
Message-Id: <20260802212603.D401F1F000E9@smtp.kernel.org>
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
YXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODAyLXp4MjljbGstdjktMC1kMDU1MzBkODVkMjhA
Z21haWwuY29tP3BhcnQ9OQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
