Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78A96CE7B1A
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 10:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sdMSRz9SRdnXaWVLiszHQPXZYdV4S836kw7qp//VTFY=; b=npl0FNxjKKT5EG
	lwNEaPFd6qFKuKl8+OlA3JTE6bZUDPD6T8VS10QlkUZ5pISYSzo9mec3CXzbJo8rCSm2cdmzmeygT
	R7qJ8nV5X2+6wPhCyRYrEhI3HlpeUPwUoCcLqdZgSnUb8u2TYue5M+/I8ZjNtVYx+gRIn6MJh6KGB
	PgM7F9T1uLH3rIwAvYBh7fW2MPyavHTwk72QwRkH0mxS66UobeQbiiI/7W4iqtNvqtFcJaRQ7o5hw
	6sFvbqL36HMXKxfS0cDmsiQL4b3+yugF0Fb9vlGwL/uCH4/GzfZdZho/PmICdep8EC+86akSl1XEV
	eHiSYZkzCODANK24+ong==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlofW-002yji-09;
	Thu, 28 Sep 2023 10:54:54 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlofS-002yg6-1t
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 10:54:52 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c15463ddd4so148421071fa.3
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 03:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695898486; x=1696503286; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8eTmhhfj3uISmMmZz0RzGov1pSw9iByYowc/Vyf2gMM=;
        b=RVgJlNAoiOZNCXBxVFq9pmSiUAMCYN/QHq3XNBQoo8r3CQE6bkU1XfHGeDERqtq+3D
         38CwqflPAg10Y9bivD729T86cZ9S0J3h0fNOCWzbCoHq8T2CGks+yisnLKMXyTZjX74w
         Mf1z1Sl/VZgWaRKgntpLd+51xOCIX/MtcYWsSonHeClPPnL4acS0KL9qA1WA0jUin8g1
         s+qnTlPo/06jjAW6/sj4N9GLvoPlOL+rhibikipDareM3t9l6PkE+GVAp5RL8CEJOlgg
         XJpn2QChVDnJKXFTNMK+3kJKiJ0S+VekSerUWJ84roAtGSLkOJi7Am0xeApin/Yk70Kq
         Xwpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695898486; x=1696503286;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8eTmhhfj3uISmMmZz0RzGov1pSw9iByYowc/Vyf2gMM=;
        b=czlU+O/jaVYbetglJMfzUScP5ZaRimLGiBXRbaS31A1tRWAH+YUdyLcKPObKWGy5Qj
         sotYApMQpsrBI55ff0LIy4DxhHZlfwMR+tPr1QmD+GArqqR04RBibvozTNAh8fnvCuRj
         kHAtK0AfLgdgTSMImB2CoAJjeGOXzWxP9wQ1xBqLR9dBis/rjRWOp9NRaJ6lS4C+z2wW
         kcWNcecdxZskPO6MSYUllUJ9PJcbMIqUoYt6O+2EQO1Z8wcwUwYawTBSTBW/gUcS97p2
         NaZvZtpFHXei8cTEEfUMilT32WoXmXzwBeJ+uVrUBeMoIZXCZU2XJVHVS2J0EaP0rq/a
         ikFQ==
X-Gm-Message-State: AOJu0Yyf37P0QlkafaIoAmrWTMcxn8lfnX//OIUM/t2y80/aTFuVxmPU
	XzY0jHMl60rul356ZtKLHIXtnA==
X-Google-Smtp-Source: AGHT+IFmpVOfkCCfaDVRa1U+RJW+yTyWfNHiVhhxTRGpA42Wsu+Lgk/Uep/PK1IeYLotcgCvgqyvRg==
X-Received: by 2002:a2e:9983:0:b0:2bc:d889:2d89 with SMTP id w3-20020a2e9983000000b002bcd8892d89mr966158lji.44.1695898486491;
        Thu, 28 Sep 2023 03:54:46 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y24-20020a2e9d58000000b002b47a15a2eesm3551455ljj.45.2023.09.28.03.54.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 03:54:45 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 0/3] phy: qcom-qmp-combo: correct USB v6 registers
Date: Thu, 28 Sep 2023 13:54:42 +0300
Message-Id: <20230928105445.1210861-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_035450_715648_18655166 
X-CRM114-Status: UNSURE (   6.87  )
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

Move and rework USB QMP PHY v6 register names to follow the usual practice.

Changes since v2:
- Renamed the series from 'phy: qcom-qmp-combo: correct sm8550 PHY
  programming', since the fix for sm8550 was landed separately (via [1])
- Removed the comment regarding v5-v6 difference, which looks invalid
  now (Konrad)

Changes since v1:
- Rebased on top of Konrad's patchet ([1])

[1] https://lore.kernel.org/all/20230829-topic-8550_usbphy-v3-0-34ec434194c5@linaro.org/

Dmitry Baryshkov (3):
  phy: qcom-qmp-combo: fix the prefix for the PCS_USB v6 registers
  phy: qcom-qmp-usb: move PCS v6 register to the proper header
  phy: qcom-qmp-combo: use v6 registers in v6 regs layout

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 50 +++++++++----------
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    | 29 +++--------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    | 20 +++++++-
 3 files changed, 50 insertions(+), 49 deletions(-)

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
