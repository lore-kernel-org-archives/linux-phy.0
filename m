Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C105EB8FB6
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 07:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/RXEefL//Kb8BL1r+vxCNNXuwigKZ5BMG8WG/PzkH8o=; b=eFkw9RKf55SMcV
	sVkAh9a11T/2IWE+B8todHxG4DrVp456Ac59hiqhm4NuNOHXHJjS0SD0fR01jTuMoSKl2eg3AftQb
	ZhzDWSthf7chxV9tmGMDXPxhpiewg3793ipmcWG9wI3/k3DOjCwIU4bXoKbpk2mpMs7hHje5EsMgH
	qSODSPzcCbkLQafVleq4uHkTMWJoi5W13Gp2F30uSP9hi7FqS1nJzo8jXfi0xd6YzOzGSkBkN0+ay
	cm2gPXWDTAZQ4WTC499/BGPIKWoczJkhVcT7H/lX8/HILPHzb0Z2/MpJ2uGpoqc/CWLFp3OaE9MpV
	ByfcP/A2LYaLdJtX1iMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnQn-007bTQ-2K;
	Wed, 06 Sep 2023 07:58:33 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnQl-007bQM-1G
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 07:58:32 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2bccda76fb1so55293911fa.2
        for <linux-phy@lists.infradead.org>; Wed, 06 Sep 2023 00:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693987105; x=1694591905; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tesgV8kU3XCb/lf2mTrQCPfFGTkmUChK0pxAnvjxU9A=;
        b=SPg172Pe2e1BPXCKS90hfBrI/mI+wnasDgtaTkRL1RapVxsJXNAJcHUZwPSjjQq4gW
         eZQBQeJyJxsh2BMDUPv0xvwm0HvOKtQPamyKFxnfOrYtvbH7ZXr4ZFodcZvlb2Ryj8fO
         dVpsvXv/Vk/D9vN/rJui2vnRPQev0K63bOgOrkeP15HIQKRwgdIkOdeTymN90vN+PLqS
         XHQ0GT17AMyQcIgyAbLNSKYzqV6lLxPWfXYtYJu9LXbTJOez1dNOy1BtuVsXzqttHYH7
         9aghicknb0Z1XIepLrbu9Wi43FXY9rK8hUljdpXZoPKlhff0aGRNAroIj6pQnz+d7OQe
         nKyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693987105; x=1694591905;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tesgV8kU3XCb/lf2mTrQCPfFGTkmUChK0pxAnvjxU9A=;
        b=CTFf1Py600ghJlXDI8diiRWZMtfIsh8zxkRzc1WlzE9Ru/qzZdW9pl12usennAIFQ0
         q+tFzaGZItIE2Jmu7jTpxm8i5RInZERjLAij4eCeVmJRxA988OBigV+lOyBtVZ5TdQdt
         /Ry5fiSVgjXrzw63BxU3G2W6bHryykhFMlw2MUKL9oNDR/7jrdhxMpzJa9vgGf4XHEMv
         qXfvc7Gun1MDk+vJpPxc815Itetd9QscJ5HX/Suv2JonvBdq/CS/wnV4asiRN87tgYc8
         i0gP0ApryFEIt+lGuvk3cZhxh4F6O9cKCQwq32gdpUXhCvBIAlEKjB2u6P3qNukN0Vex
         7q/w==
X-Gm-Message-State: AOJu0YxgycxS0u6qyTx0mM+fLoRp7JJqDPSZZ9bod3ehiI0hVZ9OX4zX
	CpCFLMvNpC6WO0PhFdsRrdKRqw==
X-Google-Smtp-Source: AGHT+IE442k7t62AHxgn5SFP7J4LowMuFNL9bZ6tjhpFmANANokVBj4RiC2pzPcxwTLuHHU/X/8WlA==
X-Received: by 2002:a2e:910d:0:b0:2bc:b0c3:9e8d with SMTP id m13-20020a2e910d000000b002bcb0c39e8dmr1597383ljg.41.1693987104805;
        Wed, 06 Sep 2023 00:58:24 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z10-20020a2e7e0a000000b002b9ec22d9fasm3268324ljc.29.2023.09.06.00.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Sep 2023 00:58:24 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/4] phy: qcom-qmp-combo: correct sm8550 PHY programming
Date: Wed,  6 Sep 2023 10:58:19 +0300
Message-Id: <20230906075823.7957-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_005831_438132_319C0B58 
X-CRM114-Status: UNSURE (   5.77  )
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

Fix one bug and several small issues with the QMP USB+DP PHY programming
on the Qualcomm SM8550 platform.

Dmitry Baryshkov (4):
  phy: qcom-qmp-combo: correct sm8550 PHY programming
  phy: qcom-qmp-combo: fix the prefix for the PCS_USB v6 registers
  phy: qcom-qmp-usb: move PCS v6 register to the proper header
  phy: qcom-qmp-combo: use v6 registers in v6 regs layout

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 50 +++++++++----------
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    | 27 +++-------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    | 19 ++++++-
 3 files changed, 49 insertions(+), 47 deletions(-)

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
