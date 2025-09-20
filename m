Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D738CAC5A0
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 03:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jq4fnpNM8wzcCm+5zUqandDe0x04+zoEA+1fFaFVwjI=; b=1sKUk+gr2shnTP
	FG05v5IwPcULkSg/7TpuhN8OXhHUtDE+DL7nq/hd4T5725Va6PEA2LssjuPSXk9ynxofCD59+pVf5
	gFmOBZ1UG7jaoXDa5fu5YaDV1LyqZBWutL+vI+be4SnBeTdDZ+pwIseHmNFymPf3wtfFQ6zkkZLhx
	4L149LcpYSIxz0+BMYGZq/xvixhdE+yf47Ly3rr+h64U3umF8YMzKojxMFhlcijFruwZDOAI2dXl8
	CiQtIDsBAwqJidXiK7JbvUOVCGI6D8TvsPMn7qpiy4JQwgxxV6onVbG0RGAAW9vMyEUeouC2KVFqj
	4vEZ9EV4Paw0gH5XNL5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoAG-00000004eKQ-1hVK;
	Sat, 20 Sep 2025 03:21:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoAD-00000004eH9-1XTs
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 03:21:30 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FWT9006140
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6uA00onJvkc
	yy2M4ZvUqeOEt+eh84BjDYyNUmNEMNdU=; b=iJCLG5K5y5LXSke0an0jS6RPOOC
	7HuyWTkzcucl6yxfe+N7K38UlJerDUYkkFwGi37UqKs6CjIvueeWpMc8JZKrB6BZ
	yjemXDDG2iP7plYqEpLHoWvhxuBRtaUFnmq49boNm8xrJcrK4UgAL6uWmHz3CiRg
	w1L0RbC0ua6TOrO0UPiI+tW74nLJG1jbu8qYba77RhnrjB2Ne7vjOK+/X4ZeLVJe
	hBGjXLloLgoaWzEMdUV3n+xYIW9MTPmqtp5twpt3Uc0btFeY7kLjAu5JC404RdRx
	7xpdmPPOOOuRZflrmDYtYCECJcBLxA0qT8IC9GcFWS4LDjbxzfKYY2cWYyQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kkhg22s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:28 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77283b2b5f7so4001971b3a.0
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 20:21:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338487; x=1758943287;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6uA00onJvkcyy2M4ZvUqeOEt+eh84BjDYyNUmNEMNdU=;
        b=C9cTZl0uP/I5o4UFx7+eO1IZg22TFdwe38jzPs/fdWRRrhFEmnDxBKhTOdTV/RysRp
         EddXh/wq7cqsn1bXaxOH0q8tlyGsJkf8XikHxK1zjqSG5zH9i2v/cEvQ32KOmkXSzHFX
         k1A2tzGriHHwNItzhAr19i4iHQT8yg+5eX6Q9ZFihVdYSsLJkAfVmz0dk/uRStPK/7H2
         fKuWUbk5/+zvvKCkm/1gQwxM+4tR7mVCDfVhw643Gusmnsv2nY9zTuYKM+FUfBFYW/rM
         WdMzYAt7HkES27qTMVIJA3EKH3ai693JY/FGoBuyJOonnbk7MsFsjakHYEuRZmicgZnH
         K87g==
X-Forwarded-Encrypted: i=1; AJvYcCW8fl069hR5+pv4G9ZPOYwgQ9KZ2hj6tQxGKf9aeE7L8A5z+mIuwHNivQ7aDX9Wl/zHTH90kwTT+BM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAxj3YzCOnefbFGM1fSignjpk2fJEuaPQpcSASAKniXIrr82LY
	JdJNUIZo3kBYSZT/GIbecs1CBXqiNOB/WENSOxv5BASHZixwwYBMFco797hzcK9Ji0fobwjt+bS
	f2LutM0/DX8ti3GonmOJuE7c3zc96ec1lpcvle1VJ/rNnv5DOvm2OxQWQRGWhCZ2xpwo5
