Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2828C3064D
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 13:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knOkdXsOwSFvsdu5Ca9g9SR+Axp7dSq4LGzPBDOum14=; b=2nXLPs6c93yjWx
	2yG5Yy34oRMNt07SdshbFrq6icFoMpFqDI4YQ0ft9u6l8/SnOSXWYa8ZNsOqGvgWAAMzaxgr63fLq
	vD5yLMmzUwte+0p45mjULEoAobKh1jZfT1z1LTxStWm252JaHMPveNSr+UD6++GXik3Zm4DrjDqr+
	DjZ5LTXuQbySibq/LQMxdjSkv9eVo8c8zcin/jZRjBVRzbOv3lLoSUznw2hnKob6/y7NB7VNEjlZR
	bOkU27v1EgJFVFJTQPEeDgIuuTJWVXyodRBHoxvN4UOXEAWCdfW5R29t01aQwNYIlWN+bnJopCWGr
	Pkz9zup2xCbfVuoIAGxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdgT-00000006sTe-2PQh;
	Tue, 02 Jul 2024 13:36:37 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdg4-00000006sGM-3U9f;
	Tue, 02 Jul 2024 13:36:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 03CF2CE1DD6;
	Tue,  2 Jul 2024 13:36:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BB15C2BD10;
	Tue,  2 Jul 2024 13:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927370;
	bh=VuDI2hz715w7JDtFUBg0Dn7GnvH1/Of0l9YjzbCusP0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VTfUMNNpsm7Sr0ZVhuMbNNlyO1GyhXsZIgc5pWE3kpy0VB3ZpLoe0fuVL+6r75Etb
	 A3KB06yHedGCfmoj1Nv1YYwB3Gn0L/18QkcBlhahh5n/Rlem8P/TffEzw6aG19qU06
	 apiA05dc0tTuE5C1yvWRRwe2HiVfmtlRjlVkYou+rzJaw/81EITWg1Hy/jI5yUezTi
	 L+XEXxPm26JFZb0qNo4ZqXvRrKR72wUrSTSwZCBzjjja3Zk2P2iZp1IazleGD2wVA4
	 YWKNm1Ce8JSqmQc1HOPv0RwJ3fE3HIu6LoBpra358IGdRKBI+Rl1sbpWAmgKcZKykW
	 aWTZKiFy48+Hw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
In-Reply-To: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
Subject: Re: [PATCH v3 0/6] USB31DRD phy support for Google Tensor gs101
 (HS & SS)
Message-Id: <171992736365.699169.8645962740649153976.b4-ty@kernel.org>
Date: Tue, 02 Jul 2024 19:06:03 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_063613_252248_9F3B36FC 
X-CRM114-Status: GOOD (  12.12  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIE1vbiwgMTcgSnVuIDIwMjQgMTc6NDQ6NDEgKzAxMDAsIEFuZHLDqSBEcmFzemlrIHdyb3Rl
Ogo+IFRoaXMgcGF0Y2ggc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3IgdGhlIEV4eW5vcyBVU0IgMy4x
IERSRCBjb21ibyBwaHksIGFzCj4gZm91bmQgaW4gRXh5bm9zIDkgU29DcyBsaWtlIEdvb2dsZSBH
UzEwMS4gSXQgc3VwcG9ydHMgVVNCIFNTLCBIUyBhbmQKPiBEaXNwbGF5UG9ydCwgYnV0IERpc3Bs
YXlQb3J0IGlzIG91dCBvZiBzY29wZSBmb3IgdGhpcyBzZXJpZXMuCj4gCj4gSW4gdGVybXMgb2Yg
VVRNSSssIHRoaXMgaXMgdmVyeSBzaW1pbGFyIHRvIHRoZSBleGlzdGluZyBFeHlub3M4NTAKPiBz
dXBwb3J0IGluIHRoaXMgZHJpdmVyLiBUaGUgZGlmZmVyZW5jZSBpcyB0aGF0IGl0IHN1cHBvcnRz
IGJvdGggVVRNSSsKPiAoSFMpIGFuZCBQSVBFMyAoU1MpLiBGaXJzdGx5LCB0aGVyZSBhcmUgc29t
ZSBwcmVwYXJhdG9yeSBwYXRjaGVzIHRvIGNvbnZlcnQKPiB0aGlzIGRyaXZlciB0byB1c2luZyB0
aGUgY2xrX2J1bGsgYW5kIHJlZ3VsYXRvcl9idWxrIEFQSXMgdG8gc2ltcGxpZnkKPiBhZGRpdGlv
biwgd2hpbGUgdGhlIGJ1bGsgb2YgdGhlIGNoYW5nZXMgaXMgYXJvdW5kIHRoZSBTUyBwYXJ0Lgo+
IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3MhCgpbMS82XSBkdC1iaW5kaW5nczogcGh5OiBzYW1z
dW5nLHVzYjMtZHJkLXBoeTogYWRkIGdzMTAxIGNvbXBhdGlibGUKICAgICAgY29tbWl0OiBlMzQw
YzA0MWI3YTRjMDMyMWJmZTJjYjU0ODE3ODM3YzkwNDBjNzM5ClsyLzZdIHBoeTogZXh5bm9zNS11
c2JkcmQ6IHN1cHBvcnQgaXNvbGF0aW5nIEhTIGFuZCBTUyBwb3J0cyBpbmRlcGVuZGVudGx5CiAg
ICAgIGNvbW1pdDogYmJiMjhhMWQ3MzNhOTQzMzBmNTc3OGI0Y2QwZGJjY2Y2YzM0NTk3ZApbMy82
XSBwaHk6IGV4eW5vczUtdXNiZHJkOiBjb252ZXJ0IGNvcmUgY2xvY2tzIHRvIGNsa19idWxrCiAg
ICAgIGNvbW1pdDogNTQyOTBiZDk4MTFlY2RkODJjMTliOTYwOTNlMmM3ODMyNWY1OTU3NApbNC82
XSBwaHk6IGV4eW5vczUtdXNiZHJkOiBjb252ZXJ0IChwaHkpIHJlZ2lzdGVyIGFjY2VzcyBjbG9j
ayB0byBjbGtfYnVsawogICAgICBjb21taXQ6IDI2YmEzMjYxMjE1YjQ0ZDQ2NmJkMjA5M2RhZjM3
OTYwMzFjMDljMGEKWzUvNl0gcGh5OiBleHlub3M1LXVzYmRyZDogY29udmVydCBWYnVzIHN1cHBs
aWVzIHRvIHJlZ3VsYXRvcl9idWxrCiAgICAgIGNvbW1pdDogNDk3ZGRhZmU5MTVlOGQ5ZmI0ZDEx
NTQyZDE2YTFmZjk1YTNlODAzNApbNi82XSBwaHk6IGV4eW5vczUtdXNiZHJkOiBzdXBwb3J0IEV4
eW5vcyBVU0JEUkQgMy4xIGNvbWJvIHBoeSAoSFMgJiBTUykKICAgICAgY29tbWl0OiAzMjI2N2My
OWJjN2Q1Yzk2NTRiNzFlNGYzNTQwNjQyMTdhNWZiMDUzCgpCZXN0IHJlZ2FyZHMsCi0tIApWaW5v
ZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
