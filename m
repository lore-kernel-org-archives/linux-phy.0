Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E15CC98304
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 18:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cttXsCLk/gKWFzUw3MkoFkKyXtndckL0ZHFu/bX8go=; b=3zdSneeKZGtbnp
	rI1mxi/SjRxs6xV5CBPq3fGi8b0j+heTBTzTANFq7H75M9RFiDHq6IpdoB3WGL8KNx0xF7L4PB+rf
	pUC7wqb1FLQ+RSVBrAc5a3Tb5Xhapg/piZpMfqHZIy26vC9Ga/vJbw8eaJUroz4gb4gyHcOczFDJI
	aBET0daEPilyWy+FxsMEcycov7+K4YjeEgpNlkW3rBLK4A3PCoBjfITDYc7YGQLbclWgIGZ5EZDC1
	gR06OiGVtKdB03xENSiTmyJ/uHFMFMyTfhN0HYjD1aJbzFW4TGaEUnCTqzQKfIJ/xL3waw1K+d2vn
	5Xdu+e2vguVY4GmXhKpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rpv-00000009Dfa-158S;
	Wed, 23 Sep 2026 18:36:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rpu-00000009Df8-1LCz
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 18:36:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C1A6A424B3;
	Wed, 23 Sep 2026 18:36:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D0661F0089E;
	Wed, 23 Sep 2026 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790188613;
	bh=9w+NeOKF1/tpzXMRutVawDZsBVP4esvyScjjQmUReks=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=C3TldIf5ErUN7G9oKZDlsLLvoMeJBaJTl3pzUlaw0lzWWBcYR2BFjC4oeW0GwRWzY
	 6hJFC9V1GVJ+xLD3vOdPXWcuA2fVEdrh3NZSPYld0LmjPvpeapfn0ltg+JPaQ1Je+1
	 bbElxgU1C3czOZlNRDmI9kW6Cnwbd68VAWu2SmOQSdmDjEvjyLMJ6ae3kYPinIR2xH
	 F9KYnMDf/FZYdi98OnPUQ2+ieuCd+ccsM+QNLljRRHpSl777FbcYhp+Bq5NoSRIAST
	 TXEGIxO6aqal+S+dWBmPfHJul3LZ4ucDFpIGEMw0HrIC0FMtur1fpfLp8ahDb2YihT
	 cekGmkWzzA9Ww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 05/12] clk: zte: Add Clock registration
 infrastructure
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: linux-clk@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, mfd@lists.linux.dev, lee@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260923-zx29clk-v12-5-9c243796b6d2@gmail.com>
References: <20260923-zx29clk-v12-0-9c243796b6d2@gmail.com>
 <20260923-zx29clk-v12-5-9c243796b6d2@gmail.com>
Date: Wed, 23 Sep 2026 18:36:52 +0000
Message-Id: <20260923183653.0D0661F0089E@smtp.kernel.org>
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

PiBUaGUgbmV4dCBwYXRjaGVzIHdpbGwgaW1wbGVtZW50IHRoZSByZWdtYXAgY2xvY2tzIGFuZCBQ
TEwgZHJpdmVyLiBUaGUKPiBhY3R1YWwgaGFyZHdhcmUgc3BlY2lmaWMgY2xvY2sgbGlzdGluZyB3
aWxsIGxpdmUgaW4gYSBzZXBhcmF0ZSBtb2R1bGUuCj4gCj4gUmV2aWV3ZWQtYnk6IEJyaWFuIE1h
c25leSA8Ym1hc25leUByZWRoYXQuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5n
ZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlz
IHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkyMy16eDI5
Y2xrLXYxMi0wLTljMjQzNzk2YjZkMkBnbWFpbC5jb20/cGFydD01CgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
