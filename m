Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08DBCCC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 11:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmF4N4GsWpVC9pSK69g7SPBubMvzgggay+vyRMO8fRI=; b=dPTiXAd43ZBP+j
	ufO1/qIquE3/HJiTmGJYnDNIvbMzdEYr9oWb7Nuf1RKBCepbf/Yef21wcG5cMnE8NBMKv67LXUTO0
	zsLnC816KzbjaeLjipgvRuQFARPB7dYD0BoUPXFliHxIcVGzv4iZtHyGSDozURxxRKGy/8LJEcyy3
	nT31ek0KPY08F19qPoqBSmNGO25qFA/RA1yjCx6Rr6R168mRzT5U53IrKgFodBg5skdE24Bi0VAQC
	oVRChTIPywTt9YrRHPAMlQ+OLP9ZkquvlPML9JzC9X2nbB3Z8zmqceBNJKcPEOrxRa3S94oXW7LQp
	r0CRs+uvRdxt3/dUHkvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfhb-00000002jjU-29tn;
	Fri, 16 Oct 2026 11:02:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfha-00000002jjM-0WvM
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 11:02:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CCA50403B5;
	Fri, 16 Oct 2026 11:02:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1DDF1F000C5;
	Fri, 16 Oct 2026 11:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792148537;
	bh=Py1e2BFrsCMlln40tI6EHxDuIOcSoudPpUR/GzQX3Ww=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=FYtsVYmst+ZPe7hd+8EfHYROyWcXLfwW7Paj4NzFRGdQaKfT+LumgkG6EQ8P9ozoo
	 VeTe4a8s05ZyGw5wLe91zrcU0EUEzWGNeqllMDOtHhv0JKYn1K3/kmZb1jtNuwge32
	 kBmUAV4KfOBwVqf0kMFlXuoSL8DRpCgOJ746Uywrl9ssusiEVc9OK+dcbFU20bOM50
	 /awSuRo8Txmtceq3upG/GGASWY7aGR3tYxeZjzxJf5w87dmhy4vSStywtUPLhEdJPV
	 ARu5DdXMFJPDD7h10TzUTKzk1UIfvxcgMucbuQqzUjvCO+ho1Yx2WzAs3HaeBgfSSG
	 TZVWi3A3aVDfg==
Message-ID: <b96649d9-5c1c-4fc0-a77d-d0076cf80b86@kernel.org>
Date: Fri, 16 Oct 2026 12:02:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v2 0/4] phy: qcom-mipi-csi2: C-PHY for X1E80100
To: geocausa@gmail.com, Vinod Koul <vkoul@kernel.org>,
 David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
 Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <K9h_NQSPlrzzoVDIqqNPGT6KDZNScVi2mlqy6yNs8VOOS_I4KXf0QLy4k3Cwo2qKhnfL_qUK5wnY4h6wX24L4A==@protonmail.internalid>
 <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-GB
Autocrypt: addr=bod@kernel.org; keydata=
 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
In-Reply-To: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com>
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

On 16/10/2026 11:57, George Neacsu via B4 Relay wrote:
> Hi Bryan, Vinod, David,

Small point of order here - this is not really @ RFC status.

Don't resend but an RFC contains stuff you don't really expect to be 
merged. OTOH you're basically submitting this series for inclusion => !RFC.

> The Snapdragon Surface Pro 11's front camera, an IMX681, is on CSIPHY2
> over one MIPI C-PHY trio. linux-next has the CSI2 PHY driver and the CAMSS
> PHY API path, and C-PHY is the piece still missing for this camera. This
> series adds the PHY side:
> 
> 1. PHY_MODE_MIPI_CPHY and C-PHY configuration options in the generic PHY
>     framework, because CAMSS had no way to ask the PHY for C-PHY;
> 2. C-PHY configuration helpers, the analogue of
>     phy_mipi_dphy_get_default_config_for_hsclk();
> 3. a rename of the D-PHY init sequence in qcom-mipi-csi2;
> 4. C-PHY in qcom-mipi-csi2, with the X1E80100 sequence taken from
>     Qualcomm's GPL-2.0 downstream header.
> 
> v2 is on next-20261015 and applies there on its own. The two CAMSS
> patches from v1 (the CSID 680 PHY type select, and C-PHY in
> csiphy_stream_on()) build on David's "media: camss: Add support for C-PHY
> configuration on Qualcomm platforms" v9, which is not in linux-next yet,
> so I have left them out and will send them on top of David's series:
> https://lore.kernel.org/all/20260617-qcom-cphy-v9-0-83da8a8e4e44@ixit.cz/
> 
> Tested on the Surface Pro 11 (X1E80100) with David's v9 and those two
> patches on top, through the upstream stack: CSI2 PHY nodes as in Bryan's
> x1e80100 camera DT v7, and CAMSS in PHY API mode, with raw capture over
> RDI:
> - front IMX681 (Sergey's and Andre's v8 driver plus its C-PHY RFC) on
>    CSIPHY2, one C-PHY trio at 2.4 Gsym/s: 3844x2640 at 30 fps, and the
>    sensor's colour bars are byte-identical to the pattern captured with an
>    out-of-tree driver. The settle count is now computed (28 at a 400 MHz
>    timer), and any value from 6 to 48 gives the same frames;
> - rear OV13858 on CSIPHY1, four D-PHY lanes: 29.9 fps with the same
>    settle count as before the series.

> The kernel was 7.1.5, with linux-next's CAMSS and CSI2 PHY built as
> modules; the test build needed shims only for API differences.

What's this ?

"It builds" I can verify myself, "it works" is the thing. Just slow down 
and get something you can test on hardware.
> Open question, from Nihal: the X1E table is Qualcomm's 2.5 Gsps one, and
> downstream picks C-PHY settings by symbol rate. I would keep a single
> table here and add selection by rate when a second rate is needed,
> unless you would rather have the structure now.
---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
