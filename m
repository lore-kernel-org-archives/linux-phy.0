Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9C57C02181
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jan 2025 03:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HaBru/a6ftJTePatOjXd4zwdL9bk2MScXVa+pCYKbt8=; b=u4mMUucm58vyJq
	9VbY0djytEb9PfrgcNIHh8ZZMj9Dp0pzD+XQhFbVOQtPnQhsOCIdMLOCwI7ZWK1nKnkoIohEEwxcC
	Rnf+6mzQZI4CuhgXnYNyk7ufi83wtW6Jjs5vmBc6BiUI9KeoF2r/f2vEl0zPRzKItvTxmPXFZsG3x
	y0uL7WteGNnFGOAMZlZ+2hxNGZ2qgw8pLLSvDCDl0dyao2gZNuyFQtUdD+Ka2Oku6AeueZs5n0AUl
	Ku76YlKeuhkpV4s4LdN2QRs+C/Gj7aQAkM7XuSO7WQQeYDf/v/O2cRLdV/JIRwNtaOrxMUrnoeq4C
	bBZ/3u0ZzvRmkz9hTrAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbWtW-0000000Fxmi-2zZ7;
	Sat, 25 Jan 2025 03:31:38 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbWtT-0000000Fxln-3aYz
	for linux-phy@lists.infradead.org;
	Sat, 25 Jan 2025 03:31:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id DC736A41882;
	Sat, 25 Jan 2025 03:29:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0A73C4CED6;
	Sat, 25 Jan 2025 03:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737775894;
	bh=yQ4WZAL+HjPTJalu92xDn4gcmnU/eJvKNpSHwXuCHcE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=V7AkTryKVx8hTgqLFyX6Igbv9FxtIV4wWZbgRDVoo1EwOhLg+USluawNNEYo8nW+d
	 kTU3Qk4j2jR7YcyPXoIaR3U4mf53uTADsqTOl1TFr2jQuQh8QHmBDuz9TcCJ+HW56R
	 uWXknQNtcGMaEF5zmH1K0f+KL1iooZom5Aj6mGINztyGOU0neSshWhJ4EVVFsEgdRm
	 zQtBXlgqHP0yJTLqbBs7NZtNiF/Tpxvb9Y1UdzgnO2Iqlchch83IMOJ8bCp7Bd+YaL
	 OimKpkyP7Ogb8S/YxNMQRvE/F8UgtFzk1CtqtMkCxPd14JQuHwPO+qdXFUjmwWjUg4
	 1ulTDGld4ckvQ==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Sat, 25 Jan 2025 04:31:18 +0100
Subject: [PATCH 2/6] dt-bindings: phy: qcom,qmp-pcie: Drop reset number
 constraints
MIME-Version: 1.0
Message-Id: <20250125-topic-x1p4_dts-v1-2-02659a08b044@oss.qualcomm.com>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
In-Reply-To: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737775883; l=1746;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=nIktw7MgGIgFnnkILzM1v07X3q5bcgjMMy7JANg0KiM=;
 b=en9NgYiXNZOek7cdDDhnfeAx+QO/5xZ7gwvv6mZtCP0QPIO+jM34GdWMAS53xSezFDrH/3IJs
 KogOTKPXYwSA3ls2HXzlDquuNbgUGHrL7vlAcfzF1ULiCyBzEruYMMh
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_193136_032909_00293C90 
X-CRM114-Status: UNSURE (   5.47  )
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
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 24 ----------------------
 1 file changed, 24 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index f1ffc3d5cae44b8a9c96cdcd749a6e54533c94f6..c42143bd139e30d1beabc9099d0dde17128413bf 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -204,30 +204,6 @@ allOf:
         clock-names:
           minItems: 7
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sm8550-qmp-gen4x2-pcie-phy
-              - qcom,sm8650-qmp-gen4x2-pcie-phy
-              - qcom,x1e80100-qmp-gen4x2-pcie-phy
-              - qcom,x1e80100-qmp-gen4x4-pcie-phy
-              - qcom,x1e80100-qmp-gen4x8-pcie-phy
-              - qcom,x1p42100-qmp-gen4x4-pcie-phy
-    then:
-      properties:
-        resets:
-          minItems: 2
-        reset-names:
-          minItems: 2
-    else:
-      properties:
-        resets:
-          maxItems: 1
-        reset-names:
-          maxItems: 1
-
   - if:
       properties:
         compatible:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
