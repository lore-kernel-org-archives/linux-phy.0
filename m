Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7BE4FC72C5
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 22:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knB1GG87fNqDIMGqRn0r9xjpIciaOnmLbQzvUw0vCTo=; b=DqQjfFwFvrqL4v
	ulVwFZZSUUvpHidiCWgMz4NZeSjrbWQL25E/DJ3oOgDAVvViQLfgIC/9FRv2nL5FwacdDF6Ao6W+z
	jAs6BQwTImfydZOsMe3YZj/qhoVxdlCV/R18C8qg44Yyqrlv2fpL3QPZ92piycJxwlnKy7lIPP5Qo
	XuJX+CxafZaaoKI0dBBgK7+QJ86a1XooVT5QHjn7cNiljqq13xKsyQSTK9ZTXHkc+/1ChO40xcwU3
	yD5CcTqR7AOhdEZqeBaHrbYnjzvHobLt8Jvp+eI0nMps7WswcTOhsqfqFW46S9ryKEyS4jzQfsOSJ
	75wmb0FGgXY66EfLekpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4oCf-000000006nY-2fmA;
	Mon, 23 Mar 2026 22:56:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4oCd-000000006mJ-2dp0
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 22:56:56 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62NHr0Yq618735
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 22:56:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c58/Sfeclx1N64rZvnt6VYgoyb1/qdvgxUAhY/kc9dc=; b=WXc4F6jCyeX50i2q
	9vQZrUqXSHHdr1oyMCXOobR9IQplNrsd6ZBJU12Klp1jO6N9I9AzUkpSoOV2C9KY
	pC1M1QdM3EwwJsm4L21aFVIjPfkmyMn6mTIlPKWQfg4b2fOp1IBzvWMVw441NCa0
	+HYg2LNipTJ6lbEEVMnx2ji4t1/9RKjJ7O05Vgrhb/4VKKRZZ2gO/Lssz3+M+lXA
	zkYhdcIUgBY/KTA2hfsgMsIisG9i/Qx/q/RZ5l0gFgK2YI3yeOaan3Yrk2Gh2deb
	UhL2Et9VCmeBspLpoKFc1qs8mCjMkUJNaTVi26T/H/jYXROPrdPE9Mm95D0+TvWT
	vgnu4g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d31jgk1st-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 22:56:54 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50b2cbe7223so38250801cf.2
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 15:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774306614; x=1774911414; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c58/Sfeclx1N64rZvnt6VYgoyb1/qdvgxUAhY/kc9dc=;
        b=KTonPDi5PjcSFIroXJ2VLPr0tN5E5geK16hUVr1BwQBLGL3AzYqM/f3R5Y8U26p16I
         ahAlIFZTh8YcJf6sM4AchcjVrop1hZy2D3jt56NsXNipGI/NIQiHDDa3nXNGh9HxGGVE
         52AsXnaANH/P8BcwzE6QrroaZS8UPt9Beu3AnsArULgTKbsGnFr3Z/fQw2x977ZJBWRZ
         JfoKMtRvT7/Ac3uGyC9+dyaWsS+A8RO8ilJrungq3UJz9EBIzgVyHgVIK9jf82NYBE4K
         BPzLJcZvLOlOLfsXslxFUDxUwq/aSUgK0k4MwkESYeoqS8+39puoQmoVYeue4g4ZYzRc
         27Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774306614; x=1774911414;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c58/Sfeclx1N64rZvnt6VYgoyb1/qdvgxUAhY/kc9dc=;
        b=sQdmXgY8taFBPRlO+kPSKHLZ8dxNd+zDSaidbexRgiebz+hHYOz6//EddxJVlhfKsz
         C69oxDdgJsKhGwPw9usPYl1GPf5PbkiBxoUplV+uCIWIicsDLv2ZR19dk2rD7lsuSlvS
         ffEVyd/9gk0Ga0hU+tuOQhs45qyvtXJQSEyb/XvzgTxWuUYd2fOGdeyJxAXtMVyVzT0P
         e9yyhIlDj+GYT3F7AuHM/diM2r16vz8UPvQs+2A1WxnlLdNGVArdQ+9uhd3euIruF62l
         hgoE8pXH5ysDpy2KWcvbup0+0RPhM1zzqgo5Qw/VEQ1OpvmVWRecDlRhIIUwjOgBQkC8
         5cTg==
X-Forwarded-Encrypted: i=1; AJvYcCW0E6jO5dfQaGGYviKEMuqYY8tWbBcd4jTqwW3z6GSSsq5RfTels+bYNnj6SqwZjpZXMJDRS/iQq0I=@lists.infradead.org
X-Gm-Message-State: AOJu0YxpS8lO8wcf46eMwSw987IrwO70CLzrTlNtOYy+mLtEQqK7CvcI
	2ljlCoeguz3NZvKHUfpVwrLHk6+bejx0ICfcXi4Mnjm1MjuB8EBpJj+h3a9cdYcL8hqeQcA2rSP
	0SlYgCdCQrTh/YOX93doM4uW7+B/BkZHsSq25Wl+tzJizvDees7mvsejuPqs9QiZXc29a
