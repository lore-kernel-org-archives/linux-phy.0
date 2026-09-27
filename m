Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66AC3C98338
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 20:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJ4K6WamwCijMfOJ8G56U3CziDSQbEmkOOIM4xMwbqg=; b=M4cWhXiEp/VKWZ
	43LrDNo4BSCNOeDc8Y6ZBa8OOP7AjSbIu8uFmnqQYUZWtX+jOMt0h/aTEXieuWx0hLz4Z4Hawu+OR
	kiRpZg5nfymVEnRXmfto0jGEjCqc73HaYXi5w22TYvBelBZ4HRJbjAGU3Tw8BtaGdb7P0lsGrV/ff
	k0NNaDKyUTzWSvhXv+7f0AylP9qzxECwi6m53LwmVnM6a4osrn1JHt8Vh9X2hRiOggI9NCpHWsvYr
	jqpCCenhTdemjBhdNaBJxKlWjxRCwENxpTubjl9H308tHMnAolrmm/xhhWOBuCq2uJPis+U/5BkTB
	uUDF28w2ife/kgRB4l6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvss-0000000Gr1C-4AnJ;
	Sun, 27 Sep 2026 20:54:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvss-0000000Gr10-00HO
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 20:54:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EA61D4368C;
	Sun, 27 Sep 2026 20:54:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 481791F000FF;
	Sun, 27 Sep 2026 20:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790542444;
	bh=MJ0UPL2cAeDVvEB22aEInX0vQVCBJDel13GRgMQz/dY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NqHTx+Bcb0MuHGr5lgB29gqz0Mh1Eu942Oc0v99UJnUmBmFGqre0NHQpO/EpDx1C5
	 7RZytSNLPktLyaO/almh8mxI7u2xqeBQQ/QQ0KzdXLhH+0XNj5hV4HRAErozaVJclk
	 WwJqS/0GUA10TfBYLqYSnwYfp8dxdtacfgZJ5BQBzBDx8MXxMiwcPGMpeArn5SG0Jm
	 uoWG6WDk9eDW4gCDf/5nQFJgiIAyK3iMyD5hkShwNAAbA69g21QsPEfbcxRKWeDflv
	 GVBdjK++ECVI205ng+XqDvQaXhB9JhlODsqiVSdczItyl17uxF8+8AsY0YJLfBkGhP
	 p8cauD3zPa69w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 02/13] dt-bindings: clk: zte: Add zx297520v3 matrix
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: vkoul@kernel.org, robh@kernel.org, mfd@lists.linux.dev, devicetree@vger.kernel.org, lee@kernel.org, linux-clk@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260927205055.185366-1-stefandoesinger@gmail.com>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
 <20260927205055.185366-1-stefandoesinger@gmail.com>
Date: Sun, 27 Sep 2026 20:54:03 +0000
Message-Id: <20260927205404.481791F000FF@smtp.kernel.org>
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

PiBUaGlzIGNvbnRyb2xsZXIgY29udGFpbnMgY2xvY2tzIGFuZCByZXNldHMgZm9yIGhpZ2ggc3Bl
ZWQgZGV2aWNlcyBvbiB0aGUKPiB6eDI5NzUyMHYzIGJvYXJkIGFuZCBoYXJkd2FyZSBzcGlubG9j
a3MgdGhhdCBJIGV4cGVjdCB3aWxsIGJlIG5lY2Vzc2FyeQo+IHRvIGNvbW11bmljYXRlIGNvcnJl
Y3RseSB3aXRoIHRoZSBMVEUgRFNQIGZpcm13YXJlIGJsb2IuCj4gCj4gSSBkb24ndCBrbm93IG11
Y2ggYWJvdXQgdGhlIGh3bG9ja3MgeWV0IG90aGVyIHRoYW4gdGhhdCB0aGV5IGV4aXN0LCBzbwo+
IHRoZXJlIGlzIG5vIGhlYWRlciB5ZXQgYWRkaW5nIG1lYW5pbmcgdG8gdGhlaXIgaW5kaWNlcy4g
UHJlc3VtYWJseSB0aGF0Cj4gbWVhbmluZyBkb2Vzbid0IGV4aXN0IGluIGhhcmR3YXJlIGFuZCBp
cyBkZSBmYWN0byBkZWZpbmVkIGJ5IFpURSdzCj4gZmlybXdhcmUgYmxvYnMgcnVubmluZyBvbiB0
aGUgcnByb2NzLgo+IAo+IFRoZSB6dGUtengyOTc1MjB2My1jcm0gZHJpdmVyIHdpbGwgaW5zdGFu
dGlhdGUgc2VwYXJhdGUgTUZEIGNoaWxkcmVuIGZvcgo+IGNsb2NrcyBhbmQgcmVzZXRzLCB3aGlj
aCBhcmUgaGFuZGxlZCBieSBzZXBhcmF0ZSBjbG9jayBhbmQgcmVzZXQKPiBkcml2ZXJzLgo+IAo+
IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9z
cy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIETDtnNpbmdlciA8c3RlZmFu
ZG9lc2luZ2VyQGdtYWlsLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2ggYW5k
IGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTI3LXp4MjljbGstdjEzLTAt
NzBkOGY2NzMzODZjQGdtYWlsLmNvbT9wYXJ0PTIKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
