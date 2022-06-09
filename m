Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B30CC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jun 2022 12:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMtGk4wuayp/z8YECts+dCbejMZ152iACOPqq3RlavQ=; b=kP0ClSNdKUjVZo
	MJu9rDqg1qP3Ygh643j6JJC0F2cvZ4eL6c26OjylU8QNVPrNb2aPjPd8Tv94AJWXXdQ5DNYn+Lmzn
	LfX7VlQ8g/9hNhh3a8lrMPPX1syyLhNOjHWaptAX+ucevEQYsHxwwxHPdX0G1cuOmkir0hswh2VT1
	wo6LF2PEIMESREbr6GUOLAelLUe4neDjr0Pb8YYQQFQjBvmJMAGkAyHfi04rqyh3NXVmXYyXuG2oE
	gftArMPi3glyW9zTbv2ILraK/bqGPzvO6WVK5IZihJjzl4P1QAr5dGDCMRZQei2vCvTHq30NPMIzL
	/eP8ypDJNh7noPFc2CBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzH3k-001dqQ-Pc; Thu, 09 Jun 2022 12:14:44 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzGtM-001ZBz-SC
	for linux-phy@lists.infradead.org; Thu, 09 Jun 2022 12:04:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 19CCBB82D34;
	Thu,  9 Jun 2022 12:03:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF68FC3411B;
	Thu,  9 Jun 2022 12:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654776237;
	bh=9kTzn0qoKbzpSZBZwJ3hRTAeGUs08b6TwBRYb0Trzgs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TvYDJzaTK6JtVLzHeWDbEIv8yJ/Uzi2vHsMgE/8LyHwH/bxTAcW33Ztl2HemDeXxR
	 kJ4KyjHdy0xTrNSzUYl9eygDYkMJ8/4I7Sld3tEpEaygy3t13bAZJe/DgeoqCc4yD8
	 RpxLQFq3MXciJAAyFDjQ+bave5diZ0Ny9ZigwCflCf+6pp56aznUx4ArEIGGyVyDoZ
	 CzxIyfkiBwhLhogx+9va5HikdBXPHrKDT0mDl6/2M7mChgNZrDjeZMOn2ADnaTRu+d
	 mPqWb6wwKSwkHkWMm+YLc5r0P81ty6TVtU7452lgAXcj05+YxI3v0kBrbdqML8M9OL
	 2SvclJUvFu4Zg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1nzGtF-00014D-NZ; Thu, 09 Jun 2022 14:03:53 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 1/3] phy: qcom-qmp: clean up v4 and v5 define order
Date: Thu,  9 Jun 2022 14:03:36 +0200
Message-Id: <20220609120338.4080-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220609120338.4080-1-johan+linaro@kernel.org>
References: <20220609120338.4080-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_050401_119469_4CB4EA54 
X-CRM114-Status: GOOD (  11.52  )
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

Clean up the QMP v4 and v5 defines by moving a few entries that were out
of order.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index eb5705d1e32c..626be0ccede2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -577,8 +577,8 @@
 #define QSERDES_V4_COM_LOCK_CMP1_MODE0			0x0ac
 #define QSERDES_V4_COM_LOCK_CMP2_MODE0			0x0b0
 #define QSERDES_V4_COM_LOCK_CMP1_MODE1			0x0b4
-#define QSERDES_V4_COM_DEC_START_MODE0			0x0bc
 #define QSERDES_V4_COM_LOCK_CMP2_MODE1			0x0b8
+#define QSERDES_V4_COM_DEC_START_MODE0			0x0bc
 #define QSERDES_V4_COM_DEC_START_MODE1			0x0c4
 #define QSERDES_V4_COM_DIV_FRAC_START1_MODE0		0x0cc
 #define QSERDES_V4_COM_DIV_FRAC_START2_MODE0		0x0d0
@@ -1106,8 +1106,8 @@
 #define QSERDES_V5_COM_LOCK_CMP1_MODE0			0x0ac
 #define QSERDES_V5_COM_LOCK_CMP2_MODE0			0x0b0
 #define QSERDES_V5_COM_LOCK_CMP1_MODE1			0x0b4
-#define QSERDES_V5_COM_DEC_START_MODE0			0x0bc
 #define QSERDES_V5_COM_LOCK_CMP2_MODE1			0x0b8
+#define QSERDES_V5_COM_DEC_START_MODE0			0x0bc
 #define QSERDES_V5_COM_DEC_START_MODE1			0x0c4
 #define QSERDES_V5_COM_DIV_FRAC_START1_MODE0		0x0cc
 #define QSERDES_V5_COM_DIV_FRAC_START2_MODE0		0x0d0
@@ -1134,8 +1134,8 @@
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x1ac
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x1b0
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE1	0x1b4
-#define QSERDES_V5_COM_BIN_VCOCAL_HSCLK_SEL		0x1bc
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE1	0x1b8
+#define QSERDES_V5_COM_BIN_VCOCAL_HSCLK_SEL		0x1bc
 
 /* Only for QMP V5 PHY - TX registers */
 #define QSERDES_V5_TX_RES_CODE_LANE_TX			0x34
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
