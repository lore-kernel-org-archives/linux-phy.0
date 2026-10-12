Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90922CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 15:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4g8g6ydzRaWWy/TW3yknSyK/JxFhEOVPS9IsvqIEvw=; b=l01j2GsZMXvDX9
	DzI1Zn2BcY+Ce5n7MEL97yacy1UIA0Mgs5r3em1nzq8k8M6HDxIcvbyL78VW0Vzl2KOcYRlz7VBap
	k4+oV2tqIycSEGyLW+Sr/Fcf53IjyqEU3C61M9f7Dhz6/OSy80N1XzsbSFsOy+M9l9Vf9F3rUVKtp
	eejeNXUBBV2/6IVeVTDrTYaO9Q6nl/yrlWWxA09WfczgsMZZu30sFZNr0Yjf3wPUzlJSQHbsZH+L9
	SSulO92zaGuLwJiwrZdT4Fbrr5Pq7EBbYdQ3ipMJQeP79GwsJfKO1ml9VNNzZOHhMwwrh2b+sxsgg
	oTgk9YIEUFqhx/VLcc5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGI1s-0000000Aob3-143L;
	Mon, 12 Oct 2026 15:33:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGI1q-0000000Aoaq-2ih7
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 15:33:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6789D4030D;
	Mon, 12 Oct 2026 15:33:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A35991F0089C;
	Mon, 12 Oct 2026 15:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791819210;
	bh=FVJ3/smLT33iByHGLvW5Yq9/CA9AFPfDNiksjJlTINs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ii8RRP9qwY00Ov0tz8sjKhRlAEbdpQjqvpfEWGyV62fFcDKwGcC5in6mQlTwH/b3W
	 P4CNDRpZkJxeN0Ch6me05bl1QShN40lvSdQBX9eqcB0KbNvLCc5GFC0Zt/lEpvbpQ4
	 oWlqqqt5GZwW8XPHLyjuE+IT4IPLHf0jbb9SBi/DAwz9RzMT6WdnGu2HNq352JZccQ
	 gVXP52ZeamQx0r2zAJjXQ4T+lZniJrzelfrn49o14sOXb+tFXF+uovJoxeLQlx0kYK
	 bIOqhhnKjK7WI6vYUzXNx29wHOV6Qy5iH68h/wQVqgdFANT9Fp4wD2wz6pBKY71Wy8
	 yqNqv6mrgJTcg==
Date: Mon, 12 Oct 2026 21:03:21 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, sashiko-reviews@lists.linux.dev
Cc: olteanv@gmail.com, vkoul@kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, neil.armstrong@linaro.org
Subject: Re: [PATCH 4/4] phy: qcom-qmp-pcie: Split phy_ops into
 init/exit/reset/power_on
Message-ID: <asz9pEf2DR3_GpuF@debian>
References: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
 <20260915-align_pcie_init_sequence_0916-v1-4-0b2195836f30@oss.qualcomm.com>
 <20260916061703.5F02C1F000FF@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260916061703.5F02C1F000FF@smtp.kernel.org>
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

T24gV2VkLCBTZXAgMTYsIDIwMjYgYXQgMDY6MTc6MDJBTSArMDAwMCwgc2FzaGlrby1ib3RAa2Vy
bmVsLm9yZyB3cm90ZToKPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNoaWtv
IEFJIHJldmlldyBmb3VuZCAxIHBvdGVudGlhbCBpc3N1ZShzKSB0byBjb25zaWRlcjoKPiAtIFtI
aWdoXSBwaHk6IHFjb20tcW1wLXBjaWU6IG5vY3NyX3Jlc2V0IGxlZnQgYXNzZXJ0ZWQgd2hlbiBz
a2lwX2luaXQgaXMgZmFsc2UKClBsZWFzZSB0YWtlIGEgbG9vayBhdCB0aGUgcmVwb3J0ZWQgaXNz
dWVzLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
