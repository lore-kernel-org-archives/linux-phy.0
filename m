Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81F59107BCF1
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 05:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKT6eesrBuhOLvuWcXJ4M7o3VADJ1xyX4RXqMcTbLik=; b=J9bAxmFGUZbrJP
	8UIXZB6jaoqozS3nN+F8t9cS98PqujJwz6tXtSOK71VtUbpF0eYVPVK8qa/mQKS+jdO51s6mrQSnL
	yOps0HuGNqKoLzTbi6KN3sG2JrZ/qU1BO9ufUy/s+CkL3CA4yBs4cUq+4YvAIFY6FBj7+zep6gMQ6
	b57Qkan5+5pBntWruJgv1WVrI4kcB1/tOqXXbHyPeVaBbqz39GM9lzJu3t6ukQ40etKTvIdC94r2X
	uLluA3C4f7pyBkUX8BMYiNJaEp7CD7DYheju2A2J7vnwvpDGLvBKuMhat7w4ediJKtHKanPnXC8PE
	FrpLwvRw10nDlfEeJSzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HD4-00000001VD1-2om7;
	Sat, 14 Mar 2026 05:06:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HD1-00000001VBu-3ZMz
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 05:06:45 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E4dfWK4128284
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:06:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jLcw39wY0jkt+Tdjb18r8ObNeBl0mKoaTLbtIH1xiyU=; b=UAxFRmxzl86pEki1
	+ii6XYj/iQufNO3HT7ERGgOHDZUPM8UITAemyLHIGKG8pCVS/YXzC3YaU30hKhDL
	yzvpTGfo0AwurNQg+Kc9fJu+Vw/Q1D94KGNOOGj+bkZiMc8aWoqw7DnT1LNicxH1
	zTTlG4o2GAjs2ptOJR0w1VAegDOOjMqJ+ejGw9HczPrNNw/QStKvDLS/G2YF4OUO
	YEsFqw3G/ANrgx00g0JgJr2bUydadQc3rlFZSyTIM/EF/nqLlJ8o69X9t01dXOqk
	MiXGeRhlE5Q1ayycaRTy/j3MOWbIehgCVuDyZZNCVny6ekbMA3NxzIEJz5oQZsEd
	pUzZ1Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw0udg1a3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:06:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd98d96382so351616785a.0
        for <linux-phy@lists.infradead.org>; Fri, 13 Mar 2026 22:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773464802; x=1774069602; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jLcw39wY0jkt+Tdjb18r8ObNeBl0mKoaTLbtIH1xiyU=;
        b=LRuVU9TnsVFgu0fVnozUQfAPEmLD8rCOyH6jbfBiQ1by6Kba0ktwbMFNE7hUXSsxva
         PomXnFsed6pu6HMx5oZpUDzdJE0C7BdyQKxQ8QV2xGDG+3MdLHWFe7jlTwMp6dpt+IKJ
         eYG8J4GNt3ZIvPG9vUXct96vUYf2Bi0DU98OSbZKZ1M1wUa0OoJMy78xQCHRj4eXCpCz
         vpCbNIneO5PO5o+wcc3FCHc7mTpPyTGoUlVLSvJAmY5xVT6G57MOBBHBMFi6XkhBI4ao
         50y6UETZkNVv0wgnbt0nep8W4DZywUgkGKl5XrFnwn6ky/4hLtRecHjteO8hSRpsvzr/
         lcqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773464802; x=1774069602;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jLcw39wY0jkt+Tdjb18r8ObNeBl0mKoaTLbtIH1xiyU=;
        b=F32Q53SNGYaq/b+H4DL5KCg0S5mpepEGTwvxF672SjpTJTLMxz9ZvKnqTnok56Mkqn
         Lui7/2L1Evv3B8nxpJuPdqAuzvDYhgKH/szxXutiR+kYgIl2np2Ygwy07CGHlNMTu9pP
         Emf4t3DzIF78HQFMZcohKaozx784yaZ56TbRybMqGnlmw9YNelCZgTCEo6NIZQvujwEv
         HY7lsNI7o5POt+JN0lCOzb6ru8FullpDUinD0jyfmxQrge4alfINObNt5BqB05+nOuKU
         fVRRakV50X0e94a+xKTg64BvVjrwOQ3N2fdVqIClkgyXyO+m7YUvQxcSawBaF1E51Ozn
         eiOg==
X-Forwarded-Encrypted: i=1; AJvYcCWyyQNf9BfagnRj0JBYpWU8Y/dIMW7eWJeghpxyyWiWtw5wX2scWdD5m8kGfEjBxXe1fP3I+nlX/cs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJ3Ggf4MU4ztqdCdvksc+Vp1a0hOk6XPBbcVuZRw1wz21ov6f6
	2mBfxejf9B1in4yRReKbZ9Q2DzytxqIZqREpmWyawL0HZ28UCMugZbU+VOR/1WRvu9fWs5cbN/r
	NAhX4OPtPzFEAUOsc7qMbmPyuK1NvFkHFZcpVZkUNOE6OW2lGzWW7DjiglgeG3Mz8fMkx
