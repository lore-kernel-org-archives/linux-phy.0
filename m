Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5E4FC433FE
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 06:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZU+W4FzvJJQ9LAr3viFYIiViJaZfYOpIWiK3Npx+Rg=; b=b9VNeaqHWCrtG4
	pVwQhDvH8lAudps4gL+Moh8CAL+/UmN1FjZwpdVRsYTPn54dLM0QR+fVOvO5249qI0u9TuoWn8HMN
	9jSDuy51Hhv+6Kyh6NbdhG22EldLbAK4irNP6B0fbgGE09zO/i625K75UrmBa0v3AK3J0wkn9Gst8
	UF+zk2Th9ovRMx72hGV6RIm+Sb/O/2RJM3J4S/9hqc0QN3e3ZVlFlzr/iT/DBN/HfJq4Pc8DhmYpg
	lE7qhzl86rpGt4gzCBUuO2fwuw5wiw9iVOSxNHjoQCNzhrk192gDVAoEINKTYpric9hVvbR7seUN+
	F8UlGmBUWvruYVLNmPEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwIHX-00EHvE-2J; Wed, 01 Jun 2022 06:56:39 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwIHU-00EHtX-PU
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 06:56:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1654066596; x=1685602596;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version;
  bh=AmlzsIo/Giyjo9UdRgEqUumyCRSpNAvYLMJiSoY6K9s=;
  b=jLI//KbWP1UY1NLhMmO6X+pWod6iHhngwTA9W7pebhD/MHX+JcqNOsYc
   EPEO02JF51Y7fvhE0zOGR4iyY0BdczLEm91fwBxbSphCGC7xg9OoPsdZN
   41F1EngFSk22Jx2xJrqHk03kboT0fZPpEPN3+J/x+8H+iL8XorvJULtno
   I=;
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 31 May 2022 23:56:34 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg02-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2022 23:56:33 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 31 May 2022 23:56:33 -0700
Received: from hu-kriskura-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 31 May 2022 23:56:27 -0700
From: Krishna Kurapati <quic_kriskura@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
	<robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Bjorn Andersson
	<bjorn.andersson@linaro.org>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Stephen Boyd <swboyd@chromium.org>, "Doug
 Anderson" <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
	<linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <quic_pkondeti@quicinc.com>,
	<quic_ppratap@quicinc.com>, <quic_vpulyala@quicinc.com>, Krishna Kurapati
	<quic_kriskura@quicinc.com>
Subject: [PATCH v8 3/3] arm64: dts: qcom: sc7280: Update SNPS Phy params for SC7280 IDP device
Date: Wed, 1 Jun 2022 12:26:04 +0530
Message-ID: <1654066564-20518-4-git-send-email-quic_kriskura@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1654066564-20518-1-git-send-email-quic_kriskura@quicinc.com>
References: <1654066564-20518-1-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_235636_858918_F8890C7D 
X-CRM114-Status: UNSURE (   9.05  )
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

Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index ecbf2b8..589258a 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -317,6 +317,12 @@
 	vdda-pll-supply = <&vreg_l10c_0p8>;
 	vdda33-supply = <&vreg_l2b_3p0>;
 	vdda18-supply = <&vreg_l1c_1p8>;
+	qcom,hs-rise-fall-time-bp = <0>;
+	qcom,squelch-detector-bp = <(-2090)>;
+	qcom,hs-disconnect-bp = <1743>;
+	qcom,hs-amplitude-bp = <1780>;
+	qcom,hs-crossover-voltage-microvolt = <(-31000)>;
+	qcom,hs-output-impedance-micro-ohms = <2600000>;
 };
 
 &usb_1_qmpphy {
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
