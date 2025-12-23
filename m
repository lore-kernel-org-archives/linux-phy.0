Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66CDEE6FE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VxnM3VNPEhrBr/mf9gSNdb9586jhN/e1A2kmtff5rA=; b=VeT2qSaTHBj2l+
	Hma1QZ51oNQsDBkzxoRCUQwOndj0LO2fIg+cmto+S09ILAk4PrJeok4l+QdZTyBvw3msVD1rZOBu8
	Vf1Fd1VlaY39EF5FAk7wEZf2X9DFzQptCNwpMZ50CqWSvoXe/9Yln+ALfSRzu/TfyGKlwEjW+jQC3
	r21pR2e6Wchjlw5fEkDPNmPwYi9yb5o/RDld7XRMf6lxJz37epZiC+faiLe3UY75peyMj3b8C9BGr
	3zzRxihNCautBcXS3pBXUZ1AsOZdOC6O/mqQpeukebaddy4KzKsJ0V8PuW0BB3ll9RNEUBnTh7Vup
	aPSxQEflKUFQOawRp/kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6RP-0000000Fr5J-0bxQ;
	Tue, 23 Dec 2025 17:44:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6RL-0000000Fr2t-2Mju
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:44:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 472A144093;
	Tue, 23 Dec 2025 17:44:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E6A7C116D0;
	Tue, 23 Dec 2025 17:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511895;
	bh=l7mFE+aHlv9elt9m4WL244nW2rM2t55/72xk3+kAv/M=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=KnPUCLNsDbZ7n929nA2bYR8VgxvrquI4fquSi9LSR6nW0IA5PCUFSpafqBO6Fpmg5
	 v6LKO1hdWOv8zfNTbOpKcvFoV+4sttWVpdZETWjxvE7bjmjfeiUf1iEpccAY1P54TG
	 LqTsyGw5BhJbYUF0Wx5P4bU7iW1NTYA/y/mC77eICgIbmQLiKwgawQwUjhBzZ/ToBf
	 gFYkYosImn/sVrXyvlhTxTkmvG3t7/LLZQSey4Snxc2/OzS2nNlTzbj7AraFxrx7nS
	 yKRvSrjDOrr2IX8uxVUrIPiFZwAfxykEh9mHRJ+7YXMWbE4xg/KG+gMN86PCf4t26z
	 PkQ/pEUf5+fxw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Krishna Kurapati <quic_kriskura@quicinc.com>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 Chenyuan Yang <chenyuan0y@gmail.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Faisal Hassan <faisal.hassan@oss.qualcomm.com>
In-Reply-To: <20250905101243.14815-1-faisal.hassan@oss.qualcomm.com>
References: <20250905101243.14815-1-faisal.hassan@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qcom-qmp-usb: Set regulator load before enabling
Message-Id: <176651189214.759340.14310751563093717054.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:14:52 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_094455_642396_B719AF61 
X-CRM114-Status: UNSURE (   5.32  )
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


On Fri, 05 Sep 2025 15:42:43 +0530, Faisal Hassan wrote:
> Set the regulator load before enabling the regulators to ensure stable
> operation and proper power management on platforms where regulators are
> shared between the QMP USB PHY and other IP blocks.
> 
> Introduce a regulator data structure with explicit enable load values and
> use the regulator framework's `init_load_uA` field along with
> `devm_regulator_bulk_get_const()` to ensure that `regulator_set_load()` is
> applied automatically before the first enable, providing consistent power
> management behavior across platforms.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom-qmp-usb: Set regulator load before enabling
      commit: 346ba84646355d651bb301f66137ad4418381a8e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
