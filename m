Return-Path: <SRS0=vXpx=NM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B6FC4320A
	for <linux-phy@archiver.kernel.org>; Sat, 21 Aug 2021 15:57:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3735861246
	for <linux-phy@archiver.kernel.org>; Sat, 21 Aug 2021 15:57:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3735861246
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CfIjl0RzuXh2nreTvHlVCasDCQOwt+Hep5GdvgQC5as=; b=fdzoHZKc40Tj87
	kde8USlk5WIvWE8Mj6av4Qkl5ex1RIsOCIMcAH0U73OGFRLISXDUeo4WD2IBT0+T0GFRICiIj/GxJ
	bOH5tfj1fHEhKyfcARjFOXdTe2EPcTdBBPoMreARvlcVx53Kjq15pCy8K4qdVqQj0sd9lqZg6AK3A
	YvDcHjfnmVzUZYPGEhOb4KA2or5SXymIb2hICKzjW5fV463neogGdW5DBzXBF6JQdA8R36g9+700Q
	Rv2HqgilR1A7WyCuq+B+kGF6wZfW3TwTsa5DHZxKmUEjN4k0aG8A133eP+pknUG7GZ7XWRCPtESUu
	3iDVrm7YFqGJloji4LAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHTMt-00CwPh-Lb; Sat, 21 Aug 2021 15:57:11 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHTMm-00CwNb-KX
 for linux-phy@lists.infradead.org; Sat, 21 Aug 2021 15:57:08 +0000
Received: by mail-ed1-x52c.google.com with SMTP id n12so18664060edx.8
 for <linux-phy@lists.infradead.org>; Sat, 21 Aug 2021 08:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dQeI7rq5UyNj25/cgHXT21cjW1M3absAwcr0nFDGAXQ=;
 b=fZYtJBeIc2tsEP0dXutmscR7rVvQUGZi7n6iVg6qm9xG1rP4pi4p/BnWh+LLjyF7el
 VH0X5JUuzLMui8Nqz0/0JYmP/axGa1rnZOCbMlX7qZPNgGErUt1DIfYPvdyDmoSP9n1z
 eyaFqm4GfgVkGLYbDqfXH48Omo1urK2MSbpGm8BvRn/Vh/TAdtaucJQ2Leu6svNs8goL
 +GMrsDdWK7NLEqYrcOM7oevwXQ33hmxyyjaRha9a3ZStxSGdIqIOOCuJeiXfAGtDWJe9
 FX/ww03O2gFBEgrrCyGL9YY+EGQRZJoWImjHquIEfqsPEPz/AF8x/IS8ipY7/PG1DvAL
 bJ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dQeI7rq5UyNj25/cgHXT21cjW1M3absAwcr0nFDGAXQ=;
 b=I2JjDJKRVZl/40xIVHQX1T7QB8P52PgCXisz29K5uAI0ylIlnHutN823gL3McVY6d+
 C4ZEJf5vrhdt9IKU9sAGGhTx+9tim+9f2RlXj5X1WyETHWjRYISBp3rKCuEFU2/nWULK
 jCSwW+tPW2hAAnKZg+CfyeXOck6m8m9VHt8fHFjTplJDafoyDfPjCzDcuXmYCVudgPjp
 ePTopUP7hSLpJRWpKMgK9qEhwYZDuA7kLeoZI6zBQ+ku/685iJ6pe7Zf68S43EW9yAwI
 IEJuHTMLAJgP0TZsSc/RvzjhdKcABiCFv7fLoZD5a86mhMOnqQdYjL1dwPgmV3TbHFpD
 I1TQ==
X-Gm-Message-State: AOAM533VhcTdfA0cLa6mG9+OfMthdsi2oaXTI9na8LBx0FjjvoRhGann
 BoZAgXbq9MGoGvg4gFdWr7E=
X-Google-Smtp-Source: ABdhPJzQmYjLjA+FlqyLcD31UFy2RE43X7Yv4nv+8ViR9APl56Rb7LO0JixDaD6gtbVbcIPInHLuNw==
X-Received: by 2002:a05:6402:3099:: with SMTP id
 de25mr28016818edb.36.1629561422535; 
 Sat, 21 Aug 2021 08:57:02 -0700 (PDT)
Received: from localhost (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id g10sm4471314ejj.44.2021.08.21.08.57.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 21 Aug 2021 08:57:01 -0700 (PDT)
From: Iskren Chernev <iskren.chernev@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht,
 Iskren Chernev <iskren.chernev@gmail.com>
Subject: [PATCH v3 0/2] Add UFS PHY support for SM6115/4250
Date: Sat, 21 Aug 2021 18:56:54 +0300
Message-Id: <20210821155657.893165-1-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210821_085704_719896_38465688 
X-CRM114-Status: UNSURE (   8.63  )
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

The UFS PHY found on SM6115/4250 has a lot of common registers with ufs phy v2,
even though in downstream it is named v3-660. Due to register similarity with
v2, the few extra registers that are needed are added as v2 registers.

The register values/sequences are taken from OnePlus repo [1].

[1] https://github.com/OnePlusOSS/android_kernel_oneplus_sm4250

v1: https://lkml.org/lkml/2021/8/5/235
v2: https://lkml.org/lkml/2021/8/13/889

Changes from v2:
- Suggested by Vinod
  - the 6115 registers had a lot in common with v2 registers (and not v3, as
    was initially assumed), so those were reused whenever possible, and new
    regs were added along other v2 registers.

Changes from v1:
- Suggested by Vinod
  - removed v3-660 constants for regs with same name and value as v3 regs

Iskren Chernev (2):
  dt-bindings: phy: qcom,qmp: Add SM6115 UFS PHY bindings
  phy: qcom-qmp: Add support for SM6115 UFS phy

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp.c           | 124 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  18 +++
 3 files changed, 143 insertions(+)


base-commit: 86ed57fd8c93fdfaabb4f58e78455180fa7d8a84
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
