Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 402E5C531D0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 19:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XsrpNIBdnxrnrehl+21EghxmsqF0DyWJBF5rQnaqe8U=; b=rcBOrOR2Az891d
	gyLSNXBIBDjh5r1ppw3rd3gacZnsxlpuoMlV42Kzek6Iy9j0EKrKQw+8RaAhxhgIPQZk2FbVeTHTB
	ToTc2DwNx0xFdNkHAm6E+gIyiGkXK99CxQbdeT3qTo8Rb5FDlRFjICZ7hlzUKlZLEQTnbHhf2cYFo
	z9fRHc/a2Bucwd7xP4HwvQtKQTmcoFnrIK5paYfkuIpBX/wPIPOk71eRqx0RKEYKj5PMrgmtN4g3g
	0y+gmAPRjLAM6uvgdhQFgjbDI95CW4qanfj5hFPqYAwzxYs/fwsMi4piGdfOi1q4xPAia9xkCIz2n
	GXoaJnHw8KYZk1aShKyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woR0x-00000003lQw-46KH;
	Mon, 27 Jul 2026 19:29:27 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woR0w-00000003lQl-10q8
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 19:29:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7816360008;
	Mon, 27 Jul 2026 19:29:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D1231F000E9;
	Mon, 27 Jul 2026 19:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785180565;
	bh=gXzddojoPrJnDuw7H8OMyrPuFV9T5GvDd6ET52j5IuE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dI+9dVudaVf0/1YGqH9Selud6WvKIEf1zuPnsg4x1xtaR6XBaRJtC2QgVzhimrcDm
	 vorSVuPPp7qif9rfqul2TNNxewcMTwFKvNG/QIu6pR2khftAJXTRW9N2EWXYEGO3NV
	 rSre+Y6Ely8LMys39lWJWpaCUTkQcsw0sk4xAosuarO6Yl0QyIi4JcnDI7xR8rKscP
	 xKDlY/Vs74smJ9+GzM9FJPt2bIYYtx57iuGA8GEWTXvdFR8MqvYvTY/JOcDm/CpfDL
	 xDhk4BfLI/cMpt+6fdKW3X8KAP36bCZb81B6K9vr2e3ksDtkKC1l1p3OLs5dLldWoP
	 fTCo6fuaZx+Qw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 08/12] clk: zte: Introduce a driver for zx297520v3
 top clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: lee@kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, vkoul@kernel.org, conor+dt@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260727-zx29clk-v8-8-7a107b00f1dd@gmail.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-8-7a107b00f1dd@gmail.com>
Date: Mon, 27 Jul 2026 19:29:23 +0000
Message-Id: <20260727192924.5D1231F000E9@smtp.kernel.org>
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

PiBUaGlzIHJlZ2lzdGVyIHNwYWNlIGNvbnRyb2xzIGNvcmUgZGV2aWNlczogUExMcywgdGhlIEFI
QiBidXMsIGEgbG90IG9mCj4gdGltZXJzLCB0aGUgVVNCIGNvbnRyb2xsZXIsIHRoZSBDb3J0ZXgg
TTAgcHJvY2Vzc29yIHRoYXQgYm9vdHMgdGhlIGJvYXJkCj4gYW5kIGEgZmV3IG90aGVyIGRldmlj
ZXMuIEZvciBzb21lIHJlYXNvbiB0aGUgTFRFIGNvcHJvY2Vzc29yIGlzIGFsc28KPiBwYXJ0aWFs
bHkgY29udHJvbGxlZCBieSBpdC4gVGhlIG1haW4gYXBwbGljYXRpb24gcHJvY2Vzc29yIGFuZCBE
RFIKPiBtZW1vcnkgYXJlIG5vdCBmb3VuZCBoZXJlIHRob3VnaC4KPiAKPiBUaGUgcmVnaXN0ZXIg
dG8gcmVib290IHRoZSBib2FyZCBpcyBmb3VuZCBoZXJlLCBhcyB3ZWxsIGFzIGEgcmVnaXN0ZXIg
dG8KPiBjb250cm9sIHdoZXRoZXIgd2F0Y2hkb2cgZXhwaXJpZXMgY2F1c2UgYSBib2FyZCByZXNl
dC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTdGVmYW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJA
Z21haWwuY29tPgoKU2FzaGlrbyBoYXMgcmV2aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8g
aXNzdWVzLiBJdCBsb29rcyBncmVhdCEKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MjctengyOWNsay12OC0wLTdhMTA3YjAwZjFk
ZEBnbWFpbC5jb20/cGFydD04CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
