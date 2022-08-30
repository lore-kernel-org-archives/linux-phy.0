Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F3B4ECAAD4
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 12:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1APQ2uuLTAEehDmy8TfiGw2yU9D4ZNi2cLcFj/JS6XY=; b=WrM93KKEsmxv+o
	JUvsJFMBB3TZu2nQRwneuvXAC0PDZcU0Uos+abuzLKdvNdqt3BnsG1N2GL4gVGL6NUuVWDLhFBfVp
	oAHKlYYuAtCHoCh3soiPFrxurjR05+2S4lbAHiGEZVvFC0cZUg5M3sBqSeewezxOlM3tcTxKCABVT
	CywxYYMMEMvgRWm3xEZMW+riCNpTfD5zcctQzI0VhG6caJ36Qfh9xmgnmMHnC6FLvba53ZqRvcLSE
	HjBrM7/IHOLiNlsTmQSYJufzyDI80D+6CE7LMXbc2EV09Dayuc1PnEra2uwddYx3ZdDO5rZGHuLEG
	QfXvJkNutGU5VtVx/F6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT0SQ-00GrIR-UX; Tue, 30 Aug 2022 12:35:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRS-00GZVr-G3
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E643C6156A;
	Tue, 30 Aug 2022 11:30:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFEF0C43142;
	Tue, 30 Aug 2022 11:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661858999;
	bh=QW7NvZ/+JKzjGwVRO2hu0iK/A8N/vR9B98+FCjkhvqo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jOvFSB7m46S1z1VZVmjFgUOfhNT1L0ANnE8G3ZViFw8OxyYWbRwk1n1ZWodoplelK
	 IlMnIyDPb40JOrc1J3D9EpsQaki8WRiQfsAERbcEdVN61MuiKfC2xQeOB7oogYENtc
	 e7r7tc7j3CvzpSfrEZTh9cAnx2o0PO/0Tep3UvBY1qPaHd1sr/FcRGBvzJItDJLnnA
	 szTV4cYlCSfNRec/QuXQpNzXkq52ojui5aEIELB5Mq95PhYrkMDBOaBVusi6RMcawU
	 JCYPpXwLNrmjmpihrFnqfyYAHsyer9l2X7j3Ojes5a4EMh3DCKCz+SGje2m5mybynS
	 8MBMHZXP5SleQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRN-000103-EP; Tue, 30 Aug 2022 13:29:57 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 07/30] dt-bindings: phy: qcom,qmp: drop child-node comment
Date: Tue, 30 Aug 2022 13:29:00 +0200
Message-Id: <20220830112923.3725-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_043002_592595_2BDD211A 
X-CRM114-Status: GOOD (  10.05  )
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

Drop the redundant comment about child nodes being required that was
copied from the old binding documentation.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index a5319d20f027..8cb2898db740 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -98,7 +98,6 @@ properties:
 
   vddp-ref-clk-supply: true
 
-#Required nodes:
 patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
