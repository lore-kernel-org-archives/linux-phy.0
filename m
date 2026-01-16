Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A630EC982C0
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jan 2026 21:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzexZL8ZYi0CK3vKpZbGaIf97QFIoVipUPpRgGMFd78=; b=E1jXNtumUI1+T1
	FxmgV+gmcEcu3t4Re9poSKXaOsArr5q23fjOze5DqqkyDC9qtZ7Yv1Hqc2RsFBbBf+bHWfWnL+cuD
	XmHuHdRwYhk/r2Fhgpe/bDIYoRl17UCRKqfmP21AF9lMNvVfG7tRfj8Lle7mfyLq2HapGurvV+abF
	tiaXJqzpmOlWLcfPhAlyEG4/JC1n9bvpUmD7fYQhglmh/lBBLYJXRGhuhl5DngOcXQn4yE7nvMQwC
	Wn62v8+vd/bDCq3x6Yd8bHDP1RgjeXU98XV8QUkd5HasvP1bBrafug7L28y+gyY2oNtUhpdNQfdmk
	3RQ9ibR6jFQIoZnGg0HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgrXQ-0000000EwH6-0yBY;
	Fri, 16 Jan 2026 21:39:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgrXO-0000000EwGD-3nkR
	for linux-phy@lists.infradead.org;
	Fri, 16 Jan 2026 21:39:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DAF796016F;
	Fri, 16 Jan 2026 21:39:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A807C116C6;
	Fri, 16 Jan 2026 21:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768599561;
	bh=cZY76YlnwdfJOaZ8LeSnOWzi2DS3jnU6AY/wsJhkTmw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lyPcVqzM6uV8UVus8CnUvyJMI/mmJ7weQ2RhGukFOrt+ZIlAi9yCQENQSGlPuCeuJ
	 CG/VbczbuCRF+Eg8lHnc0F+eGLddukEFhv47UIV4x8EJT6UPSQMTkkzIOiwnkDV+rw
	 s+y4hQtDnrH9cTDHLwAoLImXYAzT6yAoxKeXqQEs/YemRIdrY/AEeSjwez5SM6eNFv
	 gFL3AsQkALOaXZJQrcQEH6060bvyAAtZyKGNrF+LLWuKPfPggkdrsbMgeljE17y5SQ
	 d3VFCMsRXJXR0syf5cmdHBRQXFY8VHJ5qYTA4a541LDkRoirg7v2YJW0vFX2MvSwDO
	 3KjkyT6/t5BWw==
From: Bjorn Andersson <andersson@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Xilin Wu <sophon@radxa.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Abel Vesa <abelvesa@kernel.org>
Subject: Re: (subset) [PATCH v7 0/3] arm64: qcom: x1e78100-lenovo-thinkpad-t14s: add support for HDMI output
Date: Fri, 16 Jan 2026 15:39:12 -0600
Message-ID: <176859948746.425550.6113900486040899869.b4-ty@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251119-topic-x1e80100-hdmi-v7-0-2bee0e66cc1b@linaro.org>
References: <20251119-topic-x1e80100-hdmi-v7-0-2bee0e66cc1b@linaro.org>
MIME-Version: 1.0
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


On Wed, 19 Nov 2025 09:45:39 +0100, Neil Armstrong wrote:
> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> connected to the third QMP Combo PHY 4 lanes.
> 
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 1/2 DP + 2 USB3
> - 1/2/4 DP
> - 2 USB3
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: add HDMI nodes
      commit: a1338b39c14ddf50b841e891833786037dec6de4

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
