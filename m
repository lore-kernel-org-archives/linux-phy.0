Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F03CEC77B7C
	for <linux-phy@archiver.kernel.org>; Sun,  7 May 2023 14:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4GBWPsP/zGYsZFUYIYN2ijvXA8dybW/hlTJUXp6Dq+U=; b=QHSPmruEwkfyZz
	UdREMWItXQ7QcAaCiCL8DAfuJ2kLLpSlPCsuRhjgdcJpD8Zpgtqgp+3JdJbXrlgFLFMNHPOtUDT/0
	cppV9K8o7uUS/XtFwa4mVYngMRLSZGelxip9cBhXjtkRBDO86wmPAOkF/fsh0rsphOfP8MdauNKDT
	VCcNjL6H1z9DK0sCBQifZNwe5BJCFIxLFlJ9l3Z8BzTUZ2AjUIgysEOByTSrArTR+QdINmcQn0L0K
	w+frnKuO5x196//hG6q/2K4/77lTV9tm9B/OzUdJ2bVzcPIUl2ZeD+Qb0akrqv28NunIDY8vmsAKE
	QwEOt/bhYyOgTcH/GGZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvfgX-00GDql-2h;
	Sun, 07 May 2023 14:48:25 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvfgV-00GDq0-0F
	for linux-phy@lists.infradead.org;
	Sun, 07 May 2023 14:48:24 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-50b383222f7so5421054a12.3
        for <linux-phy@lists.infradead.org>; Sun, 07 May 2023 07:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683470900; x=1686062900;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QNL3G/zxSdZ+IvZ1XOfmqIgPpnWosZByJqwjHAEj6R4=;
        b=kP5r1EYAU+Scv98scofN1apJWRF5MqDhL5gWvbtaCxQdQeXv2g0RbB/tDd3IgrjHBS
         A7DtU7kEPnIw9gSV0X/oCzGGxq2Y85xjBka/zC5nthJ54wq9/IdE5dlCUswDoyoKebln
         ypTwJ13SnJlbAHZZTkf6+1VJTa/8beRpZd2P9dR+1Rbbr6jQLyxiciiGOJMjUCJze6i0
         ruNEKncCHZDzGsy2rDT9r1wygasmtBozUEHBVjJR2DdZGHcQBTvqsc5CdfR/uZRvVZ2A
         WzsADWwRBKvK0gzEQqYnxpd6LOUETYVfrK4Hwr24d4fZqkS85LEv2jqkpkxTdTuGkKOX
         TSSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683470900; x=1686062900;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QNL3G/zxSdZ+IvZ1XOfmqIgPpnWosZByJqwjHAEj6R4=;
        b=Ud4T6MQBcJGLAl7QX37KnU7qjhshUI6gQt7E5I5lto3XbO2rQZXPIO3HH/JL7LGxMc
         a1mfwLcHqGTg/GNijxSb2zmzcdQR0Isqv6jJbkxGpfWhYqEUTN/1spp7Y1XGD1H3NTn0
         3ra9MbS7Tpxyg1BJg1p6Pty/F2/Ycvs6RbAVsg6RNhKLdql/zs7f2ZHSLNrHZWJ9qYzI
         cGN4dS+oYRHJpMysz+uiLNdxOk+WOkAeMdNMM2s9inpf/yUy1Zhu9SrGeB+x2zR6kwhK
         Ken96SwOvIAcM5CdCf+NGteZ6NSwfC7Lx1YXkbQzshTrJLfGBO/58fadyi/SvLU8L6g1
         +ziQ==
X-Gm-Message-State: AC+VfDxcoNOCEZdXBCweSStZpWKIIbtWXhmx7yUCzhCde04qwuA957zS
	SAF/3bm2nRTL+kUO0VjfeiRn+Q==
X-Google-Smtp-Source: ACHHUZ412dZZ69NMaMdAVVC/Kr8y7ymxj5N27OqooAVSH+e0ZyzqbU3bA+hcjnoiYD9ORaKf7TaPLQ==
X-Received: by 2002:aa7:d901:0:b0:50b:d1a6:116a with SMTP id a1-20020aa7d901000000b0050bd1a6116amr6338818edr.32.1683470900249;
        Sun, 07 May 2023 07:48:20 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:1757:b51a:9965:e81])
        by smtp.gmail.com with ESMTPSA id y21-20020aa7ccd5000000b00506a09795e6sm5026724edt.26.2023.05.07.07.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 May 2023 07:48:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] phy: qcom-snps: correct struct qcom_snps_hsphy kerneldoc
Date: Sun,  7 May 2023 16:48:18 +0200
Message-Id: <20230507144818.193039-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230507_074823_116922_F695AAEA 
X-CRM114-Status: GOOD (  10.38  )
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

Update kerneldoc of struct qcom_snps_hsphy to fix:

  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:135: warning: Function parameter or member 'update_seq_cfg' not described in 'qcom_snps_hsphy'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index a59063596214..6c237f3cc66d 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -115,11 +115,11 @@ struct phy_override_seq {
  *
  * @cfg_ahb_clk: AHB2PHY interface clock
  * @ref_clk: phy reference clock
- * @iface_clk: phy interface clock
  * @phy_reset: phy reset control
  * @vregs: regulator supplies bulk data
  * @phy_initialized: if PHY has been initialized correctly
  * @mode: contains the current mode the PHY is in
+ * @update_seq_cfg: tuning parameters for phy init
  */
 struct qcom_snps_hsphy {
 	struct phy *phy;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
