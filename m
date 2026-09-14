Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDA5AC88E6F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 19:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZ04WNQHjXt4969L2bP+e/ms2hdPIn4yyJwxtPnxu3E=; b=3eDTvlx3/Zv+aD
	IhYqUKtt4NOZEocqYL1Qvd2Q1hRGnJ3I2sRBNIQB/rBPU2ybZ0iMDfvFHs2Lg7RyjNU36pMEIfjDY
	mecaZcFS5zHGczB1MeLVl/LxqkkY3Iiad2pN6Bp7tyrpohDq7rNEYZbIu5dv1I9jzSdQJddZlY0b6
	m7TOB5PzmjY4AK1ksxOO3qjy09+chiTSAaZXZxhAu8j2hYL4syGxg/412z7q9u7sG36CHz3bkzAXr
	OZfQnIHEZJZU5ZNr0W1H0xX7DlDuBKYgvWiQRx1qoGrKPTgGtmMpE1QhmNZgumU8myeMyH/nmjjlS
	vHYyZG0cqFPLvsxn7m9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6CbQ-00000004YL0-2Cs8;
	Mon, 14 Sep 2026 19:44:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6CbJ-00000004YJ5-22Bd
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 19:44:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 307B043ED3;
	Mon, 14 Sep 2026 19:44:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9490A1F00899;
	Mon, 14 Sep 2026 19:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789415065;
	bh=xYk9got1CA08XKCKyw3zf59V/UaImOcUZXuvZvs3iOA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UOpq7YHfgmMIg87+luLNEdpPRExlcIB3oef8Jw4D/s5B5cVhhN61vvqLi12q/FNDI
	 PwtRtMyYt/5jrelrE378msbNh7PMOOcKZJTHnn9Ni+oqVMrHDyFYZ5tE5XXfYSuCC5
	 lmdzDrZtOysIcMKL//WC2hjap/007DlY782P5/mvxfG9ReF0/+4DQNUGxZ510xtM/b
	 1K35NpF8QlDQoSehm9V1h+m5k9cZjvisqfuHrkQ8BGYoBz+3SUevOzoUrk12BNBy92
	 6CRrcQrnFlMe3P6v6PWotqRjM5pQFzhf+RnOPUzRE6xVpnEp/CDKJq+fsrJG3jdsWq
	 loLodmswg9yfw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 09/11] net: stmmac: dwmac-rk: add SGMII
 support for RK3568
To: "Coia Prant" <coiaprant@gmail.com>
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, olteanv@gmail.com, wsa+renesas@sang-engineering.com, vkoul@kernel.org
In-Reply-To: <20260913185849.907479-10-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
 <20260913185849.907479-10-coiaprant@gmail.com>
Date: Mon, 14 Sep 2026 19:44:24 +0000
Message-Id: <20260914194424.9490A1F00899@smtp.kernel.org>
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gRFdNQUNfUk9DS0NI
SVAgc2VsZWN0cyBQQ1NfWFBDU19ST0NLQ0hJUCB3aXRob3V0IGluaGVyaXRpbmcgaXRzIGRlcGVu
ZGVuY2llcywgY2F1c2luZyBLY29uZmlnIHdhcm5pbmdzLgotLQoKY29tbWl0IGEwMzRkMDRmNjk3
NGViZDIwNTVhOTZjOWRlOGM4ZTc5Zjc5NWZlZmUKQXV0aG9yOiBDb2lhIFByYW50IDxjb2lhcHJh
bnRAZ21haWwuY29tPgoKbmV0OiBzdG1tYWM6IGR3bWFjLXJrOiBhZGQgU0dNSUkgc3VwcG9ydCBm
b3IgUkszNTY4CgpUaGlzIGNvbW1pdCBhZGRzIFNHTUlJIHN1cHBvcnQgZm9yIHRoZSBSSzM1Njgg
U29DIGluIHRoZSBkd21hYy1yayBkcml2ZXIuCkl0IGludHJvZHVjZXMgY2FsbGJhY2tzIHRvIGNv
bmZpZ3VyZSB0aGUgR01BQyBHUkYgcmVnaXN0ZXIgZm9yIFNHTUlJIG1vZGUsCmltcGxlbWVudHMg
UENTIGluaXRpYWxpemF0aW9uIHRvIGNyZWF0ZSB0aGUgWFBDUywgYW5kIGNvbmZpZ3VyZXMgcGh5
bGluawpmb3IgaW4tYmFuZCBuZWdvdGlhdGlvbi4KCkxpbms6IGh0dHBzOi8vZGwucmFkeGEuY29t
L3JvY2szL2RvY3MvaHcvZGF0YXNoZWV0L1JvY2tjaGlwJTIwUkszNTY4JTIwVFJNJTIwUGFydDEl
MjBWMS4xLTIwMjEwMzAxLnBkZiAoUGFnZSAzODYpCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9LY29uZmlnIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
c3RtaWNyby9zdG1tYWMvS2NvbmZpZwo+IGluZGV4IGFiM2M0Y2Y5NjQyMzkuLmM2NTU5ZTc0OWMw
Y2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvS2Nv
bmZpZwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL0tjb25maWcK
PiBAQCAtMTcwLDYgKzE3MCw3IEBAIGNvbmZpZyBEV01BQ19ST0NLQ0hJUAo+ICAJZGVmYXVsdCBB
UkNIX1JPQ0tDSElQCj4gIAlkZXBlbmRzIG9uIE9GICYmIChBUkNIX1JPQ0tDSElQIHx8IENPTVBJ
TEVfVEVTVCkKPiAgCXNlbGVjdCBNRkRfU1lTQ09OCj4gKwlzZWxlY3QgUENTX1hQQ1NfUk9DS0NI
SVAKCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHNlbGVjdGluZyBQQ1NfWFBDU19ST0NLQ0hJUCB1
bmRlciBjb25maWcgRFdNQUNfUk9DS0NISVAgcmVxdWlyZQppbmhlcml0aW5nIGl0cyBkZXBlbmRl
bmNpZXM/CgpJZiBhIGtlcm5lbCBpcyBidWlsdCB3aXRoIERXTUFDX1JPQ0tDSElQIGVuYWJsZWQs
IGJ1dCBHRU5FUklDX1BIWSBvcgpQTV9HRU5FUklDX0RPTUFJTlMgaXMgZGlzYWJsZWQsIHRoaXMg
c2VsZWN0IHN0YXRlbWVudCBmb3JjZXMgUENTX1hQQ1NfUk9DS0NISVAKdG8gYmUgZW5hYmxlZCB3
aXRob3V0IGl0cyB1bmRlcmx5aW5nIGRlcGVuZGVuY2llcy4KClRoaXMgY2FuIGNhdXNlIEtjb25m
aWcgdW5tZXQgZGlyZWN0IGRlcGVuZGVuY2llcyB3YXJuaW5ncyBhdCBidWlsZCB0aW1lIGFuZApw
b3RlbnRpYWxseSBsZWFkIHRvIHNpbGVudCBidWlsZCBmYWlsdXJlcy4KCldvdWxkIGl0IGJlIGJl
dHRlciB0byBhZGQgdGhlIHJlcXVpcmVkIGRlcGVuZGVuY2llcyB0byBEV01BQ19ST0NLQ0hJUD8K
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjA5MTMxODU4NDkuOTA3NDc5LTEtY29pYXByYW50QGdtYWlsLmNvbT9wYXJ0PTkKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