X-Gm-Gg: ATEYQzylb1Zaap5dMPi/uCE8iFbMvvM52lBDcaTef1YLNZsC+2vLqKy+64osf6ffHsR
	mNkNTHl9DhMTBnGTz60Hbbs6M9wHM6caLr/Q30bTmFPzxLxpvl/oRY69XWrR9pbmLzc8/nRT0Kd
	8zGmwEXHleFrSaSXzBrJ/WVxK5pLJLGBlvRFwXOUp31KNdZ4xD3qYm2730jNkUNOLxn64wMx5Yj
	wophS4RrwPd7vuZoYlH767fXtchnYjZzkFtW2vzsn7bgmOpXStVdEyBP9jC1l/M/mawiBExaqi/
	pSqPCsNRheVrVfvv5PCwLGuJC+0BzcvQw7N8qd2NDJVEvpuCPLZum4nrxxrMvHNZNx/xWYofv2O
	j2jVY80MLy2VhnqEunFw1a96xSIFo6G8DjmnxFNxEZ02adeKHSTK81lj11qbnibMoQU8cTT9aKR
	yTJx+yL74tKk3lNsVbXYjq0qvSD2G0q4Hc7z0=
X-Received: by 2002:a05:620a:2956:b0:8cd:b05a:a631 with SMTP id af79cd13be357-8cdb59ec194mr755932385a.16.1773464802337;
        Fri, 13 Mar 2026 22:06:42 -0700 (PDT)
X-Received: by 2002:a05:620a:2956:b0:8cd:b05a:a631 with SMTP id af79cd13be357-8cdb59ec194mr755929385a.16.1773464801855;
        Fri, 13 Mar 2026 22:06:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15636206bsm1982771e87.67.2026.03.13.22.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 22:06:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 14 Mar 2026 07:06:21 +0200
Subject: [PATCH v5 3/4] phy: qcom-uniphy: add more registers from display
 PHYs
MIME-Version: 1.0
Message-Id: <20260314-fd-hdmi-phy-v5-3-58122ae96d3b@oss.qualcomm.com>
References: <20260314-fd-hdmi-phy-v5-0-58122ae96d3b@oss.qualcomm.com>
In-Reply-To: <20260314-fd-hdmi-phy-v5-0-58122ae96d3b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2530;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=YN5QoEM+F0T4zQEnjBPndZeQoDCtg5ulqiAWAhLkG04=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBptOzVyi6PKpjFORb4/UdmwCTrHqoqSSh/Ga4b1
 aLH+7egt6mJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabTs1QAKCRCLPIo+Aiko
 1a92B/9fHs8pscVhgX9ZdgfIBdiydhNXgNgJoBDNyCIBf9mE6/Jy+SzM35HfDbFSrOvNgX7L+rG
 3AE35D0Th7sTGa0uSfvM1yjb81i/pWzZyUwYcrunl5wfIOKPTPcEPizOp+q3SK1eQD9Vg+u7DGT
 bXECEz2ew/Z58sPjKXUTor5Vba3sNSto7+8OBoe06NbcL0mjmndAjMCuzlMIRVeKkTjshL0QDJJ
 /6k/Hg1lzR7yQiLW3SBq/BhvvvmS7Y36ACx/6ru9tjrNp7IOhR2RzVzSGLh+Gy9PAYPEMKBZ6dq
 p3uBfZn+gO1NVFx/d9Aw5T+2I731/DeP9Z/2aHrq8vQKGpyA
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=BJ2+bVQG c=1 sm=1 tr=0 ts=69b4ece3 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=urM--5puCODp6CsINTkA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: gPk829SVOhA3FdVtsEn7YN217hgrU69P
X-Proofpoint-ORIG-GUID: gPk829SVOhA3FdVtsEn7YN217hgrU69P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDAzNyBTYWx0ZWRfX4Iqfklrccaf4
 nAph+LPntT7uCVXtZBq0/Uf10k23K4e4bS5pCWNYhYQRCQ4HXz+5jh5lmDZalOc5hbams0q6MQ/
 Yz4zoV1W7xqBam5+UmnhuAvMMhYWpMKztVMV1rF4CJj9aM6unyz24a9YAwu86BrC9Wyv0h/6RCL
 SDRsWL/GNLZSZj60GQGDua0esLBWf7v2zSZNktSbThzWHjF9l/VZajhupZtyqdDdv3rR0v2p57W
 kT4LT+cmZGe8oYzVeUqAufCIniiC/0Qn25znjfZWQyswjNn/ONoPOzBbZ2BcnpjwIYZzLbppkLI
 mfua1SixbunPlhXaRoTBZx2gFAVVxf4kqOY887I5OIH7VmLg7+Vcj+QJ9xYaSHaNhjo2eFwR/wr
 rSFPtZciHzrMnZhAZZWCSDi0Nu4MBLCFPXnEZAyqY8Joy5y7zJdKOc1xzw7yfwtU962o0qN4PKv
 ObqUFuZA7eWSzgJl4og==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_220643_980499_37DFC1A9 
X-CRM114-Status: UNSURE (   8.79  )
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
 drivers/phy/qualcomm/phy-qcom-uniphy.h | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy.h b/drivers/phy/qualcomm/phy-qcom-uniphy.h
index e5b79a4dc270..ce782018124b 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy.h
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy.h
@@ -8,8 +8,19 @@
 
 /* PHY registers */
 #define UNIPHY_PLL_REFCLK_CFG		0x000
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
 #define UNIPHY_PLL_SDM_CFG1		0x03c
 #define UNIPHY_PLL_SDM_CFG2		0x040
@@ -22,11 +33,33 @@
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
