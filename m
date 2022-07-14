Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8F0ACCA47B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2IbmEbh/p6zDj6kvbvvTPyPNS9IMTZAAMVs3ULqXJL8=; b=42p3Q5h4wDN3Yx
	6ANCWIZXrMVRoRMEwFq66lZlt/DdMLnTR34WWy9l9+dDUuOV1/hsdc+dS4U2p0GJI9CqLbLRKVDEe
	9905zfIpx1bIKlRundp47t59KOoYQJRK2taTJC2y+5zjlav9KGmx58SXarYTGQeVi/p8rh8lViFNw
	7bqRfy3JuC1NAjF1Zo5PKV53dbCPKxBFIEQb25eXIoWEZocsflh8y1z5VmoxHXnvKFcQ3jUMEzop3
	YLYKgtOkfeMuiMByyLDEK1TSAKZV6rGkKf2HhmgM09AtyJNW4rJZUtR7Nn4Jhz6QHrEGfVRl0zbzQ
	uwQWkHn5GR7rv1MLIl3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFD-00ENCN-4y; Thu, 14 Jul 2022 12:47:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCL-00EL4G-RR
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 332F661F76;
	Thu, 14 Jul 2022 12:44:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1E16C385A9;
	Thu, 14 Jul 2022 12:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802644;
	bh=4RPPpvBXAPZANwZansI/6gaCezfbdBxhuGql15giICA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aP9wiIRqZQKghD0SdZ2GcUv/IF38JU2fIiODSRcqpgkQKfBp/O/D3xHZ+5+pANBDK
	 bmDhbTOVmyPZpnhd5J796mN7sP7OCe1gxAg/TZQRzHEK1QrdC+y0CoRqZx99Bq8p4n
	 t/AJWmf20IjEebhzQYiqUvhfk5HQYO25eg5oTEMwQMsK6Jtr/EYEZp3bUEZ+WHAnQ2
	 sGXwOYfYwpoZtk9UA9iCukxiFtPLkm0UesOcwHohMa6H/cMcC9z7NPAWF4ZDzNrMrX
	 nzgBb3XwD9xRIuQSIfruY5qAEfFOydkmBz4IXFwf34ahfErmH6TZUjyaHVYx1h00fj
	 zZSlCAAq6L7Mg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCO-0007D9-Ta; Thu, 14 Jul 2022 14:44:08 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 02/30] dt-bindings: phy: qcom,qmp: sort compatible strings
Date: Thu, 14 Jul 2022 14:43:05 +0200
Message-Id: <20220714124333.27643-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_054406_010251_B74710EC 
X-CRM114-Status: UNSURE (   9.84  )
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

Sort the compatible strings alphabetically to make it easier to look up
entries and add new ones.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml        | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 120da190cb18..ec4ddaef2ba9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -39,15 +39,18 @@ properties:
       - qcom,sdm845-qmp-ufs-phy
       - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
+      - qcom,sdx55-qmp-pcie-phy
+      - qcom,sdx55-qmp-usb3-uni-phy
+      - qcom,sdx65-qmp-usb3-uni-phy
       - qcom,sm6115-qmp-ufs-phy
       - qcom,sm6350-qmp-ufs-phy
       - qcom,sm8150-qmp-ufs-phy
       - qcom,sm8150-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
-      - qcom,sm8250-qmp-ufs-phy
       - qcom,sm8250-qmp-gen3x1-pcie-phy
       - qcom,sm8250-qmp-gen3x2-pcie-phy
       - qcom,sm8250-qmp-modem-pcie-phy
+      - qcom,sm8250-qmp-ufs-phy
       - qcom,sm8250-qmp-usb3-phy
       - qcom,sm8250-qmp-usb3-uni-phy
       - qcom,sm8350-qmp-ufs-phy
@@ -57,9 +60,6 @@ properties:
       - qcom,sm8450-qmp-gen4x2-pcie-phy
       - qcom,sm8450-qmp-ufs-phy
       - qcom,sm8450-qmp-usb3-phy
-      - qcom,sdx55-qmp-pcie-phy
-      - qcom,sdx55-qmp-usb3-uni-phy
-      - qcom,sdx65-qmp-usb3-uni-phy
 
   reg:
     minItems: 1
@@ -278,12 +278,12 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-qmp-ufs-phy
+              - qcom,sc8180x-qmp-ufs-phy
+              - qcom,sc8280xp-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
               - qcom,sm6350-qmp-ufs-phy
               - qcom,sm8150-qmp-ufs-phy
               - qcom,sm8250-qmp-ufs-phy
-              - qcom,sc8180x-qmp-ufs-phy
-              - qcom,sc8280xp-qmp-ufs-phy
     then:
       properties:
         clocks:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
