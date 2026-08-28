Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1D19C61DC6
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 08:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2Ajbci1c2iewgDwAygl64XuWkAn9yYPVD+DkCviGSo=; b=KrJew+J8O9fdRe
	BsYvCN8Yu83QxPqPJAnjDaX74kDxLy7nl33iLA1naQkFYg5yUgXsykxHrhv3bmhh7+13Z0mz7f/3R
	xLh1+pxq7581h4qjVEqSN9+WIpGoI9o4megOntlIxBJ5fE7jRfo9KVbascRsuZCC1R3oN6gwIS8C4
	3VMPNBgG/6u3qBi9An2LQb1k+ML6ZgijmeliEK0HKd9hblldGY69fKNnLCmo9jMxJ3DsSW+zzXviL
	w3K4wAqMvKvdZuNDd84Nz4+KbE7cuSC71lnakY8HU2zGuwakTfSr9gP28OgETqgJi4SDw6I3altNt
	Y22XBMumT9Ft+8L7L/SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsIC-00000005MZX-23m8;
	Fri, 28 Aug 2026 08:50:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsIB-00000005MZ6-38g4
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 08:50:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 35E6E60200;
	Fri, 28 Aug 2026 08:50:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BB6B1F00A3A;
	Fri, 28 Aug 2026 08:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787907030;
	bh=Z8NPY5TsPIUZ4hedWFn6I6PtZBu3J+dX54llsvMm/C4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fpfxo177nft00Mr7Ynjopxp53UE+xLucz1RYzt3PeMq2zXQmNRizslVzXpSQ3FbsF
	 7canGezYbSTBwB7Hj8PseJUOb3Vd3bAhcYjRQEHuNBOiaj90eCb7jLopkAf8h6/xNu
	 J13VyTghRCiHtyNb4mRw3ZbU3qvTYhE5gJWP/aLjUBpRthCruP5Wja1HJH0XyMe1uh
	 LotnKW7ceVH4DfSE+87OUc8RuSGlSiihIcCn13iQ3TB1D4vkc8fItFhYE0vR65NSPe
	 SFGAFU+gDDX7F4Yf7W4I3qn5r4XoM8CnRKsoPhhvRf8QxGMzQ02KL8Ik3wFR2uptqI
	 +Xd4GGROdS+UA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/4] PCI: qcom: Add CGC disable workaround for Nord
 PCIe
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: conor+dt@kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org
In-Reply-To: <20260828-nord-v2-3-18bf59d19d6f@oss.qualcomm.com>
References: <20260828-nord-v2-0-18bf59d19d6f@oss.qualcomm.com>
 <20260828-nord-v2-3-18bf59d19d6f@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 08:50:29 +0000
Message-Id: <20260828085030.6BB6B1F00A3A@smtp.kernel.org>
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

PiBOb3JkIHJlcXVpcmVzIGEgd29ya2Fyb3VuZCB0byBhZGRyZXNzIGEgdGltaW5nIGNvbnZlcmdl
bmNlIGlzc3VlIGluIHRoZQo+IFBDSWUgcG93ZXIgZG9tYWluLiBUbyBhdm9pZCB0aGUgaXNzdWUs
IHNldCB0aGUgQ09SRV9DTEtfQ0dDX0RJUyBhbmQKPiBBVVhfUFdSX0RFVCBiaXRzIGluIFBBUkZf
U1lTX0NUUkwgYWZ0ZXIgY29udHJvbGxlciBpbml0aWFsaXphdGlvbi4KPiAKPiBUaGUgU0xWX0FD
TEtfQ0dDX0RJUyBiaXQgaXMgYWxyZWFkeSBjb25maWd1cmVkIGJ5IGhhcmR3YXJlIHJlc2V0LiBU
aGlzCj4gY2hhbmdlIGFkZHMgdGhlIHJlbWFpbmluZyByZXF1aXJlZCBzZXR0aW5ncyBhcyBkb2N1
bWVudGVkIGluCj4gUUNUREQxMTk3MjQ0Ni4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBLcmlzaG5hIENo
YWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21tLmNvbT4KClNhc2hp
a28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3Mg
Z3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwODI4LW5vcmQtdjItMC0xOGJmNTlkMTlkNmZAb3NzLnF1YWxjb21tLmNvbT9w
YXJ0PTMKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
