Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59A3EFA3741
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 12:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LE3udQ8PLW4M2iKhp2gPDxNUxIbosHZggXrOTzUh2fw=; b=j3QXV10zlXt/m/
	LgZTKXioQo0EUkadqC485ojyOXSM4MtVKGsQ9an8RzZ3svcdMZ1qREsLQ4591vGauldLu9Md9BEOC
	TwBeIqPm8Oed4LQmr+P+ecvZYUpKob/rSCX1cnaHAuYysJqhOTV3ue6sHolwY6lxltKn3EbDZp+6e
	/V1Ar96f56dDhfdogqENULbmKVZ/JNw8xnwaXQ6vvlPIuUtgikCiJjTSGUWoEXhG2vXz1YZ/HG1aF
	dVt6xrQ+uWUAUW389zG2ERLcnGrfHDsOsbWyZhBPdJLSYezk44SpAfTMD5Lll/BGC0H3J3g/hj4Qm
	oRh6bonPmXjqZYl0othg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOQU-00H6GL-Pq; Fri, 28 Oct 2022 12:25:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOQS-00H6FB-0I
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 12:25:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 61E9F6281F;
	Fri, 28 Oct 2022 12:25:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0477C433C1;
	Fri, 28 Oct 2022 12:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666959926;
	bh=yXi+zNZmws/VEotmbHPHeWJ+f72XDWuCWYjRYk20mS4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eb3MGwY6t3ySKB2k95Eef1hQWuz+o60kW9FxbqyUu0flihGpaRL58YhD/OCvQNV/Q
	 dgfKoIENpT25G4j3pMvgBC0hKf2EcT3fo1krfJ4d7px5vtPIKO7zAkrHXMszYV50ck
	 2LoJk/jB+f7mEErfzQVHh9TXMc85+fkMyhi1BEJln5RwPJk4ar7FryVOouSOQoZnCU
	 +o9LDVbDgPbEFDUJxdQ0FwEVvQXeHuj45/DRzOJAEU7LF/3085pgassDMf5c6c8UjG
	 AqtifNKM0+8DvEr4UQPZ8aSlgJgll3f/nfo7J/RLyK58vZffjIe2vAkvM5YsoAuz+w
	 CihXOSVDZRZyw==
Date: Fri, 28 Oct 2022 17:55:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/20] phy: qcom-qmp: further prep fixes and cleanups
 (set 3)
Message-ID: <Y1vKMonBPePdNpyx@matsya>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221012084846.24003-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_052528_096300_040DF5BD 
X-CRM114-Status: UNSURE (   6.55  )
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

On 12-10-22, 10:48, Johan Hovold wrote:
> Here's the next batch of QMP fixes and cleanups in preparation for
> adding support for SC8280XP and its four-lane PCIe PHYs.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
