Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54496C5475B
	for <linux-phy@archiver.kernel.org>; Wed,  6 Mar 2024 17:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sceGQG+6AIt9fHX2aIc13s+X9pr4eF9UkZJ6CPTbTfc=; b=0bfEedUJMc3b4C
	CfDZmxQN2IejAmd8rmmtloM1MIgacKDgGXtnQkm5QOcs1N6b2I4ZQTxTWjbCp0UZNPQERvB2t1qBQ
	isHBmrdQxm+5bXZCpr+bvbJVv9iEfwKtiQux/SJwIqXmTpWvXAev5SEc96791wBIMYQGOMyIAwapb
	sN5cBEkwfwgcL5MIeDy90rN50ifsIAzW6l2pTucXo/ZIwnP/XHvncaAd2heUNiLo048Cg6bEGup0g
	pClD08uY5YRXdquG2Zx8Dmp2fYvV5N5x3NXLqURafRNt/s/igIKqeNqNkGiFGjlQ9sGFqFGDstqjD
	Sp2G+iAtxgiwP4z7KUvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhvMT-00000001HM7-3rOC;
	Wed, 06 Mar 2024 17:47:25 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhvMQ-00000001HKq-2r3s
	for linux-phy@lists.infradead.org;
	Wed, 06 Mar 2024 17:47:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 445A7CE22D5;
	Wed,  6 Mar 2024 17:47:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58894C433C7;
	Wed,  6 Mar 2024 17:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709747239;
	bh=M3Qnc0kB0MnG72TbxAy6mHm1CxTe6WFO/XsmSNzWFVw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GjdImPowRYEm7/pn8xhSYm8k0V/sHqvsew0j9xUc57MReIzjVdqeWmCsWzYmlMySF
	 CfBySFrHga5H2Qf6vt/zyUDw8zd8d0Ohh5YXjI8GhdHCMIQ3nvLP4W937LbOdHqNPG
	 Z14JCvmc7QSTew/N6rNuK+331Zh62FjZoJBbqaFj6yExTn2Umgykb57TjpErB2h/x7
	 0kUTvb0Yk4tZ1IN2ZWJNOLBO1oIlUfGBLwbJutYSPZDKX5cpp7bD54VlSzDZard27D
	 EbABchSyftcWpB2WAWozeCp7rVKXdTktq08MkNwYfrRuvWMGYRK93YDuBboviG3f2c
	 zWvA0oEYqASXw==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Johan Hovold <johan+linaro@kernel.org>
Cc: Jonas Karlman <jonas@kwiboo.se>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>, freedreno@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20240217150228.5788-1-johan+linaro@kernel.org>
References: <20240217150228.5788-1-johan+linaro@kernel.org>
Subject: Re: (subset) [PATCH 0/6] soc: qcom: pmic_glink_altmode: fix drm
 bridge use-after-free
Message-Id: <170974723198.898356.8197875205136329255.b4-ty@kernel.org>
Date: Wed, 06 Mar 2024 23:17:11 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_094722_937432_C493F934 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
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


On Sat, 17 Feb 2024 16:02:22 +0100, Johan Hovold wrote:
> Starting with 6.8-rc1 the internal display sometimes fails to come up on
> machines like the Lenovo ThinkPad X13s and the logs indicate that this
> is due to a regression in the DRM subsystem [1].
> 
> This series fixes a race in the pmic_glink_altmode driver which was
> exposed / triggered by the transparent DRM bridges rework that went into
> 6.8-rc1 and that manifested itself as a bridge failing to attach and
> sometimes triggering a NULL-pointer dereference.
> 
> [...]

Applied, thanks!

[5/6] phy: qcom-qmp-combo: fix drm bridge registration
      commit: d2d7b8e88023b75320662c2305d61779ff060950
[6/6] phy: qcom-qmp-combo: fix type-c switch registration
      commit: 47b412c1ea77112f1148b4edd71700a388c7c80f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
