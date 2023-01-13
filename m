Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FE23C6379F
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 21:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4s7TCDRgArYdiFEcQF/R3XBE+m6oiPdvLA/KWltBck=; b=YVSggZHzCAYDQd
	sGASr+9hFaFiPwjEI1o6Cm4xhoZ3JtXWQqvzmalZTdewFgmzmVsEKnonCbZb8uKPjrh+GOR/14VZW
	itx5+ogTYfKQxjkMn4Xxz4oPPJt4TWEnj9IKOrTZmD1TSleUQEDaIwaZ4bBrIVuXWQoOrmcOMTb21
	4XYYVrze+UOdbTi8CiObIYtOixgU7OjpBcFPhobvY1eWArPpMryucOXdNT68KrdPSyLzGUV/M+Vm8
	v/jPP5wrYVS9ycI0AmBAMgF2ry2yIP8aQhnbH891FAhO26Z9BjSZZLOWUuosbvWj5uZfjGX8URKrG
	XVvt7C0Pt/Ej0Z2MU5cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGRUj-004Zwu-0T; Fri, 13 Jan 2023 21:21:49 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGRUf-004ZtD-MY
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 21:21:47 +0000
Received: by mail-lf1-x133.google.com with SMTP id d30so29924005lfv.8
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 13:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UN+BaiXuwcGWigpxuQcgmjXIWIeg6JazWWwPqMBFIbA=;
        b=zkjHswtQV2Yt+JQe2tTkt626HsTKAWWGegeehc9NsSwQPjIS8SdI99Vyy4YPaeT/B5
         xk5qpq1SZgtuzpu3mc10mNjmDqVFrtyWMUO30CezHIVNNY3vWcJ1U++sN52dRz85St/I
         YKlQx420wK60AluARYDu92Y0J5TOwQRvkk++uxY256k8D1On/ZQpT16bfujjj24D38An
         LJlvhPiMFLXoktV3QqhILEltIHeIyXgIxds6WmVXmxrqMTa9kVQrzW1sxOprJOlLvDVC
         +adf4P3qbRyFSxSg1FzLgqF++c9pUyDFVZYP0zAyB7UewmTB4tfULKCBx4I/hbataUE4
         XSiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UN+BaiXuwcGWigpxuQcgmjXIWIeg6JazWWwPqMBFIbA=;
        b=BwTHq3B2yZTS0yj53Ze38adgv2U6yX7IrSCNap4pzasEUCXzdPSWTSJP2p6BEWP2co
         D+ruRy8Z1p/R/W3/u8JKsiJNdjvCP0yWqs5lpODuhYNmOGLjRra8At3cL91Q7EOrfgOe
         81eZYbm/G7Vx8kShzEWlyre9MYenKEqHEaWLhR0/uN4sAuF3zCwO+OoxSn75qPL13r7l
         yQFcCOrmYn6fOxxJxLTjFoBLwfiUsHzeoCx0efqJsDirB6ICpek419JvTH/C7/iV21Y1
         0vabzrnHEx9eZtce+uNjGhETNF/uYX/6N21CExIKUlgWw70eJe6DOXQvQGRg8mR9fYBL
         qGCA==
X-Gm-Message-State: AFqh2krKaLVSHnohoTKN8qLubK04MeLR5wmiaMKDesTjfDCPG8D2bOVE
	tErUTl//WFLgrilhIMWxijaIIA==
X-Google-Smtp-Source: AMrXdXu4J8Va8HZjzWO8oSP+VyIKzJD1Yi/6pJOQ4bBMwaYwAGsCpbfk/L1z9g36sOOz2PZk6+so9Q==
X-Received: by 2002:ac2:551c:0:b0:4a4:68b8:c2b8 with SMTP id j28-20020ac2551c000000b004a468b8c2b8mr444816lfk.15.1673644900742;
        Fri, 13 Jan 2023 13:21:40 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u11-20020ac243cb000000b004cafa2bfb7dsm4008933lfl.133.2023.01.13.13.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 13:21:40 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 2/2] phy: qcom-qmp-usb: fix the regs layout table for sdx65 uniphy PHY
Date: Fri, 13 Jan 2023 23:21:38 +0200
Message-Id: <20230113212138.421583-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230113212138.421583-1-dmitry.baryshkov@linaro.org>
References: <20230113212138.421583-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_132145_778232_325105CA 
X-CRM114-Status: GOOD (  10.80  )
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

The sdx64 uniphy gen3x1 PHY references the qmp_v4_usb3phy_regs_layout
while the PHY itself uses v5 regs. While there are only minor
differences between v4 and v5 regs and none of them concerns registers
mentions in regs_layout, switch the PHY to use
qmp_v5_usb3phy_regs_layout, to remove possible confusion.

Fixes: 14d98d3bf70e ("phy: qcom-qmp-usb: fix regs layout arrays")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index e1f038cc173b..a49711c5a63d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1862,7 +1862,7 @@ static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v4_usb3phy_regs_layout,
+	.regs			= qmp_v5_usb3phy_regs_layout,
 	.pcs_usb_offset		= 0x1000,
 
 	.has_pwrdn_delay	= true,
-- 
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
