Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 154DEC982DA
	for <linux-phy@archiver.kernel.org>; Sat, 19 Sep 2026 07:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e09hLFOtiy0wgI8ysYg5NAF4Sx27UCgKnfyxKYiHRlk=; b=uxZA6jfVQ2oYKI
	jG6JDLya3PHtuBjg4JybfmWuCs7Qz0LJYy/WrbmMmhH6U6o93jICh7VTRnKhaFB1PlkLsE9RJw0Fw
	Gb3QCLHEB9EYcyFXuyrfHuEQAdxhwtPxEFAu58Lv0U1+JIcErNLgftbNplsPTjkA9zBLFhJc7msjO
	cyvYVZuM3HwKH41NkuRMoE1yxpb9J9eGCZIUK6vl9LQH++FBgaaUkjouejMFpqV09HtmFIluiTdts
	kLJVHEMt8RgpZceQ7aex/vAO67fWWcv0KElyY1DtIFpKJc4hovliYkMv0eeNplD1Yw4w8zTNBYdvX
	FLQCqKszVt8Rm4mNMzmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7pl6-0000000G4Wj-2eBD;
	Sat, 19 Sep 2026 07:45:16 +0000
Received: from mail-pj2-x10.google.com ([2607:f8b0:4864:39::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7pl3-0000000G4V7-382p
	for linux-phy@lists.infradead.org;
	Sat, 19 Sep 2026 07:45:14 +0000
Received: by mail-pj2-x10.google.com with SMTP id d9443c01a7336-2d747ec6185so9545275ad.0
        for <linux-phy@lists.infradead.org>; Sat, 19 Sep 2026 00:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789803913; x=1790408713; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nzhIw8jPRNxoB8iVaoAn3LrVYY24GoK7KU38cNUcsNA=;
        b=ANSwHEeA2r4Nap/0NMQRL8RWAUO6is6/7eGPKw876+yEO9Os99Juqcn5mVd+87AAHC
         /19oDHukn0GXwk0lHPCKP/ejDGKCsLq/z7R9Uf++wkLig41/Ma8hsnaf5voTO9lo2HHe
         xWRBK422yCMQpbI4ETcCfFDd1d/MKOirh6SL/sAgHn1PPgZc3NxwdweoRlaKHN9yi5vp
         oBl55XGYlVy1gMGB/bTjYGAksIxX7JxvHn+0qrq+Brtnhx7z353Za1cmBOwb8JhZAGFk
         pyP45oElZo2KGH5llU8ckFLTClI3WhHlwP1lcW0ifG8kojx1NsUJzS6Xp7JkS2IiDjuX
         zhmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789803913; x=1790408713;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nzhIw8jPRNxoB8iVaoAn3LrVYY24GoK7KU38cNUcsNA=;
        b=KNPTjgiLYNlx6zT9MB+wmwc4jiZptw718on1H/STgNxgDmbf2lcm0Ef4Hbx9R6KMya
         10rITq61F+0+Lus54bnxbx6Tq2gbtJ5SLg6agXOZrkYuU9yeXsudczEj2GHG9Pe53h5T
         soG+8CtYnFkSxyAoJRVng8/oDl1IyK2Fn0qtcmB0mGdxoa3lYWAYGpx/eJ2GWv0EAybD
         8f0izr/4p8P6D7bJqjkchagYN7vZQmT7OuQRVZr+1oKnKvUN8Ni90KXyLwYXeaEE3Lia
         H1VHkcAocjMzAvSWLkZtfPrf1TxNxvCfHtzGNYhy0po3JouTvjftEjpWUR8XQFcLEoKR
         f/EA==
X-Forwarded-Encrypted: i=1; AKwUvBwrPlQ6oABvGQoo0JqviohJWLz/skLBVn1nlN3ljBsyvfujNGe2vsnIGO14KoMZAkGkztfDnLiSD6o=@lists.infradead.org
X-Gm-Message-State: AFuF++lIirYHlEFZi+ix8S9wrALuDqd9I/CHRIs+20TL+f7QadkD2fov
	ajw5xoRUeSKGi3hNsw08jruJIf2HuwXb9x20d4375Ywmu5CTGBK7nvR3
X-Gm-Gg: AYBFou21fM0Zvu/3NlYo/Tgz5Wc+iFiMlxnqbn+6HG9DAas/Ub85FNiK92bwvpIz0Ds
	JPDZZnSHRiFxzgEEZO5ZbsU5y0CEdLFHyhPnFEfxqXOuz/HUj7zQoUe1ybaBjTk7Ytc2240tANA
	3AcX0v1DErdW8+HhZegoN9tj9rqp1OS2Y60cPTwlIbdFKjRrS0xuZzjZZzUzyPeLJXFyKZvRE12
	rPvYTk2m4xTTVKTGgHtcbRVWmdX5cWH7JAkI/pMXpw8SBzwf+RslCEBcz/xfqeQziYGWU2iokA+
	XvguXSyUkkWB/kBlR4A7EkMqL07e+3/7ls4m6UUqw3RIojIu6JMVM75XYHKGDSPjEA2nJZvkIoJ
	6R5v7PQoRyA/Sk708MzijdpKy3lvyFOb4jyQ6Z0pHa4NFw8hTm3CvR2z1u2ShKnCgDH1TNZz9sJ
	iVzqwh3ksZyBEWvCjD+v++F4bFrevqIuSdSr6s1JoyHOL3iEfHQj8FMJPfya5bgcfX9uNDIO4kw
	g==
X-Received: by 2002:a17:90a:c88d:b0:39e:4c80:f67f with SMTP id 98e67ed59e1d1-39e54f3aa58mr9006171a91.30.1789803912686;
        Sat, 19 Sep 2026 00:45:12 -0700 (PDT)
Received: from [192.168.101.188] ([207.90.239.231])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144d55f299fsm6860122c88.15.2026.09.19.00.45.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Sep 2026 00:45:12 -0700 (PDT)
Message-ID: <aeb5b8a8-e01e-404f-9788-b4770ecdd9ef@gmail.com>
Date: Sat, 19 Sep 2026 15:44:54 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] arm64: dts: allwinner: a523: add DWC3 USB3.0 node
To: Per Larsson <per@palvencia.se>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Andre Przywara
 <andre.przywara@arm.com>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-sunxi@lists.linux.dev
References: <20250816084700.569524-1-iuncuim@gmail.com>
 <20250816084700.569524-7-iuncuim@gmail.com> <20260915013336.68ee3611@rpi>
Content-Language: en-US
From: Mikhail Kalashnikov <iuncuim@gmail.com>
In-Reply-To: <20260915013336.68ee3611@rpi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_004513_788864_16ACAA3B 
X-CRM114-Status: GOOD (  15.91  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 9/15/26 07:33, Per Larsson wrote:
> On Sat, 16 Aug 2025 16:46:59 +0800
> iuncuim <iuncuim@gmail.com> wrote:
> 
>> +			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
> 
> (Sorry for the more-or-less necroposting)
> 
> This is the only mention of irq or interrupt in the entire series,
> which at first led me to believe there was something missing given that
> there's a "Nobody cared" message appearing when the port first detects
> something connected to it followed by something about the irq
> being disabled.
> 
> Now I read in the text of another patch (adding a TrimUi dts) that this
> message comes when an interrupt storm is detected, and given that the
> value in /proc/interrupts goes from zero to 100K in no time, that seems
> likely to be the case here as well.
> 
Yes.> What is this interrupt supposed to be about, and can it be handled
> better?
This inerrupt should be disabled in host mode, I'll do it in v2.
But except this message it doesn't affect functionality.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
