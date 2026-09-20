Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAE99C982E6
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 06:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQsQYlhZ5WSE0aRMSXVZrPvoZg4bHlhFfptO8Xh1XMc=; b=TD7795AYM/oYZv
	hQ59L06wpHzO0ny93Dqlv9C+Ls6E1JGrRR8Z7t8rTHKHGRNwjCsy1qzIxrC4GXA8sDvFCQx7fHlP1
	HSVyrpcxlMWHuWYgC228vSSE+0S4wv5FTuoTfbdxFpNvKen57GDQ+Emyt4VNL7lOZg16hrhHrFcdw
	gvrA6A8LS0tQgS317B1ieGDhmOoaZsGgciZOVdvXg/6wVP8i1BE4GfvDHPwcgzLEnvNm5VHuEKNOk
	FDKwYf1X5jrFY2XVbW3MT07+k2k4X4M6Mb9Z9X1KiAE3jankESSDCdDeliPsa3nwqyOtYOncMjhuY
	D8P4bUzlD3w+w5YYgy+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BRw-0000000H0R0-2Qf9;
	Sun, 20 Sep 2026 06:54:56 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BRv-0000000H0Qg-1CX6
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 06:54:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 11970408D4;
	Sun, 20 Sep 2026 06:54:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56E881F000FF;
	Sun, 20 Sep 2026 06:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789887294;
	bh=5+2YEPlp4H+FPCcvFGKV7EJU6cgtDOP682wYV1LF5EU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RfzFlEdotszJ5Fcqgq//0+n3CGJGTchZODJe2UR2Egc+Z4TxewWSAwwnu1N6AgPT0
	 X3LTbCUh7PdT56mp5CIfhwndaH/vqnyFIglAM92RRr4GPR4WYhhVQhbXQn73Kr9Meu
	 TAgcGRo1xbnZfFglPGxS/YskONGctW2HKRof/9V4Lef5L4WU2zy1ypsrJH7diKwSl7
	 pfVtwOVEgEzAArjS8tiquwh6kXf9URgERTrXeYuVeGP9p3gRALNwTd+xiN1INBNwOy
	 DzLpXSCPzjHrUI5p0Dr6LYsz8oevJoDfqcqZ+dq6cs8IsIU/zdaHc3z0/B/thLwyxD
	 HjQMWGWSHD23Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v3 09/12] arm64: dts: s32g: Add SCMI reset
 controller
To: =?utf-8?b?SmFuIFBldHJvdXMgKE9TUyk=?= <jan.petrous@oss.nxp.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, vkoul@kernel.org, imx@lists.linux.dev, neil.armstrong@linaro.org, Frank.Li@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260919-s32g_serdes-v3-9-9d68868c1e89@oss.nxp.com>
References: <20260919-s32g_serdes-v3-0-9d68868c1e89@oss.nxp.com>
 <20260919-s32g_serdes-v3-9-9d68868c1e89@oss.nxp.com>
Date: Sun, 20 Sep 2026 06:54:53 +0000
Message-Id: <20260920065454.56E881F000FF@smtp.kernel.org>
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

PiBGcm9tOiAiSmFuIFBldHJvdXMgKE9TUykiIDxqYW4ucGV0cm91c0Bvc3MubnhwLmNvbT4KPiAK
PiBBZGQgdGhlIFNDTUkgcmVzZXQgZG9tYWluIHByb3RvY29sIChwcm90b2NvbEAxNikgbm9kZSB1
bmRlciB0aGUgU0NNSQo+IGZpcm13YXJlIG5vZGUgZm9yIGJvdGggUzMyRzIgYW5kIFMzMkczLCBz
byB0aGF0IG9uLVNvQyBjb250cm9sbGVycyBjYW4KPiByZXF1ZXN0IHJlc2V0cyB0aHJvdWdoIHRo
ZSBTQ01JIHJlc2V0IGNvbnRyb2xsZXIuCj4gCj4gVGhlIG5vZGUgaXMgbGFiZWxsZWQgc2NtaV9y
ZXNldCByYXRoZXIgdGhhbiByZXNldDogYSBsYWJlbCB0aGF0Cj4gZ2VuZXJpYyBpbiBhIFNvQyAu
ZHRzaSBpbnZpdGVzIGNvbGxpc2lvbnMgYW5kIHJlYWRzIHBvb3JseSBhdCB0aGUgdXNlCj4gc2l0
ZXMsIGFuZCB0aGUgc2libGluZyBjbG9jayBwcm90b2NvbCBub2RlIGFscmVhZHkgdXNlcyB0aGUg
c2hvcnRlbmVkCj4gY2xrcyBmb3JtLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbiBQZXRyb3VzIChP
U1MpIDxqYW4ucGV0cm91c0Bvc3MubnhwLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMg
cGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTE5LXMzMmdf
c2VyZGVzLXYzLTAtOWQ2ODg2OGMxZTg5QG9zcy5ueHAuY29tP3BhcnQ9OQoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
