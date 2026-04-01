Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9279BD35162
	for <linux-phy@archiver.kernel.org>; Wed,  1 Apr 2026 11:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NV5SNP6Or8p+MvoPpCX/h7OE72CQPbBl/hfbwp/ffk=; b=Kz8SzA8udBnhIA
	LzBV3h42MHmcwqpT3eyyZV+fDYaOC0PUy0RfKUVT+m2n+TbNHDdthF7usLrKL3OnNcuCgeBq4QR+m
	mUhb04lZcYtuGCCfnHC9mbskzPR2xWtylle8rl0D1J0QkssyETia6Kgs/IrkycFOOxkDatU2LFf9k
	I6k5cNn7BE10mxHoU5jkjojEUY5ms5FyJAZJXylbDJQqIigdvevmbqlr6uO24GxzZ4ujABjPeJT3x
	zhsT2Sn5kuDC9A9vSoThf0wqvmPgrWSIFgshBfo6I8xF1Ts+feQ1Ti+6t7SxWlBOtH2+hGMk4hSJR
	k8pA8tx/GrxzPmcmI2bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7u00-0000000EfhV-4481;
	Wed, 01 Apr 2026 11:44:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7tzz-0000000EfhK-3H8m
	for linux-phy@lists.infradead.org;
	Wed, 01 Apr 2026 11:44:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F160260154;
	Wed,  1 Apr 2026 11:44:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1302C4CEF7;
	Wed,  1 Apr 2026 11:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775043878;
	bh=Va7mIxLnyICoaYV/3PFg8DT/TwERBVHi5jqPQ1fMaYQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KjalVSFomMHQw9jrtzoO4BetpMS6WKRzzShqOhB6fQ/SeS8TJYv7IU97r4cYxg1qI
	 7I2FPPs6wggy3tbmfjugp9S1q/bgKQuNgeqXxkzEUgnqWLQ8fBntjEIXXo+wx75Cie
	 gZta2cayQCXmny9cHy//QWW4Ldc0w5uGJ75/exCuMWfP4Hj5Zm4u/XhrI9s+UMuAoD
	 WaevcNFCZWeI7nQNhHNmjYaGxnr+Wx8ocoykbyquPrIVhlUHTiqSrvRZ13RjHRVVqr
	 WKnlR8z4sHL+NSbt3VlQcv5ICI8MF2qIKkKGH+UwCpr9b3Oo77H3B6hStGLvUdyNKd
	 5JtW81FaLo/Jg==
Date: Wed, 1 Apr 2026 17:14:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	Jonathan Marek <jonathan@marek.ca>, linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: display/msm: move DSI PHY bindings to phy/
 subdir
Message-ID: <ac0FIqUk6wV74qIU@vaman>
References: <20260305-msm-dsi-phy-v1-1-0a99ac665995@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-msm-dsi-phy-v1-1-0a99ac665995@oss.qualcomm.com>
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

On 05-03-26, 01:47, Dmitry Baryshkov wrote:
> Historically DSI PHY bindings landed to the display/msm subdir, however
> they describe PHYs and as such they should be in the phy/ subdir.
> Follow the example of other Qualcomm display-related PHYs (HDMI, eDP)
> and move bindings for the Qualcomm DSI PHYs to the correct subdir.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
