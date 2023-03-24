Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E43F5C7619A
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 00:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7GhtW2pvoS+Cp9jlZPAs3//0SA0eztbV32WHQG48ILk=; b=4Y8ucQsHjuIhX1
	17+VLcRbX4GsIYsiVm5JPIt9caae3ik9DHuSj3+rJvLyOteE3qfgkBUnqxuf8s2FYbdF6YgqwTqoK
	sgWa49h/QS4oaw77MoYdMXmQt5OqR6r/P7gKfYq6hQIm/cgYYTLSgRVdkt73eodDbAkbdVLAia0m1
	BKHVm2oNxDurzdCQ+qWxHjkVH8KCqCcQ/8FGV7NLCMMeDIeOmgtviI6OvpZckpp7SnlHickeXvd87
	jQ3dKq3pJEJTPTwhrzBtl/XE1m+6Cnq9FCzbmySY5hTo24YaUZXVzBbAB/EPLOJ2LRJyYRa61UjC6
	8gqkenYNc4Um+PQ5iLRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfV8A-003Enj-1j;
	Fri, 24 Mar 2023 00:18:06 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfV85-003Emq-2q
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 00:18:03 +0000
Received: by mail-lf1-x131.google.com with SMTP id t11so158147lfr.1
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 17:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679617080;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YXZmNUbirnPFl8q9p2tBnc2aY6ycoSjw1TdsaS3/lsw=;
        b=T1Tt6r+SaTosUqz5z3VgNeXtDbscpAc74aJN2MHovVEQkKKSgkAYsTLdOeD0+MYWrx
         AmQwMb5LZ9mRoYLO9yNKgQXkDaGIyqef12DFJgBlIWos3U54eVgJrVsa/5AzzG9NM2tM
         y26h8nPKwY55v0kZIPo4gFJs70Lvq3eVqwnDmBFXyFJC3pPhCiD+mOcTaWy4NpJVXLmV
         KtbS3RnC75KtOmCxCy69r09he6vyAesZ+cLkAODzrWrRi9ry3bLLggq9P8MLcUru4ERj
         eB7avTB6wQzs8tekSABNd3aE1fOIibrWgOpH0Jb+TpsS3YplbCoSUDvziKEL3YYPjsSW
         Svyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679617080;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXZmNUbirnPFl8q9p2tBnc2aY6ycoSjw1TdsaS3/lsw=;
        b=AUWfZNqTNguP/yg3vXEIUlw4KasNPA35n5OixR61u3BPGf4Vp7KQ3aY3nLZ7us9s3B
         LaM3DxU9pgq8e4sOuTwcfTecKKAwHYuGBI43b+ZadYBqpUh8vTffwTwoyOx05IsSNG23
         Uj98HINqTGrHVh/zoU2PnBLGOJidRx8gW0mdXAZ8cCYUN1uiXYX+a/ASrgsirfZzdlA4
         xZ2o1dJGMG/v4eHyBcw2kCyrFJ6k4Hdq1lSPCTtQcwiw8ML5ujc39U/PPAhG9LpdBDDT
         NnQtC8GU7RFTG2HWQgfCmnd32utkUpEW3CS30Gu461IObxIeKQcEcVVLEsHauFvg3gmZ
         Ex1g==
X-Gm-Message-State: AAQBX9cbCNEWAq0aUYHTLe6g5gErWenSSIlfZ7qU5AbYrTsdX2aG/V06
	/r0SIZm0Eea+G7XbOVzg9TvPJg==
X-Google-Smtp-Source: AKy350YSxRS1teUyJh9xtRbHVhHJuHsZ9juqstlxDXX88PN1mDWISCguYaJ4FEcS5Udj8lLqkYUK5Q==
X-Received: by 2002:ac2:5318:0:b0:4ea:fa26:2378 with SMTP id c24-20020ac25318000000b004eafa262378mr176332lfh.23.1679617079950;
        Thu, 23 Mar 2023 17:17:59 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id i17-20020ac25231000000b004eafa77e435sm569147lfl.146.2023.03.23.17.17.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 17:17:59 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 2/2] phy: qcom-qmp-pcie: sc8180x PCIe PHY has 2 lanes
Date: Fri, 24 Mar 2023 03:17:52 +0300
Message-Id: <20230324001752.1768505-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324001752.1768505-1-dmitry.baryshkov@linaro.org>
References: <20230324001752.1768505-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_171801_918787_442BBEFE 
X-CRM114-Status: GOOD (  10.07  )
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

All PCIe PHYs on sc8180x platform have 2 lanes, so change the number of
lanes to 2.

Fixes: 94a407cc17a4 ("phy: qcom-qmp: create copies of QMP PHY driver")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d580f3d3e221..c95bf7ec2abe 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2193,7 +2193,7 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 };
 
 static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
-	.lanes			= 1,
+	.lanes			= 2,
 
 	.tbls = {
 		.serdes		= sc8180x_qmp_pcie_serdes_tbl,
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
