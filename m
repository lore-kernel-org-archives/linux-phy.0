Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24804C54E90
	for <linux-phy@archiver.kernel.org>; Tue, 20 May 2025 20:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RrXafvuNSo7anCRW3oHADjce05vDP3nmWhEmVP257I=; b=KP/bHhndh3Z12i
	75JxqpIvtsp14XB7P4nsXy7er2lWweECE7yW3B9k1yUUs97Ro4Q9eL4STftXLx6TKP2YUuGDhdTLe
	eD5sBxsx6hZ4H4iaFiC6q6JJeZg/7W3QCrN2KZ4BJMkQXuAA90nfG4oCFFhs4cToAg+w5oIctYDPb
	UM9Lcq2NdS8j5JKazMRoBILr3+ZYmOh0Exen6RI4BPMWTqrZp2ASH0whU7di+I2uzjP4jaZDxHeA9
	gDzLdCDv3wiccBVaHcZ0svz+Wj0b6eEyNYSgSkRRjose4xKRB23PAk94p3vskTS45enNMhEEKQ9zr
	HSShPv49+EzWtCNgxrVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHTqU-0000000E6zT-3YDH;
	Tue, 20 May 2025 20:45:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHTpc-0000000E6cV-0vMd
	for linux-phy@lists.infradead.org;
	Tue, 20 May 2025 20:45:01 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KGe9qN018251
	for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 20:44:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tanQOqYw0Cihj8lfa4clmi+xNJuQzns3UjTESaZfuxI=; b=YYhnnGI/6urAaUJt
	SIQ1bUssucmm9QNEHgHjq2IDhtaxgRuCNEtwhRGFy4mfaZ7n0b6qo4/RgQmxqj3T
	H/N5w3OcP44YEtf+GFyFkQzHiHYiXDx+h+SIFCfTEhKR7ja7rgKWPcZRMGCCvqAw
	rpZl9HjVPm5/25bh0d+e5CaQPpkq0ctlgffAIaO1a0Ht4+fhuhpYN5X29PA5bFIP
	mvgTnar1Xf4UK+65i1kxxZEN5G4bQl69K1ZpOGmRzk49RGTXvQROtWCnC6tSnn2H
	M/TKLER9Ja9cGB179eP96RSUYic+9Kx5CWstt2zW+3nqXKPvM4b7SgsAlszEzwUO
	gsWNbw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf9rjqd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 20:44:59 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f8ae49fd37so97294566d6.1
        for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 13:44:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747773898; x=1748378698;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tanQOqYw0Cihj8lfa4clmi+xNJuQzns3UjTESaZfuxI=;
        b=mvWFiGNg8z8cqTRUivdmt2sb6zA/dJU/Z9EihSWDuU8zwFAPCd5lOQLH2wueJ3qWyc
         yv3d3ILuIqpl+Li9JHN5B0XPiOiiCDK2x/CFGTVJQ5kdOjLPIDE6YUVxaxX1u26/KFIa
         zosp5sflDkxoEAH/lpPAJobQlUpJN5pq2L1+c1qEkoIK3OKpJenQbEAkox/yY7DlQWPx
         fmff+rrTVFHIYFgDF3C5pEg5XsqKFAheIrh5BeMP8vqkB0daq59h8REOmA4mHQXKtzGs
         sCKtIqnsBWiAypsdTj7oz+/7kvvPs4D5hEQkTEN7hZeJiRZokuYKWub3gStpoRwW3qBf
         G67w==
X-Forwarded-Encrypted: i=1; AJvYcCVurcuFGW0+OFFP3k7jU5oz9Es+wfkBQrsye10SvZtOwlC9huZL0ovrKDPIlzSxU/SoKjx1lQ4TK3A=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywr5q7i1fxUdzV1a3CG0IyiEpYKVmE2HEm3mUCXlHh3RazkBRnk
	7Hf7SXIzspovEOSIpOOKYuL7ItewdTwyV8h/Z2lBlG9J13Fv8WRxza3gbu2t3LOGjfIgwbm7xEr
	wxqgaKUT/yYcR7Bj1RZeeGQmAuvhsx3kZs7dJcDZ/ILMzUi4cI29rL2FLKuw7wz6lc2dE
X-Gm-Gg: ASbGnct9i/XFYqenHxOqdqZFvqb/95+KYXzBDEMSGQKVgy3zvj0+rrlMJplMaCOoDkw
	NK0Tx0wSUTXsJtt2BIvkusZ4yurOuNA8bnDYEm2wgQTWQ5UuGN+iqxAaqkT9naX+7ibh/LzqcAo
	VX2iUad2x+VlCWLPjduyTHJA9r8FlqKdn+RxrP/MQ1yktKoPRYWPBSsUBhU87J7PDJNZ5zOWep1
	al0CUa0z/9IB2QiM58zHq9E+ZTyeWZXSg0eLaOa9igSmgJmvwSIFsNp9UEPfphtqfegnmTKESDj
	sJ8ElHZJYVPovvkBAq+nuRMDakQgTzbUZSAEgK3P457qpJBu3KpERs/+2xu4Vz2mBdM/OpUspqP
	5L99k7u5FnklrzoyGxdMUKs6N
