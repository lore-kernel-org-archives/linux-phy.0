Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 146AFC5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMRfiPH14dC/TdRkeDak77AwASbNYVUDPaiVaJrO7FE=; b=weM7F23jnjQCVP
	8zZ4fjbDk1dxYewLrEFepQUd2tW9y5vdsMW6UgYE3UlFS9+Wc5xyAXhIJC7ct7EP+kvtU8l88bfUH
	pVDEJQQItsNfXrpIu3CPxRTv6et11CJhGci2C0bTGctsroL7SfFXxUpVvSTQ1gZevgCTH1i31yIdR
	2gLqZ6dcXlSoI7VlL4Jc/QGsbcEK7UdOltZYX2PnAN4l3+SDxCpjSm2tvWJCfBLC0v6Myai1/f4+2
	cjAxiwBMviiTOs6MTVeHHlyn8Xlr+BAt2VDN6qpkRWMshQonENDsbr3YRxyNhu+M4GZgFlad3QQYk
	UY9UpBKWqtEeOphtm7BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOP4-0000000BeRs-3Cv9;
	Mon, 10 Aug 2026 11:42:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOP2-0000000BeQI-3kxZ
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:42:49 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67A9RuMG1727534
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3FxjLgeWFi+mMGa+EL8oSeg/rTTm7+nAMX8xUxsPM/I=; b=NxsU4qnqvwXMNyw6
	iiAoXVT1pBedpGDtGNYKUbc9VdvpR+unkQmPazE8QT67JG1Srjr1QUsAFSHCtw1c
	sc1GW4KDr3TsxZEjY7cH3LhDA5xPI8SghBruDUyXZZlWapcur2nP4hiclc7SbebV
	4eAekUECUf6JXYZw+NKrg90jspWn5woZVYg2t0EtB4eQR4wQjiGB5x8Y+nssEwx/
	eTHoAmmJtgKvG8zmtET8DyXSmWfHKe9kAysaAmjeHDrG7+zQTb0FCPgkLrOYjhsL
	HDmccfEhpoVvMcpYK9qv0VXyVgtI7a7HVOW2CZQBjlB8w3OyBfNXj1LIyQCTxNV1
	FsAU0w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8v3s9r8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:48 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c12e43b98so19641651cf.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786362167; x=1786966967; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3FxjLgeWFi+mMGa+EL8oSeg/rTTm7+nAMX8xUxsPM/I=;
        b=Yn4yLPAfKdZhFW9JE1RoyHxNAYdzftVyvsg1p0Ayx3xK1WUAzFfDmHMhHruvJkQO8G
         jPPMNBSeJwdQiAGwsX3n6GmUtL0PsDsXkQY24dnSrwXiE6ON/sJKNlKwI7iJR7222bYp
         DLBsylWPZnOcnVZBnOwNJpW2poOU30b+BVJa0HlH5wSXdbCl73AJLmTpYPc7nsQDhgB7
         yNsFeWfjz42XWcHe5aW4HA230p5fMpJ/dYkvqKWgxlMTgrnGK+L/5i0T/tzEIocImx3h
         7xotaco4fNem8dkgnxFgNff3vBYIfbTsLLqVfS4ed0Kj6/qomTXYdqreCv9s5odL22X6
         jIqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786362167; x=1786966967;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3FxjLgeWFi+mMGa+EL8oSeg/rTTm7+nAMX8xUxsPM/I=;
        b=aDbnB+eqMsdaGoE4sk2KD6vnSL1ZVqnE6qqFfibj/JWON5Kj547wG0nFobzWDASK/R
         GGmK71a0dFwLK6tVhTrK/lRoLnwAWpOJynS8BIVfVg75rTVShrt0l9f+zRSvN0YFSbvU
         ECi2Fid8HWGs0XAMMZt2r7SUz5K176A8Fa+1lsOSxzqs5+1I9P9WPud+ktlp61QLFK8C
         G694NqZG6pqeh4AdN1RDcTuGEL9zfqusC6ySSTyD7WWpgzlxVeaTNPApPrV9S2NYP5YU
         TD1IVm6FZ8zpTY2c4XlRwZxIw9Gytgksq735ar1pNCDWICG+pXzqe+iwrRkkzuukzH80
         6mMA==
X-Forwarded-Encrypted: i=1; AHgh+Ro2RZ1onzcXkZIX5YUrEawSQLslCSs16uwUkBpO3KoCajWhPYkn35PnzTt/SztzxeugX/ZJf2Hxgis=@lists.infradead.org
X-Gm-Message-State: AOJu0YwH5/PDLiYoLvXiZ/x+cl+Gnw4jTBQGSEwJBas/Fo+6udpLgPZj
	fhEq4IpGU3KpYn4r7jEKP3ZGQkHF7gpz9SucMLOT2D3iNZndR3P5dI+3BiWB7p0C4DwdJkNZ1+n
	5C+NM9Tru8mvu//T1oc+CKm0efnbClxHkqk0jeGMCp9RPgUiY1u+DyCjRIobPIQc91TmL
