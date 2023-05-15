Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59AE2C77B7D
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 03:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvjT2CpFOltYdCITFHe0BRF2he6budgwN/5pIKDyZJM=; b=xmVETLAZVoCnxS
	8kxRc6WJ6OLwDHhamqR8tpA71zuVWrmhIprxdekBINj4aXPNl18vG8VCWafAaV/aTIz+9alx4Vuva
	7lHVW5E7F8UT1RMOHQFm3CNaL/GKoVXBk6Hqg/p9vOia9qad7STYxkRRvceimIkl8COqROJKKf4i7
	579WO1mN8gO1nHDJAAALjEXyxDSpl8gkMO4AI9cid4WFPX9cU/YFTqrZbeTSbcOhuHFnbYopc4Mh0
	NuDcxXwGzZDGzZtGBSn5jhw4Bblq6aFlg5H2Vprd0lmiq+P2nEKZhtsy/n1Q5stnQaEYfcFIUHl4g
	jzf0ZVz5h3pI0B31IqMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyOtu-000k3g-04;
	Mon, 15 May 2023 03:29:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyOts-000k1G-1C
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 03:29:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6736361E2D;
	Mon, 15 May 2023 03:29:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93158C433EF;
	Mon, 15 May 2023 03:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684121362;
	bh=lnP2+dVucsO/s8HZ7cKMyYN9t2pIBMq2zZ4BICHHeN4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WUxwLW2/s0rYCmBJ6Z+nRBnGdV3zRDDhVsauqQV47AxMtEnmD68ix829N5WslHcbg
	 Ljv/tK2LRdOsKJkvE6sMoW3DAgJMgRA68xRAfXkeFsMFLiogIW0KoEUTbcqjWnQO9k
	 ffVeCPyT9R86vAtqw22y09X8hddgFf/k6lyCzWF6ncThq68e27B/duAaQraklYT/j2
	 T65l4ne7ISjxwdeZ/8Kh6XZ/Of+Euls41DnC+MruAJ+BhLTIvp35AI1Cqs7ZwD3u7c
	 af8iqKmW8BrtllF5AcnLRAuFt21MH/RTZryicTaU2HUBmrsLG+snzmHtHNObJE8ome
	 4Yv6tPNuWszkg==
From: Bjorn Andersson <andersson@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>,
	Bart Van Assche <bvanassche@acm.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Avri Altman <avri.altman@wdc.com>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-scsi@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/5] arm64: qcom: sa8775p: add support for UFS
Date: Sun, 14 May 2023 20:33:01 -0700
Message-Id: <168412158455.1260758.15219460296636419401.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411130446.401440-1-brgl@bgdev.pl>
References: <20230411130446.401440-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230514_202928_451728_943D25FB 
X-CRM114-Status: GOOD (  10.04  )
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

On Tue, 11 Apr 2023 15:04:41 +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Update relevant DT bindings, add new config to the driver and add UFS
> and PHY nodes to the .dtsi and enable them in the board .dts for
> sa8775p-ride.
> 
> v2 -> v3:
> - fix DT bindings: move allOf: below required:
> - collect review tags
> 
> [...]

Applied, thanks!

[4/5] arm64: dts: qcom: sa8775p: add UFS nodes
      commit: be543efeee17b93edaac61e49c6361d2209bd3d3
[5/5] arm64: dts: qcom: sa8775p-ride: enable UFS
      commit: 35c45a1125fc0772b95aa41acc25deddcf5492be

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
