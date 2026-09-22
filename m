Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBCD6C982FF
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 12:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0lF8DT12RGsyA0rxGy65Hkanon5GwRbuFIj+cHMvex8=; b=kU3yajSnOGQGId
	QqoL1yDpK1GSImSs4dpDCD9STThEhy74ib8R0cE0pTRLB9ZJsM8arGZM2B67Bovcxc1+/X6KLdur/
	ilsWZf8fdFRR0RQM4L9wVHZlYbHF7iiiewAYLH2isdQFyheXAIsn7uqen3aN5bKjDx/97Y9G967kZ
	e7IBWirpWgZNLgmj47WacLjI5V+CzKvqjbr3f6gIxWq109kqV//vNsb5b2iNGxn1TWuOabadRAqQb
	NkC3m1/NdOu3MkgTQLRoxGLbJp28yjLbZguNTGmSHEttDECNQu0e5gqhEAMw6MzhvnA+63Dd26fzf
	5KaBPklTCXModzWPzzsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8zkI-00000005K6J-1Hew;
	Tue, 22 Sep 2026 12:37:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8zkG-00000005K68-2wWb
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 12:37:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 292BD41AB7;
	Tue, 22 Sep 2026 12:37:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B2271F000FF;
	Tue, 22 Sep 2026 12:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790080632;
	bh=DwHB8BOImshYFfluP8K16hpIGSP6HK3GfAavYT0JBYk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ALVib/2As2ZxO3Kp2XqsyhAjSO1L4bSIHNIPkaizuCwxDpCxVr4AwNZyH4VPH7g5R
	 +c4mJHIIzPjL2g3+6z1gSfbQXivFVsmp0cX0SU9bp9UyVMq4YY6dbewi0k4CczsV9l
	 xI2qNUDZZJ6zL4hWffrC3ZZlKJKCkGHX9tmBblnODE0lTBtUm6jEisHvatSkKDUrtP
	 m1viHHr0FbmfiCkvN8um4z2PYspTxxXTJ+MQU0Q2KkOQL28/JwCedp3f1Zvc6JzISj
	 vEyRU3VWxmlC+R/viak6V6RAau7nQJZqp6El5M3wZBsAEIVmlO7llNhFp2J7cWFYDr
	 v2tei/lMvHDsg==
Date: Tue, 22 Sep 2026 14:36:58 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Bryan O'Donoghue <bod@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v20 2/6] phy: core: Add phy_get_by_of_node()
Message-ID: <pguh3wzcsripriqjo57vzkg72uhiw2c276jtlwnfv4baju3e7x@of5sp4ym4m6q>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
 <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-2-dc244e124e71@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-2-dc244e124e71@linaro.org>
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

T24gRnJpLCBTZXAgMTgsIDIwMjYgYXQgMDI6NTY6MzdQTSArMDEwMCwgQnJ5YW4gTydEb25vZ2h1
ZSB3cm90ZToKPiBBZGQgbmV3IGZ1bmN0aW9uIHBoeV9nZXRfYnlfb2Zfbm9kZSgpIGFsbG93aW5n
IGxvb2t1cCBvZiBhIHBoeSBieQo+IGRldmljZV9ub2RlLiBTZXBhcmF0ZXMgZXhpc3RpbmcgbG9n
aWMgaW4gX29mX3BoeV9nZXQoKSBpbnRvIGFuIGludGVybmFsCj4gaGVscGVyIG1ldGhvZCBfb2Zf
cGh5X2dldF93aXRoX2FyZ3MoKSB0byBhbGxvdyBmb3IgcmV1c2UgaW4gbmV3IG1ldGhvZC4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBCcnlhbiBPJ0Rvbm9naHVlIDxicnlhbi5vZG9ub2dodWVAbGluYXJv
Lm9yZz4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2Fk
aGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N
4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
