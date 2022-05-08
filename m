Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CDC3C433F5
	for <linux-phy@archiver.kernel.org>; Sun,  8 May 2022 12:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yHG/uiIbOD8fOkP69ZDHS7cs6k2scR5Q2NrUco6LK2U=; b=afEkbI0fYM/Ctc
	ML4ecmG67pSunEanyT4JZF69uu7O1c2WHOSCzEcLf2kWAwmp7xHnmJ3rvNxSSo3P7z4Anc0Vyl3aK
	OKRr0DN2uGTHrHO2JY6jPru/Uk1Ws4PQDH6DL6YGpcr4dx/aJ7LCTyogySEz/1hEx+xfwpLkw+1Z3
	ysjpZjJ6XDt0RajVfE5COgwoiOanHFMA9DGbgOtoCGZU+FQLdImeAz+FuPYCwul/MiI6wsnRFJQfu
	Emo+XmxT1Z5O2nXsEnvdoEfgslcn1JwBsUpmGJ8QWZ8CA/TKz0KINwpzf5zx83mx+uQRKeqAuMg4M
	2lrOxiexPKEbcyt6poLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnfmH-00A5FC-By; Sun, 08 May 2022 12:12:45 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnfmF-00A5EI-2z
 for linux-phy@lists.infradead.org; Sun, 08 May 2022 12:12:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1652011963; x=1683547963;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=6rnWEHeEX+XKODlHAQn1lzCSCnz29X+Ks2qhyPPDDlk=;
 b=Poy9xiYEE//mWab5QcanUslXoVRfsK6Q8oKtLbb40VxS3RoSJFYVId4k
 UZfT3X8dpFgEvXrycXnndzFQCBBwQFuQTj84EEahc+8qFMR4WqwrNH7HF
 WLvAHxi1o+H13If+zry3stMMFfVymIeFe6VXXbr2y8vnpwdpXfY0yErgr 8=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 08 May 2022 05:12:40 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2022 05:12:40 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Sun, 8 May 2022 05:12:39 -0700
Received: from hu-kriskura-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Sun, 8 May 2022 05:12:33 -0700
From: Krishna Kurapati <quic_kriskura@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Stephen Boyd <swboyd@chromium.org>, "Doug
 Anderson" <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Wesley Cheng <wcheng@codeaurora.org>
CC: <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <quic_pkondeti@quicinc.com>,
 <quic_ppratap@quicinc.com>, <quic_vpulyala@quicinc.com>, Krishna Kurapati
 <quic_kriskura@quicinc.com>
Subject: [v3 0/3] Add QCOM SNPS PHY overriding params support
Date: Sun, 8 May 2022 17:42:24 +0530
Message-ID: <1652011947-18575-1-git-send-email-quic_kriskura@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_051243_195331_4D2D440D 
X-CRM114-Status: UNSURE (   7.08  )
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
from device tree.

changes in v3:
Added support for phy tuning paramters to be represented in bps and
corresponding register values to be written are obtained by traversing
through data map declared in the driver.

changes in v2:
Reading the individual fields in each overriding register from device tree.

Krishna Kurapati (2):
  phy: qcom-snps: Add support for overriding phy tuning parameters
  arm64: dts: qcom: sc7280: Update SNPS Phy params for SC7280 IDP device

Sandeep Maheswaram (1):
  dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy override params
    bindings

 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       |  87 +++++++
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           |   6 +
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 252 ++++++++++++++++++++-
 3 files changed, 343 insertions(+), 2 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
