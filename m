Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19082CA101F
	for <linux-phy@archiver.kernel.org>; Sun,  7 Sep 2025 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yyRzcLEYgpHBOOPl7vBavrj1IF5fQGgct8dfYBh4ZCQ=; b=PCBmmeR+Wga9Vz
	CheodKmJ3r3Z6AKEeB3/8xBEm2Dte8AO5ih+LQ3bdpGP0QQb0PyETCSL6RPtrGchlJSzxIsYf2MZM
	n7Mt+Dz9ss4aG2zZePlxeVSwhZTFBopnTUZ56cjiqR0TWoK56jAFLSxfY8eN1J67ef2qRefB+avtF
	SjEurTPk6qJvm2HjYy0GeR2FgAbjIM5D9KhMQZ/QY9eR0bJe5wmOpDprDqT11v8VpdlmRVOHVHKXP
	RP+pVwPiGX7hSTqRCylEwtLoctpHmtTzQ/4gZmeg2IY8gyZqHqA1EBH1k9CN6rXLoCINYDxk69C+C
	8RbRPRB668PxqPXzaNZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvGkg-0000000BYtj-1m9Z;
	Sun, 07 Sep 2025 14:52:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvGkd-0000000BYsG-3Jof
	for linux-phy@lists.infradead.org;
	Sun, 07 Sep 2025 14:52:21 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587EahvG022611
	for <linux-phy@lists.infradead.org>; Sun, 7 Sep 2025 14:52:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=dm/AC68sidu1C9D5/ML6f7
	y4aTepUoqHgxT+eji/ans=; b=hvTTx4xIPjlwS3XFieFgfY2yLmKnmw4C5k0DWB
	or4dVPviC0+ILbyJh5i7XkrgwQUwB5YJi9bd3BDXtKfVLkGaByF9Soj+jnHOP6xY
	PJ2rBO7/guXFR+pZCK/XtEWWT2QMsXTYKRePHBOizB0j2o1BHBK1+Pa/51uAHFyu
	zHNB5us0DKNs3AVcqf6h70rFSMf7IuI7b1PVNHZmIv9RoKpnyLgj+Y73zN1+2GdY
	XIus2r4DsrPveFb1zyE5nxMrIrMm6cl6fKQyMj0soeL9s/nbfreVOBVZseHjizJS
	uXIQnN+96eOlKB9v4T7u8F5UiTEobNUxoHt6jrfGurZ+EIuA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4kt4bc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 07 Sep 2025 14:52:19 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7222232866aso98072666d6.0
        for <linux-phy@lists.infradead.org>; Sun, 07 Sep 2025 07:52:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757256737; x=1757861537;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dm/AC68sidu1C9D5/ML6f7y4aTepUoqHgxT+eji/ans=;
        b=TWUqpvHK3j6UOOrKr/RbJwI5bQSceKVfam9VqdqDvjzrrEXEQ9ayXBxK/MUr024Maa
         2k7ZM+6cHAskh1ONpIr6jKrVawaewCuZPAEz55PyrRJFFYu3u9jovxunjkxeXEMr6HRb
         hZWgyvF4MFuqFaCVxCRmjVXFRHkUQjeiunqyjwcNW5YSvzczmQSv8fkfaEt3bfCeH1Cc
         0iCqi14p48ZOxTeemA9nw/6LRO6zpSeYxsWuOucYV0J1G+S+uxaAvkjqbR7XoZmE91VC
         hm0zYB/qNv9Sytp52vH38Gkwur5hgyYPvn1eIps4k9clraIrdsLp/K5bPuLkez4jjYVB
         uqTA==
X-Forwarded-Encrypted: i=1; AJvYcCUWXXNyq6cI18S5dSkqAQ/s3pidmJb1kX9nVk/hKG2QPLfSlgokUwTgmhtTV0PCWaIc8u0+Gk8Iaak=@lists.infradead.org
X-Gm-Message-State: AOJu0YzrB7LhtIebSXTLJzYVASSziWUkSZpRbqBWx6Be3+DVZREcYefe
	3hy0U4JSxr8pSNKELF7BFl0FA+FU9/wtjBkOsXl3e0LnaYDnoEmPte0N6EnBEji8FW02zs4wNgE
	mLI31UIMSoeqHvmtepQzD/sl8KEGPbQaGn8i8vvuNlxPpyPqqRr0gvnFtYcTmRUNXanpFwYvs7g
	+w
X-Gm-Gg: ASbGncuByB2ydicUD4sQ++e0ikzmYS9mJ7u1x605jUrSXbmluaY4ioxelb5qWbELcmh
	W/NGN9X6Uszi7O+ohFpp37A/H27UMviIezfOgs4EQkXImfQPgzbp9qOFVWVhct9Eg83KDUhh28I
	pGztU/63+pYqLL1ZpNjy8ZQgEOkYnNu4rcr79BU/qwS23mL2LWeyp64XCYG2DYGMbkGC+7YF2Mp
	b5EXFpY6mwNP3/4i4W2AaZNaCkgD22KY0of+F5wlwt4ECNcJ+qOhEw31JslfngW3rhBnGCvwnI0
	HrF/osdnw9+L8WhIGP2yBcedBUojigSrBvMw6PL0UBnAAleq4M/YxT4khKjD/WCgyL51kqveiwC
	cqSB4BWyrethiIA+mGftGT8XVZNQU7sdfBjVZAUTKBTTzISYFVvf2
