Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C93CCCA5FB3
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 09:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m16aSN9A7gSZRgmcx/Igd3Fp15Hl23kVK486+wuzEhY=; b=t5++Z8/LOx8HdV
	FyTSRFcSzOc95T6IIHyKXJW8bfTKyI/YYIxzEO0IjHZFEbOw7xvz/KwcENpMTk8xLlcuEJdQjredt
	S5Cz8fOjVZmZAPW6xQ/lCvH0XD96Foq75AEunz0V4Enwtzv5mTqySBSarIN55Vi+p7P3hxxDZWIZX
	WvNzPCNv+3j990jz5tOWIG+kBrXncKDnmT1xs/Sm3iuNSX4gf1HAG0czFjodMCTnmkCWYxPm+5hgr
	+EBazwcgh6KfKPa0q7fwMkx0Zsh0VG01bBgewKtVqDw21U7LeeJHcpJ0D3vgw/ZelJrm9p9XeD7a9
	kq0kCErC3FGLxkcd7jSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCi-00000008O8o-2Aze;
	Thu, 01 Oct 2026 09:35:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCh-00000008O8L-0FIK
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 09:35:52 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6916xNW51062189
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 09:35:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ITC2AOyoiZTQDo8TbhKy42Jf/j6c3ShiqBjBF20yDLA=; b=TXkhuXOioTnrE2vU
	zSkIhqYru766pZoTlf7D8UFEfXWrRwf3nN3q770LpArGpmfyeG6LiXGkR9g1nRq1
	KEK1RYL7f2mpXnQbJSUt06kGLuktEf4BoBp5s2C0tkpljXgP6XlBytlAW917h7y6
	E0Ysfv3rCRgwrwEC0fyFHfzK797Pb5VeS2T/F5FAodgZS2AzWmCtoDgyrYt4Tg+o
	Tr7RKuyMsKxpFpQ7bGJO+A0w178O+/Uu4tij9Dal0Ya+yj6nHhRjHtOItPlqumxJ
	DaiXLFzgHNcoTJLgxrhseTo8Ysz704pjhMpzvY1KGCnOJSqU0xbNY3rt8LP/12nB
	XYqvMA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h17mvu2py-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 09:35:50 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-39de4e72b33so11304074a91.2
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 02:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790847350; x=1791452150; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ITC2AOyoiZTQDo8TbhKy42Jf/j6c3ShiqBjBF20yDLA=;
        b=Xlzf3X5cYyuDMqDE1PlJcJgXAtOU8QpN4T8qzeB9fmw0rZCHX2oHJnHJirCzyrShFP
         kHtNaYtxiIXwKUh2sf+pTbvsxWFVAhCD1CtAnXXZKYOT2yBQAcnrNy6xDXQOEf5HR5iy
         02lQN+inrq6aCEGqMrEezuTakKfjU/TRH9t5HdNmBUpe0IAHNozLBXE8ssGR4JHhw336
         EfxRtV8Dt5ynd8veWOyuleIcVigOomyGX6TxdC6uscCJxGdUs1Nlk8alx4frElDjTJyf
         GVqTXt9RqaxLGIIc8bYLZRKTjvkJvEhfIp2+WqyLh/jkET/5anJPCna5bIEjSY2B3J/G
         R7MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790847350; x=1791452150;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ITC2AOyoiZTQDo8TbhKy42Jf/j6c3ShiqBjBF20yDLA=;
        b=wuMkNOX0JG7SSySxBMHsKiU4cqQ0j7HFj1d1ZJQslYQAuc6npfoGEhU8oNvJj/d6NG
         rSy02hyoW7qs8x0B24c6fXDprmLa4Cuu9KvsVmm7dRtexHrbJAHK+pQ2/DVPACB2UGSe
         i/XeLrtF33TRuKpQdUZWNYAb0XBzN2X/d129WXf49G5THCbo85eCpxME0SISrWsRb9AY
         cLdpfYfy+TPzLHrelMIYxRhaEjHKH8fkzCDTRPLF18ZMaxfZumZNmbmG106qFI7vt7H7
         8BifBzRZgdGb11aywbFqaAVoEYPekj/wkfLckX6XmJRuZBHb5gmXm2EuuJxPMJ4NTEci
         3Zcg==
X-Forwarded-Encrypted: i=1; AKwUvByyVVjdMYb94b+rjtTRbxZePjXIqLlNKut0JAB0f41bxQQGjDXoGMKNIe09YFAUy9HN1KuPMBQsrU0=@lists.infradead.org
X-Gm-Message-State: AFq9FYLwVwJQ5GY3fUu6e8ZKmzjlMxYnFWj1J2TOR4gtoAjiiME71LXq
	YiKEwng3EsGSznpWk++U/R2C4ZNcCDckvEeKUorKUtBpqpulzeaLd0+1tgGnXvTtbaKZ8RCUvZ0
	eFTPoz9/ehtrKg67sSWlBh0rDU9ONzlLhmai+Tta66HFqeNN4EqfiWdJhjHR9fLBu8sfJOwz0gn
	PA