X-Gm-Gg: AR+sD11aXzZJ0QQAwSJzmmXf5q6AQ9Mgapg6h4kKvVttnd51onj0QlBGQyVXcnj28NL
	f8tNJIZBuqRpRa8rpeVjwfLfPaTaJJtUudMBwxAxi1LZfcNHhf4afenYegYBSY5T7aGDwApJ/Oh
	aa3ZUskl5uwhHOTwrqkSbLX9aSg9joZBw+jzj93+g5ve/q4D1xCOsUDSM9AR8/Pxb7kYZvmCiGg
	eP1b2Vt1KQq3+Rg0z1YxiPRIueDVQNid1nCJlLP/Geevn5kdvwjnhncBYK/kuygANo/ZOn+Rrki
	3e1KrvCUqUrBScBJihYfqvM3FRSU+HBSpq9Df3gATFXIcXValNyTLWKQBZVRbogB3JNUk/VJ5VL
	A989V4jdFjE8YVZc+Reew4G33OTF9ldHZK70fdBXTWMRgWtCa0+xQRJRfL8qxOomfRfSqYkQPtE
	RyCdsldVFVn5kBiw==
X-Received: by 2002:a05:622a:54c:b0:51c:84f0:d903 with SMTP id d75a77b69052e-52ce602d792mr424280141cf.17.1786362167328;
        Mon, 10 Aug 2026 04:42:47 -0700 (PDT)
X-Received: by 2002:a05:622a:54c:b0:51c:84f0:d903 with SMTP id d75a77b69052e-52ce602d792mr424279521cf.17.1786362166849;
        Mon, 10 Aug 2026 04:42:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39fddd67ea8sm21201671fa.28.2026.08.10.04.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 04:42:45 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 14:42:36 +0300
Subject: [PATCH 06/10] phy: qcom-ipq806x-usb: fix the PHY_PARAM_CTRL1 field
 masks
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb3-v1-6-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2968;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=OYi6f9AwLzmmNwj8v1UFVGj4qbTcQCvlFwbYa1BPWUY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqebkpMNvA6X2ZsjyRRyaPajy4vJi9r0w3Q44Ay
 a9G3PnWc1KJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCanm5KQAKCRCLPIo+Aiko
 1UBECACicegOzQiz81YXo3vYqiF0fPAPMa2BzBnAFEX+KstxyrUSudkiqn6Y/sDQaqhDkIQxTdo
 MxvfkWbq1JivxOMjIaFCQStRJYhtOVDg7aLug5WBAmPThycC5Hsx+9Izhe3BzheQLZCHdlcJvgF
 J8p5g8HCJI9A2/9bR+RniDxTpdG3uiFcr2KLsqERp8JGLZswcb2dS7e/6U/2uNocIqoLO9xlgWS
 JHmz55oJstlXZG3BRF0G6Oks6ttAgJhdHCE6cy0CLjYrhJa/7YIeOVgzwVB3LXi0QJD5VlidaNw
 /d+4cLLtbiHe4FacTsE+yoUaoc9QVB3glwhq5SliODxN5BTs
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: JJM0xztwz18tOWjiFg73Nzum_FDm-JaK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX/eKf82tdEmCt
 OX76R2iPLgrLigPWkjWkQP+DiIFI6cz8+GZ8U5SPvkfvAnrv7t6KhDUTemqLMUS15032F8vtgzP
 18R1lG3GtsZmSsgyPmHWqRegC/5bYdsa2hucLT11Q95BYzpKiEqMqfyhZvHl0jr+wYZNw/5dRqx
 QG971fVO/FUT6POSmy5f3vjJ8XRyB5VjUT8ukXK8FC3Ydo5VAFqhGd6tYZpYU5+TpjeFAs9p6OT
 bE/ABtbqz0q/7Gc9SZYSTzJpeAtJg3dg9VuCgB0yM4xgSkXqMjjf5WWeas8E/6el5X9Qch8/2gM
 YTrqqnAFm/1xRPN5y3kCZh5VAf9o+aiWDEx++EGLIjNaGYfbocxL5iTN8ypGCFbs/bCBnRUYDBu
 uOfK5/7mCJqOxvKMmUZv54TT1T/WHw7qM3TNGg4QztHROuymzk56SjEiukU793CuxoQVWYN0Faz
 d3unobf+EAe3Sx1tPpA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX2aUQXTqLE6fQ
 1Djwj1yWW4XdKMy1gVndBuFArj/cuY8FC8dDexsiWPebwSJnonbZ83IVi54PdLab9DgzJy/Cpdx
 Rg7KwwWlTYskOeASAbbQ9KzL2ADmrOg=
