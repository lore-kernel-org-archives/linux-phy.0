Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9852810F931D
	for <linux-phy@archiver.kernel.org>; Wed,  1 Apr 2026 03:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knB1GG87fNqDIMGqRn0r9xjpIciaOnmLbQzvUw0vCTo=; b=TQ/U1DQowlMYBs
	zKHVo9rn5xpLsdCLCWyQ0OJSdoO+VeNuAvBToAiqQNpv0M3N9zBMs/ZmwBDJApTUAiW1fJNkBSy4W
	eSAjCgYWJEofmkFVTJwyX6Q7R3Zn3aHg5c2TMBZDOM83tP3o7i6efPc8vZ5jbcZSgs08C8ih+m2pe
	id4yhRrZATDhcsT4j8Jtmiz9N8hCDwJublh1Dgv78l6yetrjanx1wydSKfSRB393J7O65MaR0bdyw
	v8dEH/Jg+NI/udVY+DYXzk3VMJzy9ZDNesY5UHrBEPE6glrJkZGVWmw78Wq638B7IIcmKFxWYfyMi
	yVfRlqQwwnYv0RM9BPmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7mQB-0000000DubX-1X5N;
	Wed, 01 Apr 2026 03:39:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7mQ8-0000000DuaE-1yNI
	for linux-phy@lists.infradead.org;
	Wed, 01 Apr 2026 03:39:09 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6312Ixge1005237
	for <linux-phy@lists.infradead.org>; Wed, 1 Apr 2026 03:39:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c58/Sfeclx1N64rZvnt6VYgoyb1/qdvgxUAhY/kc9dc=; b=kWyMSHBXruavV91s
	r4KBfh3/2zQYc3tYcuA/aXXFlELxdSDQdKEPyzYpA2uWm9pg3DDpjNRnMLMZmUps
	Y3jv0h3proTQYSFpRQ8measxcesyFKqTqMXIE19XTGeD19mk/xfYL3wPp3aPlOXL
	UzQrC3ZCmZuLJAXWfVimoGLjAwTbKNV9lzzsWhaBPNHxSWy10Dp2aiQSAbhSAcY+
	xckn5WR+lVZkoJTFgwTsWHJBKI9i4ooMkAMuqzdBEAc1Wl+HZ/P0xk1w6KSzQBL8
	pG+tk6Xepa5aBRGvQwoDi5psr8nX/Rf2BOgU7LbPcxpOVZkuvtvszct8axI5JqZZ
	EA+BaQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d8tfjg8k8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Apr 2026 03:39:07 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-509044f54aaso203925481cf.1
        for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 20:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775014747; x=1775619547; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c58/Sfeclx1N64rZvnt6VYgoyb1/qdvgxUAhY/kc9dc=;
        b=N8OS5/6nJfw4ls7zmx72j+3HkYb7PdWAg6V7U9CTDcejrDlHN3gwVLTYIkrMPgcP+r
         7Y+6ZV6WvOvU0FOVYuIOLbO7KG55ZQ+s2Fd4QJQ14F/Y6tYdz0c07a+IXHMLv1gGa0P1
         c67Q9kVNFtHpiPUIC4u9OaVz76/zzG3WU9f3oM/ZphDXo0m2j0VVnlc9iix7W2YHAW8p
         w8p2Od54njVMvVOZQtpFJBhKplexRnF5NPPTgK/MM5dNGpS4xjrZV7NMhj+iuv6sN5BB
         uxXwlFZqgRMyQNCfriHh2MKDBNszptlN6ESxqz4IRrez2AOdOOO8IWwt3IrUZDB9uWbz
         ZLXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775014747; x=1775619547;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c58/Sfeclx1N64rZvnt6VYgoyb1/qdvgxUAhY/kc9dc=;
        b=hEnevKCXY3XN5V/ex7Gb0X0FuQrMkY26/o0jYi8BtXEoCclG4Tmm5Cb3TdJBdSAlXK
         4pTJi9JegQgDT/rnMC+/u7st0WDzSveITWWtPY4CWA4/lYEHGuxDV5KsPEtDSwCdWvwf
         AMH/oK/3rRvM10mB501nNpEcxhERrUpWN0ZoM5QuzwA+oZRU/j0EU3ng63pQfoJh+jyO
         CNkkZ9NI1POteUnV7t65k6lNa9D+pSbQouWrd9N5AQul+7HW5vyRYpvBCaFJc/gqKBn3
         sE0eWFNaZ3Yd0c33Ia6Hefw4/BB5kV0Umd3G8T96LyOxugvfRWS63l0NYuYuYnCLq0Ql
         VaJw==
X-Forwarded-Encrypted: i=1; AJvYcCVtUXU1/C7+fYY4yjjsHzISAhn+h9Q/M8iH+I9ojIL5eaTQCj2zA3Qw8VRu06gfxjD5Ak0EzXTHECY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4IJ7+HvqmQcj6l0q9BQb2AcBnkrtIPLr3Z0HlROX39jd+ziXX
	W1PuBl4Oj/ogV5fVme3peTawOm/EP9pM11jVsdKbIfekEyg0nQm3AHh/zJkPqsFLLmGiNXNMOdc
	Wupy80ma/ET+2+9wfagAcwd9R5hTH4TUjz1T9zWvSH0GPa5pmzITjLvjdb9+tNLze14mP
