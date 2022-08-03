Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1866CC19F2C
	for <linux-phy@archiver.kernel.org>; Wed,  3 Aug 2022 12:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xktDrNZ8fpXOKrdyvkeFnrOIURTeoVAZEarbUk8mrHY=; b=kPzJCf3uEerVYU
	ItH20XArsBeG4bngeXkWZ3vphz+UMVede4M0Jm5vQ2UoGIsXDFahfOPE+G9a61cn+OjZNHEHRN6Hg
	CTXjNMb+ETX/DdU4S9a0OnO8sZK3D65cFLLF+hnw7I5MaS5AXXMfNYt0WNQDY3OlMNnHP1aR3vPvw
	A082JXPp/0d5zVdtu0Qs2Kkw2tuPkBd8T6upWAY1hMMoACbYY4/oeanTizRFJzrAjhWA6FJfvveXY
	8yyyYzCIUOtJdvejmPBbWtE+i/Q4v31/MiAPSfYyrmPZnWR9v8KMp7oRHfBJfpbJeVLQk3m69GAZX
	fKRhkXQfAnARJWOA6dhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJDaM-005vu1-2k; Wed, 03 Aug 2022 12:34:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJDaC-005vm1-19
	for linux-phy@lists.infradead.org; Wed, 03 Aug 2022 12:34:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 607596141C;
	Wed,  3 Aug 2022 12:34:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDC0DC433D7;
	Wed,  3 Aug 2022 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1659530073;
	bh=W0cR2uW5KaoycIlCpLkhDVVbdqLtJDV7BQESr5rfoig=;
	h=From:To:Cc:Subject:Date:From;
	b=OhwmuZ+dLjHXc+j26BB4LQc3flVD1q6r2S8Rsa84Yw8gR7kiC/tAqwQJNOWBXUFLy
	 051mJHtF9kLg+TJhFH8bRLF+C1DMjKPhyhQ4x6s7kdxD/j+CwCaVciHLHHbQOTnizk
	 PYvfqLnU2eNOL7q31l4RcYh9LOH+rKztsRbQeEuXToilfw4u8c7RUwxoC5/zGHG1wL
	 w+zn5ajwUM6Jp0GyTEOCwvXjDxy+feBqpFrvc2xRYmwMjwXf2youQzLo7KbQxE9l7o
	 Z0pxCDFVs4mb6+2cQOMmeX+skzGbHJg/LPEKVyVttsHev04yLzx5PILK6tGc27JExi
	 RyBlmTRNgtM8g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oJDaN-000289-Ty; Wed, 03 Aug 2022 14:34:52 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Douglas Anderson <dianders@chromium.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/2] phy: qcom: drop regulator loads
Date: Wed,  3 Aug 2022 14:33:30 +0200
Message-Id: <20220803123332.8138-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220803_053440_371576_EFA608AD 
X-CRM114-Status: UNSURE (   7.96  )
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

Unless a driver implements an idle mode, there's generally no point in
specifying an active-mode regulator load.

Drop the regulator loads that were recently added to the Qualcomm QMP
combo and edp PHY drivers.

For a background discussion on this matter, see the following thread:

	https://lore.kernel.org/r/YuPps+cvVAMugWmy@sirena.org.uk

Johan


Johan Hovold (2):
  phy: qcom-qmp-combo: drop regulator loads
  phy: qcom-edp: drop regulator loads

 drivers/phy/qualcomm/phy-qcom-edp.c       | 12 -------
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 40 +++++------------------
 2 files changed, 9 insertions(+), 43 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