X-Received: by 2002:a05:6214:2481:b0:6f8:e208:2ff3 with SMTP id 6a1803df08f44-6f8e2083315mr84783796d6.3.1747773898567;
        Tue, 20 May 2025 13:44:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsmwNxdG/HYMxqSROppvUBzj8rzZOT8nKj3cJAd2Y9WI6WTWrLs2D6LA3ZQ5SDaLunJEwAYQ==
X-Received: by 2002:a05:6214:2481:b0:6f8:e208:2ff3 with SMTP id 6a1803df08f44-6f8e2083315mr84783476d6.3.1747773898221;
        Tue, 20 May 2025 13:44:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f163ccsm2497950e87.39.2025.05.20.13.44.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 13:44:56 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 20 May 2025 23:44:45 +0300
Subject: [PATCH v4 3/5] phy: qcom-uniphy: add more registers from display
 PHYs
MIME-Version: 1.0
Message-Id: <20250520-fd-hdmi-phy-v4-3-fcbaa652ad75@oss.qualcomm.com>
References: <20250520-fd-hdmi-phy-v4-0-fcbaa652ad75@oss.qualcomm.com>
In-Reply-To: <20250520-fd-hdmi-phy-v4-0-fcbaa652ad75@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-phy@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2529;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Dgc1ExVnp711AdXhWA9ncnFbHeGjGDWinEG7f2MOuNE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoLOnAVhF+aEhT/5ZT81bqALxrU41/0xO1XWmyf
 RZ0clayhAuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaCzpwAAKCRCLPIo+Aiko
 1aqlB/wP43HCfQCLGS9i7ddYdAIIbjlSbr5UDLEkG3+Kk3jWOsbmMt3q5BY/ALb3NaTatSpTklk
 T6FqUtNTOP8ZBbL6ls1eecOO03aY9Q+bA085G1Z0KsRTxGLsjWvluDGqzvpogHCDV7fB1hBukoP
 9ZYARb32vhuLXccFhoGMWJxfeR6+luUc0rGeQqDaj3tKV1Q7s2FcWRiRHpmEWvSxEzIlY51sqbw
 fPhYxUYKHlYziwUryEzNZsRStghA2Z91DbHB/u5N7QSyzeF21RGPeEqJjbwbarP2bwVEH4mrG4M
 ClWUCoxcZrWDEf8ObBzsu515WhCClUqzM2jB+cR/yu0N2jd9
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=682ce9cb cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=UZIV0CQzuhujAGWTQQkA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: lV5P8lP61_W2wm1pGmsvcznAY1aY96SO
X-Proofpoint-GUID: lV5P8lP61_W2wm1pGmsvcznAY1aY96SO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDE2OCBTYWx0ZWRfX6j48BS4j+X/B
 dmbH90TV3IXAQWD14yEhpzkfbkF6GlwQIEehyOWb6fVHVzdX4/iBmI+aNifRXUWT0wQeibNYc/Y
 S998OISFRBjkrZCR8+GMiK6MjIeA80Q973b4jMVJrSANOUoPcZa79OvMZwnnZ4DRVzAWPkSnBmU
 Yvi6CmY9ZYxz4/jJ35nSO6ZewQMXBpg66JX6vqG0fW0ve9DKe3Ttjx4IrAUzOYiR49H3Bm7Mxv3
 kFEgcVmOGEb+bitMlooarYc5yGhz1Gr/a7GR81mLJeVUi5k6Oz1xzu6MickMDAuQ9lf1xkQq2lv
 j3mb3mhO8WQYOYbnYsuQsafUCMRlF3bRJlvoNkQshxKx1LOhfubQCUW8jZCZy9kMVY2mdy5zgwG
 gvBUrLUmF+PYhNhw+bpHCk5wntBrIWmmxWVEDMpe+sOakvfW8Kpc2NantB4wUJV8I6aVQjuM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_09,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=893 bulkscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505200168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_134500_387356_5BA25C7E 
X-CRM114-Status: UNSURE (   9.77  )
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
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-uniphy.h | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy.h b/drivers/phy/qualcomm/phy-qcom-uniphy.h
index e5b79a4dc270f25d8979f51bf4acd6c76998032e..ce782018124b5431ee647575289c963d8fd0de1f 100644
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
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
