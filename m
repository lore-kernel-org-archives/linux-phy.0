Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBBEDC48260
	for <linux-phy@archiver.kernel.org>; Tue, 13 Feb 2024 13:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YhTLalLUWT+ghiaNDIyi4r5flCZh1+dboHdJFANVC/w=; b=nkIB/GCrrNUb/K
	FI8UeOGr9LruDmnkgPP+rG1SMGS8cDWT2buRgTc3fbOw70fjQkqcK7FZVZmAKf+hHdLFYaIlQTgEo
	ipCsasBc3xIMXGnt8si8YqkNL3/k781QIPRmIRhaPwSsvSKG5dtGiQFzU1Wn5lz1O5gSHY3VB0KMR
	aMoYutmCQO5fAIzEuGQbl5OPbuYLQ3fhxIx2ncHIyj0yKNn6sRqIFApJ77Ebgj7bzNd//OXcobCWv
	GSBCowd38Y2DdXgVtEA0lKRduGiAD2wAaGf2X2zBmX8fJovOKTvYD9IXsD/VThuEf9wxyY9R2CwMw
	tEC29OO8GqOAi7vyxdyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZszW-00000009N9T-1txz;
	Tue, 13 Feb 2024 13:38:30 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZszT-00000009N95-3SEY
	for linux-phy@lists.infradead.org;
	Tue, 13 Feb 2024 13:38:29 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2d0e2adfeefso44746861fa.2
        for <linux-phy@lists.infradead.org>; Tue, 13 Feb 2024 05:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707831506; x=1708436306; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4Zb8wAvFeeorGx6LWVz5UtbVfmgXSiLzvpa9AtKSuSg=;
        b=AZUkc21FGixvafo+K9YQ0iSrLHUgoI57JC2n23SwnCDPNB7evUw42ABkpQ1JS9h2nq
         8vkpNi2WI4NX/Q96afrqWuGr34TWojkPqZrtoegzR0HndHI3oPQtYZqbS2PQ+n0+MH+M
         RZWbfyh1dVHl0cK43yJQ8Wgm4B6m8H9FZMq4NfTR0410pIa/tREmUpqyRqIgN1gd2yuN
         +HOteiflLGSasVkUY8d3NGva7+3wABQatQTvGdOoORr4iMm0ZNuuBDp5iKPKEzsyTcvC
         qAwrH+iG/8VKWq7iPDyUyvLPO07xTum48ypv/+bushxxFMGeTiB5pU3uNfkaUxu2nOOe
         I7Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707831506; x=1708436306;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Zb8wAvFeeorGx6LWVz5UtbVfmgXSiLzvpa9AtKSuSg=;
        b=MQPaUQl1ehCrfYB+etp3VkZXPe6/SqlJEeNg/j6HNgn1icsQNQnq8E2S0Xm8MU6djb
         S2MQxbQ9HN7FLIfbzOlzR8rnd7cqsvbgL/11srlxx63tPJuALbBAEvddPHeretutmsex
         50ElmpMyUMEP4/f8V8jjgdyKgphxA4p+x4ndWkg0ezzLLmmZ3ABuRW81HIzr8dEFZ249
         SS0kMrzUJHLzOvOa0lzQW5qSRaP379pwO9a0nELo5AylFPR7tezraBqQaEEnFe5HyMOO
         7ljvdw2LyZlSce9ynJWzfFORAqkYWHOXvH7AFFoaBoqz9f62NrZeNMy/CzJE5AQV/oBp
         mXJg==
X-Forwarded-Encrypted: i=1; AJvYcCXkNWnDSiqyJSgppj1NuEJzr3EeBm3n8QJLF7WXRm5FwdrYBbgJ8ui8QbMsDiI1s+Jg6OAFVsUXPp+JBCp7/cGkbYp3Fk6PErmZ6izDUA==
X-Gm-Message-State: AOJu0Yy/Z3fkkd7lMwZPyPgPUhECZslWZGYtTVcoBWpRqNZZEZSkTwvz
	MjsGNTvR8dWw6WF93d0yFRdkMDGosrdgxJdp/+fQ8hGd1fJ3iK+Yopn5U0heEqI=
