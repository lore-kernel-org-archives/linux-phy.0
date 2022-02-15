Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C695C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Feb 2022 19:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5ZH+plbXVmPen1WKMMOUXqlt3ckYkejEKDfZzBfjIM=; b=aZ1EiQ6djRFuPo
	7p6Lp0oqMQ0cLVhnY8gggFyO8KORd9oew5lOsebQMrD+Sq0pfI+qOSuu86+swITKKRTEFLy8PoU3F
	o3QO2M59ktVkLqMwH8YMvtEc6AIjBERXrbGNuEHRwV5n8NwQ+W3qjOqI0RKMxRhtSg1szuJyQOVsF
	e6tz5vPyaHpaJgOgUcfYptj+I5PS4JUDWftxThLzHHPNEZpLMaQmi1XrzeYUQtZsEPxSrMHjUO2Jy
	07pGwP481zPKbi5/3h1RoxZ66Ujf523ZjC1CfmjhMmjUUTcR533jXZtpb4fIrggIgZOM9d8UKbDUl
	UT86siHnwXpfCY8VVg+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK3Mx-004HRb-ED; Tue, 15 Feb 2022 19:20:11 +0000
Received: from alexa-out.qualcomm.com ([129.46.98.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK3Mj-004HKU-8r
 for linux-phy@lists.infradead.org; Tue, 15 Feb 2022 19:19:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1644952797; x=1676488797;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=XeefgcZDdJ2Av5SJ7ak6HNuzzyBwctIrJ52GfpLMZV0=;
 b=jSTAsHhtnNtD2G9WE/4V0V65i7INdF8sgGzG2zvePhYtQnvDooR2SMAJ
 R7FkXTqOiksM03XTst98yOmthW5q64FEZuUPH4DzJZLKtlqkFnPrsd0DF
 Jdm1oOBmMKkg7uLDUI45TdBY4BzO8x+rdD3WyJqIvWr001xikGO47HIWh s=;
Received: from ironmsg08-lv.qualcomm.com ([10.47.202.152])
 by alexa-out.qualcomm.com with ESMTP; 15 Feb 2022 11:19:56 -0800
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg08-lv.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 11:19:56 -0800
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Tue, 15 Feb 2022 11:19:56 -0800
Received: from c-sanm-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.922.19; Tue, 15 Feb 2022 11:19:50 -0800
From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski@canonical.com>, Andy Gross <agross@kernel.org>, "Bjorn
 Andersson" <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Wesley Cheng <wcheng@codeaurora.org>, "Stephen
 Boyd" <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>, "Matthias
 Kaehlcke" <mka@chromium.org>
CC: <evicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <quic_pkondeti@quicinc.com>,
 <quic_ppratap@quicinc.com>, Sandeep Maheswaram <quic_c_sanm@quicinc.com>
Subject: [PATCH 3/3] arm64: dts: qcom: sc7280: Update SNPS Phy params for
 SC7280 IDP device
Date: Wed, 16 Feb 2022 00:49:15 +0530
Message-ID: <1644952755-15527-4-git-send-email-quic_c_sanm@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1644952755-15527-1-git-send-email-quic_c_sanm@quicinc.com>
References: <1644952755-15527-1-git-send-email-quic_c_sanm@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_111957_387784_DD58998E 
X-CRM114-Status: UNSURE (   9.00  )
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

Overriding the SNPS Phy tuning parameters for SC7280 IDP device.

Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index ecbf2b8..88ca9d5 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -317,6 +317,10 @@
 	vdda-pll-supply = <&vreg_l10c_0p8>;
 	vdda33-supply = <&vreg_l2b_3p0>;
 	vdda18-supply = <&vreg_l1c_1p8>;
+	qcom,override_x0 = <0xe6>;
+	qcom,override_x1 = <0x8b>;
+	qcom,override_x2 = <0x16>;
+	qcom,override_x3 = <0x03>;
 };
 
 &usb_1_qmpphy {
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
