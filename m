Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 336D9CAC582
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 12:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rj8bf26O33IqDFeZnXBMnYr9zOJU5masJVJtI/xuCDQ=; b=sHhZBe7HFHcIxg
	GYWHMl5QxzCdRMi0vrq/R4bxBGxrtKfqtaldluhRjvL6iZJw59LjYpeDTLIBuJhG/lIcBGwVZiBCr
	mHN0FUng7axxRFzzJbhdW7gQyA9ucZZH9OaogqwPh/ICgvxjz8GGdkoeVvmq4jCFK6y+99HnN9sCH
	hDVEPL4AEL+kZoRSwhjXUAvmlKft7t/OrXHmbqLuzw5/hzvMfyL+80GHeWvvXxknw/gc691nECHTg
	kcHYE98NQ+FfJKZNBQ4iN2MpXqThZoAUYkYiLHv/am7jKIf/btDZin1BgbbDbjkG+9gJpFOIvknSO
	alGU7iF8sXCUI2c7BNiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2Sc-000000093SR-3zu0;
	Fri, 12 Sep 2025 12:01:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2Sa-000000093QX-2898
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 12:01:01 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fDHB015069
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:00:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8MdWDU2Uyypxys9C+gGfTrGxJ8Ztl4i13k8tb6lf2HY=; b=Lt+f6//TKAvf+thd
	4RoLaVi38xbabaR0TvVfcaC0kLc9G720+QBnDakbquJ3gwVDgPtZL2dK6bLQYssW
	kBX3Yh0xE1GeFrkJeiaYwLN/bgMSJg1WzzGP++TI98hXn7/omCxCxIK3wyluLgNk
	qtOXTqvCYOd2B69u6zogxXTGldX4SiTHSRQkgCJU0m4Vg3GZGSqL4iQl9sZUF1bc
	Jwc/LmwvppGZkvZbcE1cPrs/k6aSaDTHzzNIGuOVAliYQloikBFzK2bsOtpYWRcb
	ZTNXwzwtevqsW/AqNlTH+c1rIbGW9eaGpvTp+/15L5QeuwxdKuxfO6BxfZ7t4DOr
	U1kC8g==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aaputkx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:00:59 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b4e516e0e2cso341364a12.0
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 05:00:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678458; x=1758283258;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8MdWDU2Uyypxys9C+gGfTrGxJ8Ztl4i13k8tb6lf2HY=;
        b=qQwYhGJ3KQYM54kWb6y78r/vFwFyDZ0i3zILH/ZOU7LP/PrDglaUdV0OaOOelAcPiA
         xzMwKZnF79WVANfiNmJFcUXLbc43L+qkd6EGVD7TlMtabCLSDYdvfubgPB3Lv6EmRwis
         Gl5GAqiMxwkvJ0l7TfMkAJD7ZQsuSdxo/zIUag/gVYFCoUGOwovgbe893Gj2qVr5D9l1
         Tt7D0zvsbAQ3c3U99neZQBYBE1LDeIEYDF1CLpPWAANVVZJOlOv18pr7dD6WO9mABL75
         AqB3d/msYsFWJFGkB1Honb8i+r3mu67O52z3oGTtobueBc4c1rVbiEshLjDQ3lWiLLZr
         LoHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFBud8vkQsFLaHqiLgP575zDxII0Mz2143hjWiS0A9yz/tmymKmf9qUOG68lQ4VqtQseEW4SCKPrg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0VUDPdYzCxygKCSryQc0xyaED7WDlAT92TWNG+Q9oSwJ5wLJq
	zkaC7k3pyh2HHgJpMJAVdezNAd8nyKnxnC923AaoiREqVEknNTn46+Yi0Lvjh7tzrgW018ibngg
	zMQii1o2tSLXoQnJU12XvyCiDB6g7A8M5BYrvwYPaNVg5jWoeKPPwTynlcBm9K86CCe9i
