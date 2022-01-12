Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34943C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jan 2022 19:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaTfv701xJ6iYAXw8y6QLplqjFgqrE5EKWNjBOUcg5g=; b=1p+bmpY6WK4PgL
	kyLKwR665h13VKJK6nYrb/r7KMSjmgaw1LNp2hLnMdnoUNU8yQPJlMmpsfNBTKx5Rka2FuQf+TVXy
	v5J4jiL5So8eOBQgoeKI+2nMgzdJlNbgZCFnI5AvhGtjjVOeWLtOptDljnZkAWxrRATUK/5RIOFU6
	xJVBLlipWlGdlHhmYCO8juX/wodW65pC2N0ZAHRkQtS/04nch4lslY7TiWqb3q8hSeSIbepnr8EMx
	r4cWW8eh6CynqMf282FFPw0vTUp0p2vVx5CuheDVpCtb3koCA05DPANzJ5DoAi34NuERR6Bh7w5HH
	FLLYto3ukrjBg7ZFk1CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7jdk-003eRe-Lr; Wed, 12 Jan 2022 19:50:36 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7jdh-003eQL-67
 for linux-phy@lists.infradead.org; Wed, 12 Jan 2022 19:50:34 +0000
Received: from localhost.localdomain (ip-213-127-106-2.ip.prioritytelecom.net
 [213.127.106.2])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id A6E6DCDFA0;
 Wed, 12 Jan 2022 19:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1642016545; bh=Y+bq+Z/7Ct3c1PZacukAmpH702Bds8OI7cjpFYiHTT8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=OI2mizPLeOdxk6oFlMOXosewgen+k/a4dwhBxL6pdqJ1YIsRhxUhRBne/yvuCGN26
 vD5CzX36hNvVWMWF1q2FgD31fV29b1/wysuHlTKXp8kbDo5LpHVD/xc9bem3nSRfBh
 dl9Be4ZQdhfV3dNoHIQUelPra073qiHcDzHSl7AM=
From: Luca Weiss <luca@z3ntu.xyz>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Luca Weiss <luca@z3ntu.xyz>, Konrad Dybcio <konrad.dybcio@somainline.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Manu Gautam <mgautam@codeaurora.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 01/15] dt-bindings: phy: qcom,
 qusb2: Document msm8953 compatible
Date: Wed, 12 Jan 2022 20:40:50 +0100
Message-Id: <20220112194118.178026-2-luca@z3ntu.xyz>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220112194118.178026-1-luca@z3ntu.xyz>
References: <20220112194118.178026-1-luca@z3ntu.xyz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220112_115033_424612_C63FE6EF 
X-CRM114-Status: UNSURE (   7.43  )
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

Document the compatible string used for the qusb2 phy in msm8953.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
Acked-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index aa2e409a1a09..f28eb4902038 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - items:
           - enum:
               - qcom,ipq8074-qusb2-phy
+              - qcom,msm8953-qusb2-phy
               - qcom,msm8996-qusb2-phy
               - qcom,msm8998-qusb2-phy
               - qcom,qcm2290-qusb2-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
