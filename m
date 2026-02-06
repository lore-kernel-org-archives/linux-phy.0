Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6872EB28ED
	for <linux-phy@archiver.kernel.org>; Fri,  6 Feb 2026 08:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHa1JL1eINnFwQU2ke/6mOrenrQmpBGtM3IlfhUGMVM=; b=1N8ZnaBYpXcIK9
	SIc2bZkjzm7S5prg+9H0egeyK+amrp+7eksZFAOyziVeBdZvX4MBhO8rRZFteFBgsqQ0Eh5B+Gi3g
	BFEkiawon/ItsI52h7ssoduUrqt5m43MEyhhHtmOac5poLULYG5ZTy4Rhr82/b/8OUzeMFXpCCpsm
	7rEvrHtPUB5yfco61obRC2s9yoOEOxfvRYWpxVCxYVYp5ltG2aTayoHUF+DvAABbPLB4+Du1Lx8bn
	xrHbDyib2nJJW+AjVCUmGHSrleWVwo+QzHtXlgMgRI5AtcmaVlmCs2743g4fp8EIA0dpOL9FyXqOs
	UhkX8A5Jc1nTiQtUQCVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voHNP-0000000B3Dt-3ppf;
	Fri, 06 Feb 2026 08:39:43 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voHNM-0000000B3DK-2IVA
	for linux-phy@lists.infradead.org;
	Fri, 06 Feb 2026 08:39:42 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 1ABDFC22F40;
	Fri,  6 Feb 2026 08:39:44 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 8F45D60729;
	Fri,  6 Feb 2026 08:39:37 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 78C7E119D1A2E;
	Fri,  6 Feb 2026 09:39:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770367176; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=8LWtPgYkehUGPg1kNULPv7XLbPo8VdSlKcb1ubBGmLY=;
	b=lt1/V6TFv0RaFaLo1BBv5MPCB1/Pg1vDhdhTeQmBR/CHZzrV4o6SofEN4uk1HeqVFcqLM5
	LyGTyx+O50Zm6mL6DQHX6SKls3zIlWaRAg7GnsutG9HeIl2FTWF/S04Rjnhdr+SeqWkLKQ
	i35XYjVF6SXWkxmWdbZ+pKM01HKDDLVaO8SbIYgO0SDcLCVLpEOLSciHYuRLX7xwuTCKl5
	lSYnqc3suWJuzP41tjL8CQsWSKrpeI9QHvO6hgMkp2hofBo6HgcFGBLWAckeT72Xi1R3xT
	/uIeP11Wub99K4QBPiF6pBU2UgF5F2m87g78P/mI5nI1E9k/Plo5lZ1BcJ410g==
Mime-Version: 1.0
Date: Fri, 06 Feb 2026 09:39:31 +0100
Message-Id: <DG7QSB0600QO.1QHM7ULNVL3Q2@bootlin.com>
Subject: Re: [PATCH v6 2/8] phy: sort Kconfig and Makefile
Cc: <linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Tawfik Bayouk" <tawfik.bayouk@mobileye.com>,
 "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>
To: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, "Vladimir
 Kondratiev" <vladimir.kondratiev@mobileye.com>,
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Thomas Bogendoerfer"
 <tsbogend@alpha.franken.de>, "Neil Armstrong" <neil.armstrong@linaro.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
 <20260127-macb-phy-v6-2-cdd840588188@bootlin.com>
In-Reply-To: <20260127-macb-phy-v6-2-cdd840588188@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_003940_726122_72E8545B 
X-CRM114-Status: UNSURE (   3.69  )
X-CRM114-Notice: Please train this message.
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

T24gVHVlIEphbiAyNywgMjAyNiBhdCA2OjA5IFBNIENFVCwgVGjDqW8gTGVicnVuIHdyb3RlOgo+
IE5laXRoZXIgS2NvbmZpZyBub3IgTWFrZWZpbGUgYXJlIHNvcnRlZDsgcmVvcmRlciB0aGVtLgo+
Cj4gJCBkaWZmIC1VMTAwIDwoZ3JlcCBeY29uZmlnIGRyaXZlcnMvcGh5L0tjb25maWcpIFwKPiAg
ICAgICAgICAgICAgPChncmVwIF5jb25maWcgZHJpdmVycy9waHkvS2NvbmZpZyB8IHNvcnQpCj4K
PiAkIGRpZmYgLVUxMDAgPChncmVwIF5vYmotXFwkIGRyaXZlcnMvcGh5L01ha2VmaWxlKSBcCj4g
ICAgICAgICAgICAgIDwoZ3JlcCBeb2JqLVxcJCBkcml2ZXJzL3BoeS9NYWtlZmlsZSB8IHNvcnQp
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29t
PgoKUmV2aWV3ZWQtYnk6IEx1Y2EgQ2VyZXNvbGkgPGx1Y2EuY2VyZXNvbGlAYm9vdGxpbi5jb20+
CgotLQpMdWNhIENlcmVzb2xpLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5n
aW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