X-Gm-Gg: ATEYQzxX6Z99OOWiKZXjsRxqFI0l4jtQ3SntFo9BN5sBFgZ2FsOnPtgZRGj3k8IByaD
	WvLt8//i3UuQL3l8huhdX6luoF6X8ntBQRcnEvbPnYpPa8O6KywB5ovQ71Nr1RDL/nob2mVxBbH
	KFYevyf63RGHLc8+Jp4QtHYBS29dG+IqNE6g13fqHZtvfjB2MeYhPnOs0+GLRs2OukNzhHir/gR
	6o0TCpoa5z11H0kC2fqAGs15ByrqNUEzxZpIOMPk/G0ckCltoBVS+OiWSGSt/5J9fuyxrKRgKn4
	CW8CvxdDI99mtOUR417JECLBkR4LPy66mPDCTdC6vp6kHQ3Ww1RMGJXA/lRmKJwYOky2nretk1V
	LDkQu+dKqGeHNrY8LNEgDdt81in6thFtF587H/DJv31v+7w30CWT9x8VACuPl/x8+t/eJMoiq0T
	3r2H08Ev+J5OYNe0Z/WpJc0ISGC7ExwOdSINA=
X-Received: by 2002:a05:622a:a13:b0:50b:3b54:d78c with SMTP id d75a77b69052e-50d3bd78c0amr32199731cf.52.1775014746749;
        Tue, 31 Mar 2026 20:39:06 -0700 (PDT)
X-Received: by 2002:a05:622a:a13:b0:50b:3b54:d78c with SMTP id d75a77b69052e-50d3bd78c0amr32199311cf.52.1775014746284;
        Tue, 31 Mar 2026 20:39:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38c83730f7csm24404851fa.16.2026.03.31.20.39.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2026 20:39:05 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 01 Apr 2026 06:38:48 +0300
Subject: [PATCH v8 3/4] phy: qcom-uniphy: add more registers from display
 PHYs
MIME-Version: 1.0
Message-Id: <20260401-fd-hdmi-phy-v8-3-51b0e98edf6c@oss.qualcomm.com>
References: <20260401-fd-hdmi-phy-v8-0-51b0e98edf6c@oss.qualcomm.com>
In-Reply-To: <20260401-fd-hdmi-phy-v8-0-51b0e98edf6c@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2885;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=A0KQeSlhmmB1eMUUohCWtmSPla+2ZySmmRe5s7HDmyc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpzJNL5iRXqp1OJirSlIM8YMCd0J2GckN/Wf64w
 2wMeVZ3OgOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCacyTSwAKCRCLPIo+Aiko
 1fJ7CACbeqEUhDFAb4uFedgJ/xy0En4l0uW2mMQAwEyXkpazQdH3Kwe1d4IjF66qerc3o+mv1vy
 JyMuGdrTEljp3Jz+MF9L6MWLIDlf/xO1BYyUl0k/g3v//fAXD/pJ8rUr+o3LfY1Sqx0w9bC85Ea
 FR/z+rMWgZNfZWHM+x0z6YUkilODx25BcC8PQc/B38yfXpAjQNJcmz1NoMxlO5xE/aYw7xKHfWT
 uKlCPpb9jBL3k3AysVZCmoSwBUXlEfkzQwv6x0gjd4cavJX+KrtaRVB4J7PgsQGyr/yIjTZutH6
 qKD4wp5b/gg7PK3uMZZVD7Ige9qteLlOvz+HjGUVbO06fSnq
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: XtKY0zrD30pmgbOHCYIdGdef387QtuuK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDAxMDAyNiBTYWx0ZWRfXxCoMLdZ+ofdN
 UBP/PUWa06w9nWowINF3wBvxxQaa3aFFoKtQD7nBsNZarlDzhz56mlWnn6KmyYpF6fbV2/G7dPL
 RIgXRAlaHb93FZiBDGZuXSUkoKSjWCyUnQniqywtgFehQrypIKISFQw5HI9z8CMuwaNX4YvOVVA
 iUtcyCn96VW6YiUOUnjYAgq2KORbKToyAlxiDu4AQEuF/yd8XY9/jFfuXhe1AUnJbfBgbpIQz1p
 f+ybT0ZbK5/SEZowjfV/OKOdJ2ylqyAaeGKzmbJTWTdf7ZThCX0PBxBfkc7d3yP46x/6fcYJovW
 8/iEHBa9OMVQ6snhoyHONFdSBUBhrfpkJeMlJPNELNZTQC3bJBlFyLXNLHVneBDYKyosX4f1f9i
 gTfQPaqb7Xphd8Je7ppjGnlU2pCrF9oCRa65j2BP+/DAvhulSqc705vYCpcfi/8+8XPs4VHu5Fc
 1p1xV8jKFBFKDdNzV4Q==
X-Authority-Analysis: v=2.4 cv=fJc0HJae c=1 sm=1 tr=0 ts=69cc935b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=NWzoLV28igjY6Ppe7YgA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: XtKY0zrD30pmgbOHCYIdGdef387QtuuK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-01_01,2026-03-31_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604010026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_203908_563507_9CE85FE7 
X-CRM114-Status: UNSURE (   9.50  )
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
