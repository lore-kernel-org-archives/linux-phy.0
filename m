Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70441EB64DC
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qij8hdB1yeZHWhEOzH8kuyGznaJdHPengyeOnDGiT0=; b=eSvUxBSb0RSQNk
	+gBv6oalbuqpj+zk6QMGLRGftrNy2PyQbq1ObsT+ttfrB53GeYNv+nJX6VGqTYFcT2cluQ4gmwQSL
	nswmIXLTrdoIaGlHPPf6mze/KGGP/+2bgSw7oA6uGB4sSn+8B+G3lHU2NIWRn8V+byYhtCW4OPCPj
	Q5lCD+8wIJOjlzF/Vlp2K8hMYJtaf6btatHUOiPSlRjrqBGHxpRNjvUQET2uOIXf9mYAVgcI8crZU
	qUdLWYg5uyzghkCbXO8rgnNw+xhT6mLCmzipElup+bPB5yBZSrQjRDm2nZgxT+yqyOKbjG0tS40M2
	WXGXWu2uA4q1DivE1J5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsF-00Ep4e-0C;
	Thu, 15 Jun 2023 12:14:47 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9ls7-00EoxM-2h
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:14:42 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-30fc42fcbc7so3557913f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831278; x=1689423278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OjSnZtkEy2IHx9Z27pUOaut+Sqq7rTJg4leWlg3+sMA=;
        b=S3YuiYt1Tfk1dMOaH73iWIfI+zw24VugLD4OFmltkoaIXxDVTBcvacK+BkGHrwwN6Z
         2JMuXzxGkeeUEoPJPvhP70KHvqVEqbzdzllismuE9aPXdAi+uNMU6zgfWH0QO2jEBh3M
         RMrkkrENIQC2TmFX6lzDLWiEF8bBfBq4Vr9EmnicHbRBMTA9o/Z3c8KFge9yqtuOqDiQ
         2MEv9U1UPJjtW9Up6YxgNPaDMRvzdwyTmhc2FthAUIazjeo9kO3e9vlAkRvpYdHv2w6C
         64TCDxbbHVcmQoWAaMnM5riagf25/qYKMqPXI9Oq0yCczWQfGQ5ABk47bK3S2oppIbbm
         rrRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831278; x=1689423278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OjSnZtkEy2IHx9Z27pUOaut+Sqq7rTJg4leWlg3+sMA=;
        b=V8GuCAa6vMtoHNY2MbFHEO+0wMSbURewdRVFOFR0KRLhzt3GtYG/Jvx00S/jbwDV0p
         TM/1Tjn9wLkip4gTGCDnf3Xv14Ao3FbDo+faDobrCyZYOdFO0UZi4oLD+ZqLwW2DTMm+
         QGuy5F8ztCWIMoia2R4Fb2RzQyjsvRQR0a9obSbLON02Tt+W19Py4l+1mKhTlc9wxkzY
         u7Bn0y3cakpXk9XYsRVPGOA/aETNUkiuo+8P2IfGsCNwPyWuYzaPvzZ4IiiKjTDJrnkQ
         F+tFx+TWlq9POnFmY6UPrb71XwP7MdcaUtPqr7ujr3egi9MADV9f8S/mYBICWtD9Z26v
         oapQ==
X-Gm-Message-State: AC+VfDz3iG1oC1Vvv9CPEHUYdJe1QaWQpFV4UNNBq4kdydBdfI7TxLx6
	r0c2KGCGtAIakkuzG/xgOoF8vA==
X-Google-Smtp-Source: ACHHUZ64Ssgd1dkMFf7XZYJAcYYDG+P3e8rnIbYJ4voDDjcbv3TWkFYEyv+berE0V8xHHIdSkZYuAw==
X-Received: by 2002:adf:e60b:0:b0:30f:c805:5f07 with SMTP id p11-20020adfe60b000000b0030fc8055f07mr6772956wrm.17.1686831278035;
        Thu, 15 Jun 2023 05:14:38 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:37 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 04/23] arm64: defconfig: enable the SerDes PHY for Qualcomm DWMAC
Date: Thu, 15 Jun 2023 14:14:00 +0200
Message-Id: <20230615121419.175862-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051439_915089_517AC770 
X-CRM114-Status: UNSURE (   8.52  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Enable the SGMII/SerDes PHY driver. This module is required to enable
ethernet on sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8d850be05835..f62c96fd4335 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1367,6 +1367,7 @@ CONFIG_PHY_QCOM_USB_HS=m
 CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
 CONFIG_PHY_QCOM_USB_HS_28NM=m
 CONFIG_PHY_QCOM_USB_SS=m
+CONFIG_PHY_QCOM_SGMII_ETH=m
 CONFIG_PHY_R8A779F0_ETHERNET_SERDES=y
 CONFIG_PHY_RCAR_GEN3_PCIE=y
 CONFIG_PHY_RCAR_GEN3_USB2=y
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
