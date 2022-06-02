Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24B80C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 07:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBtS7VYw5VdVFR4U5bW6cVFRd5wU1a0YkdlkoSUsJ30=; b=Pu+OU8/HX3fnyJ
	pciGwTg1w5l8KvP1jW75XhVWJEnaWKIgucxzHdhcx5K2DLkSmPIPf6a1Co7WEHqN1Ig5vNIHyWQwR
	V71/ByTvn17anOAHRg2d76YwRVEPdaGuAhHnrru99673XSo47XWTHHjQ2UjAZnUu0QQXVu4G6/0gs
	q5e4btdaAstHZ/Lptk6CdUbd2JGUjsEkdXnYzCAQkolKr6zYFpgqtbngGAUVruQbjWHHMM9Z0OS1X
	bkWQCa6/jv9FGFSCYBImKMLpTcfAIdIpDakcGcK1G9HccL6Nj7Ep7l4YWZxJxAVjVRX7KHUtlgLzn
	2Mim9N/K+i1exC+XNa8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwexK-001xSQ-Fx; Thu, 02 Jun 2022 07:09:18 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwexG-001xPU-5M
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 07:09:15 +0000
Received: by mail-lf1-x130.google.com with SMTP id i10so6456737lfj.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 00:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9SLSVyqi9/N5tDHEFCAI/rQ8c3OlxrZIw2O4q0HsEYg=;
        b=igS2/dWwDjQNnxiYHR5FCVlJnwhmO1JecPJ++SMNAhRyMJH2StVDrDXL6hIuvadFXT
         bZkvqhQ71X3iGbLsey9DbVLbM1hE9GXnFizg8sxsNa+Z7ivgTnD8BkUjWxXXhbOnBIAQ
         52wZsgCa5UE+AZ4EQznBYseVqYYadtHPoj9xcpmQPCAWKeP5Wbrz65C/0U98pV5P8sb8
         oAIp+Z3gU5QfW6mPwv3LL8KnASitmAA7jzoACoInOPUTnHwcu/iabdx9ilJKHURZxHEM
         2DuHoRXrtYpGLJTVb4pGXs0Xr8GiYTw0LxSFCqjkWSDPX7tVvECFapjSy2Qq++B8QDr2
         Rbkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9SLSVyqi9/N5tDHEFCAI/rQ8c3OlxrZIw2O4q0HsEYg=;
        b=7rAx7XGHUP5GncCYwklM8k7kNvqTMoqaGL6EzewtBftjqXhKSVhPfQEd1dHYWSB03Q
         oZj7//w51hkuEapLLSlNBoANw1P5knlkZo5YU+AGFV8MmWnkT0U/Z1i86Ee72WrzVod/
         YgqBVGiOfH7DOtAMBKRRivjDXVsvQflGq6JFwfWiOU5UBv8Vwo3mcEbrI+kRA+s65gON
         vIRBqhxkUUU4sbQ4gLB4l93zP66PxhtGygXJuDImU/MxjXPXSgyxbrB1Si9eA1NTNAc8
         /LIGE5uXiayeYv1jXBI21HDSerwFIHhSz3JQIqJK766mzQGxf67wNeNzTTvM89IqxE0S
         lTpQ==
X-Gm-Message-State: AOAM533hFuohb10W5i30PneL7FoXbBB9mq5oBOCSZNkTvlQ1WjYxWjbn
	mkNasQu6NB7uAFjVLMvPyOn5hQ==
X-Google-Smtp-Source: ABdhPJzRBurnVHOrVfZKx1AtRu0sqJ8cmMbZlZNnaqOR9ZAroNoyZhICQN8g/3IaFsWiio2AY0gOmg==
X-Received: by 2002:a05:6512:3b8a:b0:479:9ce:fe8e with SMTP id g10-20020a0565123b8a00b0047909cefe8emr3141895lfv.475.1654153751750;
        Thu, 02 Jun 2022 00:09:11 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d25-20020a056512369900b0047255d21114sm870218lfs.67.2022.06.02.00.09.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 00:09:11 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v3 01/30] phy: qcom-qmp: create copies of QMP PHY driver
Date: Thu,  2 Jun 2022 10:08:40 +0300
Message-Id: <20220602070909.1666068-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
References: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_000914_240914_A30CE603 
X-CRM114-Status: UNSURE (   6.92  )
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
