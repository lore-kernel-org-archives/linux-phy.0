Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B6E5C55174
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 20:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldoElhp/EM8fblXMVWdNHyJuqtwFj6BRPNfL86ibc9Y=; b=mbJyuZe40ghu0n
	rLhtNAwgZKguGJe8YkbcqT6MmFRzN8Xkb7FB9PNXfeu04nEK+7TGIywKxpbAGv7spUHXx3JxEMBlG
	zFkNQo9se3j4u3x40Jm/7wdvAWggB41chA+8dA2tjLJg/RcCvFQ9bafF33X0h8uWrEZIvmv8YnAxw
	mAOtEZhI9mDRuauTPH4iBWx7kUiSF1sBhL3QR7he+TMe6QATdU9Hu1/OiuqYKqd/Oc16WAE2hBtnU
	sjWwWmrewAfZeR6IvYgunOGb4Ql7goGCj39FzaobbEASwy2Isi7oH+hYddKsjvx4LxpEa0TkzP9P5
	3TWL97Js1LUhEYe6QYeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqdAu-0000000G3F6-44zH;
	Sun, 02 Aug 2026 20:52:48 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqdAt-0000000G3F0-07JO
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 20:52:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3E02D4087E;
	Sun,  2 Aug 2026 20:52:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95DFF1F000E9;
	Sun,  2 Aug 2026 20:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785703966;
	bh=4BeU+Qx3FYCVI8MVXzLdPjmc5RDQuvcsHe7P25KBBHk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SBT+FwWGq7FhZWni5P8TB3fx9IbN+f09FN2BB6WkCRpGSAR5l+HXLsA5aXzw5lkSL
	 DMIKuEXCApkvxqdt66HfSL7qcJVQvfHkF9+02B2enf0XGuafVkjJOF/nxIx5ZFkCDL
	 G85xWcLwl3EmBbqG4jRH2bcz6r0LyuXgsE0WjdgW8tYn5z23ePiDg6+cdeqGk59Kg9
	 KFDYc2AQod6YFyh4+FFsZpq5UNljFVaoZSKNoIBNGjvdktwGz1zHxWqQvhzuBrLY0x
	 sMJOA80u9B08zWLqq50B5SayhEx7SQnLIT6W2HjCcAnIZhgUvOFw5bm4mlptLWBr3U
	 Z+H6punjUkA3A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 07/12] clk: zte: Add zx PLL support infrastructure
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, lee@kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260802-zx29clk-v9-7-d05530d85d28@gmail.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-7-d05530d85d28@gmail.com>
Date: Sun, 02 Aug 2026 20:52:45 +0000
Message-Id: <20260802205245.95DFF1F000E9@smtp.kernel.org>
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

PiBJIGFtIGd1ZXNzaW5nIGhvdyBtdWNoIG9mIHRoaXMgaXMgcmV1c2FibGUgYW1vbmcgb3RoZXIg
enggY2hpcHMgb3IgZXZlbgo+IGRpZmZlcmVudGx5IG5hbWVkIFpURSBwbGF0Zm9ybXMgKGlmIHRo
ZXJlIGFyZSBhbnkpLiBGcm9tIHJlYWRpbmcgdGhlIG9sZAo+IHp4Mjk2NyBjb2RlLCBJIHRoaW5r
IHRoZSBQTEwgY29kZSB3b3VsZCBiZSByZXVzYWJsZSB0aGVyZSwgbWF5YmUgd2l0aAo+IHBsYXRm
b3JtLXNwZWNpZmljIGJpdG1hc2tzIGJ1dCBvdGhlcndpc2UgdGhlIHNhbWUgbG9naWMuCj4gCj4g
U2lnbmVkLW9mZi1ieTogU3RlZmFuIETDtnNpbmdlciA8c3RlZmFuZG9lc2luZ2VyQGdtYWlsLmNv
bT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vlcy4g
SXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwODAyLXp4MjljbGstdjktMC1kMDU1MzBkODVkMjhAZ21haWwu
Y29tP3BhcnQ9NwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
