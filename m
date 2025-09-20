Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23203CAC597
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 03:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umGGkfKag+dhdnYd65WihPMILnSPvWbMzTBK9BEXbhA=; b=GJX+/66PW3siIZ
	iDRvFU9hp4/a99Nfst6isWfN2K/9B64QT62aWAgKKyyPuZ8+kLSiYgFPA/Ewc6HSeI5zbDjZ7PHrr
	PubsayI3ON9ZoFos9230UDal72tTGJsF97OXBjnLCtjPSfWGPwSwuh7ixrG48dR/TCRZMvscDYMrz
	uEmsjdXu+RhpEW+LmeiZiz1fvC6CB7UG0O5gM3FEAOgcUhs5TbCrNURe2Aq5B28Oa2LlzY4XtnITe
	Kmn3p4XGX3lG6BjGcO3ACzuej/dzmA1aUT9GtEj/1UuP7+3TJON1a77vSH0PWDJmBNnNh+AP8r/c3
	JkPXbfn0UUMlIGpXeoqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoAD-00000004eIN-3jSy;
	Sat, 20 Sep 2025 03:21:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzoAB-00000004eFE-0f9Z
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 03:21:28 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FTrW019805
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=kuxKL1PStAu
	Jvwvz2BevRvoak3D7tba15DUzjzxEF+c=; b=ISlggu6MdmJwRtUsXG3GMk/se0O
	tAYwmI438qLshGkuxDTl+CcYaiYGvRjbybK7wZdkWxNhJ/VfzFyME9XYEN/wdxYY
	YNmcD1OpM6ETsSZwXSO3ui7AEcXsIEHTFBBw5XXWK52moZfV2aPp6FGPu7RO0TkW
	ad4t5bxL78cmTlDTyHvQq6HRVk2rBRqHubnNG2XW0iBp3L+60/chun5trfCQ91uV
	FjhqvPdQUlTydnpvDQA/Cj2etFmmMBYKavfWUMkKQlY7hxcV8Vdu7Dq6GIPwYvgG
	odo22MiEfCnsrJbTbi1MejVfM/Dq2RBxjuIOEyUG5mkBGJaoQeOKdwWJi1Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy14fgk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 03:21:26 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-25177b75e38so36071135ad.0
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 20:21:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338486; x=1758943286;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kuxKL1PStAuJvwvz2BevRvoak3D7tba15DUzjzxEF+c=;
        b=Mgo/vo4SmAtKIzRoLc3G5Yo4Ge+hTICbBtM/8Ib6v4QH/BGTuwy+nULUC4mLos/Lk9
         NG4U3NCsvxM6oJQ+Mj5FtR0Kg5RQYVNcOSv2KiP09sFIsN4HIf6vnNPiOKNLQd0rlrUY
         UNQXF/YPpHot89FSot01VvRVID5sA3B/WWcO3FSP5/jmwV6M2D3iDCK/FKb7OYqlDCBV
         y4JOX7bQhXAkX2sZxnnaj9KjsOyTo3F/Pey8VIaRFk1yKxSsZ3YiXsaKoHjsN9yfUF2d
         VSLsgZeMzU9twQ5Fj2rvvfx94Ttg0swPoSQBBDBQrPWy05TXLuzML9DlJgBRM1TJGfOP
         CltA==
X-Forwarded-Encrypted: i=1; AJvYcCUNdnqD50B/L0eNAP5XB69mPTvwwk+ZhOsIlGM+OzYZEoKFN50n1SpbIn2EFHOmbcRbDI6jngyKJD0=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywu+xPgETVqcGK6BMqd6+/DAL8VrWjIUVvDwjp8YqzOMoxaZZGq
	1Jrn+xgvHPGOAtXpYNAxpoD648lMl3bSwHhgdf1GM2Fci3N94QeCH2Gv4oxFeB106nrlo+GXNjP
	4zg9bEHNM7hRarAV173AwMj2ye5b3Af3ozyVfCPz4x6SB3u6EemoadIbYUGFhfCtCA0UF
X-Gm-Gg: ASbGncv3mdjIx8NQ+GQLzQYSzTOEgRoQwj95xpJ4hKJvTpAmiQFM4gXNw29vbXeiMrC
	jKVWH9y75kkMDFJJxwGmWaCLJadNPRXbqsunOlxq6wk1wbc4T/euivEBhl8VBxE0ZLxQvQSHZLa
	PhvQZ9MHBL1lpjKOcKq1qPu1vFrcJTXijT4YfcmQKaza1v3Iiyj1sFmMizjrNRq5CfLh2X2Tof6
	H5hipcFfSEEsZhJM6GhTbzXC4ZMU1MrVjG3/Uyb5SyJVfc/bjRwvdy5eIlhRA67DWWyc5ianT+Q
	Fg5QJ7y4AhnZRqZXhl3ZJjIC314VphDRkWlMJftSF297pA3W3+qXbRE10J9BhOfFf4JzcUwseWN
	VlC+j3HwyA9kfB2fW
X-Received: by 2002:a05:6a20:19a3:b0:24c:c33e:8df0 with SMTP id adf61e73a8af0-292727771abmr6193886637.45.1758338485858;
        Fri, 19 Sep 2025 20:21:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmf7ZyY4Qi299dDqNQLCxEkdP0noay2XXf8NGY+wawk7nSpEhPzEhHKehKKQ4CvBpbINH57w==
X-Received: by 2002:a05:6a20:19a3:b0:24c:c33e:8df0 with SMTP id adf61e73a8af0-292727771abmr6193859637.45.1758338485422;
        Fri, 19 Sep 2025 20:21:25 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:24 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 8/9] phy: qualcomm: m31-eusb2: Make clkref an optional resource
Date: Fri, 19 Sep 2025 20:21:07 -0700
Message-Id: <20250920032108.242643-9-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 70rEwucnNz8FLhvdcOCobtXRc_KuRF-t
X-Authority-Analysis: v=2.4 cv=btZMBFai c=1 sm=1 tr=0 ts=68ce1db6 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8inbgvmG2iPteTk8MkMA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: 70rEwucnNz8FLhvdcOCobtXRc_KuRF-t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX/6gOItVcmoxB
 uRfDKGu3gZd9VHuxk9aVZ5XPOx9sjrUVfWUirhS+kPrchtmuk6kpVRw/nMVFJxmK7TyZxHb52HC
 m9K46RLPWOkljkTLil1rKT9sfvpoSYlSqJpVYHCEsehDvtrTHULuBM6KDYBIsH4JsNNAqu3QO1N
 TavCAN83n0NU4aE38SjnwnAdeJG/wFkkZhl4e57g6pNgtCeyERzcdjLKIs9sxaqIr/EOC76NRya
 ms7/4oT6VANDR3lvEsSRr7gyqlDUQxBLyaW18pf408B1aYQymLyFTeHNsqr1+IslPSsjSkbKwzG
 8dITBY2Izl2oflyNfRfHvf9+ojw1sBXpG0CGBDna52OdmYtkIjtnlWxi9qN4BLM1cIciQ/DXuWd
 b1RBteqL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_202127_200116_D2992B3E 
X-CRM114-Status: GOOD (  13.74  )
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

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index fbf5e999ca7a..f4355d38aad9 100644
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
