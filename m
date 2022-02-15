Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3670DC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Feb 2022 19:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=imCj8o5H7Dn5Y0Zemm/n4zml3epKZIwfn0/kjdQOvWw=; b=ZTPfQt9lkkCzm3
	N7A5vgJiultIBQjlDURNV9xet2JMPsiY/Cu8ru6JNM4SsFm/nQG6VxE+f9XxcU7uoZwhmtgjXFqzN
	pCCxEVt+hMmHDN0OXcmfBjPlN6liTWDOp74tJdY+7PkbLI+cu36c6V1D0MFmgXLs9TisemvNbB6I0
	7lzhqijJvMLM9SWizlS3XZkxe4uPwdhNTzXv3Ppz/duM9Tdrp624m3wkEPpcSffQHJsq68WATXrgK
	TnntdYRAUfllPKpSNbFFHtl3tejSGCGAGfI63lBwX6taOSZN0Y4y8cryu6fsvJDQOFlC20TR1kN+H
	bLx4ogcgu0ENNNAyHygQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK3MS-004HBd-AL; Tue, 15 Feb 2022 19:19:40 +0000
Received: from alexa-out.qualcomm.com ([129.46.98.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK3MP-004HAP-VR
 for linux-phy@lists.infradead.org; Tue, 15 Feb 2022 19:19:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1644952778; x=1676488778;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=gexs4JvegdKqrsb9mXRMPBkw4uzr7hXiX3Lra7mOZow=;
 b=Ebq0avgE7MFHhhk67qNW4a3xe4Lq8U/OwXill66nWfI2pWTNo8AO9ah6
 21E76zbigrrUsnT5YxzITs7JIuyZagQTdOKxJOr8iX86e2tuCJgE158qr
 jkmm7eVw53diufHcjsOlS+aiS7rWt+BY9M5s6uV8W53/2FPuRxXspjhFO 4=;
Received: from ironmsg08-lv.qualcomm.com ([10.47.202.152])
 by alexa-out.qualcomm.com with ESMTP; 15 Feb 2022 11:19:37 -0800
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg08-lv.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 11:19:36 -0800
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Tue, 15 Feb 2022 11:19:35 -0800
Received: from c-sanm-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.922.19; Tue, 15 Feb 2022 11:19:30 -0800
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
Subject: [PATCH 0/3] Add QCOM SNPS PHY overriding params support
Date: Wed, 16 Feb 2022 00:49:12 +0530
Message-ID: <1644952755-15527-1-git-send-email-quic_c_sanm@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_111938_099405_204485B9 
X-CRM114-Status: UNSURE (   7.05  )
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

Sandeep Maheswaram (3):
  dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy override params
    bindings
  phy: qcom-snps: Add support for overriding phy tuning parameters
  arm64: dts: qcom: sc7280: Update SNPS Phy params for SC7280 IDP device

 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 16 ++++++++
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           |  4 ++
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 45 ++++++++++++++++++++++
 3 files changed, 65 insertions(+)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