X-Gm-Gg: ASbGnctROORcFeNAVjtBl9gpFCDdHwqRTohXHljY/T8C2EaFSSygwzfswIy+RhQ4+Bp
	k+eKPMk55FvpXI9LDEZACBptHTwykdH9uPxlTul7z8VHVwky/BHmN9Nb/G4/NB2Q5XCVZkerrsW
	sXA7YrL2Qg8P2FViRh22rhItM5CCP+RzkefC89aezvGaGBTUO/PgelObFBIdql8DQmxsXsz85xX
	oWL4wTKFBqjEXdAV4gF1iFoRtT4SKcCDyQmGmYqB1D2OhwX5jwGvrgvUSr299HPeFuzroFp/tOZ
	NfG/YeDcgOQGoG9y43ebgWQ2HjqDrcafu7H4PpuM7YsCLDskZN2ZD1zGsa12MWQcWRdqMz7fMic
	6fOEfIQ+u3evT+RIQ
X-Received: by 2002:a05:6a20:9143:b0:262:cbbc:312c with SMTP id adf61e73a8af0-2925d0de225mr8589057637.17.1758338487157;
        Fri, 19 Sep 2025 20:21:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFXJwFYvetfpsIeKUWHiInvLQN1H67mlVltjKBQFq18DtwSU2ecOTFXwigElZASvrT0QR38Q==
X-Received: by 2002:a05:6a20:9143:b0:262:cbbc:312c with SMTP id adf61e73a8af0-2925d0de225mr8589029637.17.1758338486759;
        Fri, 19 Sep 2025 20:21:26 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:26 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 9/9] phy: qualcomm: m31-eusb2: Make USB repeater optional
Date: Fri, 19 Sep 2025 20:21:08 -0700
Message-Id: <20250920032108.242643-10-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: urtsBym17ImIlTmAEC7psuXogVj-zi2B
X-Proofpoint-GUID: urtsBym17ImIlTmAEC7psuXogVj-zi2B
X-Authority-Analysis: v=2.4 cv=JMo7s9Kb c=1 sm=1 tr=0 ts=68ce1db8 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=LPx1eKQi2Xt_nUOAx-wA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMiBTYWx0ZWRfXxtbmbOexknZl
 9UcS4FfUvoWEI5e2T8nP6ojMkObjVv2B17enzjE8SwYESUO2dyWswL0Oe+cnuvkLZsFrIeRoLhO
 5E9F0/DX6OFgqVKx+MfocU4eaySgHbFK8L6rtvCZVQEe7k6FrKTPLHC3sGWt+f3wKsW3xUkiear
 XmNInrsHrA63ap1YzRFnrzYp1Avjt3YyloyIuu+yMzRcrXA9Cawh8u1xI2kcY6KDe1SFC9CThFI
 IMte9/oYhx47KVJLWFlJJOmxAAhyDZsLrySSFnE34lytjHzo2xnS27JIw9O4tUHimBHHGNLDKNV
 6BlzVjHbZBpe9h2sidzFNPhpODVkUjIvJkZgYKvulSSeKseQ573gVZow9t/VKRq1vprSs18ket+
 lq6xKXje
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_202129_533871_8DF6C478 
X-CRM114-Status: GOOD (  14.56  )
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

Change the notation of making the USB repeater a required DT parameter.
Issues were seen when supporting USB2 across different form
factor/platforms, which led to enumeration issues due to improper eUSB2
repeater tuning.  By making the repeater optional, for SMB/QC PMIC based
repeaters, it can utilize repeater settings done in the bootloader,
which cover a wider range of platforms.

For other repeater vendors outside of the SMB/QC PMICs the repeater
should be defined and managed within the kernel.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index f4355d38aad9..b8ddadf78c53 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -285,7 +285,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 
 	phy_set_drvdata(phy->phy, phy);
 
-	phy->repeater = devm_of_phy_get_by_index(dev, dev->of_node, 0);
+	phy->repeater = devm_phy_optional_get(dev, NULL);
 	if (IS_ERR(phy->repeater))
 		return dev_err_probe(dev, PTR_ERR(phy->repeater),
 				     "failed to get repeater\n");

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
