Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C277C43334
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 21:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbOSjFydmKXhxgwaBxjBO1A9LN13Lbh7ht0rwU1Jmk4=; b=ZnLGfKr7VhGLd6
	cUZRxbJe6cHSr1M6tkFltM53jeMcY4LWCfmnMtlckcoVUfVnEdhAk5rzzEWhDADkerN5XhxxUpaI3
	qxogTAefKYW7ZGXcI5R3ecXFZ3s3hwnmHhZ4VdFknIKzdYdKnjAzZogcos/M4cgafi2vG9G8mkrgX
	unEQhrxgXWyb79ybK480rOwLcua60sokbTnkulntLXVvm/h5UmNgZa3+Vq2gZSsslG6F/yML97O21
	Go4/kW+1F1ZqiFf1QUTsmkU0IyWdp7oUa28yIWovwD5qulcVWd2bPlT7wIYYLnpztFcO+iJ4OLT5W
	BVPvCLoMIrtic+jTn0YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygrf-009mPg-L4; Tue, 07 Jun 2022 21:35:51 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygrc-009mPC-RD
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 21:35:50 +0000
Received: by mail-lf1-x130.google.com with SMTP id u26so29560036lfd.8
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 14:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ggI96oh4nmAF7H/TKahQWu836yBK21tCOCTlg3vHU9s=;
        b=doRCuV5A0DI7BomjV0eVJ7z854H9CJSGK+oVS7Gb2uxhNdE3mf/sH2WURuCFXdizlA
         KA8aOi/S6SWKYeC6lOEsLTlJ2vL4B8eLJpeIkGlvCK8E381VCwQDsB+qN+eVpvTPTCSf
         rmGmPrDGWN3xE+njNDL/I4w1yIG44umNul1g7lxCaZFCOoUFfaXq+3DvHXKdXne1/K5A
         jr55sOGEbA9ar0Z3xJDctl+nxozg/iA7UxFcp40DUEjvzPW7p0q6sUPxfeSVnMTCIwD3
         gmpRU1jJOmKrnVc6YtWaQBIAun2Ntq7VQiTAtixX9P2xO39G1HgFmK9miVeYs7ozpoT6
         tB7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ggI96oh4nmAF7H/TKahQWu836yBK21tCOCTlg3vHU9s=;
        b=1QaAGGabaDJY6cKtD/3EqtApfa/5vk12hiTvqjr+ETR3Mn0Nd/+He2iintUKJces8p
         p0WJr/v1AKJkDaIn/feM3nHKvs98eq9KbL7vXHDqT7G30TS9loRtumxJgJoow2m7uwCz
         tOmuq++9pLPubdvTGlLlLkQD7a6p2IqUsIj8qu6I7N9UezQ5MmtQgT/h9enrTPDAWKHp
         GvU9Hx7T6TQtB8dAKky9Libq8KvVqXhsH58jeAq1ckrf4UF/AREjuBlLDi/VxXGV0+Wg
         jApjiOCxsdNrM+FP4xRLfp6d6gWBRoZSy2guU7xXn0qpSrSuXIwxp9j0bOLCC/9DCRMA
         eTJQ==
X-Gm-Message-State: AOAM530Wh+kcXL/G8LyG4n7OLRW2/yv8Nx63dJ8TockumoHzBSVTq91J
	UefjeA1Wp657tVJClFzWlgf1Cw==
X-Google-Smtp-Source: ABdhPJz1EszLbQUB9ohWH+LJawc4IJSKOyxgeyPazzlOBAh37VNSPWCi0pQAvLUG+1eIa+Dbj97ANw==
X-Received: by 2002:ac2:4c50:0:b0:479:4fac:dd8e with SMTP id o16-20020ac24c50000000b004794facdd8emr6556972lfk.678.1654637743812;
        Tue, 07 Jun 2022 14:35:43 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 4-20020a2e1644000000b0025552d57beasm2975060ljw.89.2022.06.07.14.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:35:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 01/30] phy: qcom-qmp: create copies of QMP PHY driver
Date: Wed,  8 Jun 2022 00:35:32 +0300
Message-Id: <20220607213203.2819885-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
References: 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_143548_924377_DA306804 
X-CRM114-Status: UNSURE (   7.06  )
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

In order to split and cleanup the single monstrous QMP PHY driver,
create blind copies of the current file. They will be used for:
- PCIe (and a separate msm8996 PCIe PHY driver)
- UFS
- USB
- Combo DP + USB

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org> # UFS, PCIe and USB on SC8180X
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/{phy-qcom-qmp.c => phy-qcom-qmp-combo.c}     | 0
 .../phy/qualcomm/{phy-qcom-qmp.c => phy-qcom-qmp-pcie-msm8996.c}  | 0
 drivers/phy/qualcomm/{phy-qcom-qmp.c => phy-qcom-qmp-pcie.c}      | 0
 drivers/phy/qualcomm/{phy-qcom-qmp.c => phy-qcom-qmp-ufs.c}       | 0
 drivers/phy/qualcomm/{phy-qcom-qmp.c => phy-qcom-qmp-usb.c}       | 0
 5 files changed, 0 insertions(+), 0 deletions(-)
 copy drivers/phy/qualcomm/{phy-qcom-qmp.c => phy-qcom-qmp-combo.c} (100%)
 copy drivers/phy/qualcomm/{phy-qcom-qmp.c => phy-qcom-qmp-pcie-msm8996.c} (100%)
 copy drivers/phy/qualcomm/{phy-qcom-qmp.c => phy-qcom-qmp-pcie.c} (100%)
 copy drivers/phy/qualcomm/{phy-qcom-qmp.c => phy-qcom-qmp-ufs.c} (100%)
 copy drivers/phy/qualcomm/{phy-qcom-qmp.c => phy-qcom-qmp-usb.c} (100%)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
similarity index 100%
copy from drivers/phy/qualcomm/phy-qcom-qmp.c
copy to drivers/phy/qualcomm/phy-qcom-qmp-combo.c
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
similarity index 100%
copy from drivers/phy/qualcomm/phy-qcom-qmp.c
copy to drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
similarity index 100%
copy from drivers/phy/qualcomm/phy-qcom-qmp.c
copy to drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
similarity index 100%
copy from drivers/phy/qualcomm/phy-qcom-qmp.c
copy to drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
similarity index 100%
copy from drivers/phy/qualcomm/phy-qcom-qmp.c
copy to drivers/phy/qualcomm/phy-qcom-qmp-usb.c
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
