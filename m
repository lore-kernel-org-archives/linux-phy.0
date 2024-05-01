Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C388C25B5C
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 16:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrmAbqQUHC58tW/4HFzwxYDN1GKl4E9TVrsc5C88pYI=; b=RaGjDIHqExHPk+
	fHP1/MzacQpBWOxYjtzCEt/EyxGnVP3fyYo+SI95wLAnFTuMv21pG4ZOLtK92p5tvjmcE920Sr20v
	M1cFluNTbqHO/0jVRXYhCOzXGUh268hM91Tt9I/c/EIL/rMWyabMkcNQDn+7ZIPVIq1FdYVYJ3Zfr
	3Yr+S8DkUmFO8NLVLVZjX5HAchJQE78lKmipkvMhdmCj1b+rmZzn3oLN4Ofn01kpQ+YGs9Mm6amHq
	/mC5HQFxm29OvnerS3LJUiYb4majZUhW26JMSPDDsCcymfkjgD1FsTWl7LSFkHaITyEMkLhFAoTJt
	UXmafcbflUatt79pokGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgP-0000000A7B1-48XD;
	Wed, 01 May 2024 16:19:49 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgM-0000000A78y-3Frn
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 16:19:48 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-51eeb947b78so368780e87.3
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 09:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580384; x=1715185184; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IwZX91+fyu2v2To8YAuRlrp8mqx8VMi7WeEYZ8W2110=;
        b=ruRwYHla03up0VV7+j6yfLlZL0DgUAfsFuGuo/rlNX5/SS1TxTajb53SBlX1nEWjuY
         SWYuzOiMdAoIaCe+SgdXvzRNu/UQlNSQ+HkbVRrDWkpmLzjZaOpBy777OlgjJyirr1x6
         jLj4G3F6KyH15bInnPzIy+hk0fSHvVecSxDcQApmwYBu+e8riNHyDdqYoEemT1G7BclY
         LfdU1VCOLrpxB2OS8LFp+m6BxH+M0Ciwj/LCI4Z3XX4YjQzRCsUlpDeigbYJeHyfj/RC
         zMuqgDA2els4ASbBxK/7yexkTh8utxUVD2HJpkupzJy9z3DaUJw/cNv8zQsZyE1ejN4c
         0jgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580384; x=1715185184;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IwZX91+fyu2v2To8YAuRlrp8mqx8VMi7WeEYZ8W2110=;
        b=vFv7+SeKun8l6py/nGdOlwkhRp9yBL+sZAoBud98UDr1OKSfzu88pevRokFyMEE8hE
         ghIKaHIIH7+r01YG+Ze5IDcZdVAlvHPi0QsP85rHcHGJPBwY37xMHikvU/s8Az8khrQm
         1lXJvqqQYGobUpzsAnntazPGnjBvdGBS06OiPEoy84EYrZwu7VU3xxvNrg0HZtoGMW11
         rZ6Bdd87Q0RMgjksj0iXkMscS9/4ucCsPBO5ZWNI9GX4tDJQLKIKOtCAKtT4jMTF5qAo
         nSyBsQpdTSR2A50BJOPJO1oUu53DFYoIcNMxPFxxBzNwGYb2xX49+wMPjW8PTk9vtaLJ
         HIuA==
X-Forwarded-Encrypted: i=1; AJvYcCUAfh86QiB4miELWzInnK5dEx43Gmz6CQu+GCoqOgWEAPgdBfwXdQr+0Nf0i1pR9T97XpD/CMD5QWLJxXK+xv6mrYmdFfBqEV3xh5kseg==
X-Gm-Message-State: AOJu0YzOIijQ2VYX+8B3svsorB++0puwSYVnd+yk72UwwwxqVsgTtAw9
	sSla0xaebngRVwdzx4yQPlZ+5fwm71NNMKtu64XwlX5q59PTyZhlCE8sJ40xjyI=
X-Google-Smtp-Source: AGHT+IG20sfl5EC5LLMXV4kcmeBO9vuLq7BnZkB28yj2/hwiT0Ze317OhVo+dSt1B/qoF7/EUeM7XA==
X-Received: by 2002:a05:6512:20c9:b0:51a:c207:12b with SMTP id u9-20020a05651220c900b0051ac207012bmr1484187lfr.37.1714580384459;
        Wed, 01 May 2024 09:19:44 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:44 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:30 +0300
Subject: [PATCH 04/13] arm64: dts: qcom: sc7180: drop extra UFS PHY compat
MIME-Version: 1.0
Message-Id: <20240501-qcom-phy-fixes-v1-4-f1fd15c33fb3@linaro.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
In-Reply-To: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 David Wronek <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>, 
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>, 
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=921;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=reMWTTafaerBcmGlLpLFc80Ucy1bb2eDytgF9WWMKMs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuYIw1k7/VIRimo91ElHCaDOpuIa1DpOZFh5
 D3ntjMul7CJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmAAKCRCLPIo+Aiko
 1bdyB/sEzD7K/i29E4xVZevYaekOPnK7qu5JW5OuE58rlBhVIZh5KWgpVKh/D5gQTDhIJpEAPwJ
 YsAcrlxEZmMRAf37N6fxZXLt4ko3t+Bz+5g8AdjnTu35CZGn0C7MKf7kvwjCXdck7mVHdtcHjwl
 etrwmLHSZJ4fH71QJxL28NV525ecyKhdPDhEsobzRwFbbKWeC3K3gwuPb3omnkeNb8DonIkc6K9
 fl3DLEXEI6fbI/0DzrepZwefeoiXdF8EgI+BOvLIT17BS4Di9iub3h6U4WiSRKjl+EeKGs2XlNj
 ij+BpqdPkSwxVBUk/Kiuz7l77s/0pa038i0pakrJFhzq9ynU
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_091946_916758_1B003089 
X-CRM114-Status: UNSURE (   9.40  )
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

The DT schema doesn't have a fallback compatible for
qcom,sc7180-qmp-ufs-phy. Drop it from the dtsi too.

Fixes: 858536d9dc94 ("arm64: dts: qcom: sc7180: Add UFS nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 4774a859bd7e..52d074a4fbf3 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1582,8 +1582,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 		};
 
 		ufs_mem_phy: phy@1d87000 {
-			compatible = "qcom,sc7180-qmp-ufs-phy",
-				     "qcom,sm7150-qmp-ufs-phy";
+			compatible = "qcom,sc7180-qmp-ufs-phy";
 			reg = <0 0x01d87000 0 0x1000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
