Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41A28CCA489
	for <linux-phy@archiver.kernel.org>; Thu, 21 Jul 2022 06:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+rGCoZEZW38PRviUpq9tzbC4pYdnkGgzmYdXodcsD3w=; b=dhUtgOE+oNDPt3
	xvEXYFJkcQ/vZYeQQ4p4/bYlCe/K31W1uAfb/YAGCrGfjDOWzj3TWrRJ4k25F8HvVHyi4swcqa7Hi
	WZujRxDv9GXFGSsaucRdR8KS1ehtOEn2DeZVZ7SbIVFy3g0cb+i8brpzne52mzmhZ15aK/afjxvR0
	ejHZHb04Qbz4oreoybM9ltuUDU3Ui6irsTs5+n5OVnOnzv8/kwVEBOtFpO1DhHiZWSsdWjYmrGMmY
	lbGMpychNI8Qfwe3JuMyot63Z/mCKIr3y3rJqR0NdKoYL9v+/6Mqy67K8dCTcruLO47RkNSb1y4Hs
	T8IMmpUBUZ0cUqIlP4pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEPgn-0011H0-K5; Thu, 21 Jul 2022 06:29:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEPgk-0011AB-Ei
	for linux-phy@lists.infradead.org; Thu, 21 Jul 2022 06:29:36 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 26L6T7Zo002747;
	Thu, 21 Jul 2022 06:29:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=Cgt+i001sgSYugycMH+u9OpBmNLb274UTVp+KDwEJGQ=;
 b=eNW/OxmeP7BMAkUV+u+N4D6UuoZ71k5iLq8yMW/DZ9LT/TolgxmjfVvv6IrRq0rJAsow
 5fjISA7sbDypxYKwjpner+C0gWFeGXuTgHxwcOcCwY7YvFysN7SAnhm9yzCTsJMejWAK
 OaH7IlqlOpaMXaYpBC3j3QnJeQhB+ZAs6BhBEYPFkf8CJzjCgbxx+4uzjZunUcHezzZc
 BSJl/W5zntR+PIqkOaJdYU1ZwvrclErVa/HQjtuZ1ZaTSUO8T5iCFDyFtGbQcb3UVEg1
 vkxcDr5yQtxsJCq93vhoRRarbPPZKbL9UM2m0Fb2Gfy1DE++QNXSjIRbBD55dYdoW7LH qw== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3hf1j88024-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Jul 2022 06:29:25 +0000
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.47.97.222])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 26L6TNcw021017
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Jul 2022 06:29:23 GMT
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 20 Jul 2022 23:29:23 -0700
Received: from hu-kriskura-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 20 Jul 2022 23:29:17 -0700
From: Krishna Kurapati <quic_kriskura@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring
	<robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson
	<bjorn.andersson@linaro.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Stephen Boyd <swboyd@chromium.org>,
        "Doug
 Anderson" <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>, Vinod Koul <vkoul@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_pkondeti@quicinc.com>,
        <quic_ppratap@quicinc.com>, <quic_vpulyala@quicinc.com>,
        Krishna Kurapati
	<kriskura@qti.qualcomm.com>
Subject: [PATCH v11 0/3] Add QCOM SNPS PHY overriding params support
Date: Thu, 21 Jul 2022 11:59:11 +0530
Message-ID: <1658384954-9506-1-git-send-email-quic_kriskura@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: hLUj-7tJg4mB2zOSfL6D92lklJB71Lgb
X-Proofpoint-GUID: hLUj-7tJg4mB2zOSfL6D92lklJB71Lgb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-07-20_12,2022-07-20_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 clxscore=1011 impostorscore=0 suspectscore=0 spamscore=0 mlxscore=0
 priorityscore=1501 bulkscore=0 malwarescore=0 lowpriorityscore=0
 mlxlogscore=640 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2206140000 definitions=main-2207210024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_232934_636739_1F05AAAF 
X-CRM114-Status: GOOD (  15.36  )
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

From: Krishna Kurapati <kriskura@qti.qualcomm.com>

Added support for overriding tuning parameters in QCOM SNPS PHY
from device tree. This parameter tuning is required to tune the
hs signal on dp/dm lines for electrical compliance to be successful.

Changes in v11:
Made changes to logs added in phy driver.
Fixed nitpicks in code.

Changes in v10:
Fixed patch headers.

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
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 262 ++++++++++++++++++++-
 3 files changed, 354 insertions(+), 2 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
