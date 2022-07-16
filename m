Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32017C43334
	for <linux-phy@archiver.kernel.org>; Sat, 16 Jul 2022 19:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvpIOBfE7khCLj8SgfoClMgj2eb5f6Hh+3/jfCggT+k=; b=g7fD0Hwvr4zUkY
	PEKwKUC8ryFhzg+ZwokKNP8ggbYLLIN1F7P6Ws2kdW5Eu01dkyO+Ih5antrVo9amu0tWFZBg8bCVI
	vq254rDoI5qLdIwbkz6Qyc9uDQR15Y8ahXqqSC1aBGfDqOF5Ld+BwPCxVrHWCIrPcBzEgo8ZKIwns
	ma1P51iKKZikEC8+ndBrlQmJj9X0rzY1hx+vaIzKBwESoQ6WGp6dB0BzVYXIBWjF3BiL2M3QGTDLy
	vx/fSt62yJCzghcjRP717TrXucChaDm42YoQxLpX6frjczG8dIuHRffSdCQWOm/+cD5GEX2Tmq3+k
	jqGsUqjyO6G9FRPyjWjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCnXT-000KBY-Fl; Sat, 16 Jul 2022 19:33:19 +0000
Received: from relay04.th.seeweb.it ([5.144.164.165])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCnXQ-000K81-L6
	for linux-phy@lists.infradead.org; Sat, 16 Jul 2022 19:33:18 +0000
Received: from localhost.localdomain (abxj77.neoplus.adsl.tpnet.pl [83.9.3.77])
	by m-r1.th.seeweb.it (Postfix) with ESMTPA id 633C41F9B1;
	Sat, 16 Jul 2022 21:33:10 +0200 (CEST)
From: Konrad Dybcio <konrad.dybcio@somainline.org>
To: ~postmarketos/upstreaming@lists.sr.ht
Cc: martin.botka@somainline.org,
	angelogioacchino.delregno@somainline.org,
	marijn.suijten@somainline.org,
	jamipkettunen@somainline.org,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] dt-bindings: phy: qcom,usb-snps-femto-v2: Add SM6375
Date: Sat, 16 Jul 2022 21:32:53 +0200
Message-Id: <20220716193257.456023-3-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220716193257.456023-1-konrad.dybcio@somainline.org>
References: <20220716193257.456023-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220716_123316_874542_AE36410E 
X-CRM114-Status: UNSURE (   6.51  )
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

Add a compatible for the USB PHY on SM6375

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 7a0e6a9854da..f2aeffda3884 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -20,6 +20,7 @@ properties:
       - qcom,sc7280-usb-hs-phy
       - qcom,sc8180x-usb-hs-phy
       - qcom,sc8280xp-usb-hs-phy
+      - qcom,sm6375-usb-hs-phy
       - qcom,sm8150-usb-hs-phy
       - qcom,sm8250-usb-hs-phy
       - qcom,sm8350-usb-hs-phy
-- 
2.37.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
