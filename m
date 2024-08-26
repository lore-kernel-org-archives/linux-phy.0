Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E538C5472E
	for <linux-phy@archiver.kernel.org>; Mon, 26 Aug 2024 10:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8YWoBeB2S9cgB7FNyP3WHjMWMxIvSjTvRg36W1gslLs=; b=pJHYdoAFprDM1Z
	4S1CqsfHp+ZcUmtf+cJbK0kn9omvYLWdMcquAbPSwgFVmicJ59mPPocPZzRbUCsASuIG/7PeAGVq+
	aleBDkhgMeRpm2poP08T/h9VhNAsPlSt9j4YrFoa/VbTN18khImseoNvmbagywG0cy83tMKLpju5C
	oeU5bHM3GbJzp5x6lIdmwtAWlIAsCftnzi58XQd1Suci6DX4wB1NhXT6jr6Ap9cstehvGyKTWaxt0
	s66w1Ke+cBiTTbkAd70+sZy40D55d7qjhjar86J5WB6lOYrxYSyui4ihPLc4Q+nNKVVFSOr4QylEi
	1FiTza/1Qd2ARkPvliHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siWeN-00000006qy0-3sXJ;
	Mon, 26 Aug 2024 10:08:39 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siWdL-00000006qbY-3uDZ
	for linux-phy@lists.infradead.org;
	Mon, 26 Aug 2024 10:07:37 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-368633ca4ffso571067f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Aug 2024 03:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724666853; x=1725271653; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+HjftXAU3xKMpzR2JP/aMX2y07jgOYNP9sRw85N0o18=;
        b=JmSTnieJkMyxUvABiJvn/30mZFcTPNTqBhnrsVXgpx02AVfsu8gxdzciv6QNgjxbPF
         UnmO1WsTIJhzmknA5yriVXw6rHbMyY+YIFR56IeLoGef9Wg/zTKCibS3K3nVOJImx40d
         RvAoXDA8HvXXcT1Fe0zkN+Qap/4L1hXbqk9v1+WZIXiPJIealc9hFlN3DHOEuF1RDwCL
         +dz6IH/Z0loAs8H3xUlPtI3eWLid8fTGsOeIjrI9p4+368ijKzPoplbHBZ8MR2hiK52W
         CIOrfuj16CcOUQyzHwidYlgjCnibUmanea3jdtB8i2FVMfr90ECQCKG2L0aekRErQJUW
         OthQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724666853; x=1725271653;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+HjftXAU3xKMpzR2JP/aMX2y07jgOYNP9sRw85N0o18=;
        b=nmFW8XniI1Va7BxVZev9qkeBZsA42TzmrDZK+xzSz0ywy0wvLSMGPsqugUwcnXC1Ar
         hU4V7hpoQcvu44gVD9u6r234KKUG5iVbJUqrNN/Co0OgG3fVsVNYxot5Squcko2N/wst
         zBW/ZxgNAOwm91o1QnKCiBwZrTJQ8DI91trAK0VrUxAiBCQN47MaLukiAhKp5kuxDy2j
         bWvpJquRFXz/V5L4tJoLTAUs9HeXLYHIPTxTOUgM70qptVIaXMbcRSPgBxM0N5Xir/ta
         IRBk/LBt9mQjqx+0XHjtULJc1U6R7W0sniHt8KhEaA0HmlGlcSVZH8XQfyf1ONWhiY1x
         qo8w==
X-Gm-Message-State: AOJu0Yw8rNoSTArRpVNB3iHoOJtoV56lG7xNnrTW42KLDklNN3L2wjDZ
	uFj7/lBjRVW6VBIOoxvkFMl16jal1SoBKvPl5G1o3N0Zrr+7OpdK1n7TlNaL9dM=
X-Google-Smtp-Source: AGHT+IFCD5GPA1+BkzRXcgnVVTn8nZixGGKVQtfkU6p7k64Y3GOsR+HExdueg7UHKjrmdDfxphRs4w==
X-Received: by 2002:a5d:59a9:0:b0:371:8d07:f84b with SMTP id ffacd0b85a97d-3731191519cmr4431159f8f.7.1724666852669;
        Mon, 26 Aug 2024 03:07:32 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37308110009sm10324821f8f.18.2024.08.26.03.07.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2024 03:07:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 00/11] phy: simplify with cleanup.h and few other ideas
