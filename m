Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2231CC54ED0
	for <linux-phy@archiver.kernel.org>; Fri, 23 May 2025 16:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w/H/8aSTFH/ooJnL+q79A71m71tCJ1KZFx+6VEerAWw=; b=j0egm/ZaXsBVKt
	gYSWN0/M0hbpaojVmZCVIomw5xM/Qg+0ztMy8gwvMsEwmM13YBPsBx1wsryHZOtYabtve36yOmxW3
	N2Fg3eIssgR5k/bPQHqr2zWN3x4KUaSjSIxonQw1M2Dzy5QYl+5/dUMQaQVEf3ZI0yMPpzJyXqQTR
	E9Etudr/N947V9qbm72SyNTlrkroiv3tKpKEhdZ+VSmNi81t8bK/vp8tlQ1wgr2JBKdoVcTo0TZFE
	We7v+yHAOGFg0VFhMsazPp1UT1xEK4b1t2jYWx/8JCy1kZ1hKAHtMDfjSzZ82ccwvAIlYiipJJnhY
	akqTxYBaktM+Ry2rpUCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIVCx-00000004OOS-3NLO;
	Fri, 23 May 2025 16:25:19 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIUoR-00000004KTU-2Kgg
	for linux-phy@lists.infradead.org;
	Fri, 23 May 2025 16:00:00 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3a366843fa6so52673f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 23 May 2025 08:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748015998; x=1748620798; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oDtdOwJr/pos4/TT2BthcrlY4jp8bkKGEcPg+ZcIJH4=;
        b=FsxmgV4vAv/PETwMkwQbwrhBi6ua2AJAuHsRt9dlJsm61824IOo0s2xgFWuc/Db/FV
         tk5Y5RF2vHWw6TtOHUVU/bPZdbfXL1aJjzZJYuvsqXuifWKpNNs1/Sw72L7SLOwHTlXt
         A7AdLlo/zTfybVQfLrVqR0bTjEAmCwhmYH4LfYzPTJmJBmF2H+nr6gkXS80sRRs6sYzB
         UAJYDxV7LVYTrRM0tmlMQ2INY+2z9+JIhjXj9JJnMbXFz3s+hr/KaubelgKBQAslyGRj
         ucoIEiZqd43PTgPq7DiEgjHKDaNwU/YK5JF8o4CNEsIHWKxBUHMEtqd0SA2hqECCq/1M
         CnPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748015998; x=1748620798;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oDtdOwJr/pos4/TT2BthcrlY4jp8bkKGEcPg+ZcIJH4=;
        b=fybyNr7vklvz5ePSaKVy23RAowQ9Dxkb7TLA2AKfWqpIcSjXPS07AlcjLdJdKbzT92
         PlH/cY5X2de9wIPGGuoKJ4tfrL/MUTsGYdoAjMgFLwE9CU2jd2/jwsJy1OWdS8msw7+r
         /jDCreDf1B0G4HwMsj8kquE5T3SdSQue17eU/sfyaSABhsKYjIm0tYyxyks9JFWc6A36
         +2z31WUjY6qrpI82sfQ+fcZn23Llg0YUTdsZl39U6fZOWH+8RIL8mgawdrXJi3Kujmmp
         W/CT7+OGKDsaixJWz0Ny9Pjz1Bcr8yvz+fj9FwEtTR/pndlPNvNUV6tA8VumL0hwIuKh
         Lz+A==
X-Gm-Message-State: AOJu0Yw0QzP1qRYB9SY0qO/06RC/7nPRZkxz0N587ft69mxIrmt8kfFl
	76GZHciqNpNBnN80XMMbDWmTrdwDR7QGSQ9rR8QLCvPcWBoFAw4NV8OX1uGmPfmHCWclK3RPm7/
	8Baf5
X-Gm-Gg: ASbGnctLLoQgg0/UfOfX/ZEust/gx5hOQdDs5C4gf21My3jacefr84DPnt+uXuv82Ga
	oDLDv3+dwCQxKG87588ba6UR/9bBUVj94soquNswr7DOLiR0pEQPHNWpZIEj5ojyHLet80yyUZi
	tGTHTaC/Ej9RKqCHh3h/xNwXLHmgfSI72yk/glZHRqtp0JnymAjzvlGqomASaE6EQfJdSrn4y1B
	ezhN5cQIZnLAUvwtgMgfTrHhvr64a8yibDZXifmW7Mtof2L7RV7JOjHPaC1Ic7EtavTjGmADwto
	7uD6RgKVEu9qkWc1kQ5wM7k/Ctt352+3sCrXt08TAojMQEbF7+bMeLiG
X-Google-Smtp-Source: AGHT+IFDnnRJz6wpbMfq8/DBs5T5u+98iUqGT8Bq96z5Hns1oQgHf9zwn8J+keD3x5nnPEh4cDaB1g==
X-Received: by 2002:a05:6000:1ac5:b0:3a3:7bed:8020 with SMTP id ffacd0b85a97d-3a37bedc732mr15381428f8f.5.1748015998061;
        Fri, 23 May 2025 08:59:58 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-447f182538fsm151923685e9.7.2025.05.23.08.59.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 08:59:57 -0700 (PDT)
Date: Fri, 23 May 2025 18:59:54 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: linux-phy@lists.infradead.org
Subject: [bug report] phy: qcom: Add QCOM SNPS eUSB2 driver
Message-ID: <aDCbeuCTy9zyWJAM@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_085959_595577_96E1ABC3 
X-CRM114-Status: UNSURE (   4.68  )
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

Hello Abel Vesa,

Commit 80090810f5d3 ("phy: qcom: Add QCOM SNPS eUSB2 driver") from
Feb 8, 2023 (linux-next), leads to the following Smatch static
checker warning:

	drivers/phy/phy-snps-eusb2.c:571 snps_eusb2_hsphy_probe()
	warn: passing zero to 'PTR_ERR'

drivers/phy/phy-snps-eusb2.c
    557         ret = devm_clk_bulk_get(dev, phy->data->num_clks, phy->clks);
    558         if (ret)
    559                 return dev_err_probe(dev, ret,
    560                                      "failed to get phy clock(s)\n");
    561 
    562         phy->ref_clk = NULL;
                ^^^^^^^^^^^^^^^^^^^^

    563         for (int i = 0; i < phy->data->num_clks; ++i) {
    564                 if (!strcmp(phy->clks[i].id, "ref")) {
    565                         phy->ref_clk = phy->clks[i].clk;
    566                         break;
    567                 }
    568         }
    569 
    570         if (IS_ERR_OR_NULL(phy->ref_clk))
--> 571                 return dev_err_probe(dev, PTR_ERR(phy->ref_clk),
                                                  ^^^^^^^^^^^^^^^^^^^^^
PTR_ERR(NULL) is success.

    572                                      "failed to get ref clk\n");
    573 
    574         num = ARRAY_SIZE(phy->vregs);
    575         for (i = 0; i < num; i++)

regards,
dan carpenter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
