Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A804C98318
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 05:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VequH2vw6pJixXTsG0fKnno8SgRHhBaxI4+j0M6Z6g=; b=kFDYUrkAfv3/QM
	OBwfQjoBe6pTI2rdqPTFNdK7aEXUjB6C/k1J6PYZQoddtdAsBX/8MzGitJ0bFUEqnbViiMPepD52o
	AWUo4m0HOCBoDcxcRk+M4JIsluAbVF8Y5+ydB3y1ZIhsPz2PkdDeueoMfu1iW58cSJsqMsVtxLxZP
	ovR/cI6cc5xFCFYIN9GRwCZ9829VKXuImRZ7Z/dpd9WU0dJntnuisFkBPKkRuQCDj7JFI1+ka4aaS
	gyXia1fRBvWBFfvqY5yI+ZWgldiIjMv4ZGxPeyhHTkaekwQW9NnkwijYogh+EPW5RP68wKrSNLNB+
	6c/JU1aiYsgeRlIPQ3vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKfw-0000000Ezxq-2kS6;
	Sat, 26 Sep 2026 05:10:16 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKfv-0000000EzxD-3uqN;
	Sat, 26 Sep 2026 05:10:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5D6E860136;
	Sat, 26 Sep 2026 05:10:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 344C91F000FF;
	Sat, 26 Sep 2026 05:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790399415;
	bh=3s5j8pQOgmFzwxdXRIENQONtbgTBd1Lm5Dh5URd63UI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AhQczImnptOx3Wl0t9RACVb7zDVsmdDN2QGtMqcFS+poWoK1lQJsjWjv7KpZeAHSk
	 ZVr8zmhHV2/PZaGzHyn6T59UekemJrS5OIkgredV3WHHwDbfFacU6D55uImbKTJZkv
	 Rr1fBTjKf66aLN3FXh9tJtsGF0WCZW6LO7NYk34ib73wX7jtKR6ZuD447qikH+GCwF
	 wAm6MSV58RrRj7epuSfylBt94azyMmISkdnV8LAg6HahlKdHViQBihsn/WGPPVr/RG
	 m+rOW1ME57Gps8OoPKtBp760PfcQnqW8FQoTNmgPFMzgatuDanDulrKi16njfZMD4/
	 wR9xZ9QHy29ag==
Date: Sat, 26 Sep 2026 07:10:03 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 04/11] phy: rockchip: usbdp: Factor out lane_mux_sel
 setup
Message-ID: <wwybb3nfv4tawgh7z3s2iunlm7cgh4cindkoy4bhlemnlivslu@rttrqzbvj6hb>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
 <20260915-rockchip-usbdp-cleanup-part2-v15-4-8d507cb1174f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-4-8d507cb1174f@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MDY6MDdQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gQXZvaWQgZGVzY3JpYmluZyB0aGUgVVNCK0RQIGxhbmVfbXV4X3NlbCBsb2dp
YyB0d2ljZSBieSBpbnRyb2R1Y2luZwo+IGEgaGVscGVyIGZ1bmN0aW9uIHRvIHJlZHVjZSBjb2Rl
IGR1cGxpY2F0aW9uLgo+IAo+IFRlc3RlZC1ieTogSWdvciBQYXVub3ZpYyA8cm95YWxuZXQwMjZA
Z21haWwuY29tPiAjIE9yYW5nZSBQaSA1IFBsdXMKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4g
UmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBN
YW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0u
Y29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
