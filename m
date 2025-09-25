Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56D9BCAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 00:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVdN7to2YWq2pund3lNpcihsI+zZgSXq1G+nADK3cxI=; b=x1aCkE9OJPBbm+
	PAcPX1puCQ5VB5y1BZhzeXNNl0xOS2aPCUCXXFPA+Ms2xBoIOvaJE7+HdWolpAteNNZcmgUwoSAQw
	Enfh1BzGicWmnYRpvapY3dHGLqivijx9dRDIUpp2sNeVOgiCcSXfwDkoHNTykZZSRXZGxcBkVKCcZ
	V19JQ1bG+ixF9mvZJJke5eI/XArDcxpILvN3cXKmUbd9dFbHAPpoyLYXh5xr0HceSbWy/omkFjz2p
	b8vWvFsdGfqsRFifuX9GJj7yryPxRT1XV40w7WzBN3ekjiTqI6X40SQBz/tPguVRq8piPGqBnsK8K
	4Ia3u3+Bue27noFBvcTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aE6-000000058Ii-0Tgq;
	Thu, 25 Sep 2025 00:52:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aE3-000000058H6-0IHK
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 00:52:48 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODSQ1O019919
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=GwDc2ByWl5B
	YnzIa/5w++Oacjx00R55NFfYXUv0r7SI=; b=dO3JsxhKNWN+4cYw7704EKXh4yT
	kFUPFg/G4A7DWjNhpCIH0KksUXQIVmGFBDWH6b9yqhHum+qwgjEWUhk/0XlHTSRH
	A2tlwwft1psIeIOHoyPqEYutUNKX+Sm1YiQXedjMXXhTych870gi0fpmySb6YvmX
	KisY3hqqE2REgRzuU/9swTJeGSAsjsBIJIwxGqeio2b+3GtcK3P8jxLLJdruXffu
	CKp03Rci17cjRNn8blbuJTywYzjVLSbXquuiDJ0aafzZtwk1tMHxARaqRcdaYuRT
	ig3gpLJPKv6rrT4KuIwuVMgSPtpmCXMi3OexB3dMPqXZEtrZA1/Uv286Ccg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpdyeb4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:46 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-27eca7298d9so7907815ad.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 17:52:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761566; x=1759366366;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GwDc2ByWl5BYnzIa/5w++Oacjx00R55NFfYXUv0r7SI=;
        b=NiE2X/+KRnBgjz58Vcr/WNGD2XdnqHAIjKxaY73lts/Ta4bWOdpkT5SnRjWIqojPqY
         oWiKkdFe+zqeUArjsHfGzALo+RuLLh3ip4YrCjhgEyH+KZMWej6lzZI54Yk+y2IjeL2L
         UPaJKpwvPKTyVpp7wdGUkD0fw10R8/XhXRREBFpnuWZ3zw1A1sWUgfHrbhPQ6l2z0tst
         TtQWhoy/haEvEx9U9IIbVK++a/K33nvb1GJ6x0KTSDcjhRctoaJaQh/1sSoIfDxZd2HO
         Jx1mN84miEUfkjP9AQNEdcodMS1tTRbjGQHuvKWvhRsI0FqTZ//lzK9qe2VlxBUWOfE/
         iKlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrM/l2FPsV8+PNHYtaz4jazw5Ty+AsPi424U1Pi2wlJoBHdZKN1JqalSskDOnMGsS5lKGAfWrM2zM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9qpT0D4L9hnFK6a0dXEhXJgcUeLSjawBPVG7TQRg5wLKdxcb/
	QVevqZIa3zQuQA4hk0NB95yp8mso5Jeo1JZqaq8S2RMb+kaPn2oFVBqi41si8WLhev3v+l7XccW
	uM3cIuUxuP+5wdGdn7Q4du4kSanUknTqRiyLaCxC0aMEYrzuAKrxU2SDVV19FvpjRnA1kbKSR17
	Rj
X-Gm-Gg: ASbGnctYtu+JsKLAqU2FC5vnXA60FbeeG2UnzxkMrcu7x+AWEv1OjbPh+LusIeJusvt
	goCWYv+2WkfUhVP/Q3RwTC9FUi5/bwd64DnqdKKTJVxsq9j75b+uvAWrgCRtTJiRXSGkd9R374a
	K8FfqZtaum+YeAGJDjKoZPdvnojEG9SEzuheVwy9IQDvSHI6AQyKCyejEwQucji6ZoSr51je9Ne
	2K3aU4CHQsWXow4sdEcQRbUbZv7jFu/L8J/3Ou0y9gripy4hIVyA3YzKJE+BeikH5qEX1bah8nK
	wJxpxlEy9vRJW+/u9vVR7uJhFXZyv2vDrN9tdQGpP4eQdObjolQqRYcIiFMzq6U7HnPriUHhjSY
	rQwAp0LVcWN0/u/Of
X-Received: by 2002:a17:903:2783:b0:270:ced4:9116 with SMTP id d9443c01a7336-27ed4a30d4fmr11198135ad.33.1758761565578;
        Wed, 24 Sep 2025 17:52:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1NU8ZODHNZkc+l42a5mkWmjFbo8+OfeRkITd+fOUaYxP3TJQUCBdNmqivTPnUx/dYUusvcA==
X-Received: by 2002:a17:903:2783:b0:270:ced4:9116 with SMTP id d9443c01a7336-27ed4a30d4fmr11197875ad.33.1758761565129;
        Wed, 24 Sep 2025 17:52:45 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:44 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 09/10] phy: qualcomm: m31-eusb2: Make clkref an optional resource
Date: Wed, 24 Sep 2025 17:52:27 -0700
Message-Id: <20250925005228.4035927-10-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: mMgwJGyTIx9UxY2d65x2V_iGAQAJL-jh
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d4925e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8inbgvmG2iPteTk8MkMA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: mMgwJGyTIx9UxY2d65x2V_iGAQAJL-jh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX10o5xLO+bN4a
 kxTQwhiNzUS5QNboL2VE1Sj7JpFl5FfnIM0w2bMu+tyHPZLqMOD0AIZZN3ItuONUK/36HAbH4wn
 37xJPxNdiCAEa0EWGmRtGf7aRcY4lcH8vEyD44ytQJutKhDLUnX61dZGEPKzBmW55dHaOG8yqnc
 KR8CWfidzRkISIM8oXLOrn6bjjYgEOjPoOy+XBUpnB0Gn3GaYRHBGKSa76Oce5xONcxHdxtMcdR
 FGDyYfphyaawkJsyeevunGjM6ye3szM258oVILA1wM042jPL56Uq8xJtY/w0mjQeAf3wiy3vU2l
 tykukvVBSm3UV8L+ZhFvMWG/jEt/W/UQFB3T3P1pELqWB9TvNaouGunpQvMbu4EtnZ+Ki+TeHtS
 U6/NT8ia
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_175247_108221_DFF567F5 
X-CRM114-Status: GOOD (  14.99  )
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
