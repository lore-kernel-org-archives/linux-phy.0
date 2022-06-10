Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4464FC43334
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kaNWgPZusu+4WK0m4TAlExyhveDffgowCjKbU1baHp0=; b=rX+8QD1FhJxxXK
	AqwIzVVRr8H3CTTYtmj9JsGcLgEtzlBcRyxn8r6xeRz566pYOxeyhhYv6w9aVEZ+I1FnoygbHX694
	ZPYK/bX930i0I8UIGdgVfK24HEjvmwTXAnCePkYcXUOk6YbXSE44YnaZhKAsgdPVsbBCO+OBBYLt9
	aenvzrIK9zkvVdTllr0hyCqZqeMMH8pI5Dmf2A0t5J9/XhdAdg90HOI2Am+oY7AHleLg12bvpz4Jl
	jkgtYdWKmnmKlQO4udQBemE0/trZz9OohB6MgoTjP8H7m984r2MVUxKC1FLXJc+414tt7gUGFOdvo
	82PaGG/4INqaLX7mMgDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzjnU-009S04-KN; Fri, 10 Jun 2022 18:55:52 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzjnR-009Rxr-OO
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 18:55:50 +0000
Received: by mail-lj1-x22a.google.com with SMTP id s10so66501ljh.12
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 11:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DL/v6Vwo9BkFl30Z9CxnNgezCjx47K1shb9q1wseJlI=;
        b=DhNyCaZ/swphAvcB34TYeT8JCAeTakrcqQ9LlA5PVt+FLZB1Y7eigx5NvL/XDOK/4D
         mq+fGHRW/oxpyztBvM8I0UcPMPQqZ1mxJv1pDJKc9lMlvqb4pVEnCVF1jgfUEIhR9oO8
         wJDaSt9NWntkB0Bhi8cT37+SxJfXDqKsCNPSmLzbqgijDjWaCWnD8QU/p6EaxNxud6uw
         gbYb3PVa8Cy3K33wl4FQl7eZddwQVlztXuvIpgBomqjGcJIFAz1PV/rhLM92nSwchV7o
         dNu6+Y8nzxR1Dr4gvOLmCBehA+mT9chJiLKb+zigk/l/v0vR7Cq4flWZZPyFEiFpAyRz
         3pMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DL/v6Vwo9BkFl30Z9CxnNgezCjx47K1shb9q1wseJlI=;
        b=qsPgfjOsnJkblTHhKlNtK4uIEGjISm1RV+YYw3As/COqpQJ/ePy6UMppblRCdMQ0YX
         /VCleu+T77xkM9ibUvL11x9oOxJund4M5ikYPhJG2oxwrb6UJTs0KK/QCc3/lEpL6p0Y
         NsT5la1AV/JtDCohnTUff0oWjprXYJDqmqwXwJbPzwMQzaVv1x4E8vTq3kiPcW7p8Gh4
         vytGoU4zem/u2aOLuwzrLjyx6NTf3VJ9Du5UBKMVS2cwM3aIk50Yl/BT63ntsAmuOzw+
         /GpxvNCbTH4sZRd1W1hodMVtRdv1NeLgmn3Rh+SfVeZWdJzCLFhcUN5ArhZS6ANxk1Dv
         JIAg==
X-Gm-Message-State: AOAM5307dioty0n73RcYnF32ZI7sXnlM8MaVBfDFm+l21BbqwL4L3sNF
	+6S5PFv/WuN1UuWROC2XDJ+aZg==
X-Google-Smtp-Source: ABdhPJx7Hd3RcxQarfYg4FmWjPNKIuDJYZ2UWyZWCvRYDmgYaKNWRiAY/3i6g47DheC5CSwwZsz0ow==
X-Received: by 2002:a2e:f12:0:b0:250:bf9c:3d2d with SMTP id 18-20020a2e0f12000000b00250bf9c3d2dmr62932063ljp.452.1654887344730;
        Fri, 10 Jun 2022 11:55:44 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i14-20020ac2522e000000b0047255d2118esm4816218lfl.189.2022.06.10.11.55.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 11:55:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 0/2] phy: qcom-qmp: fix QMP PCIe PHY init
Date: Fri, 10 Jun 2022 21:55:40 +0300
Message-Id: <20220610185542.3662484-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_115549_831755_64C0B13B 
X-CRM114-Status: UNSURE (   6.65  )
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

These two patches fix PCIe PHY init after the previous QMP PHY rework
([1]). They were generated on top of phy/next, but I'm fine with them
being squashed to the corresponding patches.

Dmitry Baryshkov (2):
  phy: qcom-qmp: fix msm8996 PCIe PHY support
  phy: qcom-qmp: fix PCIe PHY support

 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 4 ++--
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
