Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3E58CD37AC
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 18:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3QE6KZ2DNTd7dRPzH9HNwEWM2CLbeW+AH8tLAUMOY8=; b=u96QevR28vp1JH
	1b1p1gGBvBzsQJYnYtu2hPtSnssW4SL1wIP6ZQthL2BtsF/QLTWyw1C7cVtRLqSqk4GwuExQXg1s3
	PDPiKb3TdNL3dsLQuOMsC0GFeJm4qDMiJUH34f18SZEylgkAnfOoZXszEiYQDmQhGF78iOmz6hk3f
	tD3V+349cqyD1bt6aIrmGHbUWgK6qBAVRjnZFIstxQUh6HGLo9zn5NT4Hncm787F7F3P/R5ihVmAU
	cm9S4vtCkxYhMn6BF0QAa62QrWzAWv/52XCteoI7rb2DRlEjO55hs1JGHAG0bJmaVoiUiaepiTfSI
	sLvRz+KXtPZkZWtsy+/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNE67-00000003RVk-0RA1;
	Wed, 13 May 2026 18:14:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNE64-00000003RUX-2YmQ
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 18:14:17 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64DEvrrF3474707
	for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 18:14:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/rxOjF0YX/LqRk0erNH1VM1reWsG38dZ2KsYX/zC7SQ=; b=HdpOtto+23WHnld5
	m9XsZSf8vjqIqTFx8IKn6RUtD7/lsk+4EKewrWV6rnrS7L1hI2vSiygETvsvEngB
	MlR9inW+DbF7P+L5pldV147XYKVHXEJQPLscb60CDKVozMPwk/72DZ4rMNipITRD
	gqJubpp85cAnD1FnvAWVm018jiVRJDNdwq/701YVPr3B6ezbb+VlMdhw1B7GV20K
	32N1kSE47y25NB0KPnmOORDanknYymTFonQ0VMCk7l/aal5lbLw545PxL+WNYFKk
	wzIbgR/ILhzLPQAl6Glv38U3cs5eBNATc+y/Vu9lvc4i0U6gl7x9AuKkMlIVDxUY
	nr3J9g==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e4p41a7rg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 18:14:15 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-95d1b7487caso11747572241.2
        for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 11:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778696055; x=1779300855; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/rxOjF0YX/LqRk0erNH1VM1reWsG38dZ2KsYX/zC7SQ=;
        b=DedE4b2a/O58wveom708+LbNNh8M7MKe2+oe6QJL5evDr6/oQWbNQ5aeH5E7U5JdCp
         s6q+Hd0a5c0isXR/CWIolo2feN+H2SpNMIQ0xCby3olViK2OLyzUU94wHd6HXkqVcGG1
         RK7OWF942a7Zs3iNuzRyAr6nRGTjZL2I3KuC8iypMTRoFIXhLmNqtAgvH/Cf9U2PUlKs
         Oq5rX6oEVnAHDPOzmXoYlhRj3H6+r1DtnZ8zUA0fuHNUDCUuBz43XiqKj70ss6R7KEP5
         JhUSjNZaWMuR0UkExHPgDfW27RUE1cb9/ToB0RGWVAXAaHNVtVUXujSPTaVV6ICi0RJn
         htRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778696055; x=1779300855;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/rxOjF0YX/LqRk0erNH1VM1reWsG38dZ2KsYX/zC7SQ=;
        b=Jc1KuCVCKCdnKTB7ArgwHDSEBGpB7PoIdfBeE9OmQVzd3NHYTxwhnGOsvm0zagDrfH
         3WtQTs2cRB5bOJVwSwDGITI0Gs+VaQvD3usn2/j8LhJAgFSXkCU3D5cUrTC+Xq7dr/Cm
         rTGBPiaN2/md8rHu421skvgzJ0gTnXEA3SLx2E+xW3PoC5/i8H3dufCX5eORUja3cZaI
         zJehK3D2VdyYbnr/63xo7r1yYvnstjm4bont1UVxaU4eS6HqRBUmf9s6FEca+gSgO+cM
         AZHlKPdDzcqxWjMhvDqO2D7x7evUJUBmXqmj0Sn/Vu0z8cbY9Y2670Rjl4uxQ6+Blz8h
         SpqQ==
X-Forwarded-Encrypted: i=1; AFNElJ8fBl0XFNgunE8WHoZuQsQ+nXN2ZqfNgaMAjlZt73056AKZ6jiATkN7SzluX7KJj9Jg8jvlN5NYyXU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyosSYfAVenJR659kE5LhdDFwMO8e4Bho416rGVqz9YluW98W+U
	AGv10FjTwhCWp0ofrs21mvuodaJcCk/b0gAnX3Q+atyhjjctixaRpYY0iHB5WZ8HqOQ/uvVzFL3
	4cknldWyBd3yEUJlTb/HGGFKM/J/EaQmfRAARA9GO4YvJMPuN5b+/+6WuCvg5jHpTUhXl