X-Received: by 2002:ad4:5be4:0:b0:70d:dbb8:2a08 with SMTP id 6a1803df08f44-72bbdceb182mr98998866d6.3.1757256737478;
        Sun, 07 Sep 2025 07:52:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtL7nhGW7IPavOZDy/ef87fk5RxFxPNb3ACPkcCQglRl4GUV7+76LhYk62IFPa37EajiBP9Q==
X-Received: by 2002:ad4:5be4:0:b0:70d:dbb8:2a08 with SMTP id 6a1803df08f44-72bbdceb182mr98998676d6.3.1757256736962;
        Sun, 07 Sep 2025 07:52:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ab939d5sm2936738e87.46.2025.09.07.07.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 07:52:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/4] phy: qcom: extract common clock-handling code
Date: Sun, 07 Sep 2025 17:52:09 +0300
Message-Id: <20250907-qcom-dp-phy-v1-0-46634a6a980b@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABmcvWgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDSwNz3cLk/FzdlALdgoxKXYtUSxNLI0sTY8NUQyWgjoKi1LTMCrBp0bG
 1tQBGnTOPXQAAAA==
X-Change-ID: 20250907-qcom-dp-phy-8e94929431e1
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1558;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=66V9mcSPRg3zLz1L84vxx3ShagDLM7AYgTphTtjm9GU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBovZwerACnHxjCQwYknzvSyjU90vogRPM+MxS0d
 SyT3t2O2kOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaL2cHgAKCRCLPIo+Aiko
 1WzCB/9xXfVzmn1QhK+Myrm3J97oFFadhmi5uYwEyv7gQAjNHezWVIyx4rho2pZrQkSo1W+vSg3
 zZSk6tKJMsKA4LqSzT8hXqodUiuZZyxYB+y6ZaHM9Li9rc6eg1X0dxPt3wx9BXwzpfbczVLtFOX
 2B/hJPUmMUTuEandaj4IZ/tr4G2aoRz/zx1xL52+N/RjnEE0GFCDDUcVpAUFKDYpYTighqpzuFE
 bCosOGVsHVFbW0ki40EPJ5S4CwRhKlY7+4ZUJsMOm5V9XSlX3565Bk9PlWpeeywAbOXwLPSudN/
 /Uh3qTUFLxde4bje+nCs5RSu2Wgo2cQNpR+bipc7dR0LuwQp
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfXzvu0ctR4mzq4
 T8DeOdGhIRxnv3rMBsN4O/cxUXMVALDC2y99oBqq0kc1RYotrxu508hP7mX9GwYxEMxIIoX16EQ
 LbOB3nIxlJ3JQTt7VETaTQI2MVksGLBlk1Xy9TH6NxI8C/MnU6P/bEGNWHUfklDYREeXKITS6Tg
 ftJK3n1rKmpqOJKOCTqIcBOfrPrfgfmp1SaiKukepwJh68UuQgtDhoSiBXNlNhnnbHjKqcos7z5
 d1qV7UDij/AfJr6yDPxYF4ygpdDwBAGHFWrZUIM6nEsuLA2mZdIjicfVvJo4S7q9LQ/kHsutqdC
 73r/UL7hTNA7bUix57ig1PCVNT0vcVUGmTlEE/LgFPS7tI3DTTViEDDa+U3BWxmpiH8nfUZc7mE
 IqST2qnL
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68bd9c23 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=e5op49_jyGd2bgSFRKEA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: Rwuy2vA8lj6V17k7Je9-6VFTZfmFV2Iv
X-Proofpoint-ORIG-GUID: Rwuy2vA8lj6V17k7Je9-6VFTZfmFV2Iv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-07_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250907_075219_840932_03CBE8C5 
X-CRM114-Status: GOOD (  10.48  )
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

QMP PHY drivers share code to register PIPE clock and to handle DP link
and pixel clocks. While the amount of share code is not that big, it's
still better to extract it to common helpers, reducing code duplication.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (4):
      phy: qcom: qmp-usb-legacy: switch to common helpers
      phy: qcom: qmp: extract common PIPE clock helpers
      phy: qcom: qmp-pcie: simplify AUX clock registration
      phy: qcom: extract common code for DP clocks

 drivers/phy/qualcomm/Kconfig                     |   8 +
 drivers/phy/qualcomm/Makefile                    |   1 +
 drivers/phy/qualcomm/phy-qcom-dp-common.c        | 164 +++++++++++++++
 drivers/phy/qualcomm/phy-qcom-dp-common.h        |  22 ++
 drivers/phy/qualcomm/phy-qcom-edp.c              | 181 ++---------------
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 244 +++--------------------
 drivers/phy/qualcomm/phy-qcom-qmp-common.h       |  67 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c |  62 +-----
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         |  83 ++------
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c   | 124 +-----------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c          |  60 +-----
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c         |  60 +-----
 12 files changed, 334 insertions(+), 742 deletions(-)
---
base-commit: be5d4872e528796df9d7425f2bd9b3893eb3a42c
change-id: 20250907-qcom-dp-phy-8e94929431e1

Best regards,
-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
