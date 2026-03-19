Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A4711088E74
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 03:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knB1GG87fNqDIMGqRn0r9xjpIciaOnmLbQzvUw0vCTo=; b=jm29otki4vZYxF
	K0JcmIq3xtbGYhuR1YQrmaDTqI5T/v3QxMGNTzs4pZuSzx+OD2geBjZcjiPUSYr+w7X+H/jBcu/v5
	cKABsm9YxSrJjl0LSRFB/wDNufzcBsGeU0BjGaOeK4nryrv2k29+R3309ejkcTRG3hUZHe8Aja/41
	7n9FfGXPZOBC8M4PZnn1MgL+jfJ9/yA0TDIWzFBHAcfbbObzh4uBHoAjOZ3xdCEw1D4kZvEQjMTCs
	qx5y5wLxITItkz4hdsN1+YIP4+rEqXMfNpKfSY/9b6Tu4p4mjvgpciZuf84aLAAXaI5LJqE6X76nZ
	63uIaS6V1gjZ9JiR3dCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w34NB-00000009r2n-0v1f;
	Thu, 19 Mar 2026 03:48:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w34N8-00000009r1f-1okz
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 03:48:35 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J2ASit005359
	for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 03:48:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c58/Sfeclx1N64rZvnt6VYgoyb1/qdvgxUAhY/kc9dc=; b=a8Fn53ioPyLd2UN6
	c58T25imiz5da+jf6qy1c/GOiOxhdSwTPZeeSDp6qsO2zLb8ICxF+ryXJAqnS+Lq
	KSToZ3snDYI6makzp6MtAAo3jP0lZkGeywB7VAjGwXaSzx6Ti5ZflRKwF7Vx+XSz
	Tud6TD1Sm+Rimgcn81XhCYS1sC/8RaK/lNlgSLMny8greDLYZC2Jgxxb1EsNzUny
	utNRZJXvgFn3/y1gYWqCYO0bd8oR0EXxalApSOyk77Q3sWoUAiocvrGm1rwmBa2A
	o8pXlJqBCsclv0E4pyXInTwxcy7HNYyzmLxN2EruCWgRiDe/C+tVdcNpybEdi7iB
	2qdAmQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyyhg9wvm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 03:48:33 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50b274f94f8so25608551cf.1
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 20:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773892113; x=1774496913; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c58/Sfeclx1N64rZvnt6VYgoyb1/qdvgxUAhY/kc9dc=;
        b=DqxLsJ48gbsLWSaEmiQ3Oezxn1r92HGiQ4M4U9scKu+kR6nNWbI3MzGH2XGVADzODO
         0DqmqpyfKHzt65h9CkGBqE9NUXh7MfJFG9qJI3lgL4RyUM+jEsTQpaW6aJCfAO+A7UJS
         a/ZBUMjRnNVSDJvR9RWCmirDOEzLg75Xy4LHf+1ePyBFVy2SJiKsqoRCN7EgZOg2xSjJ
         k4rsdRr8DlnCkpY4ZvPCl0LzbFiMVyjb6neEDzMWQ/9E01jrxEbannOUyM1HxbUmp1nx
         kFY09M+XA0CwyJQmcFzX2+6Hl/rHlX9gFMYnPzjBe6R1rA0AHD4axI9ZSos02Ug4f9vD
         dPPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773892113; x=1774496913;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c58/Sfeclx1N64rZvnt6VYgoyb1/qdvgxUAhY/kc9dc=;
        b=YN+0X1zbDc3lmTawysub6NvHgBIH4uV/SQPvykuj1p0NvTRJcCqKBls8iY+rfXkvlV
         L5KkNSPIT5A68Kvuvpz7t+EYxUtLLd3kI+m+qHEMIQMlLXs+xKl1ph3rcJsdHSSa0A1k
         xtwlJhdjxZgYJjB0jj6xLwR0QzkXuWLHmEt7NzPA3o9bb/b4zKJEf+RouOdRDFpvS+Js
         PxbC/Sib/MPxUYWReHz8T/c8rNnCJCV/LFcTe2Rr+sGGuh7Q7T56miFYIL7naP1WVEjY
         1NCpYjqU3cgctoReGt5WjqQ6pKzoryYopExP6ZWoZq4wIO/fbAw8djKKKpiMpcAs3qoS
         KgQA==
X-Forwarded-Encrypted: i=1; AJvYcCW3u+GIJI6W1lTKnfoFF+VLFwTKdV+EczDbyOHTLopocdBAQeSDHnBKfQosatWjWydNOymxKd3v/DA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwsB/XhhDWylWgHtgynzpYHRkMUpq0wbDjHSIdSAcGgkO3Ea4lK
	o6W2rbJ5iOfrBRn5dIC8mxkCRjY7m5fPKt7ybZULDR9mag+6bxjNWbJ/slZNLjgANJFlScEWIN+
	0OLHiTXssefSYaxUn2ioin25kKtAEwV4YTUGPKRsJJJErQhDFrvpr51so0MDKlNWULto5