X-Gm-Gg: Acq92OH1UYDaDmMbfve4ibBWYdoSwc+xq8A7WjEDb/UX+k3/jc3k+G6UwWOSNo+BQ+8
	RcFh2hefsAoi/8vleG9kzVxDFZWEpK2iBjjfOzYCrB9gVRf3gxfJWxTuI3HQ9lBXkofR7ITwUtJ
	QyYGuj7JSh6epM4tLf1o4OHHqHur6KnMG+HCcar+9SYMnsuOOPfJoyhc6DAHhezL03/at5M7TTD
	1ZW+ZGLMg0KGf00KIKQ7PAFHzbYZBV9L4Ekhsk0zlu+BKRrxApQZfyduVMWXQ+ZrRFb2AGxf8S2
	GY89oAWoZ7PcPMzUt3rOscIH5pvFYqdlXgG50tgqsEb/DdDL/SWR0K/nBq2vpca8Tt7Gg88elRY
	w5zlWn2KI9yaqteWDiloXYEP1YfPF4UIkSsDSgcuehAllWzGwaYP8yMWtKqQk5wxPOG9jmg2k9m
	JwS02Iqwoz5FP2/pFtMnxiQu8PxbPfh2PzPRo=
X-Received: by 2002:a05:6102:3e0b:b0:637:ad7:f57 with SMTP id ada2fe7eead31-637aaa5a6f5mr2136037137.25.1778696054956;
        Wed, 13 May 2026 11:14:14 -0700 (PDT)
X-Received: by 2002:a05:6102:3e0b:b0:637:ad7:f57 with SMTP id ada2fe7eead31-637aaa5a6f5mr2136024137.25.1778696054522;
        Wed, 13 May 2026 11:14:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a8bd7d8974sm3174770e87.64.2026.05.13.11.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2026 11:14:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 13 May 2026 21:14:07 +0300
Subject: [PATCH v9 4/5] phy: qcom-uniphy: add more registers from display
 PHYs
MIME-Version: 1.0
Message-Id: <20260513-fd-hdmi-phy-v9-4-ca98c72f1f9f@oss.qualcomm.com>
References: <20260513-fd-hdmi-phy-v9-0-ca98c72f1f9f@oss.qualcomm.com>
In-Reply-To: <20260513-fd-hdmi-phy-v9-0-ca98c72f1f9f@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-phy@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=2924;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=zXUnJKheGLXFIh2NeGjJnci3b8qeGjvnWTuieLLb4mc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqBL9t68jSUNFaly1KX3iQ5b/7/WNJg90DoXXSF
 URoUFQz3aeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCagS/bQAKCRCLPIo+Aiko
 1XUfB/wIlFw2c2IYwvDoS2FUSiaPjh3z/fuDn6ICL4Z65bKcyRXkqDKfFscu81X085BbcVczwkG
 kqiPpIT6gYmKtUbpCWMcpxMDhYNoE1WJEsoHg0S1piUbeqJBMSPMFfUZ6Irt9QaaG7i202FYTBU
 pcncuJXwDLEajYKKk7GNdK59AJM3sxwWaGzfpV76nZtBxz+BTyrSmhKr7rQ+FBe00+cRsPyu8mh
 mUkZOSBrAIjAUDzsjIr0S5mYaSBBrmTv+T/cjOiGqTbi+mJeXwY6LTQxxtT92n4xrVdU+HX6A9p
 leqYJo7jpCehRzYwoyxal9cQ8KwoBxEoWKpiIeR90o6AqMX4
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=df+wG3Xe c=1 sm=1 tr=0 ts=6a04bf77 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=NWzoLV28igjY6Ppe7YgA:9 a=QEXdDO2ut3YA:10
 a=o1xkdb1NAhiiM49bd1HK:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDE4MiBTYWx0ZWRfXzFGNPAQjd0rG
 gZQXwjMQCfyjIAU9TOy2cDzw8lFTWSH7uSFacg4RyeVOg2RRAGBRmI+gL7tgQf+YhrC9jtppdfM
 lZckESu6qSTfJ6I+VMbOznWC43QrXrWr04xWF19O4nWQvIF/2IwOlD1M5JnqVG17R1b8nH8tGNM
 sBD4rBIHqFqvQjI+Y2/NZak7UsTMCq+MM57Pzzwlrz0RSQao9wk3lwZm37DRQ7f4bm31SrsuNZ9
 SMslcF+s2FEIy8xRqyy0TMUUkeTeZZsh4ihOYEWLNVSrM2aSRccfYYgXL6UAv5+lzPa82j3XeQ7
 SLLZF/R6d1QME7j7tCyxS2l4q29HMFwJU7lzhLL9vDheWSsYSRzX+P69mH06E/+7X85VQKURq6W
 xfWC9LWpon0E1N2iAdpdiPx4IE4GxBfpwryA0SYqjDA1SjcH7humqtYFp1juM0gfoOP1Gdz/8hQ
 mWxzAgGmu+kRcGaDDEg==
