Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE37FC982E1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 11:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mE+Z6eRowjbu/2Zie+juYR8jm//44G/igLNcvRVsdFI=; b=DIknwjIGCop08Y
	0Bfjdto/WBNBeKWt6Vj94WzG3kwlJym87bnb122xak7ccVpYOhOUpzL27iJzO1G0RPX2zj771RcC8
	S5RDSIUo7hjufgTvAV9jjo3YhsvRQl4LRfWoZzMx4mc8i5rhSJpk+7JSCkWobM1pJDWau7qZh/9zT
	2OWsFoMBdTgBjupF35gBHu2UZacAG3jYE4zvD74MKEKOuRa1ObnBS7CvvCJllhOrGBbNRwBi7V8Lg
	QpWEb9cxvagrstQA0smXgP+CngQJgu0UUw4i7Tc7G6XyUhTRnUrFrWc0d96tqkN/p01c4lg0fe+pf
	tTxAmxaVByQPKAtNSWaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cEe-00000001v9g-252o;
	Mon, 21 Sep 2026 11:31:00 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cEd-00000001v9O-1rZY
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 11:30:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2F48E6021A;
	Mon, 21 Sep 2026 11:30:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D1D81F000FF;
	Mon, 21 Sep 2026 11:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789990257;
	bh=reX35WPOw8SQVnDpR4qqsiOje7vbBxcXR/izIjNIKL8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=E6AHqRmKjcZWV1Wdscb2SmTIbZfcIeIyO+U3lmN3+y5/bddByyvF8/Xk1MZlsHROv
	 W9+fSXLDoV9mYaoCDt1L8OpzcQGJlCI2/WK7GGriB8ADI/HS5dGG1iVnHPIDfgt9mG
	 VgPosvAHvDztkDGF2i3++Hhoq/jFtrBb2Jt9kjU4p2Z7XLFJ21xlnVbCQzFH7k0GWS
	 OjpXg50bquZs7JYStqmPf9rRpVo6LXtlYzwfN82wDERG184WSVjezYcjKyTTO7Dtts
	 sQf/HFwMW/nG3iK1sg47fIQssxQ/hkKUc+66tbYN0sL3+Y+GHlNvBO412fMzogQDYK
	 bpu/nWdqdzb8A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/6] arm64: qcom: monaco: Fix pcie1_phy compatible to
 list qcs8300 first
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, robh@kernel.org, vkoul@kernel.org, linux-pci@vger.kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260921-monaco_ep-v1-5-63c5282fb0db@oss.qualcomm.com>
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
 <20260921-monaco_ep-v1-5-63c5282fb0db@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 11:30:57 +0000
Message-Id: <20260921113057.8D1D81F000FF@smtp.kernel.org>
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

PiBUaGUgZXhpc3RpbmcgcGNpZTFfcGh5IG5vZGUgb25seSBsaXN0ZWQgcWNvbSxzYTg3NzVwLXFt
cC1nZW40eDQtcGNpZS1waHkKPiBjb21wYXRpYmxlLCBzaW5jZSBubyBRQ1M4MzAwLXNwZWNpZmlj
IGNvbXBhdGlibGUgd2FzIGRvY3VtZW50ZWQgZm9yIHRoaXMKPiBQSFkgYXQgdGhlIHRpbWUuCj4g
Cj4gTm93IHRoYXQgcWNvbSxxY3M4MzAwLXFtcC1nZW40eDQtcGNpZS1waHkgaXMgZG9jdW1lbnRl
ZCwgbGlzdCBpdCBmaXJzdAo+IHdpdGggcWNvbSxzYTg3NzVwLXFtcC1nZW40eDQtcGNpZS1waHkg
YXMgaXRzIGZhbGxiYWNrLCBtYXRjaGluZyB0aGUKPiBvcmRlciB1c2VkIGJ5IHRoZSBwY2llMF9l
cCBhbmQgcGNpZTFfZXAgbm9kZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+CgpTYXNoaWtvIGhh
cyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxvb2tzIGdyZWF0
IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDkyMS1tb25hY29fZXAtdjEtMC02M2M1MjgyZmIwZGJAb3NzLnF1YWxjb21tLmNvbT9w
YXJ0PTUKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
