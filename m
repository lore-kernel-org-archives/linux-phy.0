Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B990EC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 16 May 2022 17:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cphs9KZD4Cf1jXibuz4eoCB+tjt1Rva5uxpJ0Pv924k=; b=BP6402FMpBRzqO
	+l0IIW9tKKERsCAQCEnPTPodBD0D6g3FLQZB8JkWXu43deRNu2OduEsmlLL4Q7sR94tUK5AYPunLx
	P4US0EWbzyDA+AGd3tybIKsgJLzRO7wDO1uMkoLowtQE+PQyEUIfVvbvRr71KQbIdQDOS8Sd+7Qeh
	YNnt3p+MIanzlbpUKmiWVi+mWJttr5qlcQvNEMoC+swSg7a0d+QUxs5j+Z5buFhgG/OwZL2aGf5tX
	cW2jeZZujDwhFxOVWpaXPEORLipBGiFSs9vsBJyRZ5s1K5gCDro5rNptDYz6ewZ42yYgZpUEw9143
	HX+5fiz7vDb8pv7/NG7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqerU-009R3v-44; Mon, 16 May 2022 17:50:28 +0000
Received: from alexa-out.qualcomm.com ([129.46.98.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqerQ-009R2o-TL
 for linux-phy@lists.infradead.org; Mon, 16 May 2022 17:50:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1652723425; x=1684259425;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=dNW0Yne65zg4Fas/aEDKjmRAlYKXRokS8AGQ1jNWy+g=;
 b=q3MIkZ31Sr/WyAQL3hxed+eNBj0LJtFN51KBPeW8ODXgfyyVmFKGeZvj
 ikgy0Q5+XDRl1NsOTJ8G1WRcLc2uFpyjAll+lRQIJ0jiEGJmFx8f7ggNr
 pLtveUeQDwLv8fJUkQgHWOOn/K8J/WosWl3gTkG1JQCUunjKpthWeaD0e Q=;
Received: from ironmsg07-lv.qualcomm.com ([10.47.202.151])
 by alexa-out.qualcomm.com with ESMTP; 16 May 2022 10:50:21 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg07-lv.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 10:50:21 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Mon, 16 May 2022 10:50:20 -0700
Received: from hu-kriskura-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Mon, 16 May 2022 10:50:14 -0700
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
Subject: [v5 0/3] Add QCOM SNPS PHY overriding params support
Date: Mon, 16 May 2022 23:20:07 +0530
Message-ID: <1652723410-1630-1-git-send-email-quic_kriskura@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_105025_020309_DEC736BE 
X-CRM114-Status: UNSURE (   8.48  )
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

 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 105 ++++++++
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           |   6 +
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 268 ++++++++++++++++++++-
 3 files changed, 377 insertions(+), 2 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