X-Gm-Gg: ASbGncv+cb4KhRYJchYpOK9f5sufSE4MyX/Kgi/jxEnaDCcaL7Ww0xyP+/rzrDD3fy3
	Ze3kB4XjOC5jHZtasGF4o34arhzO//XZN/RrGG7PTzqrxD2ymoRSk4lbiKNylJ4LQlw1lwgQpuu
	2LSCoVGlxcU5m+/ZTRWbFPgn/yc27zlGgQP6KiP5EvlOFfNPaO2KOulW4WVsR148Qca/Vu2MoWa
	Q4tWCv+uW7CNRnhCeAaIWOZzcg5pESzvaQF6sb/bwTo8158lHVTq0Qhp4nrT/rPGkq40MVs24Eq
	A96MUseY98GmvjM8XKMYr6LlauPrA+RBlrXIpCFaRxpbyG9jn5qdCQXjj1MqJaiNTLZl4oFyRcE
	exVX7lEso0JWDOw1Kc2gixCI1xFwJCA==
X-Received: by 2002:a05:6a00:39a9:b0:772:29be:e006 with SMTP id d2e1a72fcca58-77611fc4e71mr1825323b3a.0.1757678456689;
        Fri, 12 Sep 2025 05:00:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyWZ/RCwH5uoedcQ8POSwjS4P2D41yWOMHKovMkWcY5GLr2xHum8zhLBWbP5bd/3+H2e7PZw==
X-Received: by 2002:a05:6a00:39a9:b0:772:29be:e006 with SMTP id d2e1a72fcca58-77611fc4e71mr1825274b3a.0.1757678455923;
        Fri, 12 Sep 2025 05:00:55 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607a48c19sm5291497b3a.36.2025.09.12.05.00.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 05:00:55 -0700 (PDT)
Message-ID: <11fd5d7a-e084-4ee5-9f34-2ec0481a1d46@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 20:00:48 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 09/13] phy: qcom: qmp-usbc: Add TCSR parsing and PHY
 mode setting
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-9-2702bdda14ed@oss.qualcomm.com>
 <x6p3hgatsauguzxryubkh54mue5adldkem2dh74ugf6jf3ige3@cb3mmigu6sjy>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <x6p3hgatsauguzxryubkh54mue5adldkem2dh74ugf6jf3ige3@cb3mmigu6sjy>
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c40b7b cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=1bTgUAhQIaiSlqBNWd0A:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: R_PXjGy_Ko9JfisqkB1qks4eR5MMImZN
X-Proofpoint-ORIG-GUID: R_PXjGy_Ko9JfisqkB1qks4eR5MMImZN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfXwCQqCxYeS573
 wgSheEpLKlvwXZZHUgTkdSobkQWN20KaeR8Y8pYBS2Osp64UwTzrNKQ5jXr35/1GQQKsgl4bRiy
 lHJBWmL1cN2Vx2ngL2d0e6dso44wxedJNbDSq262YvQRuqXG/0JHvAa5QLuv9Pfxzd6hBbxUclF
 BGqWXjumubdsSa4S+ZPW51TFTzjIefkwdrmEvFA4K2JFOdpNjMZXB5h4I5WUb0BmhCEqpXTTbqR
 0b7F4Un1PPHqrwcMLOyrrRzFhlA9FpmeX6r9C9sp8hzr6o8W5NZIRxJbKwoPNrbXM1L0BaYcCB3
 UuCNvos0ALTRTDqfwXIRowTBiFApFMAs4ZaRP4T4Ep0E7/v6odBMvagxKaQ6iz/g1h6zzmyt5wl
 w4/BXnjG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_050100_669693_46E1ADB5 
X-CRM114-Status: GOOD (  10.76  )
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


On 9/12/2025 6:20 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 11, 2025 at 10:55:06PM +0800, Xiangxu Yin wrote:
>> Parse TCSR registers to support DP mode signaling via dp_phy_mode_reg.
>> Move USB PHY-only register configuration from com_init to
>> qmp_usbc_usb_power_on.
> Two sets of changes. Two commits.


Ok, will split.


>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 47 ++++++++++++++++++++------------
>>  1 file changed, 29 insertions(+), 18 deletions(-)
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
