Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F5EEC77B73
	for <linux-phy@archiver.kernel.org>; Sun, 28 May 2023 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwCMAyVnKCuyV/a6D9q9WMPUfrzBd4/gO3m6H/rVxgo=; b=advkS7gMupnVx3
	jg/rbQrl5fONSg7bamXJ5hwnWqnyGdk/VA47QqBIpbQKaLwHot2vdYdWNXpRbdOPvRtxP6UMV1HOC
	qt3IhhlfNaGbHoY9Ni/p+2oIEx9+gjOBGaEoeiroTbhI8p7EIqmj/QwT0nc9QdP7xqgfN4ZDbVxZe
	1RGM6FVBWvwwBhSLHvGFAWEhQ3HgQRkOlaB79RZnbc7n9cOyzddOWE81wXLbZtl96F8XALnnCpi1d
	wsemhIznQya3Lny3IO+wONPIMsbNy1A4URuZmmLSQomqRzTO9VibGMs5CScrDMfzO4bU2zyusn7ju
	r5durEG+zWkpBN1HUI0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q33zq-006Zok-0z;
	Sun, 28 May 2023 00:10:54 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q33zo-006Zn5-0A;
	Sun, 28 May 2023 00:10:53 +0000
Received: by mail-qt1-x82a.google.com with SMTP id d75a77b69052e-3f6c0d651adso24443521cf.2;
        Sat, 27 May 2023 17:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685232650; x=1687824650;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vlLPGYxNqRLcO0iwNntzpwA4a9ygAShxKuuHe4rrdxY=;
        b=O8OBZDfJldx3WjGaMSWA209tbN2ud5V/ZxpbdgnY06AL5QkHNzuDKshoDnTm4UGSha
         8wrfuCpJdfMbi/ii+ZrcaRuHfhb1sjs/4e2OgIPT2Lwxq/Dd2KTfIuz23bXEHCvPt/KY
         g1pJoDlxPNDNo1rLwgLjjA3twk6gS4QpNls3xiF2Uc5ZaKDnUCMtRUPigtNLt+L04hl7
         ssgg68y+CtGn3IiMXAqYW6THuxpwwK22EXPW4tSo7dCR8HCnNKDfY6ZSpkz5Aih7DcDr
         rOgjw71PXUhLVR003yNrUqp+aEpMbkT70jAYuUvYiPrGtZB45AygoC+qnV19sp/PEsrk
         iFNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685232650; x=1687824650;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vlLPGYxNqRLcO0iwNntzpwA4a9ygAShxKuuHe4rrdxY=;
        b=LIoV6a0jq0ZPfxCb1mqubRiXJfPnW9D1C58Nnl+ALmYv0ZnlIYRjMBZ7rR184TEdYu
         3f6kM8PWOz2GeRE34ISiAvAQJ4x2u2ErQcXsjVAcZsgrpZyMz3K/d7GyQjv9u5fUhPBx
         ZOYhhWeKv78xeABjncNWeOf8wR/1qjLvdDJXzZnPHWRZ6Te9HRw/DoI1D30y5pU2jnpv
         tg6/moyn91vL7KN/YSVmg55qcydPPrnFXij9QwyNXKvvspXihR7JcjRpXCR3gVIXzZt1
         4KkfwR65vTeydQylECR8X2n70HOENXwum34k08doCSrqPzD2lDuEVbGjBX+CQT4vLoNT
         lQFg==
X-Gm-Message-State: AC+VfDztY+0HU7DVR4T7fQVDKgwJdQx3PBvun03wL51TdYGLUNvvP1lN
	QAmtYPnq+mJPFt8cDtqVOT8=
X-Google-Smtp-Source: ACHHUZ48t/aUfi2p8Ea4j28BZnaKxNFrtgKFnDSLOZlkMiUl6JjTR/leIIiFiv0of4//m3yyejA/mg==
X-Received: by 2002:ac8:5811:0:b0:3f5:1f9c:5b35 with SMTP id g17-20020ac85811000000b003f51f9c5b35mr5909777qtg.63.1685232649723;
        Sat, 27 May 2023 17:10:49 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:28b2:2867:6311:b7d0])
        by smtp.gmail.com with ESMTPSA id t18-20020ac865d2000000b003f6a7ab1450sm2518454qto.30.2023.05.27.17.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 17:10:49 -0700 (PDT)
From: Rudraksha Gupta <guptarud@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rudraksha Gupta <guptarud@gmail.com>
Subject: [PATCH v2 2/4] dt-bindings: Add qcom,usb-hs-phy-msm8960
Date: Sat, 27 May 2023 20:10:07 -0400
Message-Id: <20230528001010.47868-3-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230527040905.stmnoshkdqgiaex6@ripper>
References: <20230527040905.stmnoshkdqgiaex6@ripper>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230527_171052_088558_3079E401 
X-CRM114-Status: UNSURE (   7.88  )
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

Adds qcom,usb-hs-phy-msm8960 compatible

Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
index aa97478dd016..6309c8e9d0b0 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
@@ -40,6 +40,7 @@ properties:
           - qcom,usb-hs-phy-apq8064
           - qcom,usb-hs-phy-msm8226
           - qcom,usb-hs-phy-msm8916
+          - qcom,usb-hs-phy-msm8960
           - qcom,usb-hs-phy-msm8974
       - const: qcom,usb-hs-phy
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