X-Gm-Gg: ATEYQzygGM5zdkNVq0nMM9gXOFnm4E8PYeBpAXxdC/hGQ40gSDkLNEm8UECzvcw18AM
	X7oHDte+oKeSD34qZUygJXt1kjLs62Yx2J327QZ8mmgXPhHndv4F7i1ma0UOvyRizrpknU4PL2e
	dLqBkbDFQ8K04/x+xemE1Y4w6t1i57pExrehU2KY/dgcroo67O6jhNxbEwrlyyqOxxgKBGRcajM
	AeaKqfqKp35KTK+ZmMk4TmcaGZmCAgUsENCIgCNBoe+gkUbq0I/TNUlTxQFtkwe/Yra3NMcYjEp
	7ovoan4xB0+LXOWA/dfSdSkNGIpAPl11hHmjaFwxCQ/e/ErlfpDJaWLyT6g2GSbU0qbIUsKBLUH
	TheqX3X7OIexklEXPHYgmgoCy3iinYAC7cOEDXys93ejWqbjmzRi218ToxNMwq8QpPQNyLA1GcK
	BxDoJ9ANPnZ5ViqFrokCZXlh16QMXbKwsdoS4=
X-Received: by 2002:a05:622a:10:b0:4ee:1bdb:a547 with SMTP id d75a77b69052e-50b2461a932mr29074261cf.14.1773892112932;
        Wed, 18 Mar 2026 20:48:32 -0700 (PDT)
X-Received: by 2002:a05:622a:10:b0:4ee:1bdb:a547 with SMTP id d75a77b69052e-50b2461a932mr29074061cf.14.1773892112468;
        Wed, 18 Mar 2026 20:48:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c79442sm907649e87.70.2026.03.18.20.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 20:48:30 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 05:48:20 +0200
Subject: [PATCH v6 3/4] phy: qcom-uniphy: add more registers from display
 PHYs
MIME-Version: 1.0
Message-Id: <20260319-fd-hdmi-phy-v6-3-cefc08a55470@oss.qualcomm.com>
References: <20260319-fd-hdmi-phy-v6-0-cefc08a55470@oss.qualcomm.com>
In-Reply-To: <20260319-fd-hdmi-phy-v6-0-cefc08a55470@oss.qualcomm.com>
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
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2885;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=A0KQeSlhmmB1eMUUohCWtmSPla+2ZySmmRe5s7HDmyc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpu3ID1p9OtdtONIroVWJ4ofNJlQ0FRMyd22GAG
 GkG11xtlheJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabtyAwAKCRCLPIo+Aiko
 1QuwB/9Y5mflvk48vBMF2X6bgfx5G2s53oNW7k4Je/PGMIao8D+Iw5jt3r+8MZ7306+xOp43zpp
 A1blzkF0vmQbYgS851guQqkfO/P1LErGeeZ6Ir7iRUYGSZnDqfQ/2Si8yLPbiKPl/6nFt/Ow7Dn
 mPS04Mq5caROA+i3B6y8H1iNgcx2w+MB501+eT9WJ1g0dFWNPKLAtZqiZEaVZ5JD8kANn5J7RCI
 NR3GMgRAV1VByesZWXXiq8uxkBAkgHK7V6HdyMnrRTh3ijASnYLb4afO+33mHrjxwCbmlFbXgc0
 qeScWAhzGcb2KI8ZZVakjx67DZu+QMA3JCAwGQiJjzNbgW3e
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDAyNiBTYWx0ZWRfX3eiddT+OXrPT
 JQ0wonpmBZYoJrMH3cmWwgR7hBC8uyJZVf+IoRBvAfoHJGVano3j/RwPixSe7fd4CjPR7EDlVFB
 ABpHdw7J5RvgP9wO8QLPDzD3OVYteo2ZbP23Zi9eVAL+YEwB6FwMo++zfDMuLm+EwLAP2MdAmUr
 a48QjVqcD6trbhP3Wwy8UOFIPHLj7C+tpxRxw8xFlBTT/N6+wQK8AlPs3BD0dcFQ0m+OLfn+rzh
 kcyIQQV4juWMfhkRo3bSR/K5UGl7T/D8Mvf9YR4TyhLQq+cCcz/HYe8Z93H5lf/Y/34kkUlMYzg
 eECWuk0TZtWiwObvzEpd5AgZOqr7Z3FrjLvldehsxdHjxk7K+Gw/ChJR4ds+xTyzNNENDjncQWy
 X2mqYH6wOet0KiLzWxg9Hs9sWeFtnJJ7P2hA9Ak6uDYLhE6ByhlTiSPyzkhdG+F5Fn+I4akhFwD
 giW8OnMouciXAVKMhsQ==
X-Proofpoint-ORIG-GUID: Axz0OxB9FjOruMl0_fQSN6Oe2Wr_Sdav
X-Authority-Analysis: v=2.4 cv=IbSKmGqa c=1 sm=1 tr=0 ts=69bb7211 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=NWzoLV28igjY6Ppe7YgA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: Axz0OxB9FjOruMl0_fQSN6Oe2Wr_Sdav
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_02,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0
 clxscore=1015 adultscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_204834_481967_BF484AD6 
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
