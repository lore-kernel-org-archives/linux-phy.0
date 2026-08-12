Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 339A6C5B56A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 13:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZjzSU4qIc3H6tWR6+8qCA5/Wpnv12/TleJb32ChuGw=; b=Gfp+8fLLJlxf9E
	LAgkdcBnhMIwNOFxeYKbcSPJOvK+80OV80r5pI5d2Qjf03L2NBlCWgpvsnOJQNJwgsEnOy07v+vte
	he5zTc19pfmqlXtezj8clLOfepaOLzZyrR32D2gF84IxfZl2+dSy8v/xUZ9tkSBgRurGUUyi8yLEK
	dq80fuVlzeUE/n1KpLQbDYmkfeZN1vYCs0JdQVvUiTztZiP17lAnRghHr3Bh3Roc4AvY7s7tBS0vG
	biXmme6mgMCl39AYz+tYPln2T4R4ZlUq0H4MLJtVM584HwZjtNfEZCUYYwVshLdjsZ1OlCOWwtZfV
	74n6gVw3MI2IJVFq3pKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu8yi-0000000GH6e-2zIc;
	Wed, 12 Aug 2026 13:26:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu8yh-0000000GH6V-03HU
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 13:26:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2D98B60DB5;
	Wed, 12 Aug 2026 13:26:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BB891F00A3D;
	Wed, 12 Aug 2026 13:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786541201;
	bh=/IdcnCPGY2CzqQhcU4gDaaZ96nKv+VBTAjvQ3d3i4zM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FKrLtkmnH7+HjTNmne3y31x0sd5N/b/kyUrNUW8L5TZA2ak3y4ZwW9l2oAoSMDwXX
	 Vu5JwejtkeQ+aMBhXZPu8Brzu932Fd3yKqmvGMLxmymgOXBPI1XcDXmm1A3CsfFbMN
	 t/q9aqf21DiOd8tjt0R4Cpah0rdhp5KC5VRsekKLVMmpiecdHAXuhhMOysIE2iB7FJ
	 CY/v/xRdqiksj/iY9kbP3mn+NE1IWkcKwA708jo8ZrC/5F9iQOl4pfGcpXiAzzgHiU
	 DTDYjrkCOwvJHcpzQ/SJV2THwqf7P2levivh3Hkx0vRWYhBLSVgR/aM1qoc0d8L5Ak
	 o38/rWs7d0l9w==
Date: Wed, 12 Aug 2026 15:26:35 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Haotian Zhang <vulab@iscas.ac.cn>
Cc: olteanv@gmail.com, vkoul@kernel.org, kishon@kernel.org, 
	andriy.shevchenko@linux.intel.com, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: hisilicon: hi3670: Fix OF node and device
 reference leaks
Message-ID: <izs7apwabpvluftq57ftvuo5bmcroulndwp7dnbd3hw4nk4eec@qap23jlf5rfd>
References: <20251112062246.852-1-vulab@iscas.ac.cn>
 <20260219163843.1571-1-vulab@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260219163843.1571-1-vulab@iscas.ac.cn>
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

T24gRnJpLCBGZWIgMjAsIDIwMjYgYXQgMTI6Mzg6NDNBTSArMDgwMCwgSGFvdGlhbiBaaGFuZyB3
cm90ZToKPiBoaTM2NzBfcGNpZV9nZXRfcmVzb3VyY2VzX2Zyb21fcGNpZSgpIGxlYWtzIHR3byBy
ZWZlcmVuY2VzOgo+IDEpIFRoZSBPRiBub2RlIHJldHVybmVkIGJ5IG9mX2dldF9jaGlsZF9ieV9u
YW1lKCkgaXMgbmV2ZXIgcmVsZWFzZWQuCj4gMikgVGhlIGRldmljZSByZXR1cm5lZCBieSBidXNf
ZmluZF9kZXZpY2VfYnlfb2Zfbm9kZSgpIGlzIG5ldmVyIHB1dC4KPiAKPiBGaXggYm90aCBsZWFr
cyBieSBjYWxsaW5nIG9mX25vZGVfcHV0KCkgcmlnaHQgYWZ0ZXIKPiBidXNfZmluZF9kZXZpY2Vf
Ynlfb2Zfbm9kZSgpLCBhbmQgcHV0X2RldmljZSgpIGFmdGVyIGRldl9nZXRfcmVnbWFwKCkKPiB3
aGVuIHRoZSB0ZW1wb3JhcnkgcGNpZV9kZXYgcmVmZXJlbmNlIGlzIG5vIGxvbmdlciBuZWVkZWQu
Cj4gCj4gRml4ZXM6IDczMDc1MDExZmZmZiAoInBoeTogSGlTaWxpY29uOiBBZGQgZHJpdmVyIGZv
ciBLaXJpbiA5NzAgUENJZSBQSFkiKQo+IFN1Z2dlc3RlZC1ieTogVmxhZGltaXIgT2x0ZWFuIDxv
bHRlYW52QGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBIYW90aWFuIFpoYW5nIDx2dWxhYkBp
c2Nhcy5hYy5jbj4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5u
YW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K61
4K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
