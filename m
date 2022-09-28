Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CB6BC6FA93
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uL7IDb8DAXqkbzZEjo+WCG9xVQAx1WCe/If+BBdckYI=; b=pUn5IRm6LzvRdF
	UrCfr91eQSnyI8qQFlLVTt9M6+6AOISILlkEyaYajsMKa5arX54lu0B/GIcM6inP0mAR0+fRHNXB9
	ZK6/Px0xbp3WoHaImAUlvSHwGvF1bMg3kMY0+ArRS9B1a0swNAAO1eCbeJ9YcuRqitKSchdJx3qC1
	cUDcq9xxSl0/Mm9BXn/U0znWiMLxoAhnzFAn82xSXKEsn7ULX1mTyXWWC83t8fgFK2wRWfsgMUl8v
	HLvyQHBx3GZ1lhdPm21E5TSEqU7cFEDwZgSEQ3UZCZjS3BGp9CKj3RHOPyAfNcPbGLWaDw2yDWB7r
	7+szFqNx83fBzYST7NLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCO-000cOB-IF; Wed, 28 Sep 2022 23:10:40 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCI-000cGA-EI
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:36 +0000
Received: by mail-lf1-x129.google.com with SMTP id k10so22571596lfm.4
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=y0/09TmWpDPvIAj1+gHWN9vwz0OzEVkNofRC0Kb/Zdw=;
        b=C5H32G8PnAnRTTea3OUP5T7CsvD9rrXvs/amWgcYOwtyM7q2NOmXm3PXL9pfQvA7mZ
         MYO+G3ZXofwoGb1dZGa8QcFSWSQF0rFZC/B+8+vEN2RgMMjp1EJjvL1TmVv4McCHahKT
         Pri+hYpLT/ssUzsE0hii6fNbztjg1DtlWp9fByvhtpUue4vpYkSa8KgftkQV9Ukndb73
         mWPmSTRHcevuSM8+6bj5bEfpIdY2gapBRgAgoYCp/TG3J4TOxPaWAPZgP5YiZIBuDaw1
         40tfy+Qt+Q7UJ95Kqy0cfMGjl9+KGmNbLz2bIonzLbfP6lEQ6Ct3kr5Mc310pNBVkduk
         WZ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=y0/09TmWpDPvIAj1+gHWN9vwz0OzEVkNofRC0Kb/Zdw=;
        b=OHFC8HgWtKh9/JoAg42LWHh+Rb1bLI3ZqBBqc8LHikaq02hKQpB3YicZaC5+nbNL9Y
         2Kwr4WFQP1QIY0dvXm8EWAyDSYccr2BHxkvvQsbR6R07xxxecTJ8vYl6/j683Bh3Q+g8
         cOg6XCmRLkutHsnPXmTCWl12gzeicIRL/Jhar0VgezMwyD4AoSJci/jwEAyuM3Ukq0SU
         JPkM4GhAEBebAMQyyLXHnz/3veHucD9HeYyGXnYMmxW9rxmyO5zPHWpXFLtUSl4LNFSs
         3++Y2GEfYjkLX4mP2A413MLgutXFn+KRFACHjtMOy9Rc7w8KMFPwhvomGmgaPQrMLkRq
         AOcw==
X-Gm-Message-State: ACrzQf1F3/pKh1yVUiQ+wkuWYtb3ykzHt1HBWxAZqRSTodJLn6cAfNWM
	kf/0JdVWqnTE9k2fNDe0yosktg==
X-Google-Smtp-Source: AMsMyM7weg0lRkP0pXL1damegfo9nOMubyOhEQHYs0BwUyhGSZV7J7d0GOUHNwz2xviM4MMyf3R9Rg==
X-Received: by 2002:a05:6512:3d9f:b0:497:a108:544f with SMTP id k31-20020a0565123d9f00b00497a108544fmr110094lfv.688.1664406625900;
        Wed, 28 Sep 2022 16:10:25 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 13/18] phy: qcom-qmp-usb: remove QPHY_PCS_MISC_TYPEC_CTRL reg
Date: Thu, 29 Sep 2022 02:10:09 +0300
Message-Id: <20220928231014.455201-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161034_506446_9CA7CC35 
X-CRM114-Status: UNSURE (   8.76  )
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

The QPHY_PCS_MISC_TYPEC_CTRL register is not used, remove it from
register layout.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 43b7ad2c9479..54e6032b4bf7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -109,8 +109,6 @@ enum qphy_reg_layout {
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	QPHY_PCS_POWER_DOWN_CONTROL,
-	/* PCS_MISC registers */
-	QPHY_PCS_MISC_TYPEC_CTRL,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
 };
@@ -151,7 +149,6 @@ static const unsigned int qcm2290_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0xd8,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = 0xdc,
 	[QPHY_PCS_STATUS]		= 0x174,
-	[QPHY_PCS_MISC_TYPEC_CTRL]	= 0x00,
 };
 
 static const struct qmp_phy_init_tbl ipq8074_usb3_serdes_tbl[] = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
