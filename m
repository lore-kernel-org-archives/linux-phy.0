Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1A13C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClKoFaDf7Nmb3VL1zsfwK4UyBJreZ0rLttZiqNB+zRQ=; b=4S68bu87KyFLGN
	bN7sI9xnGORnJEuZA9xMAYcj3ywU1al31jhcdpSPZJWSB7EYMGnI0oa4Ly8QNysfKzDQTTX72jxjO
	/kcljzeYRDdMnMKAbKTXBLAH/EVB2MlHeQttl2aM6YiK7gg4v0Wpq/ai7GeYU/5LaHqh87Ealeg8A
	bV76EDFArE5tiCWvKlbliZ2YQAxwG54pm85izhmWFSzI2VssTFPt9YqzE6QmvtPRzFVH1dXI+N24D
	j0bl/Gz+qGZrdyVBrqMNoL2w65zhKkH7DAuUu7iIc9FsYb5Jzt+MI5H69+Acjge4FUOs7Pm2gaI+d
	TiTPce0gGscq8knTeDaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0k-009Uli-Vg; Fri, 10 Jun 2022 19:09:34 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0i-009Ujl-Co
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:09:33 +0000
Received: by mail-lj1-x22c.google.com with SMTP id c30so115344ljr.9
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aJkt2UvzC/fuSbaAFzAgmcuGnHsumZ1LtWfxE2c+EXo=;
        b=IqVo/yDeLrrY6oVxiUm6d7ssqUGieE86BefvLu0kajhUEPSV5bGzJFyZ2jgJyQF0X6
         NE/WH/n6OiTaIKbHbNhYOqAPlkzENyzhKLi3lmSGcEqLdZgGjwK5PFHg3/oHnbrIcyP7
         l+dnSAC11IPBinbsqT1PqgE7bntf0gp9h3VwdnvAPusMqBEjaA/+AJrxhv7sPO++2ESv
         fXeelBj7fJkCgK1qMVddo38utMbKOYEfehbXJgABa8f2KsNpa05Tfco9v4w3JfdptobO
         CaXR+lxMPNpc60BygT4qZzcxjmTjgEyMQJ2U2dd7rjs2angfzCnTOnXct387m6Hd763F
         ONcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aJkt2UvzC/fuSbaAFzAgmcuGnHsumZ1LtWfxE2c+EXo=;
        b=apm4GoH9r1+NBai+a9JGeskEZ1UtVo++rqFEq5pIAdcUa3OWZk6b/RyrqR5s/PowEz
         8fK1vjf7BZF3SD6FrsI/9iozavzRKwM0D6S97e7iZCuvohm+nOJ8joqDRID7iYOM2UdY
         WGgogZsdM+HR81b9akb+aCvtwFvA+1k/SYmcYpsLyPBmDVRFfQ0kiANA3kpDRf1/iBBU
         +rge6Ncoke/3RkDIuGRt84VkJ4DNIWumou0DMLhX5NKSys0M+JnFwdM45AkW/i6flruZ
         PTaG6ntwIThxNFEuX5D6V7g2d0+k3MRKjdvEJE9REaRE0JiuDrzPQlwn9YHMdQFMbzrc
         7QRw==
X-Gm-Message-State: AOAM531aDSWhWdY9H5Z8zRnQ5dopAc1SuLTH88RE3uKbd5JcjOmMFLei
	LGiab/5cSidFSIDTuRWGZ7xv0A==
X-Google-Smtp-Source: ABdhPJwZXCgHdoBZUEhhs9rJ9ZeOcJ7aq1u8FFnVcVxdDXoVFkmJBktg11yAVRSz5hDopgj+y9Zv/g==
X-Received: by 2002:a2e:9283:0:b0:253:e175:dd84 with SMTP id d3-20020a2e9283000000b00253e175dd84mr56469384ljh.221.1654888171024;
        Fri, 10 Jun 2022 12:09:31 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:09:30 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 02/28] phy: qcom-qmp-ufs: remove spurious register write in the msm8996 table
Date: Fri, 10 Jun 2022 22:08:59 +0300
Message-Id: <20220610190925.3670081-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_120932_468859_334184F4 
X-CRM114-Status: UNSURE (   9.14  )
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

The msm8996_ufs_serdes_tbl table contains write to
QPHY_POWER_DOWN_CONTROL, however this register doesn't belong to the
QSERDES register space. Also the PHY power down is already handled in
the qcom_qmp_phy_ufs_com_init(). Drop this entry completely.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index a2526068232b..83330f7ec64c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -163,7 +163,6 @@ static const unsigned int sm8150_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 };
 
 static const struct qmp_phy_init_tbl msm8996_ufs_serdes_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_POWER_DOWN_CONTROL, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
 	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
