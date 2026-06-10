Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62113CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 11:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ylrWD3tkopMTnmdU0NgTKkUIfnkypunb7f46UK54FQE=; b=UTatA/POS9nJGm
	kZfQ3pbj6PL1Rx8tBmqRAXilB1vIhxX0JzGYX8Jscs7P1+q/SdW8I5Km92U1TkS5A7DTgExQmaAcy
	o3ELq9H9ojQa1mu3OkrzFTFwtfBEZi0G+jVMhimo7lat9s8y1Pl7ronLHbMWJSVAuJrcQjhUf3kl4
	/gqI5asB6ADcXOSq9JXY/eQo+78+1qopW4wq4DqlV4nxihicfvzALMiT8GCUcLhme+1BW9MWa7Xmb
	PA4EhQer8MJ9h/3TGUPIK6CFPt7vKJgBXNgHUo/ObMpU9+7xI+cWT7hqxYAaQ26QgBNX7mwjicNKA
	G9S+KHi2+erfW6HrkSug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGqT-00000007V0p-0etw;
	Wed, 10 Jun 2026 11:11:41 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGqQ-00000007V0P-49vg
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 11:11:40 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2bf36a6905cso47222355ad.3
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 04:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781089898; x=1781694698; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2cQ+ac5l+4cyouLoZKEF9xKzE/GgGPCqhOFMn5EQIOQ=;
        b=QJQm788KE5eNvTpDtIYL55bRTR4uiGh1Mgf7B7jujgxcJ/8oubH6ldf0mPem3IQXWa
         OkJ0M81m7W/YqdKQVCMlFpsjjibLUtbIip1e6WEK+HP99swF34TWGJ0rDo18kD00GEdL
         C+UfDm9b4LX3Bwi2Mg0TyDZP4v9zJKG5H/gLY2YTnhlr2T96Bp8Z77whwbJgQ4LoYehF
         hLbfuAWNamRyDo/E1YlxeArn0UJJ2i+Szmhl3zMFMAFGkXTnGhe8nvhdOTPhSHjd3Esw
         cMhTi7W1PQ+5qIjYlfVKxIx0ctVdRIjm4sRAxiZrvBdVil/NchpTjh7NDhRWMn+mUhLv
         BJ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781089898; x=1781694698;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2cQ+ac5l+4cyouLoZKEF9xKzE/GgGPCqhOFMn5EQIOQ=;
        b=DUb81i/gp353H3hd7NfU0KcYZ6r+6jEwTvc+oF2guawZxNATp0O4hXPfO6unJLFSRR
         7XdqO6fkVsCTIIqaLIcPvOtTK2whLqeTJ+ZqnUupimqnWwI2d/NjPV/4btey0M01u1bC
         mT0VXHXh3Uy9B++gqO2lBB5dU6Z27Z9ckYaqfiNfwDrlDCK+IBSGko3Z95PF98ooXZyp
         cx3jmPrxwhMIH5c+rMA62wxDbJVbjALfMGZQp+IbYC8EGe1F0Ph6L4B5dkn2+f7zdvVx
         mUZn/rqyj2Tq53eBc/RJkGzpM/emCo18qo1HeicXTuDHt0jyOdDlPVC5eKqhIhqoRbq3
         7HaA==
X-Forwarded-Encrypted: i=1; AFNElJ/P+4o+/4G7n6ZP/h8XROvSLbcG7raw2pUztYb7hJYDhEgrfkbZvR3BE+EnJZvklIuO59/GQXN+A1I=@lists.infradead.org
X-Gm-Message-State: AOJu0YyoZsmMaop0mRb6S49WlYLRoj7qmHd/Dsyo9RIqsnNhRPvMETb7
	Ctp2SZmW/IhrHpOn9vtKswBivMmvgFWkyuJ2+DFv+3IoIsqRvkJMrB+L
X-Gm-Gg: Acq92OF5mhrrEBMC6xRewNvUf42HM7u6i/Y7zbJ77x6I7zrEa4Ah3qVQPA6piDuzmTk
	Y5AdjPkmkIhLNvUPv/9qIrVegVJbSkQsVrUvJ2cDQm3u2UCAZuTSvb1wfPlv5vuCZRwVQM7jlVw
	ebAFFYPQz3/1enenD8LQQg+HFjaCTxMkvPEQJu/taAX4t0+nntJUMX/nWzLMW2l8szEAFYCj5YM
	WTeg4yL9gwSvBzNHHhShHCiRQZMfsgtXkedOE94C99pFK+TVMXePGDTIexEQhjEdBlPAsXzarDx
	7zgDdg65/gBkNaXS+r+W9mj6r34HGMp9U4MBQN0adivj71g+dJFH4VTrvqTtsVefptia+WcGcJA
	kAuwm5kJgi1Yflm59FsStMG6rRxqd2B3yIOPA4SvW0U3OvQ83LDsVHkTZoLeNQWllwXmEYkfTYC
	7dlPdDC3d7aMfEpBVLlfuBCNGzIIMQMdn+7xWAug==
X-Received: by 2002:a17:902:f541:b0:2b7:975c:dacc with SMTP id d9443c01a7336-2c2a1bb43e7mr80521495ad.1.1781089898069;
        Wed, 10 Jun 2026 04:11:38 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:4111:52c8:138e:8096:a8df:e68b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d37esm317175205ad.9.2026.06.10.04.11.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 04:11:37 -0700 (PDT)
