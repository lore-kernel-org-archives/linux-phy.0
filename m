Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D46EC4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 16:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tarFa965ih514PhTVAyNvYsvywn6t/rde19uebQ34WU=; b=z7x3r4cquQkOuj
	WqnAdAtQhoUWZ+2Ps4RdVM1SYDjNRDMAecOFq6bfle/3dqFcn4Ja2X52CywScCAY5zTJxRsQFSobZ
	kF+OSSVAFTp35hWycb6DSnE3/9P7npmhTLkWMSzneIY7uZmEC05QeFbHTikU+w52gpOfJJDbwdKH0
	wwwmBihIXTArCYZ+ZbfkObFP6D1ABte/ERrXjBI5w+B9JaiVEm7A2qUsBe/0XjXN0JLHv0r+x3LGr
	A8cNgrOkQkOijHHjV/ROF1v/6BoHgdXBTBZa13Ngk+FZDRewQcu41AiC+qIIQYpw3LUJA4rWBMCME
	4sjsN8ZdS03E2H0/YcEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgX-0000000A7HW-3BF4;
	Wed, 01 May 2024 16:19:57 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgS-0000000A7C3-3vqx
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 16:19:54 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-51967f75763so8128939e87.2
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 09:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580390; x=1715185190; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j0hw3jt/ESZ12mRMzPe0JCXtbJkvAHqnRe43cp2kTY0=;
        b=aYIeTDxxVdl3ZFDURqI8uxQQ7EKcGjju0iQm/MLehNts52nKgmNeH4aIJH8O8lqAvY
         QsdHmtBwi9LLr+FxBgNxEgZIM4bf0sqx8cnmJm1ar4Qs/AwhyfUh9OJl7Hg0b11qU2NN
         lYPrK7vNMEQjhmgxqLtPVCZTTrt76sfR3/vPSwfkxIRnGgzSAFHzIvYD5BE4eQ3wwj1v
         FclXL9KenW4OnbbHIqPrX+g9Hi15NiRi5K16lzSO1qFQx6OoFEbRJeCdZSFx2o0ZVGN3
         bBWu6jTvTZNT/H099gRztiaZAwYOtClqLzYFcQp4C21SaX+5hkGhM202Dgcpzylyd0+l
         LOpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580390; x=1715185190;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j0hw3jt/ESZ12mRMzPe0JCXtbJkvAHqnRe43cp2kTY0=;
        b=CgNDHZfZ3pMJH2LgsBC6MXR8kG3i4o6i56oUtrbPUzSHOc1+6Z3wQYOnPrSUh9tyY9
         RcRCqGvB3z7IFU3TqZPjACKyWcWPrLMnZsdImbNwfTm0jJBQ8W2cHTMM6S/2Mef9E9gc
         p01zVcvLrHfcV4ksmJRvfLyxgSvvF39klA2MbvqauYQExC4weIPKIwYFbP2vLkc/LHlq
         f40kiisa9ROFbic3YxYIM2YMBwIS1ZnZPgxdsfxDxWTgYfd3RbJylk4RPHVsRxOZXUbk
         SBfhGDlxaOh3jQOQwAbWgKsv7utNqeVplycrOdRbPG41T9aVxZFgEZF36Ylufy5qVPvU
         63Wg==
X-Forwarded-Encrypted: i=1; AJvYcCVVDfFo189isnYGnJm/Jz7ajdtojwE8CSQ9THPMY7BNqvt4+T19tw9N82PsZxsw0ksNTxG8yOkH8305MGFxDeffqsqPWpdba7+tCNu/aw==
X-Gm-Message-State: AOJu0YxfEg174+rKRxTs8hs3wIye61z2QauwGxpJ+YjBj8KYmz/XNqi6
	/Z0Y/MFLdlFdpsd6DyjB4tGoXl+RTeovzgH9jMkZN99qrx8ZA9wag+knxvD9NXg=
X-Google-Smtp-Source: AGHT+IHbn0ATZmCrTkG805J1yCfXno0/oCz4XkCrrJFKmR+qZAY7zCpYwUM8J23sHr1uKxIPRHhlkQ==
X-Received: by 2002:a05:6512:3048:b0:51d:5de5:8189 with SMTP id b8-20020a056512304800b0051d5de58189mr2893596lfb.30.1714580390657;
        Wed, 01 May 2024 09:19:50 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:35 +0300
Subject: [PATCH 09/13] arm64: dts: qcom: sm8250: add power-domain to UFS
 PHY
MIME-Version: 1.0
Message-Id: <20240501-qcom-phy-fixes-v1-9-f1fd15c33fb3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=786;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=v75KRPGJTvZofiWFQUifaPBPxJ84dw2ZsWnNnHjcb2k=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuZkLhep7ItNeEem0QksekwHSJWJPgoJNXPV
 gY4PL/YOl2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmQAKCRCLPIo+Aiko
 1T2mCACbrpJPNbomiyQ95LQspmXzNhzZ8TBqV4Tzi/wJ6dCaqK+3f/qUlriWRaf0NCvwetrkx1l
 J0hW7d62W87h6mQj0IHlfziTv3N9J8KGOz3fIveTQ+CkYZDsZFLyMMBgsb7VRSwKAIaN/Xd/S+R
 WqYaU3V9B+DfOHHzPpF1oeqHDBm8QIdLxx935DNpoTviKHlxUleygeYQxT/2eMuTyBHZnmlrefO
 lgOoIaOdk6thH6fNp3TGi17mjnuXcBYuQ+S76HYR63r/ONMuBBGyEObr4zXvNfkErNAijObnGD8
 PY9g+5CBsHogpb19+OqIRlwZbENg/sG4E/GjLa2TSR3tS3gL
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_091953_086950_4AA39C43 
X-CRM114-Status: UNSURE (   8.91  )
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

The UFS PHY is powered on via the UFS_PHY_GDSC power domain. Add
corresponding power-domain the the PHY node.

Fixes: b7e2fba06622 ("arm64: dts: qcom: sm8250: Add UFS controller and PHY")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index d6c8c6c2eced..425449ffac30 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2580,6 +2580,8 @@ ufs_mem_phy: phy@1d87000 {
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 
+			power-domains = <&gcc UFS_PHY_GDSC>;
+
 			#phy-cells = <0>;
 
 			status = "disabled";

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
