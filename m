Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F863C5DF81
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 11:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3c+ubAJv1/V2Jjm6uyMFc5jM3DgZxwfeW2aSlVmb2w8=; b=Wsg3WKOGHNIVaj
	T5FIS04bhh9HRUbmZneTxv7QgAikIVqLr1W6wkC/7UEPSvmCD0RqB77iUGGz9iC9cJl4rZL5K/sTw
	dJO8X6mV31H4/NnnVFuO8/2X5n5M3GT4oFWmm5sOMq0rAyt95qPhmuMfdtqIurgkjsqPL2cpwXgNy
	0TjGmuOIiEEPDmLMswSdnI0S6pZ6uZ60WNhi7uvU19d5/haasGE1GQywxQiBlTxwkXHhInARXSdAj
	ZECLqSMHwrs3InM94Xnx4weX/YuWCvw6Wz0OKj5OTOBVMNL84alVxtRu6BmhNpsHvn2IYPuaeTmui
	NmgNEiRsoYGlWagEbxAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wySr2-0000000GVfS-4AlA;
	Mon, 24 Aug 2026 11:28:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wySr0-0000000GVez-1blh
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 11:28:39 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67OBMgLS2864713
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 11:28:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vYF8IMeScLS8uXOagtGPkjVovyxJMz305NPZ1OMf6D0=; b=DrsQ/At1BkqIW5SJ
	1Ug2h1z697x60kZ6pcWAdp9YIBS5SGu6qE3ugXMp74AS3EgTMN/sF24/6uTy7KGL
	noFUjjLxKbeLlVCvd5sJ8FFz6NlRHQE3pYoqAP81BkpKfEigkosbAkAuqYFrRvVW
	R1YvaDvey9yItrInIh8CITS6W1pbtgdf7WeR8tVXB8cPF5HH+FEzawFXLthNSMZJ
	N1BeLda4Ppo9P8J7leRZHlxXu5QvMl4Y3wsOBlPy/gDC3DznjamJx47gT+21tPXx
	/uOiI4caUKOhh6r0l+ZP/Ty174Lbsa9ZQCR1Us7Z16cICtj9phkbABlfZagFXLdm
	mgVdJQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8bdr26t0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 11:28:37 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-388b404eaa4so5317963a91.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 04:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787570916; x=1788175716; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vYF8IMeScLS8uXOagtGPkjVovyxJMz305NPZ1OMf6D0=;
        b=SIBj39p2iX/u7fj5v9VlVe7I1Iq5s51tceokVRI9HwtxgqWHeziITbD1CdMBC3a2tV
         XYMqmkOW5yUJ5ZWkpXE9Kfmbx1qJssNH6CuO93nhfAuG7eQDb9Uz0tsPzu7lLShNCnoR
         Q7mZI+U84SWzCRhciLPD+HseWWDa4cN5tDkP/NYRj3gHh+Hk0eqh3DJVp7/tI7lwam+C
         Tz9JpXl3E/aUDryHYBo6gtb7XoiLyCfF7aREq3kooKDkZKedVksMfHgR/BTlH3+xguVb
         2GA7P7urCgEaGbcQr8ocPM/e0Zt9pkGIxvhw1/3i6w4jXxsU0wUkOp/PMB4L2D2W4U+7
         9MjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787570916; x=1788175716;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vYF8IMeScLS8uXOagtGPkjVovyxJMz305NPZ1OMf6D0=;
        b=fHJAlrPcrSW3yzOdfa/h0INeEBDk8SppwnS6K5IaKWlMTVwOVPh2ToAbDzZhRSbeLW
         JIdm1XFdX/u0hhMvDtRxvnaZFR7Rvh3skR1rUvmFip0GC6CnVAUgrevrMNrvuhl1UufO
         B/+Ozvgf6HQOR6uYEzLKpb6nyIGJnIlUUogNnAVN9OPqtpmpQfK3IE69L0yo+96zjBcx
         1feY2oW/aPPwGfTOGXI75ez7KJSU32pS759Zzk/rQHLgBrJMDS4/nhd6RcROH3J5j/y7
         uJy3FhSCCdA4tNl+vhb2OXZDkM+UU2RojLSoT2k44TDMGizzBvchsQFzPMTJWPG6WFMT
         pQgw==
X-Forwarded-Encrypted: i=1; AHgh+Rpc4Ey0sNk7myTeoaZ27SgHCLwvuiRjU8ZnnXgzgDf39g8NBCsGqUMuVVVdseTMzW3IQSnWHZ8VuwY=@lists.infradead.org
X-Gm-Message-State: AFuF++n5qRZoVtmkzit+yeJqvILfyb1NPJJTKEYqEccakhr3dAqFHY7I
	XjVOeUwEoy2WEhTir42j30raz2yZ2InmaJ+QQ6GTreB2b5yIHvYJfVp0ttQ8B3JxdwweM1RsniE
	vIe0g2ZzlrvqcvPftzL6r5MroNpQg+egGHm0yXdyYsZ6seoS0KLM7i6SRkJY5ubi56mif
