Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24031C87FCA
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 16:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldJvYYnULHdIppPFSOPHBg9GXLUIQ7NMVVnUhwlL7jY=; b=IcClzv/Dxyiu+m
	4bLzvluSm1Q013Bncnwb/nkgYzOjatxn95jMQf/YhMayAuAO4sS4RWugsIWwNyCkvax/NyOEPMVrO
	IJ9sno2gGKAgHrKzPPehRe6sz05rg2Q9NZx8kbWJfj3Ydip/xDbsgw1dQELztStkRgmfPc8vUn8M1
	6PKI18DM9h5yR/8Un4J3CNOl9rF85f6Sj+3+LQWawwz1pkku5BQZuHg/6T3jNTb4T3/p6TGSOByRA
	b9rC8TE1cvCAF4C+nDoYs98tQKd8Y5+8Kz9azp7tos3dQwpiE9XKWFWxtmbYObmfuOPGW1++vWPgf
	D2nwuVaelJGqKrdeDv0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk3Yd-000000019vi-3gUO;
	Thu, 07 Aug 2025 16:33:35 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk3Yb-000000019uY-13TX
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 16:33:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id EF650A56234;
	Thu,  7 Aug 2025 16:33:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3280CC4CEF6;
	Thu,  7 Aug 2025 16:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754584411;
	bh=FOL0w7DOfieRoHaB9Ul78LDBqcess9+ToUcE7ykpAjE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Y0rf1jvEePu0QXxOhXR1SdRP5SKyROhFHVQppBqQt17nwA9+kcZfjObXJU9jVrvYA
	 VKGScnIORIlYBVT5Uv1dx2lPgyUPUlet+YXwUwpx2mnTTOuijETwzdesxpyjOZmX7q
	 59dvl24bSHQyOXRdoUCKpHvsIjPv5MxdYKsxRbRN9S+Rjgmn0kckgCLVoYotlYNnOT
	 61jlcDLB3cE0hdfIbthS4yKZgcJGBi7RxGeVaxUl+Ppv53hLwoSVfJwpHIDZLTihWI
	 okZJNk7Z71Z7hxZgvBhkTUKuLvXNEhs3wbhwy3ntKhWpo0AojampzCcEsIjKw2jJVT
	 ZZyS5ok3TSKzA==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Thu, 07 Aug 2025 18:33:19 +0200
Subject: [PATCH v4 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp:
 Reference usb-switch.yaml to allow mode-switch
MIME-Version: 1.0
Message-Id: <20250807-topic-4ln_dp_respin-v4-1-43272d6eca92@oss.qualcomm.com>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
In-Reply-To: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754584403; l=1691;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=OavRSmJV+Lo9KCyA/cX+W+bVR/yk4ys3JG3suJf8dkc=;
 b=Iafcr1U2bjgUJpEYLDgsUhD1dl27BHIaVCsIxR10n1ssD+yiCBI5ZwHQaqBesxQ2wtL+48XE7
 NYq52AnNE2lAOhFGc1AD1g4wEQdVZ8hUNZo64GTwc/cLT1I9djRHC3M
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_093333_435833_6D1E7BA7 
X-CRM114-Status: UNSURE (   8.15  )
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

From: Neil Armstrong <neil.armstrong@linaro.org>

The QMP USB3/DP Combo PHY can work in 3 modes:
- DisplayPort Only
- USB3 Only
- USB3 + DisplayPort Combo mode

In order to switch between those modes, the PHY needs to receive
Type-C events, allow marking to the phy with the mode-switch
property in order to allow the PHY to Type-C events.

Reference usb-switch.yaml as a simpler way to allow the mode-switch
property instead of duplicating the property definition.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml     | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 38ce04c35d945d0d8d319191c241920810ee9005..c8bc512df08b5694c8599f475de78679a4438449 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -73,10 +73,8 @@ properties:
     description:
       See include/dt-bindings/phy/phy-qcom-qmp.h
 
-  orientation-switch:
-    description:
-      Flag the PHY as possible handler of USB Type-C orientation switching
-    type: boolean
+  mode-switch: true
+  orientation-switch: true
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -106,6 +104,7 @@ required:
   - "#phy-cells"
 
 allOf:
+  - $ref: /schemas/usb/usb-switch.yaml#
   - if:
       properties:
         compatible:

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
