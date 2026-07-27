Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18DBBC53209
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 19:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5oLVkYH8CzseghzKk4076hqL6LaZ2hyRRCQS5rrgD2c=; b=smYILPUAaGqvwm
	HyA7jr813i5e+wU/Yl/wiAnXLUMLPjqsNWCK5ZH5xBbh3axE1ryurtuJKyrKaBbtz5Kjkf6QSOBMA
	XEPhtpilR2h7ev9mEiGOFtov/j/lnR3V4tZ1Fh1JRco2Oa52vD3uUlc/e5Cou8+yIoABpd4iUYx8w
	UnpoIojP28XPjS4dYZ45AmdG7ctjVQcKnOmp49WMeC5e6F/+N33aqW8dGtqoDaPebYRSPnSDNeAoB
	AgXX+4VyrZ7/x42v1yRjel/c3kKGi+9NRtfrJUHCbFChv6UBf3ANNP1CbOLljRiyB9xnWZ3Wc7ARZ
	1DmtCmUlF0bRD1SjGo2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQbj-00000003izi-0POt;
	Mon, 27 Jul 2026 19:03:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQbi-00000003izU-0wei
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 19:03:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9A4F840F2B;
	Mon, 27 Jul 2026 19:03:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F396B1F000E9;
	Mon, 27 Jul 2026 19:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785179001;
	bh=DovaZT+9yPFowFNYAxYHzTIcYcIs8amIbmAtasBbeiQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FVHj8QlhKjxE5Eogp7wfgdt4xxticJfNRkhuzm4jnuPPVPkleZ79+7IEzRjBun5hU
	 KSb1WhN/gtCM3R513S7kzMUE7gHlQVJgzE6fXM/2Lf9BpbuvIV7/T/GsSbvZq7iMyt
	 LuRnTaq73r/w2zuI/s1xq+CQEvsjKSJUiMLQz3MZTN8zE2IHWYyh6ZDftqxtC8Douu
	 MwoSaQ4XUDbwqq76U9TIcAfp5IfGFasvCbdCoMcxrV0Sb0IhYCxIbFV8JFRIfIz993
	 1Bgsx3tl9hhXoOTmHfPIAbmcIPA3R5M1A908WII8yvd7N2G+l5ySV3rJ8YE+cFyAnr
	 TkbhqFBiuwv6Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 06/12] clk: zte: Add regmap-based clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: mfd@lists.linux.dev, neil.armstrong@linaro.org, lee@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260727-zx29clk-v8-6-7a107b00f1dd@gmail.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-6-7a107b00f1dd@gmail.com>
Date: Mon, 27 Jul 2026 19:03:20 +0000
Message-Id: <20260727190320.F396B1F000E9@smtp.kernel.org>
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
b2YgdGhlIGZpbGUgdG8gaW5kaWNhdGUgaXRzCj4gb3JpZ2luLgo+IAo+IEkgc2VlIHRoYXQgbnVt
ZXJvdXMgY2xvY2sgZHJpdmVycyBoYXZlIHRoZWlyIG93biBpbmNhcm5hdGlvbiBvZiByZWdtYXAt
Cj4gYmFzZWQgbXV4L2Rpdi9nYXRlIGNsb2Nrcy4gSWYgdGhlcmUgaXMgYW55IHZlcnNpb24gb2Yg
aXQgdGhhdCBpcyBsaWtlbHkKPiB0byBiZSBlbGV2YXRlZCB0byBzaGFyZWQgY29kZSBsaWtlIGNs
ay1nYXRlLmMgSSdsbCBjb3B5IHRoYXQgYW5kIHRyeSB0bwo+IHVzZSBpdCBhcyB1bm1vZGlmaWVk
IGFzIHBvc3NpYmxlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZh
bmRvZXNpbmdlckBnbWFpbC5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFu
ZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcyNy16eDI5Y2xrLXY4LTAt
N2ExMDdiMDBmMWRkQGdtYWlsLmNvbT9wYXJ0PTYKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
