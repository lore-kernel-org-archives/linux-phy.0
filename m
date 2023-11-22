Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D364FC61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SO8GzEWdp0Sg1WGUDPAVzPhYXf6rNJZu4RCdZ3wPvv0=; b=O9WfncRXnMAMda
	p/+C+DMXX8wKIXwu5LWOVH1rwuoSBsPKA5iZlligQkiLmXHcHb3tqSplJlJbaFA5v+4uK72Q7ebpQ
	7XLEOqY0wF6f/OcXzmjEHiNgocUWssauhOyiTFC6tKjowXJhdVApvpG/X1p8XC0cVWTUi6b1YHHGO
	hXugr1U7Lqo8vh6WAMI6ADGXIoAX2zAL+5+wA2qW5gAJEeZR4pJHDM67GcTU6dXmlQNXjQB1k9SXW
	7PcRpIIBlfkB2lw2bzeQ9+jvMDJKrn/kYukS4+gXhx49lrzl1H+4rhVcko6dQWiV+KO8G7o8bqot3
	2vZEBs1J/STtPjpo0G2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5k5g-001Nzy-1l;
	Wed, 22 Nov 2023 10:04:16 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5k5c-001Nv9-2U
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:04:15 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-547e7de7b6fso1334657a12.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:04:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700647448; x=1701252248; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=w7f1ry+FDQqkAZW/rR9a28DSHUlK9OY3DwH31gg9Q84=;
        b=NaBEvwajBsYSm7GrA53ULA8FRV3coBpKUTBZiINO3Pc40FHDzByIdpfikC4kOxLkpu
         3dxAZBUfVKMNWVxyJ0MaSHWNu042WKy0LgaYPaIxLkhTWBwdZQjUCapF4iriS/JkDoXl
         ko4my6u3nTGLfvFO/jzsKAwn2/n0YT3Mx45kfBki5tJlq64xVw1kW+jH+t0/PiJVxGjm
         bPvZKtFLk6lx4BBtf1tXUaa3PGI9xexdjZuZkCQE+If3VSzJv8lCcdfzMamZldXLuaLQ
         esMNmDNGsaOc6wgXrnY0/h+1Nb3cfE+WGpy8ZDuuwdcRq1DaQgV/HVmKpyIPGk+AtldO
         /0Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700647448; x=1701252248;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w7f1ry+FDQqkAZW/rR9a28DSHUlK9OY3DwH31gg9Q84=;
        b=TnhMfxOEOnCii4KG7J7p/JZZz6xdWowQK80pNQaGJws1XcnKXwtHHYOOBtOLmEA3QJ
         eBYZfQW42JloDgumFXnZTETmK3V3vrE331B8Pw4VONGvQ2kzDqIRpMgvbzkw3bk6CNUI
         A8iKo4DY5ILznONu4OotK8zK9msAq+MfivdLkbZnTQ51csw8Wve6rOAmckALXXDZTU9S
         ssbgRR6u4LWMg3bSVJpGlD0uCOjD2E8q2zFbq1LUpL1KmMQhK5DFf43poOK/MQQOP3kQ
         KGMYzVnJVufN8cPVkKlU8g807+jm+WsQtF4it/mvlgDc61o3+7eGooD0pyZqtS7u9/8m
         R8Zw==
X-Gm-Message-State: AOJu0Yz2sVtHJOA7sjTmWPYYHPUXg5yTY7cgoJifOKt5TEr4aFZWYzXH
	p8R/4IFi3/gIgm5rucVd/nkdbA==
X-Google-Smtp-Source: AGHT+IEgDMMola5hcl3sRGIjNkZchAYK9E5xjDjIMJIUVE72GkCxvOD3iYG8i8XcduQFgvMtPwfE7w==
X-Received: by 2002:a05:6402:341:b0:543:5dd9:a72 with SMTP id r1-20020a056402034100b005435dd90a72mr1795722edw.1.1700647448634;
        Wed, 22 Nov 2023 02:04:08 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id o9-20020a509b09000000b0053deb97e8e6sm6110456edi.28.2023.11.22.02.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:04:08 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/7] phy: qcom: Add register offsets for v6 and v7
