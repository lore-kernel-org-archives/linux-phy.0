Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A019FCD1292
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 09:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YfTFkD4Ny1UkJZQVcdQVsHy1a3Vse4hP0ZEVz/dNKxM=; b=qtx602MqPYOggt
	7ENvfviKPA3ke6NDsbR6Pla+HwYVF+VcBPkuLAvGarrKvljgYkwguYwd3+UVPvX6a44C9VBbZJmKR
	IGAPHGuGbjtZjd1ExWttcQ4OOUbugfaY9neMsl2i7RjXMNTKZTuvZdoYiIc3B4i2QHT/lVKfVrX4d
	ryz5/wUUjXJio435Cr9Z8hd5rrbv1yNftCD4Iyhw4ktDca4hM0hCx0JFpMcM/AOIX/y+wTgMMXghe
	WoU5lmJd4/cFnJXhjQn2cy9k2cO0fwlbQAtD51mLvOAVOj+r6oxxaoYihtM0BOiyn3SowwK57ditW
	2pPMsQ43u6pnNpK5at3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2Cb-0000000A1cq-0zF3;
	Sat, 06 Apr 2024 09:19:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2CX-0000000A1Zo-2hQd
	for linux-phy@lists.infradead.org;
	Sat, 06 Apr 2024 09:19:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 61821609FE;
	Sat,  6 Apr 2024 09:19:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E35DC43394;
	Sat,  6 Apr 2024 09:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712395144;
	bh=1iz5fj0staSEBeBD4iubGSRLqhDhiBIKfBjemrptmJE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ag1LVMaDwFBCTCC8hW1EdfxpTKqKuWopYK1dHwSVtSR/m3ufyCM+/Z3lJh7EEqYUf
	 e7jhCey2MXWcUUfwrdL4uynOmNDwHTY3ZxHFtLPIiRYjWeV5n5V5+Y6+QTlQHMfKsm
	 O7YjYL0RGSRrtD9eWDMy/R0Sr7NP2EH/hkZrwqtzXCIMzU1CQcQMcPjqiijTs8vZp5
	 sxp4txYdi7whwSjcTgg/J9iZJEabVirHvAshc3/Lim7i7YSeZnPqxLpr62nsY7RvE/
	 DcEm+q1gHrMVa48qfo0WQHhdqpR8E3kYXzSZ5lJS6Isp40I4Tqzo5+fBXivY8uilDi
	 jnwJxow/JBuIw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Stephen Boyd <swboyd@chromium.org>
Cc: linux-kernel@vger.kernel.org, patches@lists.linux.dev, 
 linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 linux-phy@lists.infradead.org, freedreno@lists.freedesktop.org, 
 Douglas Anderson <dianders@chromium.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Steev Klimaszewski <steev@kali.org>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 Bjorn Andersson <quic_bjorande@quicinc.com>
In-Reply-To: <20240405000111.1450598-1-swboyd@chromium.org>
References: <20240405000111.1450598-1-swboyd@chromium.org>
Subject: Re: [PATCH] phy: qcom: qmp-combo: Fix register base for
 QSERDES_DP_PHY_MODE
Message-Id: <171239513898.352254.11562819537572881543.b4-ty@kernel.org>
Date: Sat, 06 Apr 2024 14:48:58 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_021905_791105_850317DF 
X-CRM114-Status: UNSURE (   9.53  )
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


On Thu, 04 Apr 2024 17:01:03 -0700, Stephen Boyd wrote:
> The register base that was used to write to the QSERDES_DP_PHY_MODE
> register was 'dp_dp_phy' before commit 815891eee668 ("phy:
> qcom-qmp-combo: Introduce orientation variable"). There isn't any
> explanation in the commit why this is changed, so I suspect it was an
> oversight or happened while being extracted from some other series.
> Oddly the value being 0x4c or 0x5c doesn't seem to matter for me, so I
> suspect this is dead code, but that can be fixed in another patch. It's
> not good to write to the wrong register space, and maybe some other
> version of this phy relies on this.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: qmp-combo: Fix register base for QSERDES_DP_PHY_MODE
      commit: ee13e1f3c72b9464a4d73017c060ab503eed653a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
