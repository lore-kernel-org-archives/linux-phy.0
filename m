Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33E70C61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 07:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxTsxx61jYxdCS2yv5vb+yxRcFmveR0m3KP4Z86ptkc=; b=ySjWClBADpsR6c
	5kZo74gLD8FdifAf1rt0YASTRidyfUi7knypMi/llWf8cfx/dC5UxOCcwX2j8DEfFOfogHLgDc2IK
	1hCNp7pFWvSJEpFwlYpglUJiCNHh6eNci20ibpIKMTfUL6BD1uxpq9IbFR2/Si1uuDdcf/pge3uO8
	aeDLvE/iagzjgRGS7x763e243SeWSuM+qCCXtYq2D6dyMyKo47wxncvQK1Znh+xlnVkP11jsKXd+F
	xbwsrdaWNePlbZcKINNgZsQUl0aLJpBFelj80j5y1zVs5q+unVukO70F3UGL/GNQsv1VfUcOlX55B
	K0Algcwe5vJ+CAA7qOrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wXY-00000008jiV-3EzS;
	Mon, 31 Aug 2026 07:34:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wXX-00000008ji5-3vB4
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 07:34:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 36F5D60120;
	Mon, 31 Aug 2026 07:34:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EDE71F000E9;
	Mon, 31 Aug 2026 07:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788161685;
	bh=cOTWeZHeGJJD8RT1MIjvhM/90p/j7DZvaY7cSnltyMY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fHZUH7g2CBmqUKaEmL41vc60jvK4phoK81BGEO+4lcI8pwkckueH0tw8/sXaY0Vcm
	 NRK+L2SSEJigeqcG7vf3itef0UuqOhpBwt+MzCpZf6dRJuJJk40t2uF6k58ZD5FDWy
	 M5H4/EguZ87Rj8kho1rDtQy1XvL7HHKKG427BkqrKPQB4xWTfobW97zuq04kF7XYLX
	 vXiv90hcSTdMFKu6tOCzwcedyqgk2pssnqoXX8KVlzjeG4r3UiDzUUltHOwWJTGy+/
	 YnTpVoGrtfIAMR85VQXgJFMn5NH6rRGZPO4RzUZImAFtV8XzUVyFoOf0bGZuWqoMPa
	 H11Mt7sscNfLQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/5] phy: qcom: qmp-pcie: Add QMP PCIe PHY support
 for Shikra
To: "Sushrut Shree Trivedi" <sushrut.trivedi@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, linux-pci@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260831-shikra-upstream-v2-4-406661d75afa@oss.qualcomm.com>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
 <20260831-shikra-upstream-v2-4-406661d75afa@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 07:34:44 +0000
Message-Id: <20260831073445.5EDE71F000E9@smtp.kernel.org>
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

PiBBZGQgUU1QIFBDSWUgUEhZIEdlbjJ4MSBzdXBwb3J0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFN1
c2hydXQgU2hyZWUgVHJpdmVkaSA8c3VzaHJ1dC50cml2ZWRpQG9zcy5xdWFsY29tbS5jb20+CgpT
YXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxv
b2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDgzMS1zaGlrcmEtdXBzdHJlYW0tdjItMC00MDY2NjFkNzVhZmFAb3Nz
LnF1YWxjb21tLmNvbT9wYXJ0PTQKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
