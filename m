Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A054FC77B73
	for <linux-phy@archiver.kernel.org>; Sun, 28 May 2023 00:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNqSqdvE13uDDRuQiRpkd+J4Yc96brMh/bTFQf8cSx4=; b=3/HBkSYNDs1MYx
	hV45jIzchTWxaUygwHcdeWKd5Q6ZxKApWf3OtUv3+uK391bDl6OjU8OLInHv/vljna+Vf7ZooxhXr
	ev9pJGmPMHdopLbvgLj+uVPKkcmj1W4Ag1kTYi3dM66AG80vFnn7XqPFT6iAXVCgMmbu9zCbyhOng
	55aj/7mHHMWT/GF0wdeEZR6ZNeDJcyMf3CPh0J00X+XfQlCcyAaoNXDJcJfOari6gPeiYb15Tix2p
	X3mDOF2rm/B4Y6rnC0yQH/nPZDPQjA3w9PXwaj7pzWG9Guv2bU2pQLvak9RKWpt/mB6X7VL1UnE4c
	BcZh3/hXRYVoHGTQIo/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q33zk-006Zm6-0y;
	Sun, 28 May 2023 00:10:48 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q33zh-006ZlB-1E;
	Sun, 28 May 2023 00:10:46 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-3f805551a19so10954201cf.3;
        Sat, 27 May 2023 17:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685232643; x=1687824643;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wnTseOZCoY+CK3HtI+8c2hP/MGTha5onAmFTzOp40tU=;
        b=qPT9E0edttTYNdnHFlE81rQuGTNJhwsmQPQnZ7ROVuMiV/mXzz0iptAla7rW9vcOPC
         4khy8mjXOeVCDVA41H7wzd/gCbAZe5lcCQOACSrmQDJ3ex5xM0B9VJr4G1435wCxYumn
         M7SNZd6GNh+xbi5T9vSzsYYVaquE1Nb5vIcDtSluj+2XxulMuh6x5B6OIbpG3MkzVSPH
         s0sJ+jQ3i9TWVPchZBc2JZB08rBUuMAA4moBEEcK70yzfhmBgbHKpvz6bzJbMvuzMMv4
         w9EMpjGyJBJsgGYy0ESYpzD5+PoqeRiDWpAB4HGbeZGwzahT6Of86nwJzjsJ3o4V/RBs
         yW5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685232643; x=1687824643;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wnTseOZCoY+CK3HtI+8c2hP/MGTha5onAmFTzOp40tU=;
        b=AfXDRfkDYCWTL64DBsGubalbJwgdKcRO5yL2UzEvml6x5nOk28DospK40SyopZ2f91
         kqyjzNmWYqaaBywNGUbQKhE4GHHevtnv7XyEwL+Rqh4+Rf9SyYtZFHD5kZMwZQRxA6Vw
         ePwmosM9imeSfK4R6zPW7KDKlKYj2hzPSNf0+MwjhXx5fVW5Zb2WASl4U3YOvr+XbJ7B
         rxzNW1J6BQAQT4YHsxNx/MR50wfHqOkPAdch9hveMcTRnWG4BajcqMWxfWFBmFQYvYpY
         7MyBnpZZbL6y+nTMK2kKAyRpJ0PiP1jsifkCWvlREcS2Rgwo/iOR6FavMSiGndUntgcv
         WnWA==
X-Gm-Message-State: AC+VfDyRx0ZE4QNx1otbqig3xpfiNmY6XN+HRqB4XTG0drQ/dpRwVHiX
	WHeW1tIMfeEs+VEN1RJNRTE=
X-Google-Smtp-Source: ACHHUZ7Z5un5mSANVyiGI2lseOWl6HLDVeQL+/2M1exfjLawjBv+HeCw1oypNDyiaSBwSNJRPhrrXA==
X-Received: by 2002:ac8:5f06:0:b0:3f5:1d57:9c22 with SMTP id x6-20020ac85f06000000b003f51d579c22mr6537934qta.51.1685232643224;
        Sat, 27 May 2023 17:10:43 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:28b2:2867:6311:b7d0])
        by smtp.gmail.com with ESMTPSA id t18-20020ac865d2000000b003f6a7ab1450sm2518454qto.30.2023.05.27.17.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 17:10:42 -0700 (PDT)
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
Subject: [PATCH v2 1/4] dt-bindings: arm: qcom: Add Samsung Galaxy Express
Date: Sat, 27 May 2023 20:10:06 -0400
Message-Id: <20230528001010.47868-2-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230527040905.stmnoshkdqgiaex6@ripper>
References: <20230527040905.stmnoshkdqgiaex6@ripper>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230527_171045_421058_5257D11E 
X-CRM114-Status: UNSURE (   8.30  )
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

Add a compatible for Samsung Galaxy Express SGH-I437.

Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d9dd25695c3d..133d69b2b73d 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -191,6 +191,7 @@ properties:
       - items:
           - enum:
               - qcom,msm8960-cdp
+              - samsung,expressatt
           - const: qcom,msm8960
 
       - items:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
