Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D4A8C5CFCF
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 15:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0TUdNSym2NlBbHDctVV0jrX8YvPxwytyAmiP1lq2Hc=; b=DwUaCWNRNzBf19
	E7rvZpAVAt3ekv1GuuJnVAO5LBAmpNi8had7fnxjx+/6s/rn6VlVlJ5bdQTrTwG3/u1hF47zKk470
	PxZoAnCs91RDJd1Ugj1AQxCxkkrwcy7PfeRg9TIPIe3bfif1I2A4iiqLEqjSIYoFFeAUFuoR69TPp
	4mIQx6RDORn2urKR4Dhuxm55G6IIw8FMf5yaVs79wjGErV7kqaoO1MWTP6vg5P+pw1V82alhiqW5P
	dHG01scFBPuduPA+aoQdH2Zy9GvcCj8FInJNEOKMIC2VK4P+Bv2mU9FttA+UWA3Z+r7wMyV5rXHZK
	O0Co++mVVMKDJCbHVzeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuAXU-0000000GR3V-0uXc;
	Wed, 12 Aug 2026 15:06:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuAXT-0000000GR3I-1i5N
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 15:06:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E6BF942AA2;
	Wed, 12 Aug 2026 15:06:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46AD21F000E9;
	Wed, 12 Aug 2026 15:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786547202;
	bh=iB8Ml9iGe0F9QaTSKAR14j0H2MWM7qyvBRoV1bz/NsQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eNKSEAebdUBwP+FPnilnuZtbQzbZlIdUh05s/GFKEw5UETnqkaG3lHsvdsI4F/b+F
	 6q1vzC0mzDted/HpfztLhO/TcAqi89zJtcaQou0VVAx6WuUT3RCX5eXCzmFdGhzmDk
	 th4+wH19BXs5D3tje+pTQUIxI7SAqi0EKPrObY2jYcvqqKDNoY7xtdj4w6ug+JP/Fn
	 yUDrA+DwZAOUlk4M1u9bF0h4mikxhxja7ZEwCv/KeQSh+pwpQDVdYI2RTQZWUd7mO+
	 NYfPFGuktXmtVSj/UjzI9RYcL5xfVO4sS9trtvmyPf8WtWLYxMKMLOBjdF8g6hzK83
	 ndYQtnAlABbWQ==
Date: Wed, 12 Aug 2026 17:06:35 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stanley Chang <stanley_chang@realtek.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 6/6] phy: realtek: Make configs available for
 MACH_REALTEK_RTL
Message-ID: <ffhzuivxrf3kmarkk2hwkcvzzzv3cuhg34ecamjip4m4pdsuld@zv4sm2bcaxtf>
References: <20260520175728.720877-1-adilov@disroot.org>
 <20260520175728.720877-7-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260520175728.720877-7-adilov@disroot.org>
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

T24gV2VkLCBNYXkgMjAsIDIwMjYgYXQgMTA6NTc6MjhQTSArMDUwMCwgUnVzdGFtIEFkaWxvdiB3
cm90ZToKPiBBZGQgdGhlIE1BQ0hfUkVBTFRFS19SVEwgdG8gdGhlIGlmIHN0YXRlbWVudCB0byBt
YWtlIHRoZSBjb25maWcKPiBvcHRpb25zIGF2YWlsYWJsZSBmb3IgUmVhbHRlayBSVEwgU29DcyBh
cyB3ZWxsLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJ1c3RhbSBBZGlsb3YgPGFkaWxvdkBkaXNyb290
Lm9yZz4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2Fk
aGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N
4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