Date: Mon, 26 Aug 2024 12:07:16 +0200
Message-Id: <20240826-phy-of-node-scope-v1-0-5b4d82582644@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANRTzGYC/x3MQQqAIBBA0avIrBsYTSm6SrSInGo2KgpRSHdPW
 r7F/xUKZ+ECk6qQ+ZIiMTToTsF2ruFgFN8Mhoyl0ThM54NxxxA9Y9liYiTn2JPt9WB7aF3KvMv
 9P+flfT/ZtsNTYwAAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Ray Jui <rjui@broadcom.com>, 
 Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1853;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=flmAEj5Nd9G8wrUjTaGvwvFK+32RV5njH6u856Suhok=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmzFPVkZ2FsKym2PSIv1cjVB9boTWCPLW6iOlIN
 /9pOIHBeGeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsxT1QAKCRDBN2bmhouD
 1xLqD/9/qGmAF8uPKhx2wWo3kIzy3zrrimGskzxVQsS1cNXBQRhKKrAI6JAENVXRunpYd01lng/
 v0Hvcze6XwNg2IOTK4bjA0n0AF1KvOzFzaPNE3cS+W+t1QUPEz0nzSRzXryV6tYTBb2Z4UCzBDS
 pUC/9jLhQJf1X8giqkNktJNUJ24cOzG4DyUoe4Qvki6ISGMXI2zEMoOOXTOunDcMz9fLB9PBcow
 q94N2lgYb4EcM/KtB5EVs8pFdB7TRIfd14GRRAPqSFBJ0Po6Ym+nT92uxrsWIEj0Nt2Ag8ZwOk6
 WpYyQDmrDFhwdQt4TVhVrcm6kHThBEMrS7+1VdulIBcUvpw/o40qvqFIWlxvyntlcqaGtAMQu/D
 HAO5edJzkHxYXGOcvnDdUFM54tcxqe1EbgWAx61OLgwIrYm/wYoTNHC42CMvduAvA1bNNvHLzSd
 PWb0C6qh18GesykeVDY1LSwjkYBNHFRLBvgaTUEq4PPdVIqtUU58E4vR3qAc8cgQEtAGJje04nA
 llG/H/5qkeIe3hLgrmO7ipSS4pfWIRpPjj93sFe7Sdelh1e8oYwZMm1FwRDmAb8d/T6qa5Iklyo
 QrX76hLjS4tmqrzTHn3WDz+1sUThCLwxfL0K8MoTqIPYsjEMkvYuGKo9rhgnK9AVc4sWYae1LIY
 EIYW82BvNvhusHg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_030735_983067_899CD76F 
X-CRM114-Status: UNSURE (   5.71  )
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

Make code simpler with scoped/cleanup.h/dev_err_probe.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (11):
      phy: broadcom: bcm-cygnus-pcie: Simplify with scoped for each OF child loop
      phy: broadcom: brcm-sata: Simplify with scoped for each OF child loop
      phy: cadence: sierra: Simplify with scoped for each OF child loop
      phy: hisilicon: usb2: Simplify with scoped for each OF child loop
      phy: mediatek: tphy: Simplify with scoped for each OF child loop
      phy: mediatek: xsphy: Simplify with scoped for each OF child loop
      phy: qcom: qmp-pcie-msm8996: Simplify with scoped for each OF child loop
      phy: ti: am654-serdes: Use scoped device node handling to simplify error paths
      phy: ti: gmii-sel: Simplify with dev_err_probe()
      phy: ti: j721e-wiz: Drop OF node reference earlier for simpler code
      phy: ti: j721e-wiz: Simplify with scoped for each OF child loop

 drivers/phy/broadcom/phy-bcm-cygnus-pcie.c       | 20 +++-------
 drivers/phy/broadcom/phy-brcm-sata.c             | 21 ++++------
 drivers/phy/cadence/phy-cadence-sierra.c         |  7 +---
 drivers/phy/hisilicon/phy-hisi-inno-usb2.c       | 12 ++----
 drivers/phy/mediatek/phy-mtk-tphy.c              | 30 ++++++--------
 drivers/phy/mediatek/phy-mtk-xsphy.c             | 27 +++++--------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 11 ++----
 drivers/phy/ti/phy-am654-serdes.c                | 50 ++++++++----------------
 drivers/phy/ti/phy-gmii-sel.c                    | 16 +++-----
 drivers/phy/ti/phy-j721e-wiz.c                   | 12 ++----
 10 files changed, 68 insertions(+), 138 deletions(-)
---
base-commit: 834e84894a9d34ecc195d5db5386912bde3eefd7
change-id: 20240825-phy-of-node-scope-055ed0431743

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
