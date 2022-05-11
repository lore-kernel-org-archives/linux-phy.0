Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A42B3C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 11 May 2022 15:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J48wXJDGEyBJXvs8cCnOKjvw/GwbItVm1zs+5bnJIig=; b=eRsgsSfkQ8Rw+7
	f+N5Ggwop8qKILExjFM4zTLqCRv3QNMUB+3DCQ/tJLR0EcHWM5QOS9lRTWKmIsMGMtJG818/weyah
	7kS5PqsYu7nLVOc2Ud3x7DLKrBfTT2gSMKVbsQraie+kEn13YMcN0A2QFJnx15OVyUgtC0fNGFmja
	yK6/TGdFX7wN96nnf2HJ5flxUALC+BiLAUd8M7qHdxtfMDkCK+iP/DlLu1cIT2ULFXXrfVUuk4h8k
	7RbtPmGq73Z6yozlqt6lWTTzlRRUgFGGzUOssR7gPJy52szI8R/hxF+yN5KkjA32Jp36v7feeVK7q
	o/f5Gpc5hCH/kXJaHvYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nooF2-007ZPC-QZ; Wed, 11 May 2022 15:27:08 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nooF0-007ZNQ-4a
 for linux-phy@lists.infradead.org; Wed, 11 May 2022 15:27:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1652282826; x=1683818826;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=nDdsGNSABgPgv16pjFs6lstj1kB67sexwger0ikV6uw=;
 b=FKiY5M4v5WeeGDT6qcVvNv9ryROW+ReKZ6doe9a3ve/M3MLWdzWqQN3L
 S7rX/7Tof71ZgG1MKcRIWuntnSHQpZFzZ69uEMLr7o7OgfqYKwbZcNzG8
 Zyn82YVxdzAO+tLkR8Tev9yqWiHkaRRHtX5guFXkzrHuY/Z0lKv2xyXhG M=;
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 11 May 2022 08:27:05 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg02-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 08:27:05 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 11 May 2022 08:27:05 -0700
Received: from hu-kriskura-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 11 May 2022 08:26:59 -0700
From: Krishna Kurapati <quic_kriskura@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Stephen Boyd <swboyd@chromium.org>, "Doug
 Anderson" <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <quic_pkondeti@quicinc.com>,
 <quic_ppratap@quicinc.com>, <quic_vpulyala@quicinc.com>, Krishna Kurapati
 <quic_kriskura@quicinc.com>, Sandeep Maheswaram <quic_c_sanm@quicinc.com>
Subject: [v4 3/3] arm64: dts: qcom: sc7280: Update SNPS Phy params for SC7280
 IDP device
Date: Wed, 11 May 2022 20:56:33 +0530
Message-ID: <1652282793-5580-4-git-send-email-quic_kriskura@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1652282793-5580-1-git-send-email-quic_kriskura@quicinc.com>
References: <1652282793-5580-1-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_082706_273106_6D8A2783 
X-CRM114-Status: UNSURE (   8.36  )
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
Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index 5eb6689..bb18f45 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -325,6 +325,12 @@
 	vdda-pll-supply = <&vreg_l10c_0p8>;
 	vdda33-supply = <&vreg_l2b_3p0>;
 	vdda18-supply = <&vreg_l1c_1p8>;
+	qcom,hs-rise-fall-time-bps = <0>;
+	qcom,squelch-detector-bps = <(-2090)>;
+	qcom,hs-disconnect-bps = <1743>;
+	qcom,hs-amplitude-bps = <1780>;
+	qcom,hs-crossover-voltage-mv = <(-31)>;
+	qcom,hs-output-impedance-mohm = <2600>;
 };
 
 &usb_1_qmpphy {
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
