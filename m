Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22C52C53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 23:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+q3eRstIus3omkDjibuZYrh8ervXS4+YZNuFauO36ag=; b=qU+M0E5RiSG8Fz
	apVMmY/wdwvbljaSbhbVLjXmdPml0q5xz3LlJvRTYLF9xw2Y9qTQMQj7FM9cuKMAjc8RSfZTcA9QT
	bHbLUOpJAIF63j1aclnt+btgl6de+yscK5BdpcGtkfFIJQRlPGlaG/UYb2ZOLjlGpc+W5kmf57fhb
	ao5Zhiml6YBR9vhHvAhn4VvliCUFFX7u7LlmYAWVBzIZz59fN2VfO/bQwNdvdkYYPFIWyVbzbCAAv
	geRqPcExej5NH0kSf0X/a+aqJcX6MYmRpw/690+zoJ28B2ztr0dR3TB++53+QHzdd/9OZcr5oBhov
	AXUOu6UuHcK82RdIfnjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1worNE-00000006UcL-1d3f;
	Tue, 28 Jul 2026 23:38:12 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1worND-00000006UcE-2EJX
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 23:38:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D254A40361;
	Tue, 28 Jul 2026 23:38:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93E0C1F000E9;
	Tue, 28 Jul 2026 23:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785281890;
	bh=lEFXPTpHisQaEXsrIG6LaLdD1i4QU2aGZ2O16KHXXs8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=haCCh3RYAe4mGWCwNTcRLr+bB1qRfbF10cEHMsgUFEar5cehGK3SPTIqKrJYJ/GPR
	 PmebK1BzFO3ZHYP1u94fTySeJnGOkCxdzk2OHNNNfXuwxM0noklp4OiXZRxNqMHX4i
	 WvBQtUvigyUxrzRwt1Bw/LUiy5cqodR76t6iyd3JJCiuR+8q/YU1LbSzrl6WRWcgmv
	 g1MQgMB9ghGRT6QI+2XUZKUMONv+M8EzcgB8TZeWtNdxYVOVU9wXq+vDKGnvCqtkOh
	 ErM+nAdQWuXqfzZhXRWPdSfT9M8qcFku/ieWZidSfKHJgLYymCxcKQdddVy5ScLt7j
	 BcKgH1errWklQ==
Date: Tue, 28 Jul 2026 16:38:09 -0700
From: Drew Fustini <fustini@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: sashiko-reviews@lists.linux.dev, vkoul@kernel.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	robh@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: add binding for T-Head TH1520
 USB PHY
Message-ID: <amk9YYzI+LqCHhcy@x1>
References: <20260723084316.3573714-1-zhengxingda@iscas.ac.cn>
 <20260723084316.3573714-2-zhengxingda@iscas.ac.cn>
 <20260723084759.3BBF81F000E9@smtp.kernel.org>
 <8ccf1a36179881b1f9662e70d728322c62c88f78.camel@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8ccf1a36179881b1f9662e70d728322c62c88f78.camel@iscas.ac.cn>
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

T24gVGh1LCBKdWwgMjMsIDIwMjYgYXQgMTA6MDU6MjRQTSArMDgwMCwgSWNlbm93eSBaaGVuZyB3
cm90ZTogPiDlnKggMjAyNi0wNy0yM+Wbm+eahCAwODo0NyArMDAwMO+8jHNhc2hpa28tYm90QGtl
cm5lbC5vcmflhpnpgZPvvJoKPiA+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNh
c2hpa28gQUkgcmV2aWV3IGZvdW5kIDIgcG90ZW50aWFsCj4gPiBpc3N1ZShzKSB0byBjb25zaWRl
cjoKPiA+IC0gW01lZGl1bV0gVGhlICdyZWcnIHByb3BlcnR5IGlzIG9taXR0ZWQgZnJvbSB0aGUg
J3JlcXVpcmVkJyBsaXN0IGZvcgo+ID4gYSBtZW1vcnktbWFwcGVkIFBIWS4KPiA+IC0gW01lZGl1
bV0gVGhlICdhdmRkMzMtdXNiMy1zdXBwbHknIGlzIG9taXR0ZWQgZnJvbSB0aGUgJ3JlcXVpcmVk
Jwo+ID4gbGlzdCBiYXNlZCBvbiBzb2Z0d2FyZSBsaW1pdGF0aW9ucyByYXRoZXIgdGhhbiBoYXJk
d2FyZSBkZXNjcmlwdGlvbi4KPiAKPiBXZWxsIHRoaXMgaXMgYWxzbyB0byB3b3JrYXJvdW5kIHRo
ZSBwcm9ibGVtIHJhaXNlZCBieSBTYXNoaWtvIHlvdXJzZWxmCj4gYXQgWzFdLgo+IAo+IEkgZGlk
bid0IG1lbnRpb24gaXQgaW4gdGhlIGxvZyBiZWNhdXNlIEkgYW0gbm90IHN1cmUgd2hldGhlciB0
aGlzIGlzIGEKPiByZWFsIHByb2JsZW0uCj4gCj4gWzFdCj4gaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwNTA3MDgxNzEwLjQwOTA4MTQtMS16aGVuZ3hpbmdkYSU0MGlzY2FzLmFj
LmNuP3BhcnQ9NgoKSSB0aGluayBTYXNoaWtvJ3MgY29tbWVudCBvbiB2MSB3YXMgaW5jb3JyZWN0
LCBhbmQgYXZkZDMzLXVzYjMtc3VwcGx5CnNob3VsZCBiZSByZXF1aXJlZC4KClNhc2hpa28gY2xh
aW1lZCB0aGF0IG1ha2luZyBhdmRkMzMtdXNiMy1zdXBwbHkgcmVxdWlyZWQgd291bGQgYnJlYWsK
ZHRic19jaGVjayBmb3IgYm9hcmRzIHRoYXQgaW5jbHVkZSB0aDE1MjAuZHRzaSBidXQgZG8gbm90
IHByb3ZpZGUgdGhlCnJlZ3VsYXRvci4gSG93ZXZlciwgZHRzY2hlbWEgZG9lcyBub3Qgd2FybiBh
Ym91dCBtaXNzaW5nIHByb3BlcnRpZXMgaWYKdGhlIG5vZGUgaXMgZGlzYWJsZWQgWzFdLiBUaGVy
ZWZvcmUsIG9ubHkgYm9hcmRzIHRoYXQgZW5hYmxlIHRoZSB1c2IgcGh5Cm5vZGUgd291bGQgbmVl
ZCB0byBwcm92aWRlIGF2ZGQzMy11c2IzLXN1cHBseS4KClRoYW5rcywKRHJldwoKWzFdIGh0dHBz
Oi8vZ2l0aHViLmNvbS9kZXZpY2V0cmVlLW9yZy9kdC1zY2hlbWEvYmxvYi9lYjBlNTNkMWM1YjA3
MTg2NWFiYmY3ZDI1MTcyMTQzMWU4ZTZiZDcxL2R0c2NoZW1hL2R0Yl92YWxpZGF0ZS5weSNMMjU2
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
