Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85630C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Mar 2022 22:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2yAk+gQ1GKeB0xrI2A2Kn9lRh/JbK8+yL31rrylJ8OQ=; b=E2Sf7GAa61FeLJ
	IwcjlBD79Y306nXXsH7Iy1c4UJtacfFMh2BK9enjinFH3N0zfNnMGyNrjMopXAZ8UFbFGwsu7vZTR
	z1r0iGn+JwM3mibQxXikmf8IhC5802XIusX8UHHS6xkhJ9EIXIhC96LQklFFZLEB2YYazD65UeHu7
	fAZRtfmyzXW7pzx3V5UG+eiZAXZfsVQ9vdQj9m1Nc2nK71vGOUOYuCL8HUxkBx8umn8SWrBH4uOay
	B5Pl0RAHbxpuLK/RNPnlSiMn+dIepem8thjbHkriy6MhHD+9PPld6k8JGdsXyfTeEjaEy3+67VclG
	EgKuLLtncjzjOvA8d0oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXsJT-003PhY-RY; Fri, 25 Mar 2022 22:21:43 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXsJR-003Ph3-7j
 for linux-phy@lists.infradead.org; Fri, 25 Mar 2022 22:21:42 +0000
Received: by mail-pg1-x532.google.com with SMTP id q19so7516070pgm.6
 for <linux-phy@lists.infradead.org>; Fri, 25 Mar 2022 15:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/O6vtGDql6h6bwr1hfZ8t55lRl59LZ8LmFpjtzbq3zk=;
 b=ED/iIDMgB2RbYRMPWq8JmMHXXLRkxWmmecomxKQpUPgVPzFKlqoa083m5PyaNisfYQ
 jTb6FYZVjZz7XKaJgRRKy0tBN6w2mD4XPYS7qT0UzF2X6WVVq8WDKaoFU1Y5xU/R0V97
 9a1+BhaZ/CFbDi0iltzxG799kzKQ1rvBsfKJbd+Jk/ZygFcNdYAi9zr0JiM6zi2okCPK
 nCkwlH3IVUNNi7WH7zIOFQKW2ND5DNdzbgSKxGWOlwViyNAW3dThfNuopl+Sw+V1H1aN
 WlQv9FAutUlKQhV3MttfhIxIC5NmdOYa7GuIiT4bJ9KWlgbgfc9ARuFBozDx2ShF+yas
 U+Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/O6vtGDql6h6bwr1hfZ8t55lRl59LZ8LmFpjtzbq3zk=;
 b=76OJYhPThzetD/alEv5UMaa7T6r8KXhV9vDTMlLTcVbMocexkaD+xHfeLBm8VxTHXn
 nBm5yJgk4NPUH70C2XQMcS3FQhdAb6fxmMKJIWRPzQie+sNKU27wBCW93UNAqGsYA6HE
 imMnji45aDkQgkfT0g675XnZzxOIcUbcbgZSqCS9U93FFJwlI2yzuF+25GzduEVNx6HH
 +jSUFHf6yL3NX4ky+cY/CD0cfUBOWHrg+qs28/QpWTMZSWAt9MTQoWkvhTWHvbHPQf+5
 FnXj9mBosyAGyLpou+dYxn/k8aRddFBMl7yT0Y4aDZryzvqFdoHv50cCceOOtapMXZHN
 KH8A==
X-Gm-Message-State: AOAM533gKJ62P2NhWoTfi7V5aar3MceAsw459yLs6zSzcRD9IOzfrlT3
 XgeaPiLEYEZp7Q/CK5zW0ysUoNTuuLse/A==
X-Google-Smtp-Source: ABdhPJy21kYyyydAFgwiwQuRy4hYEejXOSrEo2zOKAa6/Lq+VwNiWDIuGM5Leh5TAGA+G5SH8eEXtQ==
X-Received: by 2002:a05:6a00:1310:b0:4ca:cc46:20c7 with SMTP id
 j16-20020a056a00131000b004cacc4620c7mr12298316pfu.44.1648246897871; 
 Fri, 25 Mar 2022 15:21:37 -0700 (PDT)
Received: from localhost.localdomain ([223.233.78.42])
 by smtp.gmail.com with ESMTPSA id
 x16-20020a637c10000000b00380b351aaacsm6006490pgc.16.2022.03.25.15.21.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 15:21:37 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-phy@lists.infradead.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 vkoul@kernel.org, bjorn.andersson@linaro.org,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 0/2] phy: qmp: Add PCIe support for SM8150 SoC
Date: Sat, 26 Mar 2022 03:51:28 +0530
Message-Id: <20220325222130.1783242-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_152141_379130_041DA7EA 
X-CRM114-Status: UNSURE (   9.18  )
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

Changes since v3:
-----------------
- v3 can be found here: https://lore.kernel.org/linux-arm-msm/20220302203045.184500-1-bhupesh.sharma@linaro.org/
- Broke down the patchset into 3 separate patchsets for each tree,
  so that the patch(es) can be easily reviewed and merged by respective
  maintainers.
- This patchset adds the qmp-phy related PCIe support for SM8150 SoC.

Hi Vinod,

This series adds support for qmp-phy instance(s) found connected
to PCIe controller on Qualcomm SM8150 SoC. There are 2 PCIe instances
on this SoC each with different PHYs. The PCIe controller and PHYs are
mostly compatible with the ones found on SM8250 SoC, hence the old drivers
are modified to add the support.

This series has been tested on SA8155p ADP board with QCA6696 chipset connected
onboard.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>

Bhupesh Sharma (2):
  dt-bindings: phy: qcom,qmp: Add SM8150 PCIe PHY bindings
  phy: qcom-qmp: Add SM8150 PCIe QMP PHYs

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  4 +
 drivers/phy/qualcomm/phy-qcom-qmp.c           | 90 +++++++++++++++++++
 2 files changed, 94 insertions(+)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