X-Gm-Gg: AR+sD12v1Q/G0vLRoHtviKzSUdx4fC7fqma2oHBaZ/L5AD8sU27NGhliJaSSVywM3q8
	Ls552YyNqOt4PeyGHlkKjB+aupUM/zP9r/Kw59JE0EQf0uN4xl4G5GpJwxaXIErQW3kkmpVsO5R
	7LSy5Lta3dv/Vauo/F4xsG2z1gk5p2Za48EZmS6SbW4D7Sb5J22hJDjmdTdj/mAxRTR8/QZaA5B
	ZP9gbk6tzP8+XYDXHR3zofLOZCs5Yjnyqc7b63hP94+AfI+xhtC22lODL7RB/KL9u24TfeNPV4M
	9Gp54tq8U8sxf1ppXhziCpeYLguiGzRLmAHw3BSem5fIrauKlEgMV4oSWcIi+bclSnrohaNgLqm
	xDA4PS0rf6xqFHTXl
X-Received: by 2002:a17:90b:580d:b0:38f:5869:387b with SMTP id 98e67ed59e1d1-395df24e757mr34344894a91.9.1787570916295;
        Mon, 24 Aug 2026 04:28:36 -0700 (PDT)
X-Received: by 2002:a17:90b:580d:b0:38f:5869:387b with SMTP id 98e67ed59e1d1-395df24e757mr34344681a91.9.1787570915598;
        Mon, 24 Aug 2026 04:28:35 -0700 (PDT)
Received: from [10.213.109.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-395e4af750esm9825643a91.11.2026.08.24.04.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 04:28:33 -0700 (PDT)
From: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 16:58:04 +0530
Subject: [PATCH 1/4] phy: qcom: qmp-combo: delay Type-C mux switch while DP
 PHY is initializing
MIME-Version: 1.0
Message-Id: <20260824-qcom-dp-typec-reconnect-fixes-v1-1-2825e5bf8a96@oss.qualcomm.com>
References: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
In-Reply-To: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <quic_riteshk@quicinc.com>,
        Vishnuvardhan Prodduturi <quic_vproddut@quicinc.com>,
        Mani Chandana Kuntumalla <quic_mkuntuma@quicinc.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Saurabh Anand <saurabh.anand@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787570901; l=1390;
 i=saurabh.anand@oss.qualcomm.com; s=20260824; h=from:subject:message-id;
 bh=y2k61bLaxakC11xmIND99HCevfgEkScpEhGzbvIkkXg=;
 b=YnnBPYMDGOpuT28P13YjgvNgaUOm0REayyFOl+w9n1bbmuJYRSC7ZPy5YJYHSEBYNFN1d8YLv
 Rc8x5As6KkpDsdlwWZrEpgf+gGmLjqagkMCGtUsW2tIEzhikWNOlVr7
X-Developer-Key: i=saurabh.anand@oss.qualcomm.com; a=ed25519;
 pk=AzGwbGUPO11yi5XTeGyJKOJWLfzXp5Dru4z+PCg/uXs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA5NiBTYWx0ZWRfX48rMGdXQq+a2
 nxm0qJPO/MHD9b40ZXO2W73GcVqSfiH4xOD7XOqzoLvWDG8noDxv5k+VEE2o3ekEtfFYFN8AMC9
 N3ed/uWYIMvlNFxc7q+ukmQ/cotZqQ6aRMh7s6vX9G4zC/xnQyfhrTWN+HgJKU/fs3yVPP236Y1
 ywP+lI5HP6spVdkc6wDoKQdBcFodGRocy2CbsbKmvMAXqwPt1Q04CVnQlXQBywWk71zubMBHRQX
 t54KNYIgvC7aS366OMY2/kUEI5LNMmSnJ87BREWAv90i/NeZme42/LyLqbNc0xbWsHCD27lQEld
 lFEr7S6J4VqsqrOg0yPs8mMgzz44wc2RS3bnFdCnYmM3ymvGB4EBkvIo7duI4cjpsAha0BpyiGJ
 V1T1JdKLSI6cuiL3oNjaOdEIBL+Q1KoPPyhgEwGmT3Ld90wnNqgq2sNzP/KDyassBM2Mj8I/Wfz
 bizn320PG6D7iTRDrZQ==
X-Proofpoint-GUID: sLJ5ismKU788C5T_iIwucOPztrEb2VB9
X-Proofpoint-ORIG-GUID: sLJ5ismKU788C5T_iIwucOPztrEb2VB9
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA5NiBTYWx0ZWRfX6E+xKydS6x5n
 kQZrJQZdW7AG+l/p/1yUE2t6N2SRAQbcP69UTtWLUDYgrr6vVdWBcqjyfUpN2NhiJSevRwvaYVi
 oiLl6y8GRHeCSIZriU59S+3TczlGK4w=
X-Authority-Analysis: v=2.4 cv=W8cIkxWk c=1 sm=1 tr=0 ts=6a8c2ae5 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=HxeoS3nH6iSbXD-5zs0A:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_03,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 clxscore=1011 bulkscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608240096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_042838_545753_9CC0BB5C 
X-CRM114-Status: GOOD (  14.21  )
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

The Type-C mux switch guard only checked dp_powered_on, which is set in
qmp_combo_dp_power_on(). However there is a race window between
qmp_combo_dp_init() and qmp_combo_dp_power_on() during which dp_init_count
is non-zero but dp_powered_on is still false. A Type-C orientation change
arriving in this window would proceed with the mux switch while the DP PHY
is mid-initialization, corrupting the PHY state.

Extend the guard to also block the mux switch when dp_init_count is
non-zero, covering the full period from dp_init through dp_power_on.

Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c39ced168d03..f23aff79ca08 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4842,7 +4842,8 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
 		return 0;
 	}
 
-	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
+	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY &&
+	    (qmp->dp_powered_on || qmp->dp_init_count)) {
 		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
 		return 0;
 	}

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
