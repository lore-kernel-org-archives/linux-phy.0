Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2B0CEE49AB
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 15:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3PNXXGussDvz0gKEd87S6EMvjdmLlDeJ/rnVJCw/qo=; b=p8lT3n857uWFtg
	yxgsXw4RXAniXYIxWt2OD3bJ5+xaFr5dwANVtymnzDU8i4RVyoVTAwA2IVUcBmVZdOH1HciN8bkHg
	AYpdOiilSRJfWCeHLrBYZvE1+2lAnnuSFaNhyR47X48EU2+uYUU1bX3vqHIL7tRHo6iZKaKVQXc9X
	UrUpqPzqDyJqCY6thTOblr48ZBMkPT8gi3tfPXZ8gg+rbR53KhtKMr+GtSognaww/da+19jjtTu0C
	3KNyC1OwzbWkD5kmBxpo7Rf6OeStmH/OX1FB/7/7Obwu2B3XZ7K5q7tAkdU+7JTW8IUnW8qMfA5TK
	e/As19ljMTymvrFmPwvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXkNX-00C6jM-1a;
	Sun, 20 Aug 2023 15:30:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIN-00C1As-1L
	for linux-phy@bombadil.infradead.org;
	Sun, 20 Aug 2023 14:20:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=pUMR3LqJcxqZxpTo1E2SP3COlMrchmG5hYlUxy2vLhI=; b=UQEeVjhqMHJAZzIEdI70/I0NEf
	XC3xbinkl+BtTfg6DxpVWyI43Veb/NzcmAlvKKIWWH+KOVsxfF7PnTTugr6NRToIpvbzGVT/N7u6V
	5Mk7Hv46FxZWKc06qAGVlKeLI7ijNcy9KVQr7uQ+eEvwBwj66Rt4GhuOENBPe2u1g27ZElDF4hMwX
	HOLgzmjMvHI/5pz48uza2aVXs1KlSz7J7eM/zYSym4I11PNRbxUnP6tzv7ov0TSkIyKaN0UENa+17
	FK1cou6iugn2xfATNZuUyy+OKvEoSTjruI/ve4jJbjAXkeZZENvbm49W3JstfOfIBm3LlBf9tlkFR
	3ra42S9w==;
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjII-000Xqc-0c
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:20:46 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2b9b9f0387dso37340281fa.0
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541240; x=1693146040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pUMR3LqJcxqZxpTo1E2SP3COlMrchmG5hYlUxy2vLhI=;
        b=qnumYkRMy5qjqNn91jKN25UnEPXHQG3fjXMmnvRFnsHQL1bGXU6j0EK7O5R3lhiRxs
         +TrrnufeDtMXTb4guljQcN7TwJ9iTTn+MccPtvrKDvrbq7hoOpo9tCLiRb5IlBV8bTIw
         eYWLqrBmqH+NXhipTNcpTc/QVy490kl7BPrLHm/fXzYNCCHNr1rYfero1f+PF76Bnz/x
         UkSVUp5KrChTwAH1vVtUQB6fq2M8DIbZbDmaDo3iVZadmU5JE2eHAzQpqYX/zxoiDeOE
         tRVCSWX0QUv/FauB9T4l21HhHrH4z2+D7xHdIK8lM+E11CD1XJuBk34eef99ZIikquRh
         23Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541240; x=1693146040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pUMR3LqJcxqZxpTo1E2SP3COlMrchmG5hYlUxy2vLhI=;
        b=Ekacto7diOFTFwMjKoR5jee9cdZ0vgOAX4NEgV9jwsWw4IjIN45zp8qC/Bv8o+4+0Y
         RDU7OUebCNwe1D/sxbMJDfqNk3uvxYq53Lh44E8r+nZnCA93WiP8CcSsAI31Plvj3o6q
         RUmkdkEmhukcJNp4Hgk67zOXEPm+9/vMfhywQiAdtbPgZV2MVptOEtZ/3nWK7v+4f5hl
         sO2IaH7BDMSsm2Jk1QF6nqaT3uYLx4m0HksGhpTe1C7YDA6E4rzkFX1Bj22a1xb7zUia
         tZ1SErpbG87d9UwQYvuoThU+hV+Eg0/k9tA5q7B4KaIrMQbnjNcNxbiH9Rgw/kvEsogX
         thvw==
X-Gm-Message-State: AOJu0YwofKZqO2eQvpYOaBAK+2KSWL6qYntycCl6cv8oN//SI//WuoqW
	L3cSDcVStcC+nOy6tkk3m84fDw==
X-Google-Smtp-Source: AGHT+IH9SBm8UHcwiZJ6hZkUq5f62BcCkWHDyWeTvgtXUbCl1CrVzCB/6GmGPVuFaN4xnmAlUYFBAw==
X-Received: by 2002:a2e:7019:0:b0:2b9:acad:b4b8 with SMTP id l25-20020a2e7019000000b002b9acadb4b8mr2948261ljc.52.1692541240124;
        Sun, 20 Aug 2023 07:20:40 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Mrinmay Sarkar <quic_msarkar@quicinc.com>
Subject: [PATCH v3 03/18] phy: qcom-qmp-pcie: drop ln_shrd from v5_20 config
Date: Sun, 20 Aug 2023 17:20:20 +0300
Message-Id: <20230820142035.89903-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_152042_307751_68C819CC 
X-CRM114-Status: UNSURE (   9.74  )
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

There is no shared lane config for v5.20 PHYs, it is only present on
SM8550 gen4x2.

Fixes: a05b6d5135ec ("phy: qcom-qmp-pcie: add support for sa8775p")
Cc: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index e15ea113b2db..373f959e439d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2342,7 +2342,6 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_20 = {
 	.rx		= 0x0200,
 	.tx2		= 0x0800,
 	.rx2		= 0x0a00,
-	.ln_shrd	= 0x0e00,
 };
 
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_30 = {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
