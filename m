Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9242BC47258
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jan 2024 00:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n133kywqYCVKiGkvQCghmVR1l7DFv6T9/srRP8iUBfQ=; b=YgUiaBcKAky1gu
	sUmZDoO27F18rEe3xMW8CZv6JGj3OZS/y3VwvQ/TJd+qS8cIwhNjHQwM9iibCssHHXsjjHV2qzxDa
	TYzD0jql1UfVwQLjyhLsbx/UvJYYixx0W2da5tO7/Fp1O325BcaHtG2XCOaHcOOzRvLhrcUsyX7UJ
	Mxo5YfFkXXzc+9VKIli67nAYlva/6ynr0pLpSIjauJbbPRbySYBshj3MpBpgk7kN+QJvjMD6PYYmN
	seCmT/RUAEekSm4KwEFXcNor8nVq+T0qdANSFSnrShnvy3UPypXGLwByqjM0yHI+1/TE38nAJW90v
	GQOEoGuZ60h+XBik0jNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUFTX-0000000Aomu-0KTT;
	Mon, 29 Jan 2024 00:26:11 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUFTS-0000000Aols-0t6p
	for linux-phy@lists.infradead.org;
	Mon, 29 Jan 2024 00:26:09 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2cf4a22e10dso23504591fa.3
        for <linux-phy@lists.infradead.org>; Sun, 28 Jan 2024 16:26:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706487963; x=1707092763; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=rwFlBr/f/aeTy6hOnmPgkpWWR29H4pago5JgFPTyDX2vj11I8Aj1TPD+xDg7FyrMxQ
         J70yeuv32OTlES+jjsrUU1acc8R+sABJeaSx7DpuTr3RJkQizQIFErEUGYNmmSPkN9WD
         zMi363gfayXCnNApvMBJkcbxr6wpE+iRGcWaWAYWRQUbYwaK+qKcOz0YbFHAAxSNHZ0S
         9zYE+CDOlhIWi8ZnKJyTxajkuy7wJx10mYngfm2ers1FJL1an2IAkPR3bhODWMWBb9fi
         E66g5HZVqg+6hI3O6p89T6h4FOufnNW82602TiiEtTdYQs+rE9rOQXE6hs+WQuAJZJzT
         Ck8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706487963; x=1707092763;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=YTSGqLf/ndYrySPT5IEi1PoOO2QBHYCxa/wAunOFDAn5PoX6w5CW2l/UEabO2Z8MXp
         82rP036NiiibzV4Z/QPYIQOuePCbEyoHsGppLuEw04df404B4aZT2L9uhV5Ws6JFmDnv
         KS7OsBfsegyg3tvrrtqWnUXX2MDYi+bpQEFZQ58Sp4zITTi2Oty9W5qs7eikblzWW8sW
         3vYGT8okqtv5dzDBBy48QE1Ad03v0FQSOHxb9Ua9B7gWFpdjOwUA3mfOu8vhJs5vF6hK
         CQYXCwbodvZay28va7yxmxAtc4IwfpmTRgZiioFFd4V0tkytlQAPpdOL5N4pMSpLlwtv
         HEpg==
X-Gm-Message-State: AOJu0YyGSosu22ik2MHdtipt28SvBDTAiP1PrDsNXUtsUhKUYpiYJOsr
	7JF2MWoh04IL/y+emyBvo8sGieI1WsptL6XEi2TnnZeYjSF3coG2QdgkMnSAw9k=
X-Google-Smtp-Source: AGHT+IFKiUBYLnInTq+oVg5fiUp9BFxIiVDPCRTaXeICaTOOX1dhQt8t5Z5qyar+jPWySD6PjNyDMA==
X-Received: by 2002:a2e:bcc4:0:b0:2d0:4158:bb4a with SMTP id z4-20020a2ebcc4000000b002d04158bb4amr2188639ljp.15.1706487962427;
        Sun, 28 Jan 2024 16:26:02 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id h29-20020a0564020e9d00b0055cfb3f948fsm3208193eda.76.2024.01.28.16.26.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jan 2024 16:26:02 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 29 Jan 2024 02:25:45 +0200
Subject: [PATCH v3 1/2] phy: Add Embedded DisplayPort and DisplayPort
 submodes
MIME-Version: 1.0
Message-Id: <20240129-x1e80100-phy-edp-compatible-refactor-v3-1-e71f3359c535@linaro.org>
References: <20240129-x1e80100-phy-edp-compatible-refactor-v3-0-e71f3359c535@linaro.org>
In-Reply-To: <20240129-x1e80100-phy-edp-compatible-refactor-v3-0-e71f3359c535@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=715; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=UEn883fEvn74EKDrMBY5HRtTZ852wPrXNTB+0TMl9N8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBltvCVBACVcZrnMVBS+u5qZXFWmx75hCoRDiMe8
 4tB4whZiQuJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbbwlQAKCRAbX0TJAJUV
 ViXqD/0Zq/xflYC4cjb8dLUvaPg2eVQbiY0yhO7NNn7RgChfT9xZdxuvknkqI6BbJWdB/xC6Sax
 W3zekXpByUJI7mY6rAk4+7WdxUDCILW1mt7GsTMA5691iRkoTIX2bhiIqdiQN1KjQN0dDzjHgpY
 bk2CplmmI+l9ONHNwhI6rqvavP4XCEouREjX4+Ej13lSJXz0nCPHBqyaWMMRsaNoJdtZo7W791Q
 cK7nC6rzBg+KGhbWf7CN9zJMLgBcMGGNpYkEyP6KtLbQODvDOyGnIoYpVeBZXgPg6pkmslQnuS+
 fdsFRpBFdNVoTIrimhYrvF1qGsgcq7zwgCkFSS1krrDQJv/dzwbZWkPbfsR7M4mKoBXAOcJb1TZ
 umyY9I4SPiMelFFYBKBPHdadIy4Dg6Kftg7YAgMHBjmOLjdIDtLkTj2T4gJO0yFjvd5RT1WMOrh
 kMHadP/o10ZuBjWtygPs/ytEUW3XpNCVaYapGN+uiEvAwrPE+45ZH3WqUTvp6YRaB8wbF28b8y+
 /41vVQJaZrIVrc+AHSl+Ds8buUYzZ7POYJy7Lg2+uBXMJTRF2hBFxY81o+z0/6Yfep7L/vW/d0a
 HL+AEtzeaS6rJD4G90rgeqlA5tarcHWF1A+AflurwCnWmeMjKAUoUW5QWu8yQSAZ1BNkdbtDgRl
 EaQned+k0SYex4g==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240128_162606_311692_185BCC64 
X-CRM114-Status: UNSURE (   9.53  )
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

In some cases, a DP PHY needs to be configured to work in eDP mode.
So add submodes for both DP and eDP so they can be used by the
controllers for specifying the mode the PHY should be configured in.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 include/linux/phy/phy-dp.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/phy/phy-dp.h b/include/linux/phy/phy-dp.h
index 18cad23642cd..9cce5766bc0b 100644
--- a/include/linux/phy/phy-dp.h
+++ b/include/linux/phy/phy-dp.h
@@ -8,6 +8,9 @@
 
 #include <linux/types.h>
 
+#define PHY_SUBMODE_DP	0
+#define PHY_SUBMODE_EDP	1
+
 /**
  * struct phy_configure_opts_dp - DisplayPort PHY configuration set
  *

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