Date: Wed, 22 Nov 2023 12:03:52 +0200
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAjSXWUC/x2NQQ6CMBBFr0Jm7SR0DNh4FeOilKltUgp2oGoId
 7ea/M37i/d2EM6BBa7NDplLkDCnCurUgPUmPRjDWBmopbNSRLj4Dz43E+08TVj636jFcsHEL5y
 dE14FOx470lZr1xNU1WCEccgmWV9laYuxnktmF97/9u1+HF+P3xBriwAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1529; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=7uNpWvfhMS/e7VHo0mKgiRBZNnLydquBiQsmtLr7VSc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXdINHHIs4ath05z+8Hs8g1gW0X3hAEI4sNFPy
 +DU07jxd2eJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3SDQAKCRAbX0TJAJUV
 VlmPD/9x+2g6mcKduypmeUFwCUL0yc/3rSOtxmr7QHSCkyLIOWBeVRU+XUgyjhn/NxUW339dn7m
 4+5wgGSjhqibxtG2bG0fLHbRhwDTPG7lChFSCQf/oHqK5S4kDO+kSf1RYUgGPtWgD076y+I7/F7
 8e9t0OnbriPw015DPoxGz45pI5iA/vEDjm8GP9fLWJhZeREaI5dwv/gOp3emf2HxA0PjbnW2rnK
 +xv4qXmHpO4yBUF++OVCYwt5dguoHHUsHfy3a8Oljd/lkAZ3sAp85/X4Y09Az+y+/QxXuKIqe6O
 V0eHoM0Y7QruLAxmDZX6zq+jxVI75LIwbsFCcAfu93z9bjz6ZPgECyTZz8NRc8TQNkNujwIYMxd
 taSHQFu3A5a4+iaCwk7/TTkuuIAHAc/OCQKYpQOLhq+ZuhkD21KnDAp+nEeCWvQX5d7Nm3YsQmI
 Lhr485G4J1UvVb8LZ0Gn/WSUyJNaQ4JbwCnzr3FMo3Arb9wGl344U4d8Ol2z0osgMK4jgCIxRlc
 dlu+tKZfE4f9cOIAnj2Hmwqsi8Vf8FYZv6+65YNwsxonDxbGykgydbdpvkaeX1GlCvcZV1NX615
 AaG2kTM7WEV6dDZmX+IspFA1f8qL/zbCiv3N2c84tPhYTN8yxk1cgBhTUcSuRxqVJOHK76dsBYB
 AyvULfIMouyi2vA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_020412_817151_A1DF5341 
X-CRM114-Status: UNSURE (   6.15  )
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

This patchset adds some missing register offsets for the v6 and v6.20,
as well as the new v7 ones. These register offsets are used by the
new Qualcomm Snapdragon X Elite (X1E80100) platform.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (7):
      phy: qcom-qmp: qserdes-com: Add some more v6 register offsets
      phy: qcom-qmp: qserdes-txrx: Add some more v6.20 register offsets
      phy: qcom-qmp: pcs: Add v7 register offsets
      phy: qcom-qmp: pcs-usb: Add v7 register offsets
      phy: qcom-qmp: qserdes-com: Add v7 register offsets
      phy: qcom-qmp: qserdes-txrx: Add V6 N4 register offsets
      phy: qcom-qmp: qserdes-txrx: Add v7 register offsets

 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h     | 31 ++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h         | 28 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |  5 ++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h | 86 ++++++++++++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h    |  1 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h |  4 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h | 51 +++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h    | 78 ++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  6 ++
 9 files changed, 290 insertions(+)
---
base-commit: 07b677953b9dca02928be323e2db853511305fa9
change-id: 20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-5ed528c88f62

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
