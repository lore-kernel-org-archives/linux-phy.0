Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17C49CFD313
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 14:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:Subject:From:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4o5cwy/5x+M/ZxkcpDtM/LrLdhyKsXDCKcNk3jBh00=; b=0XLXkssybzZxnW
	EKmYlfHxqcqd8eumcjbQB30U3OZMZ4XWxjHpDgIqOzj6EnImFFSNvJsLDHpe0vUXuiDLAVnMr5d5J
	5QZ3v0AexzOVZ1xY9Nic3YXTsToj5W88sClKh7H/tQurhWHIBLMIeRrWcIH6k2+h35JChFBqF9x/k
	7FCUqy3eq702cqm15jdGdCGbk3waW/gh5IxIq6e5LOGYdRuHW4X1UUWVslxjZnznYIV/8Z02JPNvY
	frW1c9FkFaec5FIAvGtwBQAiEsr1iCpxs1wRNsYiRhl5REsOfW9xeQsbxz9ix87gQCZp17x7cVjd2
	VKjS5O1lVLUXnq/0nmfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNXpm-0000000Brqf-3XHa;
	Mon, 24 Nov 2025 14:46:30 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNXpi-0000000Brq8-0Fli
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 14:46:28 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 109504E4189F;
	Mon, 24 Nov 2025 14:46:24 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D6229606FC;
	Mon, 24 Nov 2025 14:46:23 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 345D110371DA2;
	Mon, 24 Nov 2025 15:46:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763995582; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=+qmgrtT0fSoelw7XMVNn3o/vDeOr/X03Bxb90zIAOqQ=;
	b=oCDxF9GwvexzD4nD1/CZ/SQttn+vHARpNw46K9rfHbM+vBlEN0yTNYaTt42ezYScxXPHrM
	go2o6hFWebvNqe0u8S/7lbdss+BD+uir2lCZV6pHi07U6tFPLOhumVmDlAhvG4IFS4zSrB
	Ip6c0ApTp2Oee8PpDj8avs5PzxmdF7HyHjtzkeq2zYCHBarcQa/Ly03CKrXy82Fn+xRxih
	Lg+t7o8Z1YMlUAs9bJab047cHl2U3C6hQmXzL2d8tbhvX5m1OY7ecMekJi+111UdqmmjE8
	IwovumQRoBvm3/IxrOwr3mK3cO4mBalKJd4+cPd9AW0H/7cFynQehWoFwW3tbQ==
Mime-Version: 1.0
Date: Mon, 24 Nov 2025 15:46:20 +0100
Message-Id: <DEH08UJJGPFG.2RSQ6YHTM5JPY@bootlin.com>
To: "Stephen Boyd" <sboyd@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, "Kishon
 Vijay Abraham I" <kishon@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Michael Turquette" <mturquette@baylibre.com>,
 "Philipp Zabel" <p.zabel@pengutronix.de>, "Rob Herring" <robh@kernel.org>,
 "Thomas Bogendoerfer" <tsbogend@alpha.franken.de>,
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, "Vinod Koul"
 <vkoul@kernel.org>, "Vladimir Kondratiev"
 <vladimir.kondratiev@mobileye.com>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Subject: Re: [PATCH v3 3/7] clk: eyeq: use the auxiliary device creation
 helper
Cc: <linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Maxime Chevallier"
 <maxime.chevallier@bootlin.com>, "Tawfik Bayouk"
 <tawfik.bayouk@mobileye.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, "Jerome Brunet" <jbrunet@baylibre.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251119-macb-phy-v3-0-e9a7be186a33@bootlin.com>
 <20251119-macb-phy-v3-3-e9a7be186a33@bootlin.com>
 <176357562473.11952.15433192921239262065@lazor>
In-Reply-To: <176357562473.11952.15433192921239262065@lazor>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_064626_254608_00EC2034 
X-CRM114-Status: UNSURE (   6.42  )
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

T24gV2VkIE5vdiAxOSwgMjAyNSBhdCA3OjA3IFBNIENFVCwgU3RlcGhlbiBCb3lkIHdyb3RlOgo+
IFF1b3RpbmcgVGjDqW8gTGVicnVuICgyMDI1LTExLTE5IDA3OjUxOjExKQo+PiBGcm9tOiBKZXJv
bWUgQnJ1bmV0IDxqYnJ1bmV0QGJheWxpYnJlLmNvbT4KPj4gCj4+IFRoZSBhdXhpbGlhcnkgZGV2
aWNlIGNyZWF0aW9uIG9mIHRoaXMgZHJpdmVyIGlzIHNpbXBsZSBlbm91Z2ggdG8KPj4gdXNlIHRo
ZSBhdmFpbGFibGUgYXV4aWxpYXJ5IGRldmljZSBjcmVhdGlvbiBoZWxwZXIuCj4+IAo+PiBVc2Ug
aXQgYW5kIHJlbW92ZSBzb21lIGJvaWxlcnBsYXRlIGNvZGUuCj4+IAo+PiBUZXN0ZWQtYnk6IFRo
w6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+ICAjIE9uIE1vYmlsZXllIEV5ZVE1
Cj4+IFNpZ25lZC1vZmYtYnk6IEplcm9tZSBCcnVuZXQgPGpicnVuZXRAYmF5bGlicmUuY29tPgo+
Cj4gWW91IG5lZWQgdG8gYWRkIHlvdXIgU29CIGhlcmUuCgpPb3BzLCBJIGFtIG5vdCB1c2VkIHRv
IHNlbmRpbmcgb3RoZXIgcGVvcGxlJ3MgcGF0Y2hlcyBhcyBwYXJ0IG9mIG15CnNlcmllcy4gVjQg
Zml4ZXMgdGhpcy4gVGhhbmtzIQoKLS0KVGjDqW8gTGVicnVuLCBCb290bGluCkVtYmVkZGVkIExp
bnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
