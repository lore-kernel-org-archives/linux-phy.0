Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 442A0C77B7D
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 09:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Shx47DZ9Q15x9L/NGYAmUGYDEL8GTUEUknAzodq5s3I=; b=NsC/Kgjq5lrPVd
	+TEMkk6XA4SS03qno09PbyTv2WG2QW1VTrM7o4T5CM/natqFhqd5M+0Fo/ttqPVihUS6Ts1ES/5Z6
	Qel4PV+S/kdjfp7yTjhH9W7+/iSRidP/j/jo8mN4okKDzTN4Nf4Sw/nl26PjTDgFBFndc9PHYg+0G
	llXC5CO7AoR4Veh0O6PCtXlge8g0+4P9V/772qEowKOQZF12IA5qDR45sMkw+tvNXX5kyjN11kmGc
	qJu5pP8XEKaGJGCmIGlIEAp0a+vSl0lSSNfcU4YNYnyKoSuBbVcxZvzuUCgTVzyp3kSJkyWegs/S/
	daKU9bD7ty0GsX/aj9yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyUtM-001e6n-2z;
	Mon, 15 May 2023 09:53:20 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyUtK-001e5S-09
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 09:53:19 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-307c040797bso3609086f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 15 May 2023 02:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1684144396; x=1686736396;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SNxrM+uJIOPJIXwlJJ9sHgzIu9CPqpz39STaOJXSb7w=;
        b=DkGvC8mVh8oZADE18D21T9SvV6J/mZ02Tdnt5MvTcg/fdtFDB/HSJ56UEPUxKiSEzB
         goX9v6WIEirJicxwc/ut8wg/2DE58hU5V6QygpcridmbSq4VJAip//exqYuH/718enpR
         nOLsnMz8G10gwGVjZhHyyTN2lYhdb1t4JC/yot3jFTEpNgHxx4s1Q351r7E8vuDQ1Mpm
         xp1Zhh8fLhKH8INlpKsvsHyvuWEyEcnslfy3dWQYyic0HdGGeBJkaRvT1gxwUw7D/xcI
         WUMqzfEJYUkwtKEVfRRgj544vCDB304mGIDDlDbDBb7v/pNYhtGPwS0OjHoqVT/wazuk
         I/1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684144396; x=1686736396;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SNxrM+uJIOPJIXwlJJ9sHgzIu9CPqpz39STaOJXSb7w=;
        b=WZqNHjNL6ENL67BFdzBqMRtp3bTjcl2Ula9/DR6YwzPJ9UtRqmScxVBJf6smli0Jht
         LqDpIdY9yHmCXeVQkxnZBZwOHC/ML8PzCd1IxJUhPErEJM3PDXYT5URFqFuBkLJp+Rmt
         WgIRH2p4yAMRJt+FoGfnQ1rURE0s+2q3Halkz1Wn7reHF21ARr8lzfV8bW93UxqACQfY
         ROwn69rj4k/qI/zDIVeQUjswdeq9JJdjv4GTY301NI8/VygENC/VPWHpQOcQr8fmPS9y
         9Olt2QpVG+mTmzQEz4dQbfyOlSb720eGcnvgE+5fPC2dJUjntaBxIF9gxYrS+wr7ZPBX
         7n2A==
X-Gm-Message-State: AC+VfDwpfwiDY7PaUulKoM97BJYhUS9UrQj4/myqhIPNGGahg48AlOjg
	4SxvbprrVR5Q1x8LTPPjClam1A==
X-Google-Smtp-Source: ACHHUZ63GBwkSLkmbOUIKbESa7bur7CEitR+NrF25bkHcdMP2Uyf2zY8CPZ2R36wcq8afF6leYpqwQ==
X-Received: by 2002:a05:6000:1370:b0:307:a2bd:5bd5 with SMTP id q16-20020a056000137000b00307a2bd5bd5mr15311892wrz.44.1684144396297;
        Mon, 15 May 2023 02:53:16 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:1388:9f6:c7d9:3b77])
        by smtp.gmail.com with ESMTPSA id q12-20020a05600000cc00b0030795b2be15sm24228443wrx.103.2023.05.15.02.53.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 02:53:15 -0700 (PDT)
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
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/3] dt-bindings: ufs: qcom: add compatible for sa8775p
Date: Mon, 15 May 2023 11:53:06 +0200
Message-Id: <20230515095308.183424-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230515095308.183424-1-brgl@bgdev.pl>
References: <20230515095308.183424-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_025318_080556_CF1017F4 
X-CRM114-Status: UNSURE (   8.64  )
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

Add the compatible string for the UFS on sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index c5a06c048389..b1c00424c2b0 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,msm8994-ufshc
           - qcom,msm8996-ufshc
           - qcom,msm8998-ufshc
+          - qcom,sa8775p-ufshc
           - qcom,sc8280xp-ufshc
           - qcom,sdm845-ufshc
           - qcom,sm6350-ufshc
@@ -105,6 +106,7 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-ufshc
+              - qcom,sa8775p-ufshc
               - qcom,sc8280xp-ufshc
               - qcom,sm8250-ufshc
               - qcom,sm8350-ufshc
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
