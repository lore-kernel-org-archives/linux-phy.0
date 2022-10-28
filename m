Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9789AECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNXw9U+XM7b6UW3Z3IA1lziy13U4pCYf+qEP8ZC/wdM=; b=pzi7odFqjSR3dj
	l0xVNi4eZibri/Za4oCwuWVN/masVo0Ge6J53z84FxK2uRVsFSgMc79dxnbcmJinTj5kTEAW7gyf1
	lFg63wMjw5+EYPvC8jHPOBPil/UBHue1rjsMuU7ObbP2VJ5W7I7mYfLZ3PEl8n2S2nuQLti2tf8jO
	GsUDWBXlpXgjGr4i2kdfty51qwB3Cl0LqTS60MNUmDtXv5IeR0HZ5gfX2yOm4vFIGhiCKoq38c/BZ
	vdWj3YAKrseYH4ijVbJjwmEWLiXu7guBLpA/7mRVtuhypwZrs3eJ/hD+aaSzBjlI4sUyfSMW9LUkg
	w6k07r3gFMcfebBN+fAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooP5Z-00HEy3-Uy; Fri, 28 Oct 2022 13:07:57 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooP5X-00HEw0-64
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:07:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 699DAB829FF;
	Fri, 28 Oct 2022 13:07:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 441A0C433D6;
	Fri, 28 Oct 2022 13:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666962472;
	bh=EMSF72jMfi+VBIYUxvP5jSW6Mps48VRoA54UWMBEQfo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EaYJIDJOMqNlY5NRc6xQ5p8lVniHraFz1U6qqpeDzEQRCU5HNWg7DQi5vVoAs6jxP
	 vk0NWRPMjhDsKk9r1/xavMpq+ytxv7ogGmBZCdR1BPGYeB7/ZDo7w6w1rLTp+wNkyG
	 omLZzrRlmMIkKdwJh0X1yuJi34xeYJpaQIWDB1MB2V30/NMYfgPvHmXMnsnyDkbUhS
	 cqZoRWchF25kMOvosAHh7C+sQA5sRZ0MJ9XAWWX4O1in1G2Zs+xkX+BoqYMfxbWahT
	 z2K8onO+C4uObv16MNWV9Pnn+50MbeYCBX4w4Y1zQ7FqdnzitcgH5GKq5iqtW0yp/j
	 xK2cskF3ljF+g==
Date: Fri, 28 Oct 2022 18:37:48 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v5] phy: qcom-qmp-ufs: provide symbol clocks
Message-ID: <Y1vUJNZ9d5jb8dl2@matsya>
References: <20221028125148.264833-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221028125148.264833-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_060755_391935_9AFCC68D 
X-CRM114-Status: UNSURE (   6.02  )
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

On 28-10-22, 15:51, Dmitry Baryshkov wrote:
> Register three UFS symbol clocks (ufs_rx_symbol_0_clk_src,
> ufs_rx_symbol_1_clk_src ufs_tx_symbol_0_clk_src). Register OF clock
> provider to let other devices link these clocks through the DT.

Sorry doesnt apply, please rebase once updated next is availble later
tonight

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