X-Proofpoint-GUID: KeChsz_pfjlXU6rqLJso09utDmORx7KJ
X-Proofpoint-ORIG-GUID: KeChsz_pfjlXU6rqLJso09utDmORx7KJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 priorityscore=1501 suspectscore=0 clxscore=1015
 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605130182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_111416_774061_D0D955E5 
X-CRM114-Status: UNSURE (   9.13  )
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

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Import register definitions from 28nm DSI and HDMI PHYs, adding more UNI
PHY registers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-uniphy.h | 43 ++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy.h b/drivers/phy/qualcomm/phy-qcom-uniphy.h
index 5f18f9593cda..e02bcc5e8150 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy.h
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy.h
@@ -8,10 +8,30 @@
 
 /* PHY registers */
 #define UNIPHY_PLL_REFCLK_CFG		0x000
+#define UNIPHY_PLL_REFCLK_DBLR			BIT(0)
+#define UNIPHY_PLL_REFCLK_DIV			GENMASK(3, 2)
+
+#define UNIPHY_PLL_POSTDIV1_CFG		0x004
+#define UNIPHY_PLL_CHGPUMP_CFG		0x008
+#define UNIPHY_PLL_VCOLPF_CFG		0x00c
+#define UNIPHY_PLL_VREG_CFG		0x010
 #define UNIPHY_PLL_PWRGEN_CFG		0x014
+#define UNIPHY_PLL_DMUX_CFG		0x018
+#define UNIPHY_PLL_AMUX_CFG		0x01c
 #define UNIPHY_PLL_GLB_CFG		0x020
+#define UNIPHY_PLL_POSTDIV2_CFG		0x024
+#define UNIPHY_PLL_POSTDIV3_CFG		0x028
+#define UNIPHY_PLL_LPFR_CFG		0x02c
+#define UNIPHY_PLL_LPFC1_CFG		0x030
+#define UNIPHY_PLL_LPFC2_CFG		0x034
 #define UNIPHY_PLL_SDM_CFG0		0x038
+#define UNIPHY_PLL_SDM_BYP			BIT(6)
+#define UNIPHY_PLL_SDM_BYP_DIV			GENMASK(5, 0)
+
 #define UNIPHY_PLL_SDM_CFG1		0x03c
+#define UNIPHY_PLL_SDM_DITHER_EN		BIT(6)
+#define UNIPHY_PLL_SDM_DC_OFFSET		GENMASK(5, 0)
+
 #define UNIPHY_PLL_SDM_CFG2		0x040
 #define UNIPHY_PLL_SDM_CFG3		0x044
 #define UNIPHY_PLL_SDM_CFG4		0x048
@@ -22,12 +42,35 @@
 #define UNIPHY_PLL_LKDET_CFG0		0x05c
 #define UNIPHY_PLL_LKDET_CFG1		0x060
 #define UNIPHY_PLL_LKDET_CFG2		0x064
+#define UNIPHY_PLL_TEST_CFG		0x068
 #define UNIPHY_PLL_CAL_CFG0		0x06c
+#define UNIPHY_PLL_CAL_CFG1		0x070
+#define UNIPHY_PLL_CAL_CFG2		0x074
+#define UNIPHY_PLL_CAL_CFG3		0x078
+#define UNIPHY_PLL_CAL_CFG4		0x07c
+#define UNIPHY_PLL_CAL_CFG5		0x080
+#define UNIPHY_PLL_CAL_CFG6		0x084
+#define UNIPHY_PLL_CAL_CFG7		0x088
 #define UNIPHY_PLL_CAL_CFG8		0x08c
 #define UNIPHY_PLL_CAL_CFG9		0x090
 #define UNIPHY_PLL_CAL_CFG10		0x094
 #define UNIPHY_PLL_CAL_CFG11		0x098
+#define UNIPHY_PLL_EFUSE_CFG		0x09c
+#define UNIPHY_PLL_DEBUG_BUS_SEL	0x0a0
+#define UNIPHY_PLL_CTRL_42		0x0a4
+#define UNIPHY_PLL_CTRL_43		0x0a8
+#define UNIPHY_PLL_CTRL_44		0x0ac
+#define UNIPHY_PLL_CTRL_45		0x0b0
+#define UNIPHY_PLL_CTRL_46		0x0b4
+#define UNIPHY_PLL_CTRL_47		0x0b8
+#define UNIPHY_PLL_CTRL_48		0x0bc
 #define UNIPHY_PLL_STATUS		0x0c0
 #define UNIPHY_PLL_LOCK				BIT(0)
 
+#define UNIPHY_PLL_DEBUG_BUS0		0x0c4
+#define UNIPHY_PLL_DEBUG_BUS1		0x0c8
+#define UNIPHY_PLL_DEBUG_BUS2		0x0cc
+#define UNIPHY_PLL_DEBUG_BUS3		0x0d0
+#define UNIPHY_PLL_CTRL_54		0x0d4
+
 #endif

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
