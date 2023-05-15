Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18492C77B7D
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 12:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pFvk88J58HTBOJfkz7MLP76hC4eHOAu1jygZYx17oEA=; b=o3pqkA9Qweg01S
	TEGzQSXDMWc+e75YRM2iAtYi+Kg1KxnWEMcHbS9h9dzj17aQ7bYWWHBb/euyimnuM64P5Gs7YNDC7
	TA0kcY2WjDtIsBA6mozC2eDm0twT+JqggQYZapzmmB+CohJwRP9tjsp32md3SpRgWVYNnTTicZGxt
	x/Hw7wrD+5szNdCXRFkO8k5Fj2D5nDZr1X4PB2S4/uhDNj2ASqby5n2Pq6J/NcAIr7yLSKWmWvijG
	lJsULTHXlwlgotTHpPISoakIvj4TWhZZTCVb3ZJHgK9w3kqQMU12PLs6u9wW8TIIHpBcEnHtopXw9
	nAKsTIYg9oC2HUWE16/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyXAd-0026Bc-1c;
	Mon, 15 May 2023 12:19:19 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyXAa-0026B9-1W
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 12:19:18 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3f42ba32e24so46800775e9.3
        for <linux-phy@lists.infradead.org>; Mon, 15 May 2023 05:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1684153152; x=1686745152;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L912CSeolNZtYdQ8RZjTKt4b4LSvo4r4682xBt0zJjc=;
        b=U+ib7nrp1j5RymaVeBottDtU2UQWB9P+aB7p2Kk9adtcpQ3b48jVgUfn+o15WQwh/J
         VZ+z0d0KjsTba6bzI2SucZqskj6kRcMw+HR4/sWtEI2tPD7/dOcXDeXeXL94BVFDWJor
         L6kYb0568hAlcDzqPVOtFBFc27Dg6/2icQXSnPvoVgos49/fSF7CsO7Xk8ErEn/WOZhV
         FYdAg1m2u20V7ajVbbLbHRk2/e10Vvz80LkYxH2v0ZW+1LuWlxW2tkM/fYWE3ioQdNJA
         9rwJGRKCOjbL1lt5QkoriHmW97ru2MLaNgp44pvlxQVZFhBNLz3nNRK+HtyKNupygwai
         uDxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684153152; x=1686745152;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L912CSeolNZtYdQ8RZjTKt4b4LSvo4r4682xBt0zJjc=;
        b=QeE3oRo6rm4lBMLnTSXrTSY3lzELhSaYJP+LBDAz+ULjPWqXXxJ4MMmPks3vwxEcMV
         6A309k43MPbUgV4r9JNQIfTHUsBbkQUpiWHQ4WjqZDNEdKTvwVtUUsn5iuZcFWpq9dZ6
         Km4Cz+rCHnspgTLTMfTdtaaWpJOoSx8IdxWe3aNlPfmlcyilC4a0TMvYVR6XMQXA1F1J
         6tOSIzicPTWDSZZXheeXBofW+UVOTwdKtdA/ENMpuQK08awLWPH1/To53pc8JNLVb2vu
         Y1dYu2ob6C4DxfP5XqKsz6ZkfUdj7AnIFT2QSA0IRd/UzK8JG1zbteQnSSsDJv0IWwcX
         t1Eg==
X-Gm-Message-State: AC+VfDydFnQuF3moZFd3U/OaWsoCrEvsVD2/jCUaDpGdv+iyCUu52SCM
	/43APEvbQwNhgd6937J2c0V4eA==
X-Google-Smtp-Source: ACHHUZ4cjC89qH3/rJziQ7Tbr+oTbvM0sVWCqTBk3NprhE9Hucvy65oL/bFZblZQcoXwom6wcpCXUg==
X-Received: by 2002:a5d:6591:0:b0:2f4:4e1a:bea2 with SMTP id q17-20020a5d6591000000b002f44e1abea2mr22755001wru.59.1684153151997;
        Mon, 15 May 2023 05:19:11 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:1388:9f6:c7d9:3b77])
        by smtp.gmail.com with ESMTPSA id k15-20020a5d428f000000b003062d815fa6sm32361582wrq.85.2023.05.15.05.19.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 05:19:11 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sa8775p: mark the UFS controller as dma-coherent
Date: Mon, 15 May 2023 14:19:08 +0200
Message-Id: <20230515121908.303432-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_051916_751465_45D5B045 
X-CRM114-Status: UNSURE (   8.17  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

The UFS is cache coherent, so mark it as such in the dtsi.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index c5e2e3256bc4..c0717dac100c 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -605,6 +605,7 @@ ufs_mem_hc: ufs@1d84000 {
 			power-domains = <&gcc UFS_PHY_GDSC>;
 			required-opps = <&rpmhpd_opp_nom>;
 			iommus = <&apps_smmu 0x100 0x0>;
+			dma-coherent;
 			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
 				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
 				 <&gcc GCC_UFS_PHY_AHB_CLK>,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
