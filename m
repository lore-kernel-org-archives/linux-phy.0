Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F0E2FF8860
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 06:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zky/IbRYipGB4NOUKi14kqkYImPug3WH3i9cuL/iFQ=; b=WKs3QUXigJo6QT
	S22QbHvVVzBWgQIm3IEKmQPapH/+1RuyN5DHJlcVIzSZ6gqNR+x9jrZ+YWqyywWt9az/tjLb0pF/P
	yhoSDSz6KDoLwoYi+T4Cl+pIt1j/o3qb46APPzWiX3LSq5V6glUSBNa6IoSGGQi+TDmthaCLLElG8
	+90gaZlpWFCG//y4uZ63+SdwRQyWz97jj2fjVSjtr1oGpHJBqEfJGzB/pDd6ZjzxJzyd6178GqnR0
	WsoWUKKWmFGKqWUc0JSxAk6YaEk8IFX8bJVpnnSb34Kp2lEPM282zME1K0bh3vYiMbcDKzTrzATJx
	Z+CXGP7N1I/S6FaoNBbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHFZK-0000000GH4q-3QXr;
	Mon, 27 Apr 2026 06:35:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHFZI-0000000GH3v-2ORl
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 06:35:45 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63QItnlc1175442
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:35:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hiUBwHms4Hb1isi9MNvxSr7/NA/P2eiTLjhGmjdWM4I=; b=oARk0f0pCY8Mf9Hz
	Fya6UQRmjX6wEXmriNLNQ7YjlHchBZHOKHsWXxPWlzDw2TS7uwQzPhsi1N0SV3f3
	Ze53DZRO4zHFg9jvU+wovEAzSdgN8TvEIfGqLNzRa79DZuBVXaAf0uddaKzvuhVh
	55r97B+DJjktE0BtKycy3UxenvyhWgUmjR1bwDAToZfW2j6JvX3vZTLaEmS0npa0
	k8zmrvTxuTfYyOkLDu2PhuxiraKIqH7ZJ1hV0KfVlbzqj2Lt54tUepgpJ4JH1OI9
	pOmakGQHfpZq9driQNNPXi8jd0qeOHiyVw2PxcSn8z1AOF38j5IEuBbtzB5cyTiO
	4g/pmg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drnu2vq3y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:35:44 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8aca3b7b536so251080176d6.3
        for <linux-phy@lists.infradead.org>; Sun, 26 Apr 2026 23:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777271743; x=1777876543; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hiUBwHms4Hb1isi9MNvxSr7/NA/P2eiTLjhGmjdWM4I=;
        b=Y3ZgYvCtTHtj08vUS/X3JWHpYfUssp+IPI9NMG2Dgk9GgwuczsXosmG0ae6Ohw6KXB
         wLh3w7jYyr1ClookK63UwNyalZZ0mimx8a6MT9dUluuAnMf1BJy8/zNZ2xczi/FXCRds
         qv0gZ15MNmllAgk3zPaxyC/PMvMyBSqhAAeT3ANQ4DYRZ95Sq2VAuYZtwjb0r2CTZKH2
         fQKQ2E8fkJGcz+aX91I4wOSfgOCcLj5v/iJN3I+Xszulc00PAFVfm6O5DUUYchn+eML1
         MsI2ezy/YKEPp4+ceSBpNOaidBrx0Uu7ZsnWZMMm00tCfOZGAtigCcOPU+uKZQGnJvvL
         7YWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777271743; x=1777876543;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hiUBwHms4Hb1isi9MNvxSr7/NA/P2eiTLjhGmjdWM4I=;
        b=TW1m1RCiC9Qu/E2xKXfF3Pw2pef3eMvz98v88RvCbaXPCLWBLQ8zBxWb352mOHb2XU
         oGoY8Z+H7xOh9vGFNtJy8g/Nv25Q2UcEFM0pTDHB1Os0IsqIychFE0so/PYsYOTBsRz1
         yJpwu4q4ut9miBjO+DwOOHilyd2Pkz6XrP2w42pOosclnWWw4aEGnwwO+V5DtZmk+ZmT
         9BtKSFfObuxj+9x81h0gKn9Wnn5C2nquh2HNwEoJq8R8dc4nUmIoIsD+mssYKpV88tiP
         jQ/t8hp3r15B6eSIt4B38jFLBydT4vu24AXDaUjFoLW7V460cPe4vvgG1cZrsIbfXQCB
         K/Gw==
X-Forwarded-Encrypted: i=1; AFNElJ8yQMeUMznnnjauC9h9mPIGzYRVvCBLKakU/r2YD5fczREiXxhfIVdN0FRiurHICRUU41ao6nwhAM4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwaRcE5V/vYDbDK8faKj3NmzyTJlCy5NJisrEVvO1iAzYNH0qaO
	z8ky7FHqZQifVkfwwxhtKi/NEkXrFN0gszoqPAd8jgIaHPCRB0R64sdK98SrW5qRJRy/t9tg2lF
	dxmR2q70HUxJbsrfkYQtxymCh+tp0HjD8YARmSUc1bmhozKcRf3bJmayhzA/eiqU2H3Wl
