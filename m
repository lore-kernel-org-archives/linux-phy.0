Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ED0FC02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 14:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8Ol2uN+1ahze27xxLWuG1p30j61DyyeRhK/cLlEb40=; b=anAMSBek2yr91l
	3p1/SGCAqIZuyIWnF+H0QkmVlU+0jDw7d0XerSYBhGMq4pngfKsA1n9flxQTGPdwF5Cma5rMQfHm7
	gPIz0vEXArOgBl+WezLTv7uKb7GnQGBrXcCezg08WkSHAoz0XMVE1aVaz17ywT1+tJury0cZ3mrXq
	XOUhXSFZz6pfpMcm9EmvMoBbjEUpJxtM9hir607ja+gdtn7qhInX18Z6q5Ifz2JtPl4Uv9bINPOeq
	jOmXtu+e/eML2nVextWBTgjnCGTNS1CPbkY2v5PeWKJnJOg+MBKrLIAfSp/UmpwoJ4Fs9qJ6+iTth
	LdogfnYR/hCprG3ZEm2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1texfq-0000000Fj7b-0rtL;
	Mon, 03 Feb 2025 14:43:42 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1texfn-0000000Fj77-3kSN
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 14:43:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E70D9A40BE6;
	Mon,  3 Feb 2025 14:41:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FEC4C4CEE3;
	Mon,  3 Feb 2025 14:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738593818;
	bh=ovC/pNlFJhJNZ9mLmXlgbIQb2sT+OsVjD6exklu5nZI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=kMhEfYxx275MqpnfXzEc7/XRswknOBqN1HHKm8uAKVh6vT5OoE9oFRKk2lTgCD+h4
	 Q9LQdH0/Z418AUc1u3bpU9ZwnCY5KLMLkI9i8jaWn5KZRA0WCHlmq6h0mToJScpPLF
	 dRCKE+4ZOHUWfv5uEwpb0ZGu07upM/hELsG6e2F8caTDCJNZmoPhciM8W3Phz+0ie9
	 keKy0nMHiq/oszkX+I3IQtUDf5mlLuR2Du/xoXJ/0Jlw/k76J63SqanorGq+kbDMcp
	 4RlrWjVDBvPJ4XogPTrqfo12GdCc1hHfnyu5+jOiyYJHhvsNB+RPKf28Z8DlmyFi3A
	 Swj68oTxf2yKg==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Mon, 03 Feb 2025 15:43:21 +0100
Subject: [PATCH v2 2/6] dt-bindings: phy: qcom,qmp-pcie: Drop reset number
 constraints
MIME-Version: 1.0
Message-Id: <20250203-topic-x1p4_dts-v2-2-72cd4cdc767b@oss.qualcomm.com>
References: <20250203-topic-x1p4_dts-v2-0-72cd4cdc767b@oss.qualcomm.com>
In-Reply-To: <20250203-topic-x1p4_dts-v2-0-72cd4cdc767b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738593805; l=1221;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=tqucmL9W9MPsOEYBPDPh31xGn+/wmyQO4TWRIKO68wU=;
 b=wmSe4nyYnFddeuz6j8rcHJn8BaUTW+qiXPXz8Zy16R8BGFJRwViHaoo/FeYlfOqryDCWTDwq5
 hJw+24ljmVrA6j5kYjb7PllxmC0R1/oNO/vGAoJBm/4djBGE4rhAqns
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_064340_007324_E9C58DB1 
X-CRM114-Status: UNSURE (   5.66  )
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

(Almost?) all QMP PHYs come with both a "full reset" ("phy") and a
"retain certain registers" one ("phy_nocsr").

Drop the maxItems=1 constraint for resets and reset_names as we go
ahead and straighten out the DT usage. After that's done (which
will involve modifying some clock drivers etc.), we may set
*min*Items to 2, bar some possible exceptions.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 51eaffa45c18df15f93f7a3c7382415a59982793..af8c4aa4f43dfb8268c31d64ccdd5c4be7a4def5 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -220,12 +220,6 @@ allOf:
           minItems: 2
         reset-names:
           minItems: 2
-    else:
-      properties:
-        resets:
-          maxItems: 1
-        reset-names:
-          maxItems: 1
 
   - if:
       properties:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
