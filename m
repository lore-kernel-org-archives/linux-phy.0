Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83C7CC4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 16:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vF5a6uAXEOie3io5HFn9zQrwfVNVaAMym2fUgDifvhs=; b=IUfOcv816XWEuP
	vXjQwDXyEvfvA3LNtsRm+eCxC0wf13d12xH8gsCldFBdFAM19QarOrz+rr8LAwOPM/dTnAf5+HqEG
	et/8K1Jt33DcadwabJegOO8t8cz8/NT6OIGuUAqmTJxm+tHjukjtO0BbBNuODXziJkWGTZKB4b/+u
	zblTcvx4f1/6tAKXnkadDr9Jfsz38XVfHph/xhcPCv0CJuTXfxlo+iUx+yU8Kes9nd68bfvOJdK3B
	TOkO3uYTbx22aDsw1wASs//5cKlzNFhOfJ8ocuJlEzXn3zy/zRnDbkpbQQs56Q+MEZhIvkyBawjy6
	9C/Wk5aUPOItBoZhpl3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgS-0000000A7D1-0JJ4;
	Wed, 01 May 2024 16:19:52 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgN-0000000A791-0ZeX
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 16:19:50 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-516d68d7a8bso896227e87.1
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 09:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580385; x=1715185185; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R1LGjwu6MzdUaPKjH/XiZET2m/eVi/2jDASuOiEvjq4=;
        b=YubbbIw2sPro/bSnNN+NJfmko3NIU+sMTOK3wj9QaHrajqCWuGC3sQNABcyB2aN0e/
         nXZbX0a0QUhb/EtTo76w72N+W8mtWZHvT7eWgKZcbya7Hml/3axLfACBayWH2KqIsafR
         l0UMpdpMRJRiaSy3m59sfJuSUFnrupY+itWbh9RCoGs5+G2YAiWuhh8Yy1PVxapAPh1B
         Y1iEWsRznTJjVERYWIe6ihBL/Aj9Tgf6/Fz387MWxebKV8CMVG8zbskCMrckyU5TmGzf
         Lb+eZiuOuHezyPQGEvP564I1BZXyDCL6+SXKsGl6LF7Or+hGKIuqQ+IN7kR5rlauyefo
         zwyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580385; x=1715185185;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R1LGjwu6MzdUaPKjH/XiZET2m/eVi/2jDASuOiEvjq4=;
        b=n1UuuZ6IK/iJNyJGahzLQaP0td26kCLTU/TTCIu5sQDn7C0VQDGQS7jRZoMxhjXxl+
         PxTDGdLT+nZJZUEibcqIwQhByoBTeZOClk//Z3MxBXCDbfpoUzfq6eLnRXo22bP0wUEf
         AYXKHmPc+0wZxwE9xIbWgqime8IbIiRZNiFD+dKE7N+RJUTe7fRtTt+nhxEerWFQ9zPS
         BUzIVo8DhDon/2etQuTy33MBjBl2wWE59UDKSUFWHxrPEWgfJ+WMzNoT74pMTDdMOIK+
         7CMX68J2m7Wt46zl01GvI0jxIvRSVYsSDKvQ9AKdjPDgb8LYzawrPCc7CXtDgWC0NZ/C
         Sy8w==
X-Forwarded-Encrypted: i=1; AJvYcCUQxRb1Z8YvObEBu5EKVNkUNsJl5ybXSehYel/pBI3O0fdf0YjDU7WXEt0609DUkreQWh0hXEdviQvp/qVRt4B9ItgVihQjEUFUSb+kVQ==
X-Gm-Message-State: AOJu0YxkpH8Y9kMy35o22NBrgB2LHEp0XVXZ6woWl+x6pNOkUAsqDIlb
	qkwmqKrjbQ57cPAOeaVwebhmxfoL0lMpVCkdIodESABgjzzkb5l0QffGht9vQyw=
X-Google-Smtp-Source: AGHT+IH3E60kzfiMlELTC/hNkguntyDCheuWPkVrC81ZyNy3wIgVczhWGMe5SUFJZ+3XRjAYYqlG/w==
X-Received: by 2002:a19:4304:0:b0:513:dbcd:7b8e with SMTP id q4-20020a194304000000b00513dbcd7b8emr20829lfa.24.1714580385326;
        Wed, 01 May 2024 09:19:45 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:44 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:31 +0300
Subject: [PATCH 05/13] arm64: dts: qcom: sc8180x: add power-domain to UFS
 PHY
MIME-Version: 1.0
Message-Id: <20240501-qcom-phy-fixes-v1-5-f1fd15c33fb3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=795;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=rlPIxlI5gdNvSgl0pBH6f4cNs0y9HMlaG1lqaxfSHzc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuZrkU7RCccVr5fxxcKJu0/+NwDnrejC4MnY
 l9KXgJNBjqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmQAKCRCLPIo+Aiko
 1V4OB/0XXfnlyOiHQ8kKWuNpT53Yz0hVFoL0ULg5DYUTwTF+/ZMfbHzxmY/2kF35NcnasEB5hH0
 GYQfdgSgwopA4o+2ujJ2WW996MXOpce2Y9COy9/p8XUqCSAULK2ikvkSAaU2gC8nbYw2RaOv0f6
 zRkmpVKsIK41+jOTe2RLCSPuArsO/d58evA5BxoBm4lGScb229ApNkAt2Bu/b282ggPHU1/QGNI
 bMgAOhPT61cp+cfCtRKyJzcSXaVRi5TyEThgkjaQQ4WX+p+dWiqf+Q+pu0I7CPZeGZJjFWQ54Dz
 /be9XNMnAaR8zM6uG8TitOsCEbD/UTZhvURVCMNugUCTBWsD
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_091947_340208_8BA3758F 
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

The UFS PHY is powered on via the UFS_PHY_GDSC power domain. Add
corresponding power-domain the the PHY node.

Fixes: 8575f197b077 ("arm64: dts: qcom: Introduce the SC8180x platform")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 2d2cbbff4e13..87479057adde 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2246,6 +2246,8 @@ ufs_mem_phy: phy-wrapper@1d87000 {
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
