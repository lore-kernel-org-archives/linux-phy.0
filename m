Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44425CCD182
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 22:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KNKQ9qbq7xKPdQeEkf5+WXvXAa1j5e9jOhf7M/tPQY=; b=ribl/OWko0ET5l
	1Az+tzfgVAjOiaF6OrJ+/zdlkHSg+r4Vd/F/bOIjsS2b/4miVHV5W35jpK0BPn+mWJ5hUMOLKMJqG
	RvoMVCLwFQS7fcJx8FbbwMZh29/xV5A2wx+7JgpPIXkozFGNIHCHwNubekVwGPbZWjZ5Nknf4g003
	aPz6brxIt2p8aoYn7JK/nnwfjxmXnRBubW5H0gALanufjgqiKIvpN/gA3JF8bEYBjNy6+5yZcBNh7
	KM5uuX55PPZDL6H5Z1QncoLAkfnPv9ZEumwubg+2VcQTDpMOs9mtNG2aVvEHnA9/0d32x6uS+b5lS
	u++8Dr+fUkXeHvbNdMlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xP-0000000971y-45AE;
	Wed, 01 Oct 2025 22:05:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44xM-000000096z1-46qx
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 22:05:54 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591Ic0aq012279
	for <linux-phy@lists.infradead.org>; Wed, 1 Oct 2025 22:05:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fV/4QT0VA9Y
	jNuWz+QmsYOyq2W7XTcB2wF0sRRRIIRY=; b=MzHbIRzTXcx0eDmkqISGNJMbVyY
	hTBgZTG7esS5c45IStBAEl3hkYcHKJk3gsznEEvUfhh2m0WCEUmoz2tAcLcWKkC+
	wcrR6u+noOJrNi0nraDv/acNAjVFFoIqiUgncMkKf3PJsTgEt2eDpuvixoXUUssh
	ZcpNJ/hkrlpp1ff8EQ3/d4WZ3kGQBGK5J0ddjCdUn63bRB/txEs3qhTMI49RpuMq
	Ud0VUHd9dVt/6YAUPiKVFMZRrvThXn8fmzlCDoGI1994JD7rQoBt5toyKyNDOXsw
	gf1DVUeKpPq/Izwgmusi1psKBhNa1GaAhRQ5GiBnNu7/nD2OCc8KkO3WCKQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e80tx5fe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 22:05:52 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3304def7909so324221a91.3
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 15:05:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356351; x=1759961151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fV/4QT0VA9YjNuWz+QmsYOyq2W7XTcB2wF0sRRRIIRY=;
        b=Zypa6KIDapnP8lfAPVeOTkv6a1FAc7lbj3jlB51sheWyP+47bknyC2GRB54knljWR5
         PCnLHpTE5Thj7p8y8oFvTbfc9bYELG0u/wFaRcZCR3DPzq50S8+N5/PGkMEpRH+LCKr6
         8gld2oXeD9A4vO37tXQcX3PJ3f/hB5XZlCqSf2gSsN1QNB7/UhXhrSK5Gq/KJRLNQxRc
         2P32tOcqFKIp6/f4tkXkw3LoVcYEFt3jS0TexU8JqIYoLVDM5UURkMGEHGfSRDR95Lqk
         HvHefrpkGDtvbEWLEpq8fcWn1fu0qjU8W09bGREjNrZl+d53eQriIopAuz+O9IrevHcY
         u27g==
X-Forwarded-Encrypted: i=1; AJvYcCVu2Tbhjx0rqdLyMboXB4Ub94sLU7kZxzUjsQS2Dfktke0Cc+mKN0StFJcaZHJzE5uLnDzqG+8kw5s=@lists.infradead.org
X-Gm-Message-State: AOJu0YyiYbHslwS+VY7JvHdkCxeXxsHL0/x5Kdw8sr4rE21DQ81H7kLz
	OTA01SYan7hxkk10pjZB6+v/7TRw+AliQ/4LxnEGUBnO6hPoWoBPAB5DzL0aeAF2Hq/P9Oqbyxs
	X3Hczw+3NVaTLNB+24BnXafSU11Ac3cNmlcrzQPhdsl1XgK3mfwADxD7vGExPNKiK69Y8
