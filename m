Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA593C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 12 Apr 2022 05:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U557/tH0ZYXrjfT5Gofm7o2n9DiiTRLa0sLQyU7a0Gw=; b=v0A3Ta1LPzeIr9
	tkMFpsFYYStrkOhXKvXL+/uP1l1Bm7GL2BW1SP9XNuVRqH4C9LP7y/MmOPEOQHvfTAK2E3R/6Znms
	ah61Z8CWYclgRjpv0hSfRetSI3c87EjJjwtISFW5wU3LAbJNT+safEm7ijqnSWv5jZ7PYMJb6Wgz7
	iS0VwCdwsq7Ezo3QRxbVWUYq/ZZ5O6unZFVpnfMaFk+jWK6PuYh2sX6hspdDmy6XUqgyIWMYyUSJw
	TGkZ3uU10AE4J8Umq8xXC77ALF0nk1ffJENGCHAXb2IcweD3k7Mab2dOb8ZU23ZIc6ercPELQmyYb
	wt8Gaz0xPuvETUPL4dTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ne8ud-00BlfI-4T; Tue, 12 Apr 2022 05:17:59 +0000
Received: from alexa-out.qualcomm.com ([129.46.98.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ne8ua-00Bldg-TU
 for linux-phy@lists.infradead.org; Tue, 12 Apr 2022 05:17:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1649740676; x=1681276676;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=sx0MBoXk4LvFk3ll5nWIDrOrV6zRRqgJ0fKad8CIT4s=;
 b=t/Wg7t6IBSe06FURPvbFDQE9jpdYIX9rlwJUWYcqe+xxmKwmlVbdhRcx
 Etq9nJMkn4SeR5siDQ9o3DmYT2rNeuH55zZLam2r8E0DQ/UvQLMAC/F9H
 e2yCJuMniGpYHhq02KJ4I3Dkp8c0mMg7U8BuN+Dr2vpgmydCkLvy8nIsn k=;
Received: from ironmsg09-lv.qualcomm.com ([10.47.202.153])
 by alexa-out.qualcomm.com with ESMTP; 11 Apr 2022 22:17:54 -0700
X-QCInternal: smtphost
Received: from ironmsg02-blr.qualcomm.com ([10.86.208.131])
 by ironmsg09-lv.qualcomm.com with ESMTP/TLS/AES256-SHA;
 11 Apr 2022 22:17:53 -0700
X-QCInternal: smtphost
Received: from hu-rohiagar-hyd.qualcomm.com (HELO
 hu-sgudaval-hyd.qualcomm.com) ([10.213.106.138])
 by ironmsg02-blr.qualcomm.com with ESMTP; 12 Apr 2022 10:47:39 +0530
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
 id 175EA379C; Tue, 12 Apr 2022 10:47:38 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
 vkoul@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org
Cc: manivannan.sadhasivam@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Add SDX65 USB PHY binding
Date: Tue, 12 Apr 2022 10:47:31 +0530
Message-Id: <1649740652-17515-2-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1649740652-17515-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1649740652-17515-1-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_221757_042004_BD4A19CD 
X-CRM114-Status: UNSURE (   7.07  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add devicetree YAML binding for Qualcomm QMP Super Speed (SS) PHY found
in SDX65.

Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index e417cd6..57273f1 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -56,6 +56,7 @@ properties:
       - qcom,sm8450-qmp-usb3-phy
       - qcom,sdx55-qmp-pcie-phy
       - qcom,sdx55-qmp-usb3-uni-phy
+      - qcom,sdx65-qmp-usb3-uni-phy
 
   reg:
     minItems: 1
@@ -162,6 +163,7 @@ allOf:
           contains:
             enum:
               - qcom,sdx55-qmp-usb3-uni-phy
+              - qcom,sdx65-qmp-usb3-uni-phy
     then:
       properties:
         clocks:
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
