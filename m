Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB28CC47077
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jan 2024 00:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEuouD+9CKDcYicgHuSkl9oZIka0TioLw1DrXqBUYuA=; b=UQL6KZkULDEgQl
	ifyOG+Xkotz0JUC41XiCatzcm/g7i8jPpjqXP+IyrTu15F0IhxYYUtWhKI8CIIcf+I/Pusoh0aAik
	iuDndmY3ZNJXP3XXNV2bOCfDH3lYw4HH13j4O0k/Ullg0u0oi6ayZy9I/BjIX8TaZxV7f4+d1MEhD
	RsXiBJpzb7fMP6kSFaPLZ+yLgmxslz1xkooBpZBPYAwPTJgWJapzq0vyT10NVla0fE4nCLunN5bQW
	Kp13tXMT3tSurgmJKpPxdg8BREE2h0IMgFQOBPFO8iRMOaVlvhvVangIN0rglqEZPFIsL8r+79SEJ
	Wbqdb6GCMP2kVcW5DBwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPtPt-00E33L-0x;
	Wed, 17 Jan 2024 00:04:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPtPp-00E32d-39
	for linux-phy@lists.infradead.org;
	Wed, 17 Jan 2024 00:04:23 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40GNpwfO004069;
	Wed, 17 Jan 2024 00:04:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=oUoG7KVTagCiJE3z/rvyUKdC8ngAzBSP6ocA0mr3YGE=; b=Hh
	k5eiksMrkj1CSu66RFv0C3bHHsRHk1TXEx88zBvAlXkQcHNIh1XH9l0Ffj7I9WPL
	lG/Vr36GP7d/MwmIakT4cuskJwsYFj28SMRAhbA9Fugs/0n+Ffyn5r6xPpk9kdVd
	wSyEruHFmW82n9gjCnJ/ABfU4vvwyNLz0IMUb0QGXTRLzvZM4tu8x88aT2hYQN7e
	Z+N9y3kWT6UQm/od3DEaZechVvm9sJjFRLsh2xuwG/40Xd6kYnhfYQ25M3H51UaY
	97hN7vHzdeU7mw++vnXk5JF86JruUNyXz01PZgYxxAecUg9NrM79N/cn+hK8arKm
	XRPUFLsxmpdjQ0Iez+Ng==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vnnkeaa2b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 Jan 2024 00:04:09 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 40H048Mr021623
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 Jan 2024 00:04:08 GMT
Received: from [10.110.99.42] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Tue, 16 Jan
 2024 16:04:07 -0800
Message-ID: <a9c68fa2-57c2-4ddc-9261-acf1f58b0e38@quicinc.com>
Date: Tue, 16 Jan 2024 16:04:06 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/13] phy: qcom: qmp-usb: drop dual-lane handling
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "Liam
 Girdwood" <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Bryan O'Donoghue
	<bryan.odonoghue@linaro.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Guenter Roeck <linux@roeck-us.net>,
        "Heikki
 Krogerus" <heikki.krogerus@linux.intel.com>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-phy@lists.infradead.org>
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-8-de7dfd459353@linaro.org>
Content-Language: en-US
From: Jeff Johnson <quic_jjohnson@quicinc.com>
In-Reply-To: <20240113-pmi632-typec-v1-8-de7dfd459353@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: GFHcz04WR6vLPyaRWl7Xa_kAkk30rIp3
X-Proofpoint-ORIG-GUID: GFHcz04WR6vLPyaRWl7Xa_kAkk30rIp3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-16_14,2024-01-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 clxscore=1011 bulkscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 impostorscore=0 mlxlogscore=609 spamscore=0 lowpriorityscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2401160189
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_160422_043457_D85F61B2 
X-CRM114-Status: UNSURE (   7.81  )
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

On 1/12/2024 9:42 PM, Dmitry Baryshkov wrote:
> Now as all dual-lane PHYs have been migrated to a new driver, drop
> support for dual lanes configuration. If the PHY uses two lanes for USB,
> it is symthom that it should use either a combo USB+DP or a USB-C PHY

if you re-spin: s/symthom/symptom/


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
