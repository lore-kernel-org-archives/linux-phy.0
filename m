Return-Path: <SRS0=mYmN=QE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EC92C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 17 Nov 2021 00:39:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BCF4A6135E
	for <linux-phy@archiver.kernel.org>; Wed, 17 Nov 2021 00:39:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BCF4A6135E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7LeqO722fl1Qq6gWuwYsCQQpEhh3nDaSbvLPsE1hLVE=; b=h1ofuUCt1CRPvp
	xuWeGQmkmRjZETcGwVtS6YSFQOuKhbgPwkJpmpgeFICVxdVbj+4+b+5zH6OO1B6YCF1TWnpeyan+X
	AK/0Qbmutx0eNYv1e5UMqfjrTaKj5ADBcoxS8gKVwjoOjyodnevaF/OdYsaFxfrXYv5ACQCb0dN6A
	TvzDdtjPUmzWeMkVk8thUETylX3t77NmlC/+79/2A7exDYwuECogqSp6M1SN9WWVo5f79bSxDF7sH
	SuR9x0KhOVNfLRp8y7rAIeUAm0tXCb1pyp4gWT6QWXOSflmVSVKx4SNFIqJXZoYR/PFOjCli5FWmz
	ucXb6KOxG8hgGYyvwopA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mn8yp-0031jS-9g; Wed, 17 Nov 2021 00:39:15 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mn8ym-0031iv-VV; Wed, 17 Nov 2021 00:39:14 +0000
Received: by mail-qt1-x829.google.com with SMTP id t34so1013410qtc.7;
 Tue, 16 Nov 2021 16:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w76EybrnaGtyzuuTmNM/pkrCVBcP2o2Ywq7QeTL4Wj4=;
 b=RfEDaEpM7Q/JbCzUtjePEIyY9JqlYyicN/Lshcteuz3P9tYc5LKAiizOxu9wGkv5zo
 qwhKViIe5PwkpySjmVeI4j8tmCD9ofW9MTxuMbygx5y1B5UCjALQUTBvF+mNMk1KunQ0
 qgTqdvh9Q8K8O/PZZ00ngNxFIYea7D5nY4N/od3PNqTqTj/XV/mCXzh1a5XSNlMo/6ba
 KLTDbJ43dCQ/EdZIEWJTtzrzzmdDEn10wIWjedJyPANe2bHAHLkjExYqniywLA7DfN7X
 VF4sru+3YffMcMxJVbauLgQ04k4i8YtaaUaOeV3FN3x0frVlUlr/R3/jF4rLL7wBQnA9
 jxdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w76EybrnaGtyzuuTmNM/pkrCVBcP2o2Ywq7QeTL4Wj4=;
 b=NiReIGIYaL7aVW7GuZfaXyOQCpFd1cluvB1oVrLWBMo5w0j3NmyikMlpSu5gTy1h6G
 uSIrmw1ICmKj5fuHA2Fh+hhbA4j4BX+B0aaO/wqHyI/3WVzYgFnBj4h1eSY6Dsujy+y4
 zGh34uFkXm14G9ecges0zxyVi1PWt/Kcds54rQsrewUvqro1PrFiCi2mhvfo5G6tA+Td
 u7n3bZCHhg/gBZCZKptc8YSbJTnxwz3pDgGnQTilGDTMNTUVKie05t1w54HPY45KbilS
 93yBQxk3GLDNX3o6LLgBU+UqLEo6mVNfDuVrBhZuXAofaLJC7BNG1waiAFiLiqmDrKAF
 UqZQ==
X-Gm-Message-State: AOAM533+YieM+N9K9RplgD4mGyAu2SF3xXEcjMNXJpiASKbf6sBXqNl4
 TpVrmTgjvynGi7HaxhuHJTM=
X-Google-Smtp-Source: ABdhPJxbeSHNuB4kFTbLxOih9qJ62SSPVRY/aQlqThDRVr2hf19MTW/Jd3fVex7UJYa6VazPT4stxw==
X-Received: by 2002:ac8:7d45:: with SMTP id h5mr12280765qtb.256.1637109552186; 
 Tue, 16 Nov 2021 16:39:12 -0800 (PST)
Received: from shaak.xiphos.ca (198-48-202-89.cpe.pppoe.ca. [198.48.202.89])
 by smtp.gmail.com with ESMTPSA id a38sm8403777qkp.80.2021.11.16.16.39.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Nov 2021 16:39:11 -0800 (PST)
From: Liam Beguin <liambeguin@gmail.com>
X-Google-Original-From: Liam Beguin <lvb@xiphos.com>
To: liambeguin@gmail.com,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Michal Simek <michal.simek@xilinx.com>
Cc: Liam Beguin <lvb@xiphos.com>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] dt-bindings: phy: zynqmp-psgtr: fix USB phy name
Date: Tue, 16 Nov 2021 19:38:41 -0500
Message-Id: <20211117003841.2030813-1-lvb@xiphos.com>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_163913_035917_19BCAD65 
X-CRM114-Status: UNSURE (   9.88  )
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

PHY_TYPE_USB is undefined and was added as PHY_TYPE_USB2 and
PHY_TYPE_USB3 in 2fbbc96d1600 (phy: Add PHY header file for DT x Driver
defines, 2014-11-04). Fix documentation to avoid misleading users.

Signed-off-by: Liam Beguin <lvb@xiphos.com>
---
 Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml b/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
index 04d5654efb38..79906519c652 100644
--- a/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
+++ b/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
@@ -29,7 +29,7 @@ properties:
           - PHY_TYPE_PCIE
           - PHY_TYPE_SATA
           - PHY_TYPE_SGMII
-          - PHY_TYPE_USB
+          - PHY_TYPE_USB3
       - description: The PHY instance
         minimum: 0
         maximum: 1 # for DP, SATA or USB
-- 
2.34.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
