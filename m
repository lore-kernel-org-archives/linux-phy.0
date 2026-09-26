Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78B75C98328
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 07:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0IORIuDAzrcxwB0wjFsL9SrjSf07hZlH3CAGoIOMCdM=; b=wCtwZFAD6KtIfj
	o62jIHrmzMluSW65kjTJya9GHRdUoTx7mPbaUogqbkWvodY6AaNNnGulMZhZE0FqfxR0tq0NQ3IQE
	Zp1RzU+lMhFn/7S4Xyi9uA8xNhuSl7BZVuh+CTBcUilrvMUTbDpOUS9A6u3iWBZ8kt08PpvliJdYA
	nxv8lo9AgnCFZMKf7JsFsdm0V8zq4s1av1egeaMUx/8b59gBDsXGmm3j7YPpdwF5AlOfNR+0hZMnW
	0qeSjqWd7fPbuZDNmzeiqYeMoOYyOhOMv4zeatNsmbValEhROnY6agUrc0AN/xzE1ClwjcNXA3FtI
	MnuLfCnA8Z8N+tKDvgeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANHh-0000000F8fh-0bj5;
	Sat, 26 Sep 2026 07:57:25 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANHf-0000000F8f3-2qGa;
	Sat, 26 Sep 2026 07:57:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1FE3A601E4;
	Sat, 26 Sep 2026 07:57:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87EC21F000FF;
	Sat, 26 Sep 2026 07:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790409442;
	bh=48zWiXtDbWWPdN5dNR6DkzojdZtrw8czYNDIITV+eRM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=P/RiMpMB1uJqiNWk6NfX+xLtn8IyNqDitDt0z7qXTOYFszs71G3Vt3uNHlO2aZ4Q6
	 OP5OHy+OPAibZqyoWFVhq8rqwmMndoMJ32P52Ukx8Wk49HLvaOCx35+IBDEnDSLYHe
	 XMdqCvZBCgInhXjEVrC9YU4gWX9IpU1Js/P5va6tGMMM4U+5mdLbI1hZr/Pwsv/RTz
	 QQGyX6lcM/GG+jKfDLBWA+nYxwBVX/OHBcSX8PyUdSMlH7gvEGOqB9O97WtGHhSLn/
	 +WC35Y6QpousRlaJVak5IP/bnodNx65T7t38PCN2ebOSegLy7yjhwLVpqljI6RjG3Q
	 R4w6sXE8CJUJw==
Date: Sat, 26 Sep 2026 09:57:04 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 3/6] phy: rockchip: usbdp: Rename mode to hw_mode
Message-ID: <tdedujt6ngogtmilpfyfo56bmj2y255ayx2tinhylnstjxbtlv@6r6g7qzasefg>
References: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-0-9ad90a456953@collabora.com>
 <20260915-b4-rockchip-usbdp-cleanup-part3-v15-3-9ad90a456953@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-3-9ad90a456953@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MzI6NTBQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gUmVuYW1lIG1vZGUgZmllbGQgdG8gaHdfbW9kZSB0byBtYWtlIGNsZWFyIHRo
YXQgdGhpcyBpcyB0aGUgbW9kZXMKPiBjdXJyZW50bHkgc3VwcG9ydGVkIGJ5IHRoZSBoYXJkd2Fy
ZSwgYnV0IG5vdCBuZWNlc3NhcmlseSByZXF1ZXN0ZWQKPiBieSBzb2Z0d2FyZS4gSS5lLiBpdCBp
cyBvbmx5IHNldCBieSBlaXRoZXIgdGhlIFVTQi1DIHN0YXRlIG1hY2hpbmUKPiBvciBkZXZpY2Ut
dHJlZSBpZiB0aGUgUEhZIGlzIHVzZWQgaW4gYSBmaXhlZCByb3V0aW5nIHNldHVwLgo+IAo+IFRl
c3RlZC1ieTogSWdvciBQYXVub3ZpYyA8cm95YWxuZXQwMjZAZ21haWwuY29tPiAjIE9yYW5nZSBQ
aSA1IFBsdXMKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJl
aWNoZWxAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
PG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
