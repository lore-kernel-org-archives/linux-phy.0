Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB742C55174
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 20:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwFeb3NKhAKhmfCB5rxAiLZ8+JXQyR9RUqLPQRwrt1I=; b=13A+LvIYMYsrSc
	EEeFgdsV+5DOnILJB5QpyVy5o6e3F2Kx+muacL0m2fGF8/Vd299R4fxwuM2IpDlSKQg1jhd1hxWt7
	T/ggRP95A+X085d0aUUEYePnWgE2bW+e1F0WmW9klqcYwUiTlkYdykpgc/u1zE/Y3cP+1fcpDThKS
	zbDgZYaX2+cXyh/33y4+VkdOTx3djggW1haFX02WnkL3Uu75T/CDn6JvufmIhuzd4elHP/VWFVDo9
	XM01vU3Iyt8yJyOX5KZh4W1k8akITkE3ubTWm0sfEnXALwbYC7h+N94GKbGaAsBqRPK6yHliqpbBh
	a/nIVTDLN/e8Flh7+LaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqdDs-0000000G3IC-0v4H;
	Sun, 02 Aug 2026 20:55:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqdDq-0000000G3I5-2zLo
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 20:55:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F09214057C;
	Sun,  2 Aug 2026 20:55:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57B331F000E9;
	Sun,  2 Aug 2026 20:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785704149;
	bh=DRCsIR+zvzV9s5xwWfEH9XgyYWXoExxf3iL+j/NQBbE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fmxQMbexQydDhNpL4JqeBcsfrEfPqPZUGnWUwedbStKosM6wl5r/mvVpPS1S0tvH7
	 plaDAe6x/RpydTWhhDgxNN5L7Z69D22BTwB4Gg5IXhFdfNRsEvLbO73fTPbyC1MV6n
	 wQokv7S4xWPkKAm85Oj5dzHOswqDKkmdQ4cJ/rZSonTX4yimyD4bw6G2dyubd6hF5U
	 kLV3o7HtzHao0nZ5v0dp6gVDYpoJDJR7CGrE+sNHAidE1GCv4Tp4zpmdXBbcT9b6hR
	 HPjwng4JJpXj/jy/8SpmwEdCi+SJgyR9DW7YhwkfERMOBDF6N/qgXFQ74XrbFpyaDF
	 EgyjHF5BHrCFg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 06/12] clk: zte: Add regmap-based clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, lee@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, mfd@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260802-zx29clk-v9-6-d05530d85d28@gmail.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-6-d05530d85d28@gmail.com>
Date: Sun, 02 Aug 2026 20:55:48 +0000
Message-Id: <20260802205549.57B331F000E9@smtp.kernel.org>
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
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgwMi16eDI5Y2xrLXY5LTAt
ZDA1NTMwZDg1ZDI4QGdtYWlsLmNvbT9wYXJ0PTYKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
