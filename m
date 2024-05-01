Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED000C4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 16:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTLRH+t8q42+KWlGcbPwQFXvBV8wmu1pGEW/+MVELIA=; b=tKX+dpDvTqNlkj
	ObfIck9zjOBGbs20tY80b9BupXlkEW9W1k3UVqtJh/CeGk5NY96C4y0sQJfHsODE2hVTJRPES/6qt
	A6yr/EOzBz8UAIpemqdfmtLiya/8zXwsse9uERtPUjkFHA5g8Mb7FBro89fiszyv7KQWItRixcfVz
	egX58p7dKIIUp4fNl1NSlIpJYibvdME7a4mRkhpnsEhhA+/TDNyi+H5+NDQ6ul8R2IJRNemb/lhHV
	NBrb5ErWqzP1uRjPoZR5ylxIzq6QmenQSVHbvgSvYJWJ5YEy4qTp/JuE+YLIyCrgDhbfA3tIzyjvj
	PhIck8znpmwbl8lOeRMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Cga-0000000A7It-2fQs;
	Wed, 01 May 2024 16:20:00 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgX-0000000A7Ga-0btW
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 16:19:58 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5196c755e82so8632322e87.0
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 09:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580395; x=1715185195; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8qbl1bY1oXPc/BrE+BcAYxIg4JVPN7Au51+xkWvlhws=;
        b=BrZtx3t0mF8aNnMKjN4vk3uM/Gv5xV9SzpUoFv51iTtnop23GkVoqifnenzw+QT8zp
         oCw9k+B2XrsORjMzG28sETNa+hkZcjtnuy4hSSMwRCXAzXswwKfIzvrwLQHc/y7NHkCc
         o2+4rgvhgKsazm5h57VdOtckAEi/u/ppFI6tbjcg4T2dvbsgfDIaRIhKmxYXkUG6Nwo+
         prqaKAMUugwOItJE7DKn+TyL7hcGfd/UhYUEzsTZSCExrARp5hPZES0JK+YaOOT9xskn
         dyUY5K1mJhDcsbifmzd8IkGvbHiUZYyKTQN88wL9/fmYnhryUX2xWBBTgA9OPOsMNYvV
         LChQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580395; x=1715185195;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8qbl1bY1oXPc/BrE+BcAYxIg4JVPN7Au51+xkWvlhws=;
        b=myVXCijxQglE5mEjYlXOQ1yIP4+xwYbQDab5PRH0onGkZGuZ6LEb93hJ7wYW8wJoFC
         AS4K9yWqEC6MGlenjn5sVcLAol7tTWg8Z7x2ufhMbUh6UZj+9cLE3lj57svvJk4/teM6
         yK6HPOF5d+aPSszyRIy8IfD8kd+RNUJz4DUmfYa2/TJwfvCFR13YBXi7ysy7AYTJ61OI
         D7kAYSJeGMf7ZqLESgy3vh1oMAE0CDl/TbUxRtg3HWVQBVgT95CUG4pbOcnNIGFlYKIC
         m8U73CsKPclXg2/rrcqXU9/OVKIL/SY+DgHiIDkr1Fgm4EumRh5pFQIFssWQV2K5wTcJ
         tYZw==
X-Forwarded-Encrypted: i=1; AJvYcCWSlixBI5fGglhrOl+lJonWPARX9PS32g5i7Yxf4cyYIe74MhIKbg5ftbyuIQlnZm1c3bXIDyhI4094pHp4737rxQqaUOIOkT7Tx3N4cw==
X-Gm-Message-State: AOJu0YzJvAt7GE5gZe1w5xAok8pkzLtjSeWVjJaVqfW9szPGrBuW/Tfy
	QDz7WztkrWwscGe6Fk4neB6BWqOB2UK6wBL2glYiiLhabkNPFtWyqShwc5dP2FA=
X-Google-Smtp-Source: AGHT+IHsMijjwWCg5z5tsLM+qCe+9yqE2j6ZSGFnxh1tYEFb+8CyeD5Rpg82R3EDRP+9OglQQR/VWQ==
X-Received: by 2002:a05:6512:3991:b0:51d:2eba:614 with SMTP id j17-20020a056512399100b0051d2eba0614mr2448878lfu.53.1714580395645;
        Wed, 01 May 2024 09:19:55 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:39 +0300
Subject: [PATCH 13/13] arm64: dts: qcom: msm8996-xiaomi-common: drop excton
 from the USB PHY
MIME-Version: 1.0
Message-Id: <20240501-qcom-phy-fixes-v1-13-f1fd15c33fb3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=880;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Bi5rhyr14KcQQ7+MOAD5H9S1njlLb5FKYBD685uF7IE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmua/n9RREl+g5vb+gDOANKfA9kBoBl8gO6sK
 3bZBBDzZ5eJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmgAKCRCLPIo+Aiko
 1XM9B/4ymPAO5auW++iWtOUKx+7lvM+O9UCLKdBYi2MFlVxEAEY4dD9Wu+t5d1FLyExiTBUH6Df
 LDuTXwplLk/XawajHzlKSm1GVDM4ZtN+wDT4artifItPVaJdZ1/nVPZrG6LztFBuHcWx30d0zsn
 oO4wOUe+3mvjI1/3Bm26rTNiyajJw2klIc7LXhOQqKf1R4jnx2BBz69BvoHZJlUKr60Tg0YFyuH
 Q6DRxDfJ95xEnKyvLb7zC/8GL2UokUK5QIVNMFR7R5U8H9e4C9OaewxPKeUi4X8L9ptnhNu8ACi
 GT/6H8+ZUvpepneqmOxY5XwGHBY7IfVw4IAIMihGfLvudOFe
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_091957_268662_70B83FEE 
X-CRM114-Status: UNSURE (   9.52  )
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

The USB PHYs don't use extcon connectors, drop the extcon property from
the hsusb_phy1 node.

Fixes: 46680fe9ba61 ("arm64: dts: qcom: msm8996: Add support for the Xiaomi MSM8996 platform")
Cc: Yassine Oudjana <y.oudjana@protonmail.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
index 5ab583be9e0a..0386636a29f0 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
@@ -405,7 +405,6 @@ &usb3_dwc3 {
 
 &hsusb_phy1 {
 	status = "okay";
-	extcon = <&typec>;
 
 	vdda-pll-supply = <&vreg_l12a_1p8>;
 	vdda-phy-dpdm-supply = <&vreg_l24a_3p075>;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
