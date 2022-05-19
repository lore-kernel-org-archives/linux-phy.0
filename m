Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0768C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 19 May 2022 04:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YOrRw/bIIy3fzmazrgk7qZ8LgztuIejIQHBMPb6kJp0=; b=PWRTCMp6MH4SZl
	jqGwoL0A793B0BGj9Um8YRyrRkv/UNmTCC7Lyz6g7Z4n9NLc5xj+t9uWMNporcG1eXfzFNt1AtjlG
	G5DtMtOXOoNN0uZ1M+cP5WuuTEeBlCWVRr4jUE5kLGLXNSyLgq+pIBzW9ljmTSxrB8fvmP6oQke1A
	+VYXn0xRpyL/GeAoa5aop95dEW+Sv3ln2STbm61W2r94y9GLAicI+IL96/ZMhsSzHt2hivLaD5yE/
	iqFrOFjtT5XeD61w5Mkrom/NLxIQt8JJhoKqYW4YIdF5skYV62ETLS2KF3TRPBIHjqhVaNPgjj3/j
	RlAXN8ebZob+Od6Pzh9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrXlx-004y0Z-Uz; Thu, 19 May 2022 04:28:25 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrXlv-004y0H-EO
 for linux-phy@lists.infradead.org; Thu, 19 May 2022 04:28:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1652934503; x=1684470503;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=IXzLhD9xmqUGm8zzDEoxBnegWvmmOoO5hL6NhU9eJ4g=;
 b=EeGgwvbyRUQdzzzywsJPkY9UQ9NXLGCk8lJxXbpEGpNa0mSPVYZam7dJ
 Bmx7O/DEozOzoV4amNa6QZ+J2pCtBesB08zS9cbWVIyPga70MTyLEuXyz
 AW2QBIXaujGfdixkB3SmBUj02HiTSytJVbs+KiEq/4Kwl/ywgP8fMGSC1 s=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 18 May 2022 21:28:20 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 21:28:20 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 18 May 2022 21:28:19 -0700
Received: from hu-kriskura-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 18 May 2022 21:28:13 -0700
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
Subject: [PATCH v6 0/3] Add QCOM SNPS PHY overriding params support
Date: Thu, 19 May 2022 09:58:06 +0530
Message-ID: <1652934489-23386-1-git-send-email-quic_kriskura@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220518_212823_549020_19F89A22 
X-CRM114-Status: UNSURE (   9.90  )
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

 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       |  96 ++++++++
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           |   6 +
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 268 ++++++++++++++++++++-
 3 files changed, 368 insertions(+), 2 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
