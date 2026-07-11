Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D287DC44501
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 19:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMqgJeL1Z768TMp2SwHterCqDQWW4gQtXspd8v6FsVI=; b=XiwuzL54C2E8VQ
	8Zaw3zJFBemrRKkDW+BgkE1Hsc5yPxczuErOzw/xOPMNTn8xc6uhKbtpBw991IGknT3LEymOSmjKZ
	5SaT9/6mHK9H5pdNbPt/mk6s8p1mMRCqPI78c+Gqd2LOVpVvmBsLf9M2wl0NCbqcTzmUf1aNWHEAm
	5XlJgYxE6Ys3sJvmjx4Ule0SazlRSYCW7Zj/5a9qNOVoFHlenAOXLYnw1Vg7FJTtWPdqkPcIH4ZjI
	jpcjnpWtOZJiclSlVqt/qfSo8qxW9hMOHNzwPa9QWtpyzlPOEE/RKOJgRtL9phMn+mGUhr5yyB4D6
	MvXHqnZMeiFjEF0iE4kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1widiK-00000006pLO-2Xyi;
	Sat, 11 Jul 2026 19:50:16 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1widiH-00000006pJl-03EN
	for linux-phy@lists.infradead.org;
	Sat, 11 Jul 2026 19:50:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 75A5760052;
	Sat, 11 Jul 2026 19:50:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E08B51F00ACA;
	Sat, 11 Jul 2026 19:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783799412;
	bh=rdUahqtxJg50ApBQ7w/taQrMHkspc+FmfnbTmXgl8FE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Aj9SRxsEvxyqB/wtUbojXM+g5w1gpo6aq+71wgw9mu4hsFfY/u6RevYejNwy8eKea
	 44e7/5G7C6IdArnsOmbCuHxr4+beXitevDaVUDoMoI1gqssoPi+F7SPBaCs/WhApAf
	 +mdbGLpRoWaCFfnNHHpEGNHBVPuDz+kKeukzWnhZfs/J1FvLJGmRH9n8zsvUYPulx9
	 Nis/R91quzW6IotJMm/kvXWXHdf+tnBw34ExqQE4X4WT9MESEjUzIsVeQ+3YCjmGIv
	 yW7XqMeksJcprX0YHwpLARTfjf90ppzALGtWCPN+BRuFHbNvcC9Vc1O2XbKi/CjoJR
	 UfGnMcTZubxOw==
From: Bjorn Andersson <andersson@kernel.org>
To: linux-arm-msm@vger.kernel.org,
	Michael Scott <mike.scott@oss.qualcomm.com>
Cc: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	dmitry.baryshkov@oss.qualcomm.com,
	wesley.cheng@oss.qualcomm.com,
	abelvesa@kernel.org,
	faisal.hassan@oss.qualcomm.com,
	linux-phy@lists.infradead.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	val@packett.cool,
	bryan.odonoghue@linaro.org,
	laurentiu.tudor1@dell.com,
	alex.vinarskis@gmail.com,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/4] phy: qcom: qmp-combo fixes + x1-dell-thena DT maintenance
Date: Sat, 11 Jul 2026 14:49:50 -0500
Message-ID: <178379938620.163099.4648562543382010337.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
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


On Wed, 20 May 2026 18:09:31 -0700, Michael Scott wrote:
> Four patches:
> 
>   * Two pre-existing bug fixes in phy-qcom-qmp-combo that are reachable
>     today on any board which registers a usb_role_switch on this PHY,
>     and will become reachable on more X1E boards as their Type-C
>     support matures (patches 1-2).
> 
> [...]

Applied, thanks!

[3/4] arm64: dts: qcom: x1-dell-thena: mark l12b and l15b always-on
      commit: e505fc5f96661f3e3afa4267ac9415d8559cf2bd

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