X-Google-Smtp-Source: AGHT+IE7yw/lFv7KE85EgKrLu+fqIGLfS6/cTqI1wzx7FRZK261L2SlKG1mPKKPHgc6SYCq79Zdvmw==
X-Received: by 2002:ac2:41c2:0:b0:511:7021:9418 with SMTP id d2-20020ac241c2000000b0051170219418mr6331796lfi.69.1707831505809;
        Tue, 13 Feb 2024 05:38:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCURggPapZEk2u9sEIEP05tNN+oit4tz750l3gXkjJuiQ8zV+3bvMFkOWt+mIns2GmitMJT9g8QjgCEhxqqxgndP1yc/qHjnlYmll5EH2hBER0QR0i0BfRA4QKeLCN9Sx/MNHN/+SvZLIL3fI+WhOdeaNHzHDH9gbDOpeqPglJvzTa/dFgNVOPMfkyMbRaRzODQuESa1NXz8N/2O50psNdE3Xjk8BvBoGECmbsM=
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00511907736fdsm685142lfv.105.2024.02.13.05.38.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 05:38:25 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: qcom-qmp-usb: fix v3 offsets data
Date: Tue, 13 Feb 2024 15:38:24 +0200
Message-Id: <20240213133824.2218916-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_053827_886541_FFA4DD3B 
X-CRM114-Status: GOOD (  11.62  )
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

The MSM8996 platform has registers setup different to the rest of QMP v3
USB platforms. It has PCS region at 0x600 and no PCS_MISC region, while
other platforms have PCS region at 0x800 and PCS_MISC at 0x600.  This
results in the malfunctioning USB host on some of the platforms.  The
commit f74c35b630d4 ("phy: qcom-qmp-usb: fix register offsets for
ipq8074/ipq6018") fixed the issue for IPQ platforms, but missed the
SDM845 which has the same register layout.

To simplify future platform addition and to make the driver more future
proof, rename qmp_usb_offsets_v3 to qmp_usb_offsets_v3_msm8996 (to mark
its peculiarity), rename qmp_usb_offsets_ipq8074 to qmp_usb_offsets_v3
and use it for SDM845 platform.

Fixes: 2be22aae6b18 ("phy: qcom-qmp-usb: populate offsets configuration")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 6621246e4ddf..5c003988c35d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1556,7 +1556,7 @@ static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
 };
 
-static const struct qmp_usb_offsets qmp_usb_offsets_ipq8074 = {
+static const struct qmp_usb_offsets qmp_usb_offsets_v3 = {
 	.serdes		= 0,
 	.pcs		= 0x800,
 	.pcs_misc	= 0x600,
@@ -1572,7 +1572,7 @@ static const struct qmp_usb_offsets qmp_usb_offsets_ipq9574 = {
 	.rx		= 0x400,
 };
 
-static const struct qmp_usb_offsets qmp_usb_offsets_v3 = {
+static const struct qmp_usb_offsets qmp_usb_offsets_v3_msm8996 = {
 	.serdes		= 0,
 	.pcs		= 0x600,
 	.tx		= 0x200,
@@ -1624,7 +1624,7 @@ static const struct qmp_usb_offsets qmp_usb_offsets_v7 = {
 static const struct qmp_phy_cfg ipq6018_usb3phy_cfg = {
 	.lanes			= 1,
 
-	.offsets		= &qmp_usb_offsets_ipq8074,
+	.offsets		= &qmp_usb_offsets_v3,
 
 	.serdes_tbl		= ipq9574_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(ipq9574_usb3_serdes_tbl),
@@ -1642,7 +1642,7 @@ static const struct qmp_phy_cfg ipq6018_usb3phy_cfg = {
 static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
 	.lanes			= 1,
 
-	.offsets		= &qmp_usb_offsets_ipq8074,
+	.offsets		= &qmp_usb_offsets_v3,
 
 	.serdes_tbl		= ipq8074_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(ipq8074_usb3_serdes_tbl),
@@ -1678,7 +1678,7 @@ static const struct qmp_phy_cfg ipq9574_usb3phy_cfg = {
 static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
 	.lanes			= 1,
 
-	.offsets		= &qmp_usb_offsets_v3,
+	.offsets		= &qmp_usb_offsets_v3_msm8996,
 
 	.serdes_tbl		= msm8996_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(msm8996_usb3_serdes_tbl),
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
