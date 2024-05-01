Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A607C25B5C
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 16:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BotUc9/+/8v7epJ8Dy7sevoh+3l9Jzd5fqSf3ttHrzc=; b=ks+eCCHFNETTX/
	ghzOupxmcoKYYyIZRGoyZLyRYKLbukWeV8IWNoJE9qUJdQtjANT4c8/s9hkrQq5lXwSiZXmRYPknW
	CLDCnV3MaQACMiGxoeSfou3PfyFzHrtkQNpgVm5aM4skisowKofwtF3JboEJkoh+JlyW0nE5Cn2QH
	Zev7SIiWIsjZrUwe/biVmh+RCuavGtdZMr2yB0YR3TqmDrP+FrpmLMa8yIfNLhNbiM03erIHjRGZt
	dnU+8/TrpoUkeh7+1njEYh8kKp2q/RSuuNebaNyItnK/u2cUHKQ8ZPGjGba8JFfNIscr+YIHb6diU
	6begjS9tZ6wn9gHAqnUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgY-0000000A7Hn-0Z4e;
	Wed, 01 May 2024 16:19:58 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgT-0000000A7Cy-2k3R
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 16:19:56 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-51ef65c8b4fso291098e87.1
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 09:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580391; x=1715185191; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nj3BTK0l+BT9bbcti373frC3vH8O2ITnLgMyO1UCPOY=;
        b=Qvrk8D5adRnIisEDGj3zaq4NUtXI+5bUfsbjE3KotFZdHElWs1cPvGDdwmr8DDKIrw
         E19LpY/J/CBc7l4NV51BOyh1B8pm16WHaIkq3L4+ekh/AaY0nbyoSzfcdkYxy2awMmCh
         nUDJDIkUSX6e31yseCgAFRu5ndr7yDhaOB3WEVaNRAeFoDpztQmnfntHn1wY+5VoQIdZ
         3CdkE3lc8RWmJZ1LwnKw5TOyRlKJI/hSScALaaG1jxtzXP3HrlFi7ZvMX1iPkAhKf2GQ
         1/ZnWODYkmQjeVXYyRy4GdFx2OAooYdrRRZfJfiRvz/E+sFQalQXVzZAY2KxT/0N90uF
         8rYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580391; x=1715185191;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nj3BTK0l+BT9bbcti373frC3vH8O2ITnLgMyO1UCPOY=;
        b=jVB+11B9EsrQcF/+rG0Jmzz8hl73w/bM3GszbAEX+7EdLNmy7KNs/bK1ueldIfp5RQ
         CCJ93klc9TwZSnuLeiWQ0TVNV/IrTzS4je6+hkEQUef/WnKIGbnUFV8nIDwmH3fRORcq
         TdaP3jClgpIORicT+TLVYyNDz9RUXCpPHX8wOaynV/FB6IxHUy0R1oMKFrv2aK5pnwCC
         wIWzThCW22WS3JnlhxRiSyEzxAxhJwxaZNaS5jB2/GaKL5GkBAYrAR/IyTrxqk/brKzs
         3BdRC1eEM/ctJM7t7ckaV4wlTlqpjFjXW+f+IvoRden7UxxNdFXilDXkhcvNkAZRW+X6
         FtAA==
X-Forwarded-Encrypted: i=1; AJvYcCWvd7oCrR5XHirqkZqAgVI9HQ55b1gfCgZ38fQp7v4oOAkpoFUTR+4OrMeT2ElcAlQOhprMOGBz/tFcKmFO3wosfAwSGZbA0ukPSmx0Lw==
X-Gm-Message-State: AOJu0YzdXNg7FfVdzcOkybF3uvtDJGPR8bbSVwv6uJd+xOUq+YjMCDCY
	gQFif66oDqP6VFP3TEQ6dnumh/iCQ3Adw91SYE3JD8+Te61oSb6+7G9ESv51lMw=
X-Google-Smtp-Source: AGHT+IH5tqWHtCRAr2aX7+ZebCNeZ1p+W8axFzTMuyk7E9qHpzR2YiJ6RxjCDXO5qhQMUA1fIaS6lw==
X-Received: by 2002:ac2:5d46:0:b0:518:d5c5:7276 with SMTP id w6-20020ac25d46000000b00518d5c57276mr1652942lfd.58.1714580391344;
        Wed, 01 May 2024 09:19:51 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:36 +0300
Subject: [PATCH 10/13] arm64: dts: qcom: sm8350: add power-domain to UFS
 PHY
MIME-Version: 1.0
Message-Id: <20240501-qcom-phy-fixes-v1-10-f1fd15c33fb3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=767;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=crSGRR+b7lbsWsWhLmgSfaIcD39glncVkDnT2aotG1Q=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuZ25x9RMFNxGeyyvINVNZjaMJ2VVrf0SXZX
 QiGBYnfYJWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmQAKCRCLPIo+Aiko
 1XWlCAClFYNBSTiJ7a/SX/3RNxoq7j6Bny31sT04H37W7qPEcpq6UNiGYiVBrFycIriY8gxYID1
 Q3GRx5qRyz2E2Kb8vGrbiDZ6zD20WfC3rMaxnyQYl+g/XF9PfILbF/xehPX5FrmfTztd5vS+IH1
 JGV5svWgNvjGT+JZFbbvHKwPIuBllHI/Lu9bU2+ux/Ud6w0Xf2Md3zqQS9a2dD1U8zJ/SR1qyL8
 zmqLGweUuncnP8g4kI90eN0z86UUC62nYvjxohj1sVFmscsgA9j+j+/DBALhGwuhcTAFcylurZz
 62U6E5M5elS0/FvwuyusWgYvK/IMiUFvoNLvrjsaqjF+g8y/
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_091953_906749_58DF4577 
X-CRM114-Status: UNSURE (   8.62  )
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

Fixes: 59c7cf814783 ("arm64: dts: qcom: sm8350: Add UFS nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index f7c4700f00c3..da936548c2ac 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1779,6 +1779,8 @@ ufs_mem_phy: phy@1d87000 {
 				      "ref_aux",
 				      "qref";
 
+			power-domains = <&gcc UFS_PHY_GDSC>;
+
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
