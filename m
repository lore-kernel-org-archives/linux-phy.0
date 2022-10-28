Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9B94ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ro3e6GmXFdUfBNUc5mLCGf0LQUKSiMD9/oEyiEpG5wY=; b=30E8kUwODezxPS
	IrUhIBHXVNTcGhFOaGCNzux7R+iZmD0X+1MKWwldb6P5WPCw8EiDfeNegDI50Zhbgv5Zk/eRTj3Ci
	7A6OZjg2V6zCYXeTI6DSrdG5Xghk0LDpnegkEBu7QO/IAwNi7+kLcPLqFrO2whLYtZyZMeQEz1VAw
	Qjn1RCaMeQ467U+vmhWrW3BgJbz1kJVAL9cZaWb/3H3+jVcoNRzTWDLFRCk+dZ8uIEDpb0OSpnFg3
	KKUA8dO7gQbIzICewNvaz0UhcQiMKY83V24ONwXtCNlNhCW9bfwB1nriz/O+AsIEZh9nnp2Y/Dy5M
	CUFQo8q5B0bLCdvCPebA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPfE-00HQZ7-Aq; Fri, 28 Oct 2022 13:44:48 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPf9-00HQU7-Aq
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:44:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0A76AB82A30;
	Fri, 28 Oct 2022 13:44:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B549CC433B5;
	Fri, 28 Oct 2022 13:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666964680;
	bh=lQAeh2JyHulI6VOCF5gUBOHb/iKIMa8Q2OtzfLpz+8E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=r2uVNvl/PcKsdDGoiQ1W/g6KAoAP8k6eXbCLp7cuQMEr4IsvTd4vYYwd4Rxk4GB8J
	 uVL8w+mevAPVIZWpsDQMcqthCvnvf0Pk7ewr/Fsm+U0+us+/iNp8TuwBgD/2hAD4Bu
	 LtclCJZYCoD7jfiGRflj1Ng1JpmH9cGcJAPxlkFj5mEwyRx0lY5E+CaRb8fXRuQKhs
	 kKMwOjAg8LVBU7mHalOFIESf9MKK1lzIRvsi5kp+mdzLEHyhCBY88aK3jnbr03Hzmq
	 vrnE5RGdZP3SBcjzYO/2XZGhzlqpkwQGte58KPuTprfCjvCHGi+wy9tnzah5pF3fu+
	 Kr6DkDV9gZolA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooPes-000522-RN; Fri, 28 Oct 2022 15:44:26 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 01/13] phy: qcom-qmp-usb: fix sc8280xp PCS_USB offset
Date: Fri, 28 Oct 2022 15:43:55 +0200
Message-Id: <20221028134407.19300-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028134407.19300-1-johan+linaro@kernel.org>
References: <20221028134407.19300-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_064443_547342_0D3FB0B0 
X-CRM114-Status: GOOD (  12.29  )
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

The PCS_USB register block lives at an offset of 0x1000 from the PCS
region on SC8280XP so add the missing offset to avoid corrupting
unrelated registers on runtime suspend.

Note that the current binding is broken as it does not describe the
PCS_USB region and the PCS register size does not cover PCS_USB and the
regions in between. As Linux currently maps full pages, simply adding
the offset to driver works until the binding has been fixed.

Fixes: c0c7769cdae2 ("phy: qcom-qmp: Add SC8280XP USB3 UNI phy")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index d0c433197080..82af28f4a91b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1682,6 +1682,7 @@ static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x1000,
 };
 
 static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
