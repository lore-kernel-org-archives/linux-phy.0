Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9881DD37483
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 12:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cppibvx7sGrf+ztQHLNoVaILMWiKhiuFYn/ph6mmvPk=; b=d9+qzwzRNdpg8Q
	fun+KvkORJGD4fY+nV/6kuRkLv8PmEP4NZLgsw7nf4LAH0jlW7MLp+K4ikDONIF+X4tqPrJWi/QL8
	eWiKmIRNSttGs/vYRjd+ICEfenmX2GoAcJ9UAEFaJir0PZwmj6rIWuI4Bnr/0tL6fN5ziLRtvm/Gm
	sQlGsv0mAMAL7GYmMeqTaypqpvSz7deQ6tWw5lZrL9etiU4YJQ3SzSCkKVTPC0bD8ptM6Eq0CtM7t
	+MqGqnVT5gwRW5VQbblkQ9tP4l+WDZ41TWCD88VgeI+8Tsu+Mxa/Yimqg+wpFulvPOL8KzC1Nfw7d
	3VGVj5fvYOYXoTGsADnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Pm8-0000000EnOU-11cn;
	Thu, 17 Oct 2024 12:38:44 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1PgM-0000000EmSS-0fb1;
	Thu, 17 Oct 2024 12:32:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 50A48A43DB5;
	Thu, 17 Oct 2024 12:32:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43EB1C4CEC3;
	Thu, 17 Oct 2024 12:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729168363;
	bh=MmyhBPsP7B+6alUpYyICBc30T8TUU8WROQq2/A+3FNo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YPi2UEvMqb0/ynZUDJIHHD9oAbOmsP4g5VFQslhCB2IXZKdlhN18w4et2EpEFqUhF
	 4peAeTabZNv3/VD7yiojC+RgVoHOwvqnt3oa7FTQjP6kC+9HWAa4QLTloUYgGljSWP
	 OCFYKmE7FOYD28OWoI4O2V3yBgfK7axRKzqzvYnR+68PGCKSYbfwAN5TGHzJj9cRTn
	 PxvjSpudzfuFNHPozL1UVSFCrqZPOpHP/hDWJQZ5ZO4hvcTUc9d4dfAEBJo7AYBJ56
	 eIs8ODhNAQamkfIlScKD5upub//qchQs/boqoYExo6Oiwo8Uwzs0hQjk5RCvDNjfJE
	 FDsjTZkhzcMEw==
Date: Thu, 17 Oct 2024 18:02:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: kishon@kernel.org, krzysztof.kozlowski@linaro.org,
	alim.akhtar@samsung.com, tudor.ambarus@linaro.org,
	andre.draszik@linaro.org, kernel-team@android.com,
	willmcvicker@google.com, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: Add UFS phy hibernate modes
Message-ID: <ZxED5/HdlBLWqesE@vaman>
References: <20241002201555.3332138-1-peter.griffin@linaro.org>
 <20241002201555.3332138-2-peter.griffin@linaro.org>
 <ZwN/d8l7Mk6x2GHP@vaman>
 <CADrjBPrRrwEyg0p+6kfVoZGbPdvW6K3fa9paUoLyg_bHHScgHg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADrjBPrRrwEyg0p+6kfVoZGbPdvW6K3fa9paUoLyg_bHHScgHg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_053246_309281_01BE3C10 
X-CRM114-Status: GOOD (  23.24  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 08-10-24, 11:30, Peter Griffin wrote:

> > > +     PHY_MODE_DP,
> > > +     PHY_MODE_UFS_HIBERN8_ENTER,
> > > +     PHY_MODE_UFS_HIBERN8_EXIT,
> >
> > I am not sure I like this. why should this be the model? Phy drivers
> > should listen to pm events and handle this in pm_suspend/resume calls,
> > why do we need this special mode here...
> 
> There are a couple of reasons I added it here:
> 
> 1) Whilst link hibern8 mode can be used as part of runtime PM and
> system PM, it is also used outside of those contexts by ufshcd.c. The
> host controller can enable UFSHCD_CAP_HIBERN8_WITH_CLK_GATING (which
> will be the case for gs101 / Pixel 6) and the UFS clocks are gated and
> link put into hibern8 mode for periods of inactivity. When that
> happens the rest of the system isn't entering any sort of sleep state.
> 
> 2) From looking at the existing code upstream ufs-qcom.c and
> phy-qcom-qmp-ufs.c look to have similar requirements in that it needs
> to program a set of specific register values depending on the UFS
> gear. To achieve that they added PHY_MODE_UFS_HS_B and
> PHY_MODE_UFS_HS_A modes here and then use phy_set_mode_ext() API in
> ufs_qcom_power_up_sequence() to signal to the phy driver the UFS gear,
> which is then used to choose which set of values to program to the
> phy.
> 
> The two new UFS phy modes added here for hibern8 are for a very
> similar purpose (to choose a bunch of register values to program), so
> I considered it consistent with what was already being done upstream
> to signal between UFS host drivers and UFS phy drivers. Arguably I
> guess we could have one "mode" PHY_MODE_UFS_HIBERN8 and use the
> submode parameter to indicate whether we are entering (1) or exiting
> (0) from it. I wasn't really sure what the rules/guidelines for the
> submode parameter were though.

Yes but not exactly. The HIBERN8_ENTER|EXIT sound like PM events rather
than a PHY mode. If this is resultant from inactivity, then we should
hook this up to runtime pm ?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
