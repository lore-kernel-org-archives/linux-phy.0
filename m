Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6063AC5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 07:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A4tSMp5+/YxsF1zQ6xrcVZnJ43LU5TFj14w+/tyT8s0=; b=YihWVe+xSufTH5
	7ht4b7zK2WlHNq46LHmXqjbsNDL+HrLbMFgRIMeBwf9Z+KshLFIcEm1FdHyuEox2+AIP84pRCQXMe
	ac8A8swU2hgQwol5t/5tCeoMUNvtmyloNrtCqivx6BrQg0/eRZnTk94yIc/6SJslYlncEWo26lJNP
	wGvaavUGaO68exA+zGDFJy5DWgkc97qvVagXqEK1ZqXyEt3Ci1xqZ7ISvbcM8Qyi+oW7RhC9e4PZp
	eaPNHeHrvuiMJLp6mcFNRxLBeCzDK+StfSRbNS+9alvIbzVnoeahtZeEK22cQSGixX+3cHowDBzFa
	25qonvAXnWyBDtNfyLbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtK95-0000000BAwC-0MZV;
	Mon, 10 Aug 2026 07:10:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtK94-0000000BAw5-2dPu
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 07:10:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 61CF543552;
	Mon, 10 Aug 2026 07:10:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A03461F000E9;
	Mon, 10 Aug 2026 07:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786345802;
	bh=g3lwjN4KygzX3jeFX7hPkut0TaCZW427Ur4W0f5Nn0A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dnzxQtrv0uE7zewB5ZKkhDs6WQckYuHI2IoyzqGJ4QLS3RieFl9p9LoNWEKLy/iQt
	 mRqeiX/bVHr4A5MPzs5IeIkAdWq3LSuFubewSRP8Yb1kexgP00skBuBB9H1dRc/RZP
	 96Wi6KcvMKZjxou3HhAYjJMwmkbwAm/JbpyWkaDHZ1MlUKnmqf/uGf7HBUTQh5Ba2V
	 +OCT3li/OKRm+B7dCdN8F3BueQHxPjmGoDab9gDeI1zEzoKL/KKiu9AehHJdm2A7ev
	 OfKJmbUbYCGMvcShwPAiEMY5XqB7PGk+4BdGQVDXQ/JUBtwiGjwQd1Epv/u+QhWxK0
	 +pDI4WO34vedw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 04/12] mfd: zx297520v3: Add a clock and reset MFD
 driver
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, robh@kernel.org, mfd@lists.linux.dev, lee@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260810-zx29clk-v10-4-63846490712c@gmail.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-4-63846490712c@gmail.com>
Date: Mon, 10 Aug 2026 07:10:01 +0000
Message-Id: <20260810071001.A03461F000E9@smtp.kernel.org>
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
MjAyNjA4MTAtengyOWNsay12MTAtMC02Mzg0NjQ5MDcxMmNAZ21haWwuY29tP3BhcnQ9NAoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
