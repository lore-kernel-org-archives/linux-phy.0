Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41462EE14D0
	for <linux-phy@archiver.kernel.org>; Thu,  7 Sep 2023 09:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OyQesJk0i7MQjYvdB2ngoyfxvRHjPweSPRS0/w+AFMI=; b=SmzU1LpKrgOsg9
	ND4aaq2xIf3EQpWW3aqhrL+cGjQ9DQwdjQHpLfHq8UgBYvxdtLy6imy81A5ynm+MchKwmbV5eSQuz
	m24+PT988bnc6q+f8xmXyY9FMUtUDT3baZX696M9ZZ5dXnQVf59aOtO2bPHGyCVgUu4Kqnq3vQ1l9
	2H3FP34v5eqotppkyfup/9ycWsT81Sc2Qp7y3WMrYhQRsB1C+3a5lDKvENFFmSyRa38DayrZ1T7li
	kYaqr3LP4SbBYxxabqhg8zdYuKYEiiqOQlHM1PgAFeQiHBU/iLt3JDQSoRu03L8Npx8F3ED0MQCWI
	88lz2+D4ajXlOWHPLfOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeBiq-00Bj2V-35;
	Thu, 07 Sep 2023 09:54:48 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeBio-00Bj20-1G
	for linux-phy@lists.infradead.org;
	Thu, 07 Sep 2023 09:54:47 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-31aeedbb264so874369f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Sep 2023 02:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694080483; x=1694685283; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ro+pKVjgj+qjW5pgqGuvDVB8LEkYu3AYgnnmwQIWsbs=;
        b=S2UXsLsHf4eRb2rfjmftPyF6CBODzG+MP9mF047vjJkzENItrIttjtq6cEb17iA4YH
         CrLTvYeREi8WW6LL4ZhjBMHR7Nm0FgrKeqUtB4HydQw20uRCa9rq1fYKhVGEue69rSv3
         nskc0Aw2oQN3H52cHARUaPwzwJbKJnvbfDR+ZU4LqC1FYki23980VEY88fQE5pYxspx+
         GBLSt7V3yKiY9rAK8F8c372AIP6DBrbokNPLH9clMILOGUSIU2En9DPSzYxJGoy5b5K6
         +4qu63f18HY6F3EkKYj8A8hyngScttxzQBdJm3lL1XNcx4jh6jMX3KfWm5fV0HAGeHgA
         mjsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694080483; x=1694685283;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ro+pKVjgj+qjW5pgqGuvDVB8LEkYu3AYgnnmwQIWsbs=;
        b=Vt0kiQ0JS6gHY69atKYgZ9Mqb2Qy07LYPO5qAsll8nQUVc1VbGsBnLwSFslo4Ni40g
         TlnOW2stcLccsxKx/SLsJGIHjZ/HIx6XI26onaeWFNvvp7wd3eisSGvqEK9QCY53NEvT
         wMw4umuCjH5ljyXLyOqGEc5BkNQjEG3VORDx59rQXB5uSWwVMfTvHpCs2H/rtlvvEgkA
         dZX/Fud8NGfq4iqoVugGdEsl/NoW2WemAxepVUlBumKL/ofm7eOw3eGBYf8oLDWLstCr
         7jtM0QF7dRG0UkzXoyjDuiEz5qycJWy2PYm46oIqhCqkadbkgwwsXeVD4lecR8nZk35j
         zK9A==
X-Gm-Message-State: AOJu0YzF9jJXLlgOutVniB9C1yAyNavZwSbTnMXvhxRYfTzbT1Xg/uTb
	OJdTu0AEnq1kKrAam+ctrgU/QA==
X-Google-Smtp-Source: AGHT+IFg0bFSC0lzaqVqa/PY0sh6IBWdUUoK9G2NFmiJdxUui9GFWOqDAfoxG2ThzfavR6oiUtxwag==
X-Received: by 2002:adf:e508:0:b0:317:6e08:ed35 with SMTP id j8-20020adfe508000000b003176e08ed35mr4543247wrm.1.1694080483294;
        Thu, 07 Sep 2023 02:54:43 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id f7-20020a7bcd07000000b00401c595fcc7sm2026280wmj.11.2023.09.07.02.54.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 02:54:43 -0700 (PDT)
Date: Thu, 7 Sep 2023 12:54:39 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	kernel-janitors@vger.kernel.org
Subject: [PATCH] phy: qcom-m31: Fix error code in probe()
Message-ID: <7926c8e6-630e-4d7a-b0b2-d29b3c8b2c09@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_025446_430492_D42C0C0E 
X-CRM114-Status: GOOD (  12.68  )
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

This accidentally returns the wrong variable.  It should be "qphy->vreg"
instead of "qphy->phy".

Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
When we're adding new drivers then we should use the new driver
prefix instead of the subsystem prefix.  For example:

 Bad: [PATCH] phy: qcom: Introduce M31 USB PHY driver
Good: [PATCH] phy: qcom-m31: Introduce M31 USB PHY driver

That way it's obvious to the first person who sends a bugfix
what the driver prefix is.

 drivers/phy/qualcomm/phy-qcom-m31.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
index ed08072ca032..99d570f4142a 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31.c
@@ -256,7 +256,7 @@ static int m31usb_phy_probe(struct platform_device *pdev)
 
 	qphy->vreg = devm_regulator_get(dev, "vdda-phy");
 	if (IS_ERR(qphy->vreg))
-		return dev_err_probe(dev, PTR_ERR(qphy->phy),
+		return dev_err_probe(dev, PTR_ERR(qphy->vreg),
 						"failed to get vreg\n");
 
 	phy_set_drvdata(qphy->phy, qphy);
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
