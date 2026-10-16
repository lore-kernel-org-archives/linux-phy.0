Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9904FCCA46C
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 23:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65v4nN2oxfIAlatLQGr2dMhec1mjB5urR+aYdQ03x7U=; b=RtCiO6boBTPOKn
	sjIF7Okgbx1dYHUe9Ew4y8iuE3RJWmBrZ24AAcZJsybVF1edVSsmpR72yB+M+Y0URMhPW3qVDT4ZL
	3n3kuw/Ci6FJvT+CaJTsTLq6Vpk+wewzzZXMPB1m2k1kwmmBpMzF5MY4cDWxFAThOyQkAu4TLBLu4
	/Qt4f3f5DV6yJmwDU/LoP5HLgRAhi3BRj/RmYAOO0qULAZNZwUzq7r0AzeqqNStK2tETIkaiq+EZH
	W+C+968Woxgqwv+ciIUAkGr/DAun3M7QkwGGEkKvbe0iNYNCf2xzGnwRRckg6ho2FfCw68z+rtR5b
	lkuysIcQinkoUw11ve4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHri0-00000004DXI-3QTx;
	Fri, 16 Oct 2026 23:51:32 +0000
Received: from mail-106112.protonmail.ch ([79.135.106.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrhv-00000004DWr-0NSf
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 23:51:31 +0000
X-Pm-Submission-Id: 4j61t63Qr8z2ScWl
From: Luke Macken <luke@phorex.org>
To: ritesh.kumar@oss.qualcomm.com,
	nabige.aala@oss.qualcomm.com
Cc: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	manivannan.sadhasivam@oss.qualcomm.com,
	abelvesa@kernel.org,
	abel.vesa@oss.qualcomm.com,
	dmitry.baryshkov@oss.qualcomm.com,
	lumag@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	johan+linaro@kernel.org,
	wesley.cheng@oss.qualcomm.com,
	mahadevan.p@oss.qualcomm.com,
	quic_bjorande@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Luke Macken <luke@phorex.org>
Subject: Re: [PATCH v5 00/11] phy: qualcomm: qmp-combo: update DP PHY PLL programming on Glymur
Date: Fri, 16 Oct 2026 17:50:50 -0600
Message-ID: <20261016235050.4060422-1-luke@phorex.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_165127_282265_2008DFE5 
X-CRM114-Status: UNSURE (   4.60  )
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

Tested on a Lenovo ThinkPad T14s Gen 7 (Mahua / Snapdragon X2 Elite, which
uses the qcom,glymur-qmp-usb3-dp-phy compatible) with linux-next
next-20261013 plus this series: external DisplayPort over USB-C works,
Dell U3818DW at 3840x1600@60 over HBR2 x4, and the internal eDP panel keeps
working.

Tested-by: Luke Macken <luke@phorex.org>

One data point in case it is useful: without the series, link training on
this machine already succeeds at HBR2 x4, DPCD 0x202-0x205 read 77 77 01 01
and the symbol error counters stay at zero, but no picture is produced. The
DPU interface frame counter runs at 30 fps for the 60 Hz mode and the sink's
TEST_CRC count stays at zero, which is consistent with the DP pixel clock
running at half the requested rate. With the series the frame counter runs
at 60 fps and the sink returns a CRC, with the unchanged 5400000000 / 4 in
qmp_v8_configure_dp_clocks(). The same half-rate symptom was also seen
without the series at 2 lanes.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