X-Gm-Gg: ASbGncsSe8k1n4N5zrFedmmVjzLGd3ADiWMNUjPhM5xkoxHSZ+0vH6mnkY+osuh71MT
	/np+Vz2OgR4I3VWjT7faakiuI3+YJ4s+Zg7B+QrItXFeu7W5Ddq/i7zvq9rG0jbiZjyyln7gomz
	vbc7VY6gRUf4nnsllEqEd2p5fZAYiB2dncBh5aG8esmcbkxdrhn7xY8apZZIS3hHY/YnrfU+kND
	Gz0dRAM5mxY/5FhchtzKEAqdmZi3z8IcQ0m3K3bH5BHnNQw3lSuf7E+8ivirT2hkHi00c3UbCUp
	h95rIvD/ThINVTvd9KcNDIFNQh6B0m9aQLGHz50VVvaG0y587DGn6+mvp+ybcbaZ24r/OA5SLPX
	jXFMn4WzLAO6VE+uQRMrL/w==
X-Received: by 2002:a17:90b:3511:b0:32e:51dd:46dd with SMTP id 98e67ed59e1d1-339a6e97a92mr6634310a91.16.1759356350770;
        Wed, 01 Oct 2025 15:05:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmr7R5I47BoSxuFE5aidJ6MkJoBIZ2dG5PdBMeCR3hmk/q1hEeSZK08XFxZ/maDOfJEkItaw==
X-Received: by 2002:a17:90b:3511:b0:32e:51dd:46dd with SMTP id 98e67ed59e1d1-339a6e97a92mr6634278a91.16.1759356350296;
        Wed, 01 Oct 2025 15:05:50 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:49 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 09/10] phy: qualcomm: m31-eusb2: Make clkref an optional resource
Date: Wed,  1 Oct 2025 15:05:33 -0700
Message-Id: <20251001220534.3166401-10-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyOSBTYWx0ZWRfX0SZz9bsVD+0e
 JXeuuSvUaiFCpYtrjUD9INSpcfBmPTvDypaOvy7fLw1a6Jqk9dYtJ2xF66Tco5NnLIWkrjZt/9p
 eJZXAUKMM1/4rDaBR8aq9iTT2jCay5EotZtQVZXBaZxS2iJFacfZY3lmCaVQEfnzGpDyF2q8xTi
 XtnfJnTgpy1ZBWdpS0hkZ6jNhdazYjbz1F+6QsTatI17eEj6KotHCNBnQxk7tca1vdvv7cBeWL+
 z387k+kEzO7B+t9rnG1gcGQjdrTSnyvhNhUTkUnM2YPEKOGN99e5sdvkyWBqPEi8VlugRzjDP8A
 JgX9u3lk8Ebi4qwf+JoD5gkCMJ4Aqh4D+W6uASP74gPuFVDUnCVlY5sAYtJaG4izm0m2G5Cmywh
 znxRVGxackSIts8p5wdIi6P/ctMCdA==
X-Proofpoint-GUID: tJukViYtsHGBvB4IAogCHFCmXQBlQ_5P
X-Authority-Analysis: v=2.4 cv=OMkqHCaB c=1 sm=1 tr=0 ts=68dda5c0 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=8inbgvmG2iPteTk8MkMA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: tJukViYtsHGBvB4IAogCHFCmXQBlQ_5P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_150553_139527_CAE3CFE2 
X-CRM114-Status: GOOD (  14.88  )
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

Some USB subsystems that utlize the M31 eUSB2 PHY doesn't require a clkref.
One example is the Glymur platform, which contains 4 USB controllers that
all utilize the M31 eUSB2 PHY.  However, PHYs associated to the primary
and secondary controllers do not require a clkref resource.  Due to this,
mark this as an optional clock.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 95cd3175926d..f8a00962f937 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -267,7 +267,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(phy->reset))
 		return PTR_ERR(phy->reset);
 
-	phy->clk = devm_clk_get(dev, NULL);
+	phy->clk = devm_clk_get_optional(dev, NULL);
 	if (IS_ERR(phy->clk))
 		return dev_err_probe(dev, PTR_ERR(phy->clk),
 				     "failed to get clk\n");

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
