Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2454CC05027
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 13:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ra3sU6Wqkb9r/vM6vfC6eretUWIJpUncAeLvJNtma3A=; b=3iIfXribNHAaWn
	Tmt0xCoUTCam87D+E+vnoaOTfAXNX7/a46pxLpHOh+/PvulE6svkH0VXzzW6HwKRtifBxHxJ1bKKN
	Hn6PXWIc8T011GpNELXGfFAHto0DGDkilbPaCOVEoZAYgC0cujNBkRYvfhSoadpRSjXMKRr5XGpIV
	xaixkcjOFT4OjV9r4I73Yh+g0o8tB+2h0IXZsz98XVo8TaRjnmktWUD/SeYZppTmgK/qP+uu0u2Zq
	s5qBqasIaZ1Z89tff1vVatJ3xlhteMOI70p9TOHotvXH1zdw63YQPtahf7W5lh0Dr+mhMYMsAlonC
	MeloIJZA2Ofb0MP2XwRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNwb0-002CXS-C8; Fri, 03 Feb 2023 13:59:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNwTP-0029nk-4d
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 13:51:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 67E7060D34;
	Fri,  3 Feb 2023 13:51:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0303CC433D2;
	Fri,  3 Feb 2023 13:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675432285;
	bh=KD3LsNmr8AeTUGEQmjS9XypGII1lkv0pPnS38zTLO0c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uOIeODnIR2cjzp+WhuNKJRp54lthxVAtxUI7ApJwmb/ADlWJ8VXMAemKt2wkAF0tj
	 1uvNVOqalYVNqAp/FJNPN1u7vGgamlJ8PdRoOCRveZOmMhPISA4Gdo5vGlga9ahle0
	 YRHHDZ+Ms9++QrSQfD6vrCHXR9wd9jQA+14DaZCTve0PaZP1Gz/28A9HjvlDhdYB7Q
	 Mm0CVBFE5zO8uD640jTwfSL1TskmBGqIBGwm9BJuytZYRyiC175jHG6hFMUDJJ4fky
	 dY+a5D2rD+dSFookB0u3i7//DVowI2cwYKt0Cb44a9iExSbeeD9wXQNkIgRCsCwjO7
	 bxQVoRN/V+r9A==
Date: Fri, 3 Feb 2023 19:21:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Stephen Boyd <swboyd@chromium.org>
Cc: linux-kernel@vger.kernel.org, patches@lists.linux.dev,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v2] phy: qcom-qmp: Introduce Kconfig symbols for discrete
 drivers
Message-ID: <Y90RWZAwL0vk7i5X@matsya>
References: <20230202215330.2152726-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230202215330.2152726-1-swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_055127_277050_EED01518 
X-CRM114-Status: GOOD (  11.93  )
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

On 02-02-23, 13:53, Stephen Boyd wrote:
> Introduce a config option for each QMP PHY driver now that the QMP PHY
> mega-driver has been split up into different modules. This allows kernel
> configurators to limit the binary size of the kernel by only compiling
> in the QMP PHY driver that they need.
> 
> Leave the old config QCOM_QMP in place and make it into a menuconfig so
> that 'make olddefconfig' continues to work. Furthermore, set the default
> of the new Kconfig symbols to be QCOM_QMP so that the transition is
> smooth.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
