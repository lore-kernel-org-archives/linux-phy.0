Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8F44C61DC2
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 13:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PoBCGjahdC/Uv6hHKl+v+eJ4jT1I0THtJyGrCCy/VQA=; b=QOyLbCdF9AL/HQ
	EU786PfMSmnTxk/EqDIVzNqKqGUOJp1YHLbuyjD0phBFE9I0P6mHd/zB27oBrdsBdPxCOQ5Drpvsi
	0IxV+p6mKc5gg2dvPR1IZwNYrAgy/vFPJ5olQNplR0NT8IO0ouYX1FZPb5CshxWfiz81tQkRFIc3x
	s82V99HNMCECrxGu+JwVLXBlh2VgdxMZbSlauE8A8cr+5FIbBPrU+Gla96Xq0U61f0DpBNq1jODH3
	ycM2Efg84GFP2CWJsz4lTfdkLSlfx2Wznio/SDX1+9aqTpS9F6TWNdOwboA8A5V0JrdDfvdpAEcg7
	T3q321C6icPyf0p6GhPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZxc-000000042Fk-0sug;
	Thu, 27 Aug 2026 13:16:04 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZxZ-000000042F1-01Qi
	for linux-phy@lists.infradead.org;
	Thu, 27 Aug 2026 13:16:02 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-47f92e3c14bso1749861f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 27 Aug 2026 06:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787836559; x=1788441359; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Zau8axskQfgYwgId3j7+r2m2G5GC3NQebm9qgyCpq/Q=;
        b=I6K5yDdOkhShK3+vT5jS8rAf8w5ca7BuJhs9AutQdDyPgJM2Q43RbMcbLl5cw/4Pfn
         fYqqCefG8kzv/po5XMI3XdX3r50IvStFeX8DX9Vyp/PzFvGqgJLdfETJsPUK66+ztjgY
         dFizdU7BeCg2gNF+26xFNSsGQckyQzv0HNWoTlW0CgGXUGYfr3Wo41uMncD4iSNiEV4b
         XtT8iSZrKMQjwkW1/4+n7KcuvddVRd+41RyvZT7EjmlsQBPSqUQWaJieYP29QCNQdo7/
         LMjOV1uJRRUjbPugN+mEk5wVhL7k4t6c31ioH/HaBwlEf6BQLzBGTH5zQT2SJPHMajm3
         zoPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787836559; x=1788441359;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Zau8axskQfgYwgId3j7+r2m2G5GC3NQebm9qgyCpq/Q=;
        b=qSXKKnXiNFXP6Jcjgf6TfMwynLRTmksDPEr/miMB0N9MjQzMVVqquiV0sSvxx98BuF
         HhVDlwEMK51l/C72YJBJzGMru/zmKHw4rxP6il/G4ESLy5TS2yiWToFLRUFa7sG41Khi
         WfF5HRMuua76J0HKldvtCtLcHbgDojBo3w7XvOfDxE49U28X+My/0GiI7VhOS3kSwN6l
         grZ7QMLFbv5jIB4U3dxlzMBq3dE5NB+1slnJdLTmKe2ChdyR8wcKzsOnk7xmSESOHgSo
         +j9IzXGz4FTz5UwVMGdCyABogY0ZYTej5XMc3LR9oSbbF2n4vu6Dow2KlQoDOBEsW2/m
         3Upg==
X-Forwarded-Encrypted: i=1; AHgh+RofD6GU5OAxVC1Utpxl1X1l32iLOk8IEBXX4jA+V7QaGxpEVhqf8RVpx3t3M/ypQhAdBX3CT01QlTw=@lists.infradead.org
X-Gm-Message-State: AFuF++lfGn50xTWxNXWaUpusI8WLNgV68TuUk1zgLHoY7fRNsaVbkmvQ
	cL7y1WajrGt4w5sgt2dMAHm0SKoikdPs2niVU9eo1v/UvMIuSch15SENLs1ctcnv
X-Gm-Gg: AR+sD12zBdM2jwc9p1eY3t6o7ZVKK8LzNaO1UBQmCx4p+z1tpG7SZ/YUXudfXlLKC/1
	MOhxruY0rMmjTz+g6dqrfkMccLL98IHy4b365CqxKRNRaUwbQ8UY8DWQ1PivhqUXTTyCDpEajpx
	DhQP8Y9V6Fq6Dxdp3tIJiZNXth5PRulSYxHw4ghD0KoUQhUsiUfxLLvXgjo6CqHTtZ2EWAwd/r8
	VerxvLKKVN597z5auBVAfFAIiT8hVQ1pXiLllhGuHy9KLZYuTLxETkcU4ZKkhVekaiNbcfEqzrf
	f8OAqyLctrr2SVuTu2U4weBCWlcGKtI+MBTl/+MOCqnbxg707DkInYNQ+l/Jagg02uasS/pgiVL
	HP9nVaGizJ1zleCf0T8xN7JcqmYpWANUzLsRdktAJuvzI4bu4ikck4NIKGe0GRmG2UXQ7BbCwa8
	9XN8VhOB+IpI4+7torVnJOLF3C6jZn1ynLUUunJR0xliCnKvokO8QhgAO8Mz+w5DvzXanuTr7QL
	11y0fbqjN4PD12qJA8SZuXgVYm6+sV5Wo4al2XttsAR3PKWk6y5Cw==
X-Received: by 2002:a05:6000:4808:b0:482:f435:76b7 with SMTP id ffacd0b85a97d-482f435781cmr5464065f8f.2.1787836559059;
        Thu, 27 Aug 2026 06:15:59 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-79-26-252-140.retail.telecomitalia.it. [79.26.252.140])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-482e28dc3f5sm9367192f8f.21.2026.08.27.06.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2026 06:15:58 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] phy: Add support for Airoha AN7583 USB PHY
Date: Thu, 27 Aug 2026 15:15:44 +0200
Message-ID: <20260827131551.26725-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_061601_059383_B62E2BCE 
X-CRM114-Status: GOOD (  10.86  )
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

This small series add support for Airoha USB PHY and Gen2 PCIe
PHY.

Changes v3:
- Fix broken patch for YAML patch
- Split the YAML for USB and PCIe
- Rework driver to direct node for PCIe PHY

Changes v2:
- Add Documentation
- Out of RFC
- Rework to Serdes PHY instead of SCU (following
  for consistency AN7581 implementation)
  Link: https://lore.kernel.org/all/20260811124724.702467-1-ansuelsmth@gmail.com/

Christian Marangi (3):
  dt-bindings: phy: airoha: Document support for AN7583 USB PHY
  dt-bindings: phy: airoha: Document support for AN7583 Gen2 PCIe PHY
  phy: airoha: Add support for Airoha AN7583 USB PHY

 .../phy/airoha,an7583-pcie-gen2-phy.yaml      |   63 +
 .../bindings/phy/airoha,an7583-usb-phy.yaml   |  133 ++
 drivers/phy/Kconfig                           |    1 +
 drivers/phy/Makefile                          |    3 +-
 drivers/phy/airoha/Kconfig                    |   11 +
 drivers/phy/airoha/Makefile                   |    3 +
 drivers/phy/airoha/phy-an7583-usb.c           | 2016 +++++++++++++++++
 7 files changed, 2229 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen2-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 create mode 100644 drivers/phy/airoha/phy-an7583-usb.c

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