X-Gm-Gg: AYBFou26DjajEp06eeBtiUFkOMcPIWZctqi963fsDqbl4NNlLH2nWVjuV7HcQZ6wwk6
	5cFLfWodrTTbWbEkVjA3HN/KfwCz0vrSvmcYLfs9m/jXys0Bo9yA3lczugyzc4kp+AwT0/xf1IQ
	VcH7U4lRYt/z5Ff5/jRuE8GSILG8dAw27Y1W0gdh6JKRcdg85hrEgJiuoRSIOf2uDSNweWy0/gr
	nZImS1wTguTfGq+KvPsI0PiiQ7LCqFgoRP/7KGVj/hGhLVzvnb4CbKyEMPlqeOfQe7FL03LPrB7
	x3IDb8mmhBWpFfPsLr+N1+3PgnUmXZ1VRtLHwm1rHXM74Rz4REaKPiud4mbmF4BtxypJHhevJBk
	SDz8OKasEnr1lZNxGai5HwVJHwgI=
X-Received: by 2002:a17:90b:37cb:b0:3a4:c18c:b893 with SMTP id 98e67ed59e1d1-3a4d1964c71mr3348491a91.61.1790847349918;
        Thu, 01 Oct 2026 02:35:49 -0700 (PDT)
X-Received: by 2002:a17:90b:37cb:b0:3a4:c18c:b893 with SMTP id 98e67ed59e1d1-3a4d1964c71mr3348457a91.61.1790847349382;
        Thu, 01 Oct 2026 02:35:49 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7e54bf4c4sm1152944a12.29.2026.10.01.02.35.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 02:35:49 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Thu, 01 Oct 2026 15:04:28 +0530
Subject: [PATCH v5 11/11] phy: qualcomm: qmp-combo: Fix error propagation
 in qmp_combo_dp_power_on()
MIME-Version: 1.0
Message-Id: <20261001-glymur-phy-v3-v5-11-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
In-Reply-To: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790847286; l=1638;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=2x5l8hdDQlwJXCS/Eggz+xDDnpbTH4eIJ5E+6/vN3gM=;
 b=UwWoXymJqRAn9a1nbY9YGmP7UrYi5z8V4UMyZzEqZghFGJ6xzMCIQho/tRyr25PK+jXxtu/ZU
 PrNvsGqJsZbAamqXS9j2qzWuKPgmroIiUA1B6lk55/BglUgkWjT5VSe
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-ORIG-GUID: -SchmRG0q9hvRtwCX2lnzPOyqGeQXOJP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX303IffU95kD0
 cA3HvjQkoNutd4QezHItM3sJFp+wd4JWm88zvFhIWYhvCFbSVQX+bdMN38fAPMT+0xgOoPHF1Dx
 WTQrj1cOzy1pb+Cyv8XHImWH+xb6kNELmcD/2sjXh6iViO8xIa/HJ/JWkW8iSHYPKwBpPHZi/Zp
 EJyVed18HrWHuv+IcMoD20y60T685FcnDxVGfWzXSZlCSVh3uZzE9ZQSkN/cKP3lJze32xegvh1
 pHKno9XAF5C/SLToGKJqWVxvD1qqrI4Ql2cyZeVEvGRW7zGIiWUPKHVeBcGDBkmDOF3olgrotvc
 Jd5X4YRNqP3fNXRJdeRMLmgSsfbsOPKUhjvmifLazKSxpW9K1BVSK5VuCiBzs8cGoKoTHNT+YIc
 Kr91I25HWXxFSRdnrsA/TbChxFwmqujV/yAQTZSxa3YePiooMUoFiEyfQqYMgtodW3tI5RK5J1x
 aOvJexF+QeykLELlK+g==
X-Proofpoint-GUID: -SchmRG0q9hvRtwCX2lnzPOyqGeQXOJP
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX0PE+v8nL2dL9
 hme4y/fa8aNN0WGN6Ps35w9Vr5jZhdg8b4qJ8OcMXCYalRnESYiZxAZQnNB44knNhQVrllWtPGu
 h7vBl3Fs1GXH7P+5z7tCYMe7H4kQoo4=
X-Authority-Analysis: v=2.4 cv=KuvYSmWN c=1 sm=1 tr=0 ts=6abe2976 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=X8Wa9jmQWlBxTcu95m0A:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0 impostorscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610010038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_023551_104997_BC939088 
X-CRM114-Status: GOOD (  14.53  )
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

The configure_dp_phy() callback can return an error (e.g. -ETIMEDOUT on
PLL lock failure), but qmp_combo_dp_power_on() was ignoring the return
value and always returning 0.

Capture the return value, skip setting dp_powered_on on failure, and
propagate the error to the caller.

Fixes: dd1153651b038 ("phy: qcom-qmp-combo: merge driver data")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 5bbb2b5f8c74..13d5586b981c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4376,6 +4376,7 @@ static int qmp_combo_dp_power_on(struct phy *phy)
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *tx = qmp->dp_tx;
 	void __iomem *tx2 = qmp->dp_tx2;
+	int ret;
 
 	mutex_lock(&qmp->phy_mutex);
 
@@ -4388,13 +4389,17 @@ static int qmp_combo_dp_power_on(struct phy *phy)
 	cfg->configure_dp_tx(qmp);
 
 	/* Configure link rate, swing, etc. */
-	cfg->configure_dp_phy(qmp);
+	ret = cfg->configure_dp_phy(qmp);
+	if (ret) {
+		dev_err(qmp->dev, "DP PHY configuration failed: %d\n", ret);
+		goto out_unlock;
+	}
 
 	qmp->dp_powered_on = true;
 
+out_unlock:
 	mutex_unlock(&qmp->phy_mutex);
-
-	return 0;
+	return ret;
 }
 
 static int qmp_combo_dp_power_off(struct phy *phy)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
