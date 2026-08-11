Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AE25C5B572
	for <linux-phy@archiver.kernel.org>; Tue, 11 Aug 2026 17:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZ9sAjfygWMnthwqDELgUfExU2MDTpC9uHVkE3/+ZeU=; b=uznvlXJZ5QmRp1
	iRFGuzezb19s1mUcuPqTPenCX++LYcBfNHi9A9LeyLxG4WHSlQCp20ZzqiFahdxPz2ev+xqGOpiNp
	khmbkpJ0PVEN9NjQG9MFHLWHiWdrycQ1oFm22ZpPhn1u0YIdXKhQe69Qk612j04x8MPJzTSRCmmCU
	0ttmABx6HGOpz1fK4ih7urXxJ05g/BBPvDnVV2CjVdYsbEVhogfq6JEiFXPy6gCtxMX9SC4V+jQM9
	IMI0o2rcNpvONnZQwv0Hd8WtHIWeUNajC9MeYvB/ufEF75Huo//dRjXJjLSXscxk2/WzZWX36sN7X
	U8n5FYPqjdIp8FujKG5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtpsz-0000000EaN8-1OBl;
	Tue, 11 Aug 2026 17:03:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtpsy-0000000EaMw-29mz
	for linux-phy@lists.infradead.org;
	Tue, 11 Aug 2026 17:03:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 489A543B1B;
	Tue, 11 Aug 2026 17:03:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CFC51F00A3A;
	Tue, 11 Aug 2026 17:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786467812;
	bh=IhSbdLE67Z/rWQ24BOpqDsHU0kUT7TNjqt6WGaNj9jo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=muImfRdms678wpFX9Qw7qu04e5t0IewdCkZlg5pw64h1/Y3K/6j4SVOz5y5vTgfs5
	 dnoEppNoiYcHge593mtCMG7OMqu+zDsHD2Rg63/Ozl/ahmjM8EagO3ptitNkNRu0aR
	 NJz0mWz9j0LcqWnEVzuF3+IuImpkRRY07F7bq8WVB93h1Zxxs+3lyQbs4gIpRCsweS
	 h6UCJ9s7vd+tgd0lqBtXjxzjBtwtj74btaf8PV4sO0ZGJ7v4QKADBsQWTJoToAfY7o
	 12gFUNesNJNZ/F0vp26vrCnnn5ohU7VKEBYd+u6ONJIWHLb4mM7ooMjx5LVLYPmN87
	 /dN93rXa5r2sw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Esteban Urrutia <esteuwu@proton.me>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20260711-sm8450-qol-qmp-v2-0-d14353bd6ff4@proton.me>
References: <20260711-sm8450-qol-qmp-v2-0-d14353bd6ff4@proton.me>
Subject: Re: [PATCH v2 0/2] SM8450 QoL changes (qmp)
Message-Id: <178646780866.1081354.11462372432065642489.b4-ty@kernel.org>
Date: Tue, 11 Aug 2026 22:33:28 +0530
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


On Sat, 11 Jul 2026 23:13:16 -0400, Esteban Urrutia wrote:
> These two patches drop qmp_v4_calibrate_dp_phy() and modify a pre-emphasis
> table for v4 DP PHYs to match downstream behavior.
> 
> 

Applied, thanks!

[1/2] phy: qcom: qmp-combo: Correct pre-emphasis table for QMP v4 DP PHYs
      commit: 481807f939077059db278edd0467e7e609b6c9a7
[2/2] phy: qcom: qmp-combo: Drop qmp_v4_calibrate_dp_phy
      commit: 8fd2b30d187fa33e5dd30699d3e3a3662c1610c9

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