X-Gm-Gg: ATEYQzy4PIyD/bBilR4LvIUqQhfbZ25gXjTdx/2Jphv8D85ZhBMTSw/AxKMtJVNhZ+X
	6ZKF4UwQeyZhkO1hQvzn1Pf8iMGgr9l9g/m7q4xQZfOjh3TE10rcjBuLMsfJEXF4xLrsHU3GwyH
	AklTtycIigSKlDhmu4eimY5MR2zOBWipSTmc5SkKxWg/U/C0mEzQD8xERg18xUhWDoPBd9jL3xO
	QLLgNQBnPhZ1ELoYFzqdLeGaW7f/bGIFcnZz3CotZpix5cSsgzMYj41/Lcz4aclYJTYvPKw/Uxa
	Ws2kiI+RjbBtAOzNk5y2LVR65VbAsrVtKUmyg3LNr0o52ZmjVh4jx+nhn5SIOK0TlHAd7G/TaSR
	O9HNkVZIpd04y4fS7+1QYDFtr+9YFT9nadnCm+Lfa60P/qSiKNQAUMsb2uQYRFMiZ/rHvhUuREQ
	pLdGKLEh3+D3eplztv6vlbWkUIMyRsSqqsjlY=
X-Received: by 2002:a05:622a:20d:b0:50b:4eb9:a97c with SMTP id d75a77b69052e-50b4eb9ade8mr133913951cf.15.1774306614020;
        Mon, 23 Mar 2026 15:56:54 -0700 (PDT)
X-Received: by 2002:a05:622a:20d:b0:50b:4eb9:a97c with SMTP id d75a77b69052e-50b4eb9ade8mr133913741cf.15.1774306613584;
        Mon, 23 Mar 2026 15:56:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2963fa304sm156489e87.27.2026.03.23.15.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 15:56:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 24 Mar 2026 00:56:36 +0200
Subject: [PATCH v7 3/4] phy: qcom-uniphy: add more registers from display
 PHYs
MIME-Version: 1.0
Message-Id: <20260324-fd-hdmi-phy-v7-3-b41dde8d83b8@oss.qualcomm.com>
References: <20260324-fd-hdmi-phy-v7-0-b41dde8d83b8@oss.qualcomm.com>
In-Reply-To: <20260324-fd-hdmi-phy-v7-0-b41dde8d83b8@oss.qualcomm.com>
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
X-Mailer: b4 0.15.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2885;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=A0KQeSlhmmB1eMUUohCWtmSPla+2ZySmmRe5s7HDmyc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpwcUmGLIzcnXBqY37D0iMQAO5l7qaw0cK45eJc
 860JogvHIeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCacHFJgAKCRCLPIo+Aiko
 1VbnB/4laU/pBpznNLavxzW1loPsnZHQsmSaicyVWUApoMv9SBYQnLRsgj89AuuxLwqxkf3dgnx
 Lxa1m6BoU32InHZ9A7rbvXDfgXv07vuVmqo8/pGh7GI2CUbxxVUF8Y/MjFkPYscIRI5kewNj+cE
 HGmS4RLGVBLQiE2Eu/gJH6BWJoCHfM8sG6ZcoBR/YvbhsGudI+gNFZ846Ui7ixbE81iAKbLad4V
 bkNw9sO1o0L6QvtismtTrxirwUTcLJH5ZDqcWq1M/S0fCLFLMm0iZvW55uSQm+GV9KLpA76LMN4
 s1kbyu7R0pfMeWzzVHws2EDbuGw1RTIXf42SMWmyWe57zDFs
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: lpN8zgtbgm21zO1nA6xtGNIJcn0lYRDO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDE2OSBTYWx0ZWRfX/1BlFSIRQP0V
 xZJeuqYE2N1G/SddoPdm2lcOuHDkjfKW92/1jSyAP4VqTW/yE9br4OAh2OqUAdXw5dXGMaOdqg7
 YEnLqt/50auHi5zTyZs1PtF8PjxgtdPv3v9RHhig/IAWN177MDxDpJhlX5wjSCZqO82klSgecty
 dhoHSFERoEpw0NdEQeI5x+afzZpwMSXBqfHlqcLB0sYPlvKbAkFfUTcpdL5UO7UdiVZk+LWwj+k
 s0RnWH/BV1Y4IAVn7cyfA5gwJQI/ihAJYCJxkiRGLaj33Vsx8W6ImrR1UhUJj5VbGaAzoQJPU7B
 iNYxag2/sAt66WF5KNJ4AqKaSSkrOrA4INqE3CT+z9pWmpl44vQmR4zsQM3KE9U2hFd6A6M9w73
 Hv1BMGAb9ZiQK0s7XxJkOkntKWp1QvVgeN+JmY6jf21/+fU6GLqtuWsEq45PUAntbYqFEidScpR
 sysCLUsWhzfSKp1+fIw==
X-Authority-Analysis: v=2.4 cv=CMInnBrD c=1 sm=1 tr=0 ts=69c1c537 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=NWzoLV28igjY6Ppe7YgA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: lpN8zgtbgm21zO1nA6xtGNIJcn0lYRDO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_06,2026-03-23_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_155655_692940_7D7EC224 
X-CRM114-Status: UNSURE (   9.53  )
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
 drivers/phy/qualcomm/phy-qcom-uniphy.h | 42 ++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy.h b/drivers/phy/qualcomm/phy-qcom-uniphy.h
index e5b79a4dc270..ba9d14aae682 100644
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
@@ -22,11 +42,33 @@
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
+#define UNIPHY_PLL_DEBUG_BUS0		0x0c4
+#define UNIPHY_PLL_DEBUG_BUS1		0x0c8
+#define UNIPHY_PLL_DEBUG_BUS2		0x0cc
+#define UNIPHY_PLL_DEBUG_BUS3		0x0d0
+#define UNIPHY_PLL_CTRL_54		0x0d4
 
 #endif

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