X-Proofpoint-GUID: JJM0xztwz18tOWjiFg73Nzum_FDm-JaK
X-Authority-Analysis: v=2.4 cv=c+mbhx9l c=1 sm=1 tr=0 ts=6a79b938 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=suuTTCwZaWWrlTMXb9wA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_02,2026-08-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_044248_945384_91052D83 
X-CRM114-Status: GOOD (  13.33  )
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

Each of the PHY_PARAM_CTRL1 field masks extends one bit below its
documented field: TX_FULL_SWING [26:20] is coded as GENMASK(26, 19),
TX_DEEMPH_6DB [19:14] as GENMASK(19, 13), TX_DEEMPH_3_5DB [13:8] as
GENMASK(13, 7) and LOS_BIAS [7:3] as GENMASK(7, 2). Also, the field
described as LOS_BIAS in reality is called LOS_LEVEL. FIELD_PREP against
these masks places every value one bit short of its field, so the
programmed swing/de-emphasis/LOS parameters land shifted and the
neighbouring fields are corrupted; the masked write-readback in the SS
PHY init reports 'write: ... to QSCRATCH: 4 FAILED'.

Align the masks with the documented field positions.

Fixes: ef19b117b834 ("phy: qualcomm: add qcom ipq806x dwc usb phy driver")
Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
index cf77e0a66e20..3d3e9d6da298 100644
--- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
@@ -68,15 +68,17 @@
 #define SSPHY_MPLL_VALUE		0
 
 /* QSCRATCH PHY_PARAM_CTRL1 fields */
-#define PHY_PARAM_CTRL1_TX_FULL_SWING_MASK	GENMASK(26, 19)
-#define PHY_PARAM_CTRL1_TX_DEEMPH_6DB_MASK	GENMASK(19, 13)
-#define PHY_PARAM_CTRL1_TX_DEEMPH_3_5DB_MASK	GENMASK(13, 7)
-#define PHY_PARAM_CTRL1_LOS_BIAS_MASK		GENMASK(7, 2)
+#define PHY_PARAM_CTRL1_TX_FULL_SWING_MASK	GENMASK(26, 20)
+#define PHY_PARAM_CTRL1_TX_DEEMPH_6DB_MASK	GENMASK(19, 14)
+#define PHY_PARAM_CTRL1_TX_DEEMPH_3_5DB_MASK	GENMASK(13, 8)
+#define PHY_PARAM_CTRL1_LOS_LEVEL_MASK		GENMASK(7, 3)
+#define PHY_PARAM_CTRL1_LOS_BIAS_MASK		GENMASK(2, 0)
 
 #define PHY_PARAM_CTRL1_MASK				\
 		(PHY_PARAM_CTRL1_TX_FULL_SWING_MASK |	\
 		 PHY_PARAM_CTRL1_TX_DEEMPH_6DB_MASK |	\
 		 PHY_PARAM_CTRL1_TX_DEEMPH_3_5DB_MASK |	\
+		 PHY_PARAM_CTRL1_LOS_LEVEL_MASK | \
 		 PHY_PARAM_CTRL1_LOS_BIAS_MASK)
 
 #define PHY_PARAM_CTRL1_TX_FULL_SWING(x)	\
@@ -85,6 +87,8 @@
 		FIELD_PREP(PHY_PARAM_CTRL1_TX_DEEMPH_6DB_MASK, (x))
 #define PHY_PARAM_CTRL1_TX_DEEMPH_3_5DB(x)	\
 		FIELD_PREP(PHY_PARAM_CTRL1_TX_DEEMPH_3_5DB_MASK, x)
+#define PHY_PARAM_CTRL1_LOS_LEVEL(x)	\
+		FIELD_PREP(PHY_PARAM_CTRL1_LOS_LEVEL_MASK, (x))
 #define PHY_PARAM_CTRL1_LOS_BIAS(x)	\
 		FIELD_PREP(PHY_PARAM_CTRL1_LOS_BIAS_MASK, (x))
 
@@ -436,7 +440,8 @@ static int qcom_ipq806x_usb_ss_phy_init(struct phy *phy)
 	data |= PHY_PARAM_CTRL1_TX_FULL_SWING(0x6e) |
 		PHY_PARAM_CTRL1_TX_DEEMPH_6DB(0x20) |
 		PHY_PARAM_CTRL1_TX_DEEMPH_3_5DB(phy_dwc3->tx_deamp_3_5db) |
-		PHY_PARAM_CTRL1_LOS_BIAS(0x9);
+		PHY_PARAM_CTRL1_LOS_LEVEL(0x9) |
+		PHY_PARAM_CTRL1_LOS_BIAS(0x0);
 
 	usb_phy_write_readback(phy_dwc3, SSUSB_PHY_PARAM_CTRL_1,
 			       PHY_PARAM_CTRL1_MASK, data);

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