X-Gm-Gg: AeBDiesJrDkJ/4dHS+R4Z3yNAAEs/3I2FjgKNUwIY5Vl5tENN9YUAY7nNHpkZclup3e
	qXJDLixf9a+36Zb1eHJ9/z0TtOm6Lv3w5tjlWHEPqcy+4qCuFlQxd+22zH1wSs9APA8JmJDcLcn
	wmi6dx4Tks1EgG0zUt9F8jBxZO1FChBUl99jRGykNUth9ME4aa5r88GDXIgKXjW4IIYK7VYClgl
	AnISnh6l9cyoIc7yXnzQbiSpf7mNFoFEHyjpYK3+HkmMQRyiTZJA0q/tL7OIpqUA4XVN9WYDHuQ
	Xa+fGVKhW8PBvaOLW8DFAp5G6nk+t/A7hpzxk9gmIcwtEf/G1HFBypXtYfXCyCQep01GR/WsH9+
	doSpnlTr16T/zVDQx8cRErZJlZhzfxLi/cvImXolNfk120gDn9MzDaJLsFnvzxlEAHcIpzn5tzj
	foxOC50dlRA2QVMrLOUQ==
X-Received: by 2002:a0c:e003:0:b0:8a2:1149:3337 with SMTP id 6a1803df08f44-8b0280cbac0mr536922046d6.24.1777271743147;
        Sun, 26 Apr 2026 23:35:43 -0700 (PDT)
X-Received: by 2002:a0c:e003:0:b0:8a2:1149:3337 with SMTP id 6a1803df08f44-8b0280cbac0mr536921836d6.24.1777271742775;
        Sun, 26 Apr 2026 23:35:42 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8b02ac7d4e6sm251899256d6.20.2026.04.26.23.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2026 23:35:42 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 27 Apr 2026 14:35:22 +0800
Subject: [PATCH v5 4/5] phy: qcom: edp: Fix AUX_CFG8 programming for DP
 mode
MIME-Version: 1.0
Message-Id: <20260427-edp_phy-v5-4-3bb876824475@oss.qualcomm.com>
References: <20260427-edp_phy-v5-0-3bb876824475@oss.qualcomm.com>
In-Reply-To: <20260427-edp_phy-v5-0-3bb876824475@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>, stable@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777271722; l=1322;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=aO28WQilAxZVtQvI+wCGetkRJaY0+sEy2pV+6FVXyTc=;
 b=KhT8bRFH9JS6NuUlvP1bcZQMegP1Zye5cxMcaApOj1lBr2zb4OC7W9m2Q7pfbKczPsrAsty3K
 WxNAK+1XhaKDXx9A2RQ4WZtSERsqPM3AN5McM+OZsqiUec4ko+30Wmf
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-GUID: xuE2MxK9yoTRVElqgLfUuf45tf7zmMQK
X-Authority-Analysis: v=2.4 cv=cbriaHDM c=1 sm=1 tr=0 ts=69ef03c0 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=SO9rCO7GgoKHDwPkKK0A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: xuE2MxK9yoTRVElqgLfUuf45tf7zmMQK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDA2OCBTYWx0ZWRfX/9vFtFX2RkjO
 iPQ3B4jIAsTTCGknZO/Qn8PvUfmqHJDyzQhNZp8vXFjQ45ez2kNRZvlkx1jwmT8OjxRHx9aV1do
 CndCUshcMy1J409+lwEWrIHOvZAJaZ5SqT66KG+U2m3tm3i61HDorSpMBmeSSvirEXIXnm8KEna
 xWAPfyv4ivR1sBNIH5K7kpqJToQjI+ZDTLHwOcRIkqmCxCyUBPI7S1NZz2e4rpwHJ2II+bNCOyS
 RzNXLgAmVM4xdn5fMeD8I9l832k2oM8IdQ43INaeIezrZ5uaqMnGPi2s/0qMXHQMl3Js8a/5oV6
 zP1DYBkSO7TIMUSEeySiyB6LLYBLzMWH9XvKLTw1uDhPb/L9Z8mtVQWSY/QLrHvCGgfzWhpb4Mk
 DNkO9VQORdgx3c33+6eWSrU1puxXMZrmCS1aqlHSPH5XyWJjPGk0AznowwVGtIrx2f1zCLGehBV
 0sxrmtoY0bM+LP/BtOQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604270068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_233544_629192_48CD8C67 
X-CRM114-Status: GOOD (  12.84  )
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

AUX_CFG8 depends on whether the PHY is operating in eDP or DP mode, not
the selected swing/pre-emphasis table. All supported platforms already
have the proper tables, so remove the unnecessary check.

Cc: stable@vger.kernel.org
Fixes: 6078b8ce070c ("phy: qcom: edp: Add set_mode op for configuring eDP/DP submode")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 3e613b374032..3a848f18a8d6 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -325,12 +325,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       edp->edp + DP_PHY_PD_CTL);
 
-	/*
-	 * TODO: Re-work the conditions around setting the cfg8 value
-	 * when more information becomes available about why this is
-	 * even needed.
-	 */
-	if (edp->cfg->dp_swing_pre_emph_cfg && !edp->is_edp)
+	if (!edp->is_edp)
 		aux_cfg[8] = 0xb7;
 
 	writel(0xfc, edp->edp + DP_PHY_MODE);

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
