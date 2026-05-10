Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90581CD3427
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7sE4qou7z8En1zUKUieOhlCtrI3MERZ0Yftm55tM70=; b=S93ysVO8uoqevZ
	zSC0NbSmI+NTJqW+5C2b3xkGL6PjretTCcBt/lpU+Z2Svh8hgBjQSG5cLp0ILb1YvvcIoFVgNTJpc
	UU19AhFAAd7D1yU7Q6wOXyQqUBlk0HNkEFKKF/0ipQH7Su1A8pW7H/6yn5V+/JXes4QeGBsWa43A1
	H1zMjFRKvi6s0vwPgUtriFb2rp7AlI+QCxDdi0w+c+3hlf5ozw1NaJh00R+dqAOM1CaJlHvWDZshn
	cz7IjXpkB0ZKUg24cXdyi4xh9bNXGWIaLxEbjAw7MCanqUfh67BzRJiXQyUlgPgSCNnDnUPyFOTcx
	/cY4ZCY0KBohxPFYeV7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3KH-0000000AiX9-1RM2;
	Sun, 10 May 2026 12:32:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3KF-0000000AiWR-1igj
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:32:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B685C6001A;
	Sun, 10 May 2026 12:32:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D1F2C2BCB8;
	Sun, 10 May 2026 12:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778416322;
	bh=vl/9MvkiblHAaPuDAQLv8KzOLc/tqBrxBmo1A4yiqGg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=EuE7mAu7fP8Dnlp3qjz6t9jFXA1pltfOTzAMg5CqOv7HXZtT5upIrGId+YI+PWXDW
	 IK43iGeb/jMsxErpwgSt0+eGRoyz2AF3eM6sttmHp8x+bGmfY+bDwmMEi3MQYQecCO
	 RHN4pbiBV0q3wtRwluEJYFlm/9vNIrjtfZIjx1kc4VcBEt2V9LFlZSMoh2fVhQJOqH
	 Ld2fZvWjXTsB2C80Tda1Pd59Ir41h+qf1tmPnM82KsWsOeW7Prizl60lq5c7SX5Dd0
	 QZEl2okN//1l9UqYTAs00BWs+WfUDwGrFLZ6XkdJYLhx2EaS/n0R6fbuk/QXWrm+HO
	 hWPowEnANsCxQ==
From: Vinod Koul <vkoul@kernel.org>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev, 
 sean@poorly.run, marijn.suijten@somainline.org, 
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org, 
 konradybcio@kernel.org, mani@kernel.org, 
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com, 
 kishon@kernel.org, cros-qcom-dts-watchers@chromium.org, 
 Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, quic_vproddut@quicinc.com
In-Reply-To: <20260128114853.2543416-1-quic_riteshk@quicinc.com>
References: <20260128114853.2543416-1-quic_riteshk@quicinc.com>
Subject: Re: (subset) [PATCH v4 0/2] Add edp reference clock for lemans
Message-Id: <177841631271.434434.15769354853011852826.b4-ty@kernel.org>
Date: Sun, 10 May 2026 18:01:52 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Wed, 28 Jan 2026 17:18:48 +0530, Ritesh Kumar wrote:
> On lemans chipset, edp reference clock is being voted by ufs mem phy
> (ufs_mem_phy: phy@1d87000). But after commit 77d2fa54a945
> ("scsi: ufs: qcom : Refactor phy_power_on/off calls") edp reference
> clock is getting turned off, leading to below phy poweron failure on
> lemans edp phy.
> 
> [   19.830220] phy phy-aec2a00.phy.10: phy poweron failed --> -110
> [   19.842112] mdss_0_disp_cc_mdss_dptx0_link_clk status stuck at 'off'
> [   19.842131] WARNING: CPU: 2 PID: 371 at drivers/clk/qcom/clk-branch.c:87 clk_branch_toggle+0x174/0x18c
> [   19.984356] Hardware name: Qualcomm QCS9100 Ride (DT)
> [   19.989548] pstate: 604000c5 (nZCv daIF +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> [   19.996697] pc : clk_branch_toggle+0x174/0x18c
> [   20.001267] lr : clk_branch_toggle+0x174/0x18c
> [   20.005833] sp : ffff8000863ebbc0
> [   20.009251] x29: ffff8000863ebbd0 x28: 0000000000000000 x27: 0000000000000000
> [   20.016579] x26: 0000000000000000 x25: 0000000000000000 x24: 0000000000000001
> [   20.023915] x23: ffff0000c53de980 x22: 0000000000000001 x21: ffffb4b57fd8d710
> [   20.031245] x20: ffffb4b5bb238b88 x19: 0000000000000000 x18: ffffffffffff7198
> [   20.038584] x17: 0000000000000014 x16: ffffb4b5bb1e2330 x15: 0000000000000048
> [   20.045926] x14: 0000000000000000 x13: ffffb4b5bd386a48 x12: 0000000000000dfb
> [   20.053263] x11: 00000000000004a9 x10: ffffb4b5bd3e5a20 x9 : ffffb4b5bd386a48
> [   20.060600] x8 : 00000000ffffefff x7 : ffffb4b5bd3dea48 x6 : 00000000000004a9
> [   20.067934] x5 : ffff000eb7d38408 x4 : 40000000fffff4a9 x3 : ffff4b58fb2b7000
> [   20.075269] x2 : 0000000000000000 x1 : 0000000000000000 x0 : ffff000ec4fc3480
> [   20.082601] Call trace:
> [   20.085127]  clk_branch_toggle+0x174/0x18c (P)
> [   20.089705]  clk_branch2_enable+0x1c/0x28
> [   20.093829]  clk_core_enable+0x6c/0xac
> [   20.097687]  clk_enable+0x2c/0x4c
> [   20.101104]  clk_bulk_enable+0x4c/0xd8
> [   20.104964]  msm_dp_ctrl_enable_mainlink_clocks+0x184/0x24c [msm]
> [   20.111294]  msm_dp_ctrl_on_link+0xb0/0x400 [msm]
> [   20.116178]  msm_dp_display_process_hpd_high+0x110/0x190 [msm]
> [   20.122209]  msm_dp_hpd_plug_handle.isra.0+0xac/0x1c4 [msm]
> [   20.127983]  hpd_event_thread+0x320/0x5cc [msm]
> [   20.132680]  kthread+0x12c/0x204
> [   20.136011]  ret_from_fork+0x10/0x20
> [   20.139699] ---[ end trace 0000000000000000 ]---
> [   20.144489] Failed to enable clk 'ctrl_link': -16
> [   20.149340] [drm:msm_dp_ctrl_enable_mainlink_clocks [msm]] *ERROR* Unable to start link clocks. ret=-16
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: qcom-edp: Add reference clock for sa8775p eDP PHY
      commit: 0cc64561b03d755bba54cbd0cf05e9210ab40a13

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
