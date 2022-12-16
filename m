Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1376CC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 16 Dec 2022 23:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BR4JgsJr/EeiNOA9qFvE/IAL/6ENSTLASF1pZGhByHI=; b=BzvMZQ8eAgaZ6C
	M4MhbDBQ8ustSPftEoyIGMInCof/Np+QpvN5OLP6QtwnkBGATqoKhiLU1mzZLP7l0UHN1H0GH5IGp
	tHwvbbEslVCQI2FUJLLSTgQgSOrXYciOIRsiPSnYszFjbA3gu9/b3Y/nl6tcs+Yd5nF8rL+TIcaHu
	hIzZ7QFuASLr2O9D+74Sw58Zf+G+4V7IA5RwVU4GJcaNiP92pSPNKn4VI8IVObB3gBrhEsh5KVVwx
	5LBVXPy5sqcDAipbzYwrhYn5QI6tBnK3sAE93Ql1uXuvmqe+MVVzeWudCCuZyMkmyZRltRjM505P/
	8gWbqbtxKh0hELB0ZSCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6KKJ-002jFl-6M; Fri, 16 Dec 2022 23:41:15 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6KJd-002ivq-MG
	for linux-phy@lists.infradead.org; Fri, 16 Dec 2022 23:40:35 +0000
Received: by mail-lf1-x129.google.com with SMTP id b13so5818302lfo.3
        for <linux-phy@lists.infradead.org>; Fri, 16 Dec 2022 15:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g/bLk04dhGvObgv0ibnCNcEYZnqfFntTEvodjggi70o=;
        b=J072llu5NfA6FPCI0kSB6d9eWuWAoO5i4aFxwLXXZq/JJMYLPfmWT6NWEIOlK70wUD
         ZuhE0Bg1O7B6SARBI8G2FGjIeIMsm0oVgXUjW2KcL0pi3zQ/cGucyEfBDKHrOTHheRSN
         B/SR2Olo68a3ZDOekdmIMiDyIumvA6A5hRgjQ6AVV6cXxUtauGg2U+isTW9mcFrr79ff
         KhQHHRF3Ty63pyfTiUCQsDzG2+jTTcLWKxJOtvcG6Ro2/9rumyH89sSaHU4mzHhjrSxs
         fzc6ccZ9W5jOB+3Ftdhn5J6JlpPPjxkCEKtL9wb5fuGBwMZ/iqmwUGTWOSuLOe0WG4We
         geHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g/bLk04dhGvObgv0ibnCNcEYZnqfFntTEvodjggi70o=;
        b=u7QdGJo7R0vrONQQsCuXN6JxydtGXmSuWktqnWJhSOeHz+s93gk3bSE6MiPBeiIuud
         yyCy9Z+qJM/7yQUehPrWAWocu0eYGwbepNREW2KqLa9l2a8g6PObTYAAFcPDQz0z0nD/
         BoTZ4wF5vARoEVc/8+YZ8l2slbj4l/GggcB4qUqL2VCKzWj2CcoGUhVBEOWjM0Lw8rdd
         6Bpjz4AVG0Zz14DyLeGIfK9lpnAluIaMUKjzzKQv9XqcRPZAwSU4f8bAOUvP9J9zPogF
         /okYMN8mwsstB/+qfbO9N+aX3Jpjb77RZFywa3jhsK5URAgFVNwwvtrZwG2L/PgzLkBT
         zssw==
X-Gm-Message-State: AFqh2kqDb/MUEDFRp6kU4XJ66umewx/LCQQfl3V+rvDLQVl1A+XlXF2o
	T+nSVq96ptJTk1Hd5ujDJFbpWQ==
X-Google-Smtp-Source: AMrXdXu5EMtQvFkCcKMVgrjQBjg12/f7JLtr0e3sjyWv4wljAUzxoT+/cbrxL9uucWk+Con97pufQQ==
X-Received: by 2002:a05:6512:12c1:b0:4b6:ff4a:885a with SMTP id p1-20020a05651212c100b004b6ff4a885amr10191927lfg.37.1671234030228;
        Fri, 16 Dec 2022 15:40:30 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a21-20020ac25055000000b004b40c2fccfdsm336950lfm.59.2022.12.16.15.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 15:40:29 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: qcom: qcs404: register PCIe PHY as a clock provider
Date: Sat, 17 Dec 2022 01:40:27 +0200
Message-Id: <20221216234027.539917-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
References: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_154033_765537_99E36236 
X-CRM114-Status: UNSURE (   7.03  )
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

Add #clock-cells to the pcie_phy node. It provides a PCIe PIPE clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index a5324eecb50a..ffffaa7507cf 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -810,6 +810,7 @@ pcie_phy: phy@7786000 {
 			reset-names = "phy", "pipe";
 
 			clock-output-names = "pcie_0_pipe_clk";
+			#clock-cells = <0>;
 			#phy-cells = <0>;
 
 			status = "disabled";
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
