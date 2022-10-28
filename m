Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD459FA3741
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 12:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpqazE1KdJ4HgPxwY16g1ctSqHRbmdcENHlOKZd+FYE=; b=A2NfwoJSMDqzWr
	B1da+QfMjQCG6WcqGW/7AdwrcGtbLlHZ+eK+6/2T3JA2A3/3DQdmCe8WVR5BpQMaJBRk6IK913Pb9
	3nNHnJ7776G0D1nXlklzWHkXVPzHOKL/JL94QzgOUlbN/e48Yd6VRAiznerDml5KC2u+FttnB3Wxy
	zNw8AGBam7QUbz44zV66/wkgxZkzMO8660GRD/m3jUlXTu4nc/V9d32GIOvZrDLibKJqjaJh5AUYm
	7208q7pU4EKWOOI+tZEtuCpC6cWcFY4PTfJCt6Yud59T2eFQ6Vp39rhdrf2Isl5u9DvjKZEH7E/nq
	gjGjrKlxpSSpIjpVslVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOmN-00H9Io-24; Fri, 28 Oct 2022 12:48:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOmK-00H9I7-5Z
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 12:48:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C0F0262833;
	Fri, 28 Oct 2022 12:48:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52FFFC433D6;
	Fri, 28 Oct 2022 12:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666961283;
	bh=BMoxFqwGaW6SUytXTKr9LKE7S8OQUzWPmAFFm5Xf/5c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gMQRHkk2z8jCOItXeaYiHfXDOrfxcqQWEjbmzeiTfTnOT55xy3NGQv3QkbtTy3w3h
	 S1Jg76tDKUZZRxfMsHYQPV6FdKlFPJMpjVa543v/ngoPhKj+gh/MqhUYpBEXjv29wg
	 mwBm3e0YqSV6Kk/6u7hbAb+zmkOJIM0JuduiUpIVrIHopfxGOF7N1V8eoi9yGh57GD
	 eYRWllICwO+5WnZstLnG8o73KUfzHjeaj18e9CkpbmxA8lrpvr9COuGmZzdHk7Picu
	 jSJ8E/1+y98nxWnOOpClRL5MNu8NxFCZ9RFie3ntxOwQSf6jpqxTm5/8s9r4vzBnzI
	 vjgwFZkmlRwjQ==
Date: Fri, 28 Oct 2022 18:17:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Taniya Das <quic_tdas@quicinc.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 3/3] phy: qcom-qmp-ufs: provide symbol clocks
Message-ID: <Y1vPftugHtieR8Eu@matsya>
References: <20220916061740.87167-1-dmitry.baryshkov@linaro.org>
 <20220916061740.87167-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220916061740.87167-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_054804_265574_8FFCE954 
X-CRM114-Status: UNSURE (   6.07  )
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

On 16-09-22, 09:17, Dmitry Baryshkov wrote:
> Register three UFS symbol clocks (ufs_rx_symbol_0_clk_src,
> ufs_rx_symbol_1_clk_src ufs_tx_symbol_0_clk_src). Register OF clock
> provider to let other devices link these clocks through the DT.

My script is detecting checkpatch spacing errors, pls fix and resend

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
