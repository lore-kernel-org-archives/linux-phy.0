Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B841DC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jun 2022 04:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cm4e7AW9kNzTEYg9vbVJW079z25kObil1T0O6VxROXk=; b=rKNTaAST/Cgz8G
	GLp5HGix9QhpTsFpudtRQ7ssXDA2J4gnBYTQ36svPYeGeCQNOI5C4Mu3M7zwTWxQoM4dkL2ik4NVf
	NHOXNVsYajeqrIk27fsWnahklRNvQ5wyzXrnk7vNkX+qdwL1EEZ9amg/7uTy9DQwtInq08fv8Nu4z
	VrylALRjCFUEoijX5i7tgAIw0TSUlXPGyo61WsZz85Xpb0FvLjcxN3L6YMHCjvVg3XbwV6y6miZF0
	6RaPBC6CMhBLgJ9WDDz1dTfps7zVrLHVB5kEo2pKJZ+GubCUAtnOvq3IXIeWhGSc+97xbvPekaXP2
	FVCQNZ7SEuH3auXgPWNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0bzV-001NWh-2A; Mon, 13 Jun 2022 04:47:53 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0bzR-001NVK-P6
	for linux-phy@lists.infradead.org; Mon, 13 Jun 2022 04:47:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1655095669; x=1686631669;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=UkYht2RkVgYw2EPEYPQSO1L+NBiGiYb4mBU+npLmjJU=;
  b=Wy+aBWyMgu8x1nK/iC6u+SnycGaExU6lcwMIHt3CS7g5GIEgPaWtLLco
   UwEqEbCKbSNcOuK3GQ6Mxh6hKybp4Tu/1u+hvp5V78YJkbZuzLppDGLvk
   nFVCSlC2pW4MnROBaJIxLdIwWnjImHUvuyOrzJQkpQsqJct3a15ZbFbPz
   8=;
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 12 Jun 2022 21:47:47 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg03-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2022 21:47:47 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Sun, 12 Jun 2022 21:47:47 -0700
Received: from hu-kriskura-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Sun, 12 Jun 2022 21:47:41 -0700
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
Subject: [v9 0/3] Add QCOM SNPS PHY overriding params support
Date: Mon, 13 Jun 2022 10:17:30 +0530
Message-ID: <1655095653-27892-1-git-send-email-quic_kriskura@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_214749_884859_6D95680B 
X-CRM114-Status: UNSURE (   9.18  )
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

Added support for overriding tuning parameters in QCOM SNPS PHY
from device tree. This parameter tuning is required to tune the
hs signal on dp/dm lines for electrical compliance to be successful.

changes in v9:
Fixed nitpick in driver code.

changes in v8:
Fixed nitpick in driver code.

changes in v7:
Fixed nitpick in driver code and dtsi file.

changes in v6:
Fixed errors in dt-bindings.
Fixed nitpick in driver code.

changes in v5:
Fixed nitpicks in code.
Added minimum and maximum for each parameter added in dt-bindings.
Added proper suffixes to each parameter as per dtschema.

changes in v4:
Fixed nitpicks in code.
Initial compliance test results showed overshoot in the middle of eye
diagram. The current dt values were put in place to correct it and fix
overshoot issue.

changes in v3:
Added support for phy tuning parameters to be represented in bps and
corresponding register values to be written are obtained by traversing
through data map declared in the driver.

changes in v2:
Reading the individual fields in each overriding register from
device tree.

Krishna Kurapati (2):
  phy: qcom-snps: Add support for overriding phy tuning parameters
  arm64: dts: qcom: sc7280: Update SNPS Phy params for SC7280 IDP device

Sandeep Maheswaram (1):
  dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy override params
    bindings

 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       |  88 +++++++
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           |   6 +
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 260 ++++++++++++++++++++-
 3 files changed, 352 insertions(+), 2 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