From: Ramshouriesh <rshouriesh@gmail.com>
Date: Wed, 10 Jun 2026 16:39:33 +0530
Subject: [PATCH 8/9] dt-bindings: phy: qcom: add MIPI CSI2 mode constants
MIME-Version: 1.0
Message-Id: <20260610-a14-himax-hm1092-v1-8-0c9907da47ed@gmail.com>
References: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
In-Reply-To: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Aleksandrs Vinarskis <alex@vinarskis.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-phy@lists.infradead.org, Ramshouriesh <rshouriesh@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1673; i=rshouriesh@gmail.com;
 h=from:subject:message-id; bh=u/ihBuRn411q7r2cqeHRKnXLHVg1nNx7cEQIFjgZxiI=;
 b=owEBbQKS/ZANAwAKARWVil4RHAXeAcsmYgBqKUYQ/WfQ91PlBPr5CIEMS+b24iqufT/+lTQZV
 lRTuKzhDL2JAjMEAAEKAB0WIQS/0QuzNKVfvUNlNAkVlYpeERwF3gUCailGEAAKCRAVlYpeERwF
 3ux5EAComyAGYJYXSz0Kedtwa3VvHC+ooYDXeq57/vamu1NAvwb4diNkw53gmBkSW4le5AFIYdL
 pHh1QptSN1zemv0sXpOlV6geujC7WRUKsD2a5hWAmhaIxH8wClbp3IN29xy6R/eECch4+TLsbpH
 dWurBuTLHJ3mANXIUwlSh5dpyOuwFWbbEXsMO7yMu9gv6tjlRauhXsFoPyTm7kQ5YowStSgNkxc
 k9Un+ZPq/mb6lSsVRpB5BoWutb6zfnJea028Ye7pVswDOv5Y/vZbTRVhRlE5b4kcz+dIzML710j
 w1wzQl1MW/EX0m7RHE5RtuiBb8IefH25HpxZatEoX1ATBMT3cFbGTh1mj/e38VA4eR/HuafsK/7
 +9XDw4IQ3R8aIp0m5O6qxnCapXCaaGD/DEHXQKE3YBFpviAIka+fG5mwdgxSRjGcoBRQ5DU8KTl
 8KYQVmtArETg4k1WRyxxlgFITfCPIWRrk1ym9SbXsdTSA6RH+BrYDJl+WP1mQ4PUKv/hI7ZkUgc
 BdZ/4LADyfMMkstYmtmF/tXffcTDoqWwDhkOf0M7QdEGlfTNgm0x0lfTByC6t229zVzOmkAWOwg
 +llY8eYurHAkSLTFUU4jXAC3itej7SHqcMgvP1VH76rSQ77fAAVljR541n6AJn267f+3tmjgH/d
 vxLeWjWyurqs//w==
X-Developer-Key: i=rshouriesh@gmail.com; a=openpgp;
 fpr=BFD10BB334A55FBD4365340915958A5E111C05DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_041139_041523_E3527824 
X-CRM114-Status: GOOD (  12.69  )
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

The CSI2-PHY binding references <dt-bindings/phy/phy-qcom-mipi-csi2.h>
and consumers (the x1e80100/hamoa camss DTSI) select D-PHY mode with
PHY_QCOM_CSI2_MODE_DPHY, but the v8 CSI2-PHY series does not ship the
header, so any DT that includes it fails to build.

Add the header with the CSI2 mode constants and cover it in MAINTAINERS.

Signed-off-by: Ramshouriesh <rshouriesh@gmail.com>
---
 MAINTAINERS                                  |  1 +
 include/dt-bindings/phy/phy-qcom-mipi-csi2.h | 15 +++++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index ece71732e6dd..a7ee9f0aaaa8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22280,6 +22280,7 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/phy/qcom,*-csi2-phy.yaml
 F:	drivers/phy/qualcomm/phy-qcom-mipi-csi2*.c
 F:	drivers/phy/qualcomm/phy-qcom-mipi-csi2*.h
+F:	include/dt-bindings/phy/phy-qcom-mipi-csi2*
 
 QUALCOMM NAND CONTROLLER DRIVER
 M:	Manivannan Sadhasivam <mani@kernel.org>
diff --git a/include/dt-bindings/phy/phy-qcom-mipi-csi2.h b/include/dt-bindings/phy/phy-qcom-mipi-csi2.h
new file mode 100644
index 000000000000..fa48fd75c58d
--- /dev/null
+++ b/include/dt-bindings/phy/phy-qcom-mipi-csi2.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
+/*
+ * Qualcomm MIPI CSI2 PHY constants
+ *
+ * Copyright (C) 2026 Linaro Limited
+ */
+
+#ifndef __DT_BINDINGS_PHY_MIPI_CSI2__
+#define __DT_BINDINGS_PHY_MIPI_CSI2__
+
+#define PHY_QCOM_CSI2_MODE_DPHY		0
+#define PHY_QCOM_CSI2_MODE_CPHY		1
+#define PHY_QCOM_CSI2_MODE_SPLIT_DPHY	2
+
+#endif /* __DT_BINDINGS_PHY_MIPI_CSI2__ */

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
