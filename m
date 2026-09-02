Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 191C1C61DD6
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 13:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZPa4p+8z5NPaQh8r9ZHjjCnLtg7z3G7J+k1WkQgB8oQ=; b=LXri61MFK52E5X
	chHbsrCmQCgOwhe3BNHz8AEX+wg42cqUdjn2fhp65Zo7axELWhB/mnKaEuJh+D+VS2KWhW/GWPtCB
	i5rjzGFjZF6bEGNM3RJiZDSccmJvmDjQ8k3mb2hGQX5IcS67IhZfas12qmtFhirIZcGqKG/GXWNPc
	rQTzMWsjFh9pziLg6KzT4cb8wYM5PE38DwvjyRAEGLGrGkpY/TGIYZGhdguDsTcwcPH2C72ncL1l0
	OSYcoWT0kv/Ypau0M/qiH9RQ2A8JRpURdQV7VDaf2j3bwIbtDd0lsrIaH89fSNIY00RI/GmF6xRN2
	cq6K2+vkZZiA9e6H3nQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1l7h-0000000EpAF-3LVz;
	Wed, 02 Sep 2026 13:35:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1l7g-0000000Ep9j-0Cv8
	for linux-phy@lists.infradead.org;
	Wed, 02 Sep 2026 13:35:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 179CF600D0;
	Wed,  2 Sep 2026 13:35:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E22DE1F000E9;
	Wed,  2 Sep 2026 13:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788356126;
	bh=BGuIznCv9PUDEBDkw/pQ/InrE0j7ZosksJqwh4KPsMM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=S1BZ39oaogdM2I1AE3RSZkU3cFwXZgVOlugezO1Bzyybx1qYZd7RQzSZ4yOqKCS6I
	 p6XjGIlrJ6Gv18frbwe3Zxf9L9NV0zyAmUVuTxpI/zNfWslLzpZLYRHefMHSQ9PcRQ
	 JzHngr/BtMslX+DllSH+uJ02N6oDNzybG3NCnUPnVexYo/2OjZ2x3UbZdxD0wtRJ5T
	 NnZZQL1F+nMIG7899AbjTGCC+RvLcCvIYUCr4zJGW17E4EXRbi7wqhQObY52KBWlE+
	 DGSMnDkpWeBfe+tTRwxQi/H3FCx4fdm2XBlFfLkn7JhLgVOHppHXHJRWQ/fBA91Wdy
	 cuQJApxU3j3Bw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V3 2/3] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip MCP2542
To: "Stefan Wahren" <wahrenst@gmx.net>
Cc: "Oliver Hartkopp" <socketcan@hartkopp.net>, devicetree@vger.kernel.org, "Vincent
 Mailhol" <mailhol@kernel.org>, "Oleksij Rempel" <o.rempel@pengutronix.de>, conor+dt@kernel.org, linux-can@vger.kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, "Marc
 Kleine-Budde" <mkl@pengutronix.de>, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, robh@kernel.org
In-Reply-To: <20260902132801.22056-3-wahrenst@gmx.net>
References: <20260902132801.22056-1-wahrenst@gmx.net>
 <20260902132801.22056-3-wahrenst@gmx.net>
