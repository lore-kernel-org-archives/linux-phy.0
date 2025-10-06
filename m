Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5968ACCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 22:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KNKQ9qbq7xKPdQeEkf5+WXvXAa1j5e9jOhf7M/tPQY=; b=Gti2tuXV7ecvVQ
	Jpo0SgGiY3cISJPtabALUfcGSdfDTI9sNNhM9MP+N92Cafnh1SDKL8lKE9GuNt+Lq8QwTgSbKbG4n
	hNObKe5cCixPk7pSrBIcUBDk2nTvBAcm/f1pG/4p94HiAIS4djwa2AekpPiAvM6zASF/eUbemk90M
	veeibdEjB/BYdeBEzPsQiAAHEwIRCUGgd+WFce/FuhrIzXQGch87W/UU15Tyhq+pEYk+U4xgshvzL
	AVTUmVHaKvvn43oc4ET6k7UNHeGAkWoEvDAXokJhDXZNv4Kw9pYJeLqY/nyZ/XbJfmK34Tq9lSbnE
	bePqqPxGl5FDFDQw448A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZA-00000000uWi-0LmZ;
	Mon, 06 Oct 2025 22:20:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZ7-00000000uTU-1W9G
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 22:20:22 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596FEZvs004958
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 22:20:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fV/4QT0VA9Y
	jNuWz+QmsYOyq2W7XTcB2wF0sRRRIIRY=; b=nYeqUBkS4063/hTYGK5AN36Mmbh
	vU1kULVBz1JC3xY0gai5o+Sf4MqpM5Ogcnm+es3LqpJUnSGDnVgsCdDejxcFKeFw
	Kc7RVqLjKEM/1Cbszq7y9rL6jNqE/34f3FagvVuJ4SVKxG1nBmJ4bo/0gbb3bA88
	0kOpADXsLvqaWzq8fTzdZfalZfTvD3SFQlLxBkKzzUWPpVHjed7KAQE3cMfbKB/d
	P4rhnKbAal91POcAXZMLMgBl53snG6N3YOHGpFgOXeooFHxjvUxz9QMekdXRtGxg
	MNUk8vSl6jLqqxxb3XZDW+BLgPDzTOjs28xZfhXWy+WaC5VWZYKdJqf0aeA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jvrhn5f0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 22:20:20 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-78106e63bc9so5264834b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 15:20:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789220; x=1760394020;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fV/4QT0VA9YjNuWz+QmsYOyq2W7XTcB2wF0sRRRIIRY=;
        b=sIH9f+8bdGwFjoQXPuyqBHwvIhapQB22uGOszmSxkFvoTFHKRtFvFmH9fCCxVryeFe
         9PwXszLgMGwnZIPnycHExUrNyeXMmYn2mlOWClN+zjIGs20RKmGOzN0inNvoeooNcjPL
         KzmoSG8LKiuC8bR57FLbN4aBjDtDLMdn5qLTQfy4ysldABJT8GRATFCxeCC4wn+lPVdQ
         d2ciA9102pnYc4PnUbkioe60zK6kAqDQkvMuSm5au0hDZoitkQJKe4b3+PaLMNxGLPpl
         ktxZXGVun886VRJzbOm1vx2giDf3XXiDWuVc2yMcR/kCDKuZ1kK4IoYXKM5eIiuCgoMl
         Wd7A==
X-Forwarded-Encrypted: i=1; AJvYcCXEAIb1XackwyF9kTXtU3y9XEDOMdUxp0lgX/vLQxeTAPTWA99/YmT/mmp9VRqkT72Gs+gG57sqOBg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5q/vzKtPdIDGlRQnMEvRak5jVSRCF8UvQVhTbf2sgHOn830jG
	mFRTiOMqsohuqhX5uZOQC9Cg1GApiVvuYeKhs2MZApXusdeSjSYdC/Q165viURWy6fE4jcCBcl2
	7P8XHsE60e0oCgTd/V17JPceqtSAf7/1AfjXQPS9wkKv8o0706gaxUm1tT96Gnke37pJF
X-Gm-Gg: ASbGnctIbe4dyD9tYRym0k/4bnVuGrcKRqBGorMkpABO2HQtzOvYlIUlLRgl7fUiolY
	5q3QjJiR4YGk1sB94z+KQeWJf4bndQ+DrLQAra9dO0nU2Ggn23/Y4/y1AaqC34HUOfaNblfcET9
	OaWQCYGVaUMp13/ntVJxqPYd3A66hh2/Oyeri5Vj9uIHXrMLTq9JGkDT6HCx6JsQg6SOZ8nEV+t
	HLfEOpw67jpN4dhYJTb2SKYL8SaqbwGd3m1GdsSq2s+9VZ2RdGm7gZc2sjq+balhbIimWxvHup+
	VMWmb2qdQWMCYSxJk7vOeoV+Iu5OGNSuicaUWAf7GZF8kQe89G37kv75zS0nszb0DD3Vl1fGS/4
	awpe4EBv8tfXwvXyr5xkTKQ==
X-Received: by 2002:a05:6a00:14cf:b0:781:1a9f:aee7 with SMTP id d2e1a72fcca58-78c98d33024mr17671964b3a.2.1759789219915;
        Mon, 06 Oct 2025 15:20:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOOY9p6MYrcEA1mJuNfdaAQD2CVOBY6X4Jp8M6dIFsvCZVYNCrKOaryyWH6+rHJuR6iNhMMA==
X-Received: by 2002:a05:6a00:14cf:b0:781:1a9f:aee7 with SMTP id d2e1a72fcca58-78c98d33024mr17671930b3a.2.1759789219452;
        Mon, 06 Oct 2025 15:20:19 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:18 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 09/10] phy: qualcomm: m31-eusb2: Make clkref an optional resource
Date: Mon,  6 Oct 2025 15:20:01 -0700
Message-Id: <20251006222002.2182777-10-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAzNiBTYWx0ZWRfX6bA71C3Evszu
 3MypqOol18A6PyjZi1vhPjSAn38gpyLcQUgfWPVM3oQbMM6urWhv+uLRux7YeuXBgLSmTtmBr+V
 zlpSO892AGTa5I1F4O+Ziry/6VjVeP3PDfbVkM+zZY8EndbuuFPutvuDsGlvDESIXgnpr0daNVO
 Q7A2m2w31ahiFOeBJiDj1mV/dP414uK1A7NmKirgoZ7TePHTzPoaRLX0Sg6X2EjRzVbKVhC4FpT
 6l274ND9B6PgrHYc6TwPEx+9ddjNb/kF9xiQ4vQ1pd+7kCb7upr/MyB6zIOcC/+KSE8gk7/RqcR
 VXnppvwcATylZavqmQtcO/dMaEJpY+E9AoF+PHvU4oxEgutxy3zR2eXvnwkHCnGXa/8oCfN7NJ6
 oXDtgLPVbQ6oBOlzULaFQWMquL2rBw==
X-Proofpoint-GUID: 7OABCqNtHU8GxOV0mhqR8RvoVSt_aqFG
X-Authority-Analysis: v=2.4 cv=XIQ9iAhE c=1 sm=1 tr=0 ts=68e440a4 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=8inbgvmG2iPteTk8MkMA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: 7OABCqNtHU8GxOV0mhqR8RvoVSt_aqFG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_152021_405445_5565FF59 
X-CRM114-Status: GOOD (  13.71  )
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
