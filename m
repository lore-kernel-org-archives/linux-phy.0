Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2432EC43219
	for <linux-phy@archiver.kernel.org>; Sat, 18 Dec 2021 14:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lroMdpx4zSH/v9yMwDR/zPe4Pf14ooKVwBrvZpgHIR4=; b=iPkDZMtvYkxFVz
	zsP/IBYQNMzbYTVJLnU+hxfzzKZQ9fLEpIknfYCJOdHzNSfeEEFeLbrXaB/3SaTKlHp0Rcc+SjWHB
	IRcnmSlOHvgZHYbc32m9yXntMiFWJBiwS2q3RfRbsvfrZoiaq5yHVg2jO9qnkBHPNn+TgUoOjakHr
	J4EaGASv4ZMDQApQ9mVYDT5WWTUdQV3RTLBNOh9Koi5ETHzou7jrOU1q4Pf7W8tm5JMRZRHMvnX11
	Is77viollr/I343xXdzWbyC9Z1yDA7Yv7zZJka/b9+nRSzLkax6V4gk1ouKwVGRuz9WOL4MJcvE5s
	AZ8W86xHS56n2Qf9BRqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myaXK-00DyNB-B5; Sat, 18 Dec 2021 14:18:10 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myaXH-00DyLg-9q
 for linux-phy@lists.infradead.org; Sat, 18 Dec 2021 14:18:08 +0000
Received: by mail-lf1-x129.google.com with SMTP id b40so10763756lfv.10
 for <linux-phy@lists.infradead.org>; Sat, 18 Dec 2021 06:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z8WblaGQz6ryFLLScobJs94F8J4OLcqDAEfLcm+yyh0=;
 b=yc8tP4MlDZSg4AdI5pHBDGftlda0VXP5X0IlC3TWVo9w2K2ZN5SWTp8jA4hP9dLiPo
 ZX1pVuXizbjf96W/2nbusiFg9RJxmH3KrL2XBuY8xYMW+iCd92g3Dil3o0ZeAX3k5Bie
 KQHXUtvs+KbzMhU6daiiX4iXs37lT3dNyyNdcXRq0GWGj+b2ckcm9tXshITgu4zHR8OG
 YufYsoNyB3+SoGw73WUPodX35eKa6eH1vIZ/0ZT7IhTJ2RGo3lHhcapmuVc9Or6u1A3N
 QnAHAWob+XWwyOMmjn2w7uVcOobbcAT0NKBHkp4HsO2NZSX5h9FQK6v+gZZ6625mRcW0
 fBIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z8WblaGQz6ryFLLScobJs94F8J4OLcqDAEfLcm+yyh0=;
 b=y+C9YWpDHr61JyK/DhvqS+c31qUA7Ds1AdKYOHzfp5Q+WJTWjHJ8KoifQ5lBfyi9l0
 F8wTl6A4N+YiI3FtIYJ5mlqz+Y8+COUViL9q99aVRnURMnLZqKTTFEmqKeRgAOe37T46
 Kaybk8mx4vk846DJ21YKl72xLVyrwjVMUffIuhRw1FbxNbU+WXN1dDoz8e8UFcXCCy4N
 ufz0lLXxIq+PFyTKYz5UE16FaVKWAlEZkdtAsxI9lhZNWPvgMJ7uxBywm1tWGiZTTjq6
 hdAXU/W4kVjAbfpVb/TIgIIWGOtM+r722vqUuxTqP9+NlFG4wYJAAHZHGRvy6wn4js72
 Dx5w==
X-Gm-Message-State: AOAM530SZLUkK/uejGbnNYfc+p5c4ljBVXzqIOaUCeWBSLnl6LmDmJhm
 1bhr2Fkh2UgrQSHanVlBmtENSqmqL5k17Gzj
X-Google-Smtp-Source: ABdhPJzXjz2tTMJmjt40/RFro16gjNCDz+Z5KLHalhlo8N1+TMUrFVsxT4Eqo8wt2a8/geGJNNxtnQ==
X-Received: by 2002:a05:6512:1296:: with SMTP id
 u22mr7223644lfs.296.1639837085853; 
 Sat, 18 Dec 2021 06:18:05 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id o11sm1952040ljc.100.2021.12.18.06.18.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Dec 2021 06:18:05 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Add SM8450 PCIe PHY bindings
Date: Sat, 18 Dec 2021 17:17:54 +0300
Message-Id: <20211218141754.503661-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211218141754.503661-1-dmitry.baryshkov@linaro.org>
References: <20211218141754.503661-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211218_061807_394360_A9626FDA 
X-CRM114-Status: UNSURE (   8.09  )
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

There are two different PCIe PHYs on SM8450, one having one lane and
another with two lanes. Add support for second (gen4, two lanes) PHY.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index d18075cb2b5d..41a8d00bd576 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -51,6 +51,7 @@ properties:
       - qcom,sm8350-qmp-usb3-phy
       - qcom,sm8350-qmp-usb3-uni-phy
       - qcom,sm8450-qmp-gen3x1-pcie-phy
+      - qcom,sm8450-qmp-gen4x2-pcie-phy
       - qcom,sm8450-qmp-ufs-phy
       - qcom,sdx55-qmp-pcie-phy
       - qcom,sdx55-qmp-usb3-uni-phy
@@ -335,6 +336,7 @@ allOf:
               - qcom,sm8250-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-modem-pcie-phy
               - qcom,sm8450-qmp-gen3x1-pcie-phy
+              - qcom,sm8450-qmp-gen4x2-pcie-phy
     then:
       properties:
         clocks:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