Date: Wed, 02 Sep 2026 13:35:24 +0000
Message-Id: <20260902133525.E22DE1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIG5ld2x5IGFk
ZGVkIGBtaWNyb2NoaXAsbWNwMjU0MmAgY29tcGF0aWJsZSBzdHJpbmcgYnlwYXNzZXMgc2NoZW1h
IHZhbGlkYXRpb24gaGFyZHdhcmUgY29uc3RyYWludHMgYmVjYXVzZSBpdHMgZmFsbGJhY2sgY29u
ZGl0aW9uYWwgYmxvY2sgdXNlcyBhIHN0cmljdCBgZW51bWAgbWF0Y2ggcmF0aGVyIHRoYW4gYGNv
bnRhaW5zYC4KLS0KCmNvbW1pdCBjNTQyNmNiNTBkMWIyM2EyMWU5MmE2OWE1MTk3Y2NiNTIzZjcy
ZThiCkF1dGhvcjogU3RlZmFuIFdhaHJlbiA8d2FocmVuc3RAZ214Lm5ldD4KCmR0LWJpbmRpbmdz
OiBwaHk6IHRpLHRjYW4xMDR4LWNhbjogRG9jdW1lbnQgTWljcm9jaGlwIE1DUDI1NDIKICAgIApU
aGUgTWljcm9jaGlwIE1DUDI1NDIgSGlnaC1zcGVlZCBDQU4gdHJhbnNjZWl2ZXIgd2l0aCBTbGVl
cCBtb2RlIGlzIGEKcGluLWNvbXBhdGlibGUgYWx0ZXJuYXRpdmUgZm9yIHRoZSBUSSBUQ0FOMTA0
Mi4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
dGksdGNhbjEwNHgtY2FuLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L3RpLHRjYW4xMDR4LWNhbi55YW1sCj4gaW5kZXggOWY1YzM3Y2E2NDk2YS4uM2VkNGNlMjE5
MTIwMSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L3RpLHRjYW4xMDR4LWNhbi55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS90aSx0Y2FuMTA0eC1jYW4ueWFtbAo+IEBAIC0xOCw2ICsxOCw3IEBAIHByb3Bl
cnRpZXM6Cj4gICAgICAgIC0gaXRlbXM6Cj4gICAgICAgICAgICAtIGVudW06Cj4gICAgICAgICAg
ICAgICAgLSBtaWNyb2NoaXAsYXRhNjU2MQo+ICsgICAgICAgICAgICAgIC0gbWljcm9jaGlwLG1j
cDI1NDIKCltTZXZlcml0eTogTWVkaXVtXQpXaWxsIHRoaXMgbmV3bHkgYWRkZWQgY29tcGF0aWJs
ZSBzdHJpbmcgYnlwYXNzIHRoZSBoYXJkd2FyZSBjb25zdHJhaW50cyBlbmZvcmNlZApsYXRlciBp
biB0aGUgc2NoZW1hPwoKV2hlbiBhIGRldmljZSB0cmVlIGRlZmluZXMgY29tcGF0aWJsZSA9ICJt
aWNyb2NoaXAsbWNwMjU0MiIsICJ0aSx0Y2FuMTA0MiIsIHRoZQpzY2hlbWEgcGFyc2VzIGl0IGFz
IGEgc3RyaW5nIGFycmF5LiBIb3dldmVyLCB0aGUgYWxsT2YgY29uZGl0aW9uYWwgYmxvY2sgZnVy
dGhlcgpkb3duIGluIHRoZSBmaWxlIGNoZWNrcyBmb3IgdGksdGNhbjEwNDIgdXNpbmcgYSBzdHJp
Y3Qgc2NhbGFyIGVudW0gbWF0Y2g6CgphbGxPZjoKICAtIGlmOgogICAgICBwcm9wZXJ0aWVzOgog
ICAgICAgIGNvbXBhdGlibGU6CiAgICAgICAgICBlbnVtOgogICAgICAgICAgICAtIG54cCx0anIx
NDQzCiAgICAgICAgICAgIC0gdGksdGNhbjEwNDIKICAgICAgICAgICAgLSB0aSx0Y2FuMTA0Mwog
ICAgdGhlbjoKClNpbmNlIHRoZSBhcnJheSBmYWlscyB0aGUgc3RyaWN0IGVudW0gbWF0Y2gsIHRo
ZSB0aGVuIGNvbnN0cmFpbnRzIGFyZSBza2lwcGVkLAp3aGljaCBhbGxvd3MgYSBtaWNyb2NoaXAs
bWNwMjU0MiBkZXZpY2Ugbm9kZSB3aXRoIGFuIGludmFsaWQgY29uZmlndXJhdGlvbiB0bwpzaWxl
bnRseSBwYXNzIGR0X2JpbmRpbmdfY2hlY2suCgpTaG91bGQgdGhlIGFsbE9mIGJsb2NrIGJlIHVw
ZGF0ZWQgdG8gdXNlIGNvbnRhaW5zIGluc3RlYWQgb2YgZW51bSwgb3Igc2hvdWxkCm1pY3JvY2hp
cCxtY3AyNTQyIGJlIGV4cGxpY2l0bHkgYWRkZWQgdG8gdGhlIGVudW0gbGlzdCwgdG8gZW5zdXJl
IHRoZXNlIGRldmljZXMKYXJlIHByb3Blcmx5IHZhbGlkYXRlZD8KCj4gICAgICAgICAgICAgICAg
LSB0aSx0Y2FuMTA1MQo+ICAgICAgICAgICAgLSBjb25zdDogdGksdGNhbjEwNDIKPiAgICAgICAg
LSBpdGVtczoKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjA5MDIxMzI4MDEuMjIwNTYtMS13YWhyZW5zdEBnbXgubmV0P3BhcnQ9MgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
