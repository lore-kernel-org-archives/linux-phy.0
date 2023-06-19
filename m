Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A595EB64D9
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jun 2023 09:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PywwAqL2qp/7Ox+Hxek+rBtOLMHz5YFsFLj3p+5mZdo=; b=JnKqvUqC/jzMVE
	mocpH+R0dlNk0k4Iu6TZbiyiEYlf9rDY7jT/D5T/8q8EgttyP6sNIqCkaY5G9aWccUtQuM8aMLt4A
	+ehqmWqKy0M7c0eL7dHl3ETyWIki62hoc8Pt/7ViDeSQ5dgUIO3As3Bh3hRx/k+UhVAnwIIUo2SCf
	BOe21Bj7C28AD37A+AZKSDEUBEMLR56+Ac9f2SPDVMu/TzpZKu7GND86MkF8KE+E7wX7L0FdLGMFR
	tJa+7ynY2ANCLHMTHckum7y/YtJKJ7QXe9Lwm8qG6f0KZEr7yIjxlez3blOzbVGmlpoS5T5p59UTB
	QObacPEvXdXPZ9U2UZIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBAxG-007xdJ-31;
	Mon, 19 Jun 2023 09:13:46 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBAxE-007xcA-0h
	for linux-phy@lists.infradead.org;
	Mon, 19 Jun 2023 09:13:45 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f9189228bcso8313015e9.3
        for <linux-phy@lists.infradead.org>; Mon, 19 Jun 2023 02:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1687166021; x=1689758021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1C82NuiRAia/YhjujkCgLkELLEPYOAaW/5fpk8oBGP4=;
        b=AA+Itp+Sx3GggUVnhhkWtf5sxJDMSmZOXt2TEY+d9VKXDw58LXUVuQYDECuLmrUD2b
         KEUf+5x2WGSW7YBX+sY9pyjKwaj5kCnkLXP07pzh1FCdiu6diQkRgWkP1aqZAfMgNn8/
         lFzPG6fuVWxxV20VosVM52Asa61jDiMyrNbuHBWLfjEEsCFpgsCFlZ0o6NBigouVwagO
         t2oIZ+ntjvJzOS+X9LyrQ8Ktst20Cmt50T198urRF8Q+ZX5DBJLp9xI5s+g0pYJiNAL5
         9wpaLxufJ3NucdXMl/X4mZjT3j4FIgc2W+t8KRDW1iahux594TnnOMMNeRWZH8ePNUcl
         xpog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687166021; x=1689758021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1C82NuiRAia/YhjujkCgLkELLEPYOAaW/5fpk8oBGP4=;
        b=UoaX/7ZecQIysEDvafg5MZnB7nfJy6+ZVX9IxIQCHeySuX1m6Luu7Ujs4zZJaRTuiX
         ADdP/OlU9thBKYR2IL9yIxzcejBwC1WSCbh+mjNOoy34hrxn+DaXnlsm4lsqMnd/3m8J
         SnDE+3EHFUKnaoNqRC9f4R8N8m/TWVTUZTUXAVuJF9oBh4szGbn54TfokByosxclicTO
         CK1tCmxnF69FrpUOG/Zl2zNtmbi9jl6C0cBSs5xIc6zSV8k9UeLmgeeLc046xxUOARs5
         TvMWkyxRLs9sS+z4qKw5Vc6RW+fz8lBfa4aEqChNnEhTkYfm00qCl+NKFUYa6c+Gkt+1
         61Jw==
X-Gm-Message-State: AC+VfDzDxKwNVgxDeU0fDEQ2fe8f8ypVdHLf1CEKtKiU+dI4LDueybsX
	rFMNhNs5uFCL/131MUNufcpgrw==
X-Google-Smtp-Source: ACHHUZ6/ggW60pun/Sld9wz/UBXySJ5eRhz4id6HJk0y61sdfFs06pHgign6sI2xdNyeeUnN661dBA==
X-Received: by 2002:a05:600c:2112:b0:3f7:395e:46a2 with SMTP id u18-20020a05600c211200b003f7395e46a2mr6138146wml.16.1687166021498;
        Mon, 19 Jun 2023 02:13:41 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:d9e8:ddbf:7391:a0b0])
        by smtp.gmail.com with ESMTPSA id p20-20020a05600c205400b003f9a6f3f240sm3072993wmg.14.2023.06.19.02.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 02:13:41 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Andrew Halaney <ahalaney@redhat.com>
Subject: [RESEND PATCH v2 1/3] phy: qualcomm: fix indentation in Makefile
Date: Mon, 19 Jun 2023 11:13:34 +0200
Message-Id: <20230619091336.194914-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230619091336.194914-1-brgl@bgdev.pl>
References: <20230619091336.194914-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_021344_308841_D72465AA 
X-CRM114-Status: UNSURE (   9.81  )
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

Align all entries in Makefile.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
---
 drivers/phy/qualcomm/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index de3dc9ccf067..5fb33628566b 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -20,4 +20,4 @@ obj-$(CONFIG_PHY_QCOM_USB_HSIC) 	+= phy-qcom-usb-hsic.o
 obj-$(CONFIG_PHY_QCOM_USB_HS_28NM)	+= phy-qcom-usb-hs-28nm.o
 obj-$(CONFIG_PHY_QCOM_USB_SS)		+= phy-qcom-usb-ss.o
 obj-$(CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2)+= phy-qcom-snps-femto-v2.o
-obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)		+= phy-qcom-ipq806x-usb.o
+obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)	+= phy-qcom-ipq806x-usb.o
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
