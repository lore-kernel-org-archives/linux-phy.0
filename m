Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D5E8C04A95
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 06:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2asbrqGOB+cUZtyeCTukRwXw4cYhiWQZ5vMH9yo5O0=; b=kYE3NBTmxA/FFG
	+3Sl5AA1WgEQ605VB4tScw4Ugtgxf8SGhEhs5CSKfr7UYrD6l1W6Mm4quOf4Lg8xjCvLA+UtNo6/h
	bm5aiSY5DiPxfxXBKbz8PTkOjYyXiaWpOMbi9wW1jcy26B4uoZJ+BnpOku+/DfMToYSFFLcVcvQKQ
	2qdpBJca+uLLdYT6NNO0F1b+7Vngo075TzHe7iBPrhPCiwKUyUqA6usSm5jgs/kbQYSWvOQDZmOZs
	8FIhNdZL/7alz38fArlWCLy2tuea3iInF+3w+dlwKyNCzuR9hMsEwnc/k9kwX1oIwReMi7Qiyl1vU
	y89wg9IG04kJJMxqIO+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odmz1-001Os5-TN; Thu, 29 Sep 2022 06:25:19 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odmyz-001OrC-6A
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 06:25:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 967F0B82365;
	Thu, 29 Sep 2022 06:25:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0AFFC433D7;
	Thu, 29 Sep 2022 06:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664432714;
	bh=S54NO4ay7i8nZMBgBUU2qfynbjgCiZp4OdSSAkmIcR0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PENLS4PousitN6sbiAbMWONHTvV2KMF7uCcfCEL6U8rvXB1ca9L8Kt75TLp2Fsa9g
	 md0/cTFqdTqOyH6ETGIGPQksuiMXkoD9SkwbkU6HLTIO3cmOtEzWlVXpIazKYgt8/k
	 7QJQl6cneowh1nn/r1NiftdrBs6NXxuemHGiqyJkeWrj4D7QWFeg8MBBjohqvC2aGl
	 bdc7Vd3uUY0+BMD5M/OS7RCNNOk4wrktXnV/BrmhyBGnyIZGl0Zcq0QHTURHhNEhBj
	 cKNy93RXv+j9/HnCtLaSnJbzEojFnfXCaRmfhxug2X9jlEqUA/cw1Ed8UYMf7b3KU9
	 HyGE7ndBPVBpQ==
Date: Thu, 29 Sep 2022 11:55:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH] phy: qcom-qmp-pcie: fix resource mapping for SDM845 QHP
 PHY
Message-ID: <YzU6RhgdH4FnpEM+@matsya>
References: <20220926172514.880776-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220926172514.880776-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_232517_392599_C997F0D3 
X-CRM114-Status: UNSURE (   8.24  )
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

On 26-09-22, 20:25, Dmitry Baryshkov wrote:
> On SDM845 one of PCIe PHYs (the QHP one) has the same region for TX and
> RX registers. Since the commit 4be26f695ffa ("phy: qcom-qmp-pcie: fix
> memleak on probe deferral") added checking that resources are not
> allocated beforehand, this PHY can not be probed anymore. Fix this by
> skipping the map of ->rx resource on the QHP PHY and assign it manually.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
