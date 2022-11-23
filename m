Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11210C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 07:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8S88xcOHEbg6Sop2G28hUvx+v3V0XH4gKIgq0JpcYZk=; b=4M7Uqhe+QhMlHz
	GpLn6C/aUpq79FKKfqoI/Q1kD3z/AGYiasr9W3oYyUte+dxBqABz4cDMC3mdHJL5dN27gFITTtuPw
	eA6mIdGt9DnVee15lj6Jl0hlLWOwZFiVL99wxjadhLAEtLG9RPs+zMcp/dc6Tte3iBBcWZFwdETJC
	waa62VA6ZrgJu+kI1edp3dMqiABIxLaMmJesshq+Acw45WdWlsmOdsg8rm1+07lbVtgGn2IEfDcak
	MsVeaF4Shi7q+MTrbIxzygHW0yfWdj7SNiP8Ash7NWa4Ub2RwdaWbnlOuHdk3/yvWfEptyzTpOuDJ
	llXpuE68PYg5eK4fl5gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkWA-00FJqT-Go; Wed, 23 Nov 2022 07:50:02 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxkW7-00FJoL-If
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 07:50:00 +0000
Received: by mail-pg1-x535.google.com with SMTP id q71so16094298pgq.8
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 23:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dxBfeAGPJSh5Y/5FKQg+M0y4cyLZHfyLwZKtosIJVD4=;
        b=hvohjQO8JYIIopMXFu3hU+uN5hELxDhjhQ7dxyj3c+Q/LQ4Fb4Flb51c62NHkSRJNR
         FO6JfqvdsTm/Ayc9GUj0DD4tkpVcvaF7XH3MFy3Zl7uWWme3K2G7lAhwT/gFjWgejGgV
         R/DXDHDhUtzAnReZu8ggSAJzA7yDv0X8sSp8abzoUZAdtJli6tU5aYK/P5L9ZE3T3qw8
         LcDcjGEBu4HiVgt+A9RioAgoVRtUULYluxAZxExY8ChKkpS7CccBR7iePfNBjbw/QXpi
         HfBMHw5SPmv4Hw5i8Di256ieI2eTIxYr2QHYim+S5I1Fmx1kHqBKMv5o2AM9QfAsMeQQ
         eW9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dxBfeAGPJSh5Y/5FKQg+M0y4cyLZHfyLwZKtosIJVD4=;
        b=pemT0ecKxkIBfGag4B5NnLrQXSSqxIT5IJ4xcNi1LCqAS16qE9L1cvz4W4MFAzE88c
         AmXueecmcM9lxgfyn7C0cbDw0niEoy1UXPPsI3JI8fzZOe2aGJSJf8nOJIOlI9E0HsU8
         KjpVdYGldb3w7P/wFfPsfGNKFJCMPYAfiWtLhCvuuEIMk1pPAGseFxvwtl8ftXgFi11l
         Xy6zYtdf9zSrOq7Ac/azpZVIxPschY4mxOCGdBYo3lcz86Z9sV+bE4kDMIDwoRjS0EAT
         XEqELY1Y+C1UirhmV4e8q0FLyq8Zscp6UOdZ8WYT9YHxX1tHS8dZSItoEwwVUiuc96Rv
         K6fg==
X-Gm-Message-State: ANoB5pkjs9LB1z7h6jsCfMrDIfKjN64JMZrfTOE+JQ99UA4P9IQ8rXGf
	MwhV+48Wy0XYTQ6++qJQz1g+
X-Google-Smtp-Source: AA0mqf6cWZTcqMQ6iaMD6TbVO8Lgo74SN6zYkHGzRMd58POs8i2QkQeWC7UZd6p4A6tyAaWB6HRKvg==
X-Received: by 2002:a63:4c4d:0:b0:46f:8c3a:8b2b with SMTP id m13-20020a634c4d000000b0046f8c3a8b2bmr7051732pgl.477.1669189798376;
        Tue, 22 Nov 2022 23:49:58 -0800 (PST)
Received: from localhost.localdomain ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id s16-20020a170902a51000b001869f2120a5sm13334059plq.34.2022.11.22.23.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 23:49:57 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org
Cc: quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 14/20] scsi: ufs: ufs-qcom: Fix the Qcom register name for offset 0xD0
Date: Wed, 23 Nov 2022 13:18:20 +0530
Message-Id: <20221123074826.95369-15-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
References: <20221123074826.95369-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_234959_665691_2EFE4A5C 
X-CRM114-Status: GOOD (  11.31  )
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

On newer UFS revisions, the register at offset 0xD0 is called,
REG_UFS_PARAM0. Since the existing register, RETRY_TIMER_REG is not used
anywhere, it is safe to use the new name.

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/host/ufs-qcom.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
index 9d96ac71b27f..7fe928b82753 100644
--- a/drivers/ufs/host/ufs-qcom.h
+++ b/drivers/ufs/host/ufs-qcom.h
@@ -33,7 +33,8 @@ enum {
 	REG_UFS_TX_SYMBOL_CLK_NS_US         = 0xC4,
 	REG_UFS_LOCAL_PORT_ID_REG           = 0xC8,
 	REG_UFS_PA_ERR_CODE                 = 0xCC,
-	REG_UFS_RETRY_TIMER_REG             = 0xD0,
+	/* On older UFS revisions, this register is called "RETRY_TIMER_REG" */
+	REG_UFS_PARAM0                      = 0xD0,
 	REG_UFS_PA_LINK_STARTUP_TIMER       = 0xD8,
 	REG_UFS_CFG1                        = 0xDC,
 	REG_UFS_CFG2                        = 0xE0,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
