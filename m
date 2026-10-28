Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE24606A31D
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 10:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tAxpBcgt;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=QUdCTyoU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=GA3P4efp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UN0nnyAQQsVpAK2Hcdq00S9nTO7s1hHTjqqYXtbHhM4=; b=tAxpBcgtFY3AIzu9PeFkxCJsFK
	UlT1oGT4w6UwtajpIHDM5pPD50u44ZZOkJjCoKJ6mP0WBEcc7YcEd3rx2Q4Oiz4vEh1WrtVr3TG9V
	ELrLr+j/0hjtfBSr5ZErxPCGSXZrot+g9eNVFY80/knTwFwbOD17y+U+0wtVyqz0I4RlSmy60lNJX
	XvceJPK7DmIwkN7TFDS/lqJ1OxhtJf8AcvmmtdTcESFBoFYC6Va8dceAfHtu41lLQO+yVhgUv7/P3
	LDodNCZAdRywBHe1ZtoPTA1mqO8eiGeqaj6RrD3l5y++MopZCnyjoC7YUhQK0CTRLl02BtJtBsYh+
	996T/+6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13M-00000006lv8-2x4X;
	Wed, 28 Oct 2026 10:38:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13K-00000006luY-18sA
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 10:38:43 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69S8K4VO557254
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:38:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	99kgVxGKiwJXgUWNXObAPN1o+z6L3i6B8XGsFbEit68=; b=QUdCTyoUPOw4uJzd
	BGLjxpjTt8ltEffngWwuAoNFx7Vf/pxixKB45BHhekUelIttW2PxjMY5anjt/OHe
	dqZIs+YpLes2JxKovUSdQoFaaL3+JdQpxfYv34MKxEgJj4g9HoHMuv2hjiq2Xvqm
	FWfXkzaP9LwoGBm0/e9xxKqxXCrcf/6FX+oMNKgl1Iat+iWex6FOm9GgjL3trKe0
	yu6ja88ZdFn9ynFFc1DKpf8I3tmaS1wg+LYAmSalWIP+gJZbyFtRvQlLKBK7eg7H
	xBtn8KGsmvTRXU1PEi2y4jF26R0CZ1bzSX8/bcKYi5hFuxtinl4PxX2laLAbVgOF
	Nit1DQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk82tsn6x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:38:40 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-33c35f5ca6cso1634178eec.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 03:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793183920; x=1793788720; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=99kgVxGKiwJXgUWNXObAPN1o+z6L3i6B8XGsFbEit68=;
        b=GA3P4efpkflvhtmnA8TQgkvIZ+qFwAsWa7R1ZkDRexaeSDplJ7Q9FL/q3hlCuGi0eD
         /s/RFqPQyPNMlcPpXjndSi9sbSJ5RNpboq/EcdLuNV70W3ekYQz2DsCsq+ML80CryECr
         2m/8dbZIj78H1cgoe58baTT7pp7rY9KaZaXDv+NeD7XzPoslxc4deDjcAqe6vWCf+JjP
         i13jfvjqIsv2vEJb+hTw9DMUkJ4kznSdI0uxFW3LSArnWUBPbBxw5beOzqk76jXl52O1
         VkLfEX5qYu//UIz1ifgMjlUuOxukXVsICkdn+mVs+TzT8SbILK3AFG+cZej3PjSnZXUW
         n2vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793183920; x=1793788720;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=99kgVxGKiwJXgUWNXObAPN1o+z6L3i6B8XGsFbEit68=;
        b=VPn/D1kobK+VOBzEPAUe7Ls44PrCkmkQ5GkpMwYtdphpCRBdWxHiLKiOkgMs0RSpM8
         tWttJtKRHb2FUE9p1rUYH8yeR5uxWClwPk/TNb999Ux1ycCd0m/FW7+Z2jj7Hb6NADpy
         9Fy28N9YKRl0VjwACh+qEaO7jH8TDn3CnfpPPZM5VzlporgS7JK/ok0jdgd4BtzvJcA6
         lTLzNmHDY0rtmDAgIAnWfsCUmfh7ZNEeuuVMmQs4eculHJ1WhAFR7kwAkL+xMTrl2JCK
         tlIhn921U7ZG6p413EZ71ryqRcYdfFYEYBoLaYxmvUEFUVnqZcKV8HJ2IENO9UIWAufj
         0kTw==
X-Forwarded-Encrypted: i=1; AKwUvBwGnDzpc4zSCX7HvmbuA4uXpjypvxNoK4zIVs85de6P93rKFwCxuWkwDSfiRo5HYCxXhDoewyt2mqk=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ4DKbsDMFoErKzkA4nqJaSsYf2faYeA847fwBAr0T+ZfFg9bCF
	OEPyrjiWpM/QPT5gLPCeQX8VGe5Bgdy/QNmDhbLVsnn/tc/0pf65rETp+hgGw4RGmDmkH50IwUQ
	WU9LxLfr8iMP/cfjrpXeVFbL4RaAgMpkKLNKJEPUNN1B/An/JqJJIqhxJhLsXCecYMdAj
X-Gm-Gg: AYBFou31FDxE4ddQFgU39OzcNOkKAG0JwNAxkrlqIKf0gBbIbUEhVIQhyxDBcFOlxaq
	H7k18oKbAGndseLl1vzY2w855HDdXGRIYdhJMcogitCXUCqMviH9Vhtr0XC/kCeqiPADdhHhL49
	VGl2hpmi6H3JZC/14s0D/pCOgEKpdF0xkWPW0Yuw4N4lW/hHbaSwfIaraO9wEIuUj5Up9HEl2eD
	NpjxyQu9RfQIjBLzoDZIcoADMHj1eqTw0tsPr2QbScPUcYnT3CN4oChY2JGdi7UI11Th0cYJsT5
	tmHd7VsXLkG990Xh4k6e8GjrZAhm1LGoT04odr9IHeVV63MXRrPkagty/piH79oyb3WpHqLaLha
	thG/l12JLk4p/ujj61VI33qiC/fnoa0itPjU1Z4nTd4PnP3nsP+dDKkEhbb2BwMHBomL42hBYc9
	k=
X-Received: by 2002:a05:7022:d9a:b0:193:7fb5:2c3d with SMTP id a92af1059eb24-1a6ce11409bmr2546764c88.21.1793183919513;
        Wed, 28 Oct 2026 03:38:39 -0700 (PDT)
X-Received: by 2002:a05:7022:d9a:b0:193:7fb5:2c3d with SMTP id a92af1059eb24-1a6ce11409bmr2546709c88.21.1793183918933;
        Wed, 28 Oct 2026 03:38:38 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1a75e5c6d4fsm8340186c88.14.2026.10.28.03.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 03:38:38 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 16:07:58 +0530
Subject: [PATCH v6 02/11] phy: qualcomm: qmp-combo: Update DP PHY common
 init tables
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-glymur-phy-v3-v6-2-1f1d2e565a66@oss.qualcomm.com>
References: <20261028-glymur-phy-v3-v6-0-1f1d2e565a66@oss.qualcomm.com>
In-Reply-To: <20261028-glymur-phy-v3-v6-0-1f1d2e565a66@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Jeff Roach <jeff.roach0@gmail.com>, Luke Macken <luke@phorex.org>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793183900; l=5025;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=7HZziaSLnA0ARgiKO6FwLeVkhA5JJVb+gnNRS1dvFyQ=;
 b=UylhB/1tJv57BCqQ7rvyi0QokkqgK+PjDtd+kkQz+EpCB2wBpQ1muBd1HdCS1o/NiNSoR9oJE
 ItTV0BBYgx4ACONi34GGiHJ58gGOBQHB+PAXO6kYGsc5mYU7TgitNre
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-GUID: qg37Kd1ScwZIZltyhEVNYTJPRnJeu5xw
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX97kAU3jO6t13
 KqXUnJBriY9Rn/xn0tLQqw8Z8mdjOwyzahw1Pc+c4kX23zfTbl0S3uowIq1efYYJ+7mqn+p2teW
 TWlXJ61bJG099TppdxXjtn9R+ssWlSM=
X-Authority-Analysis: v=2.4 cv=Tr1zFzXh c=1 sm=1 tr=0 ts=6ae1d0b0 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=mO8_gwkcAAAA:8 a=gdyAoERjSoe6FnXwYpwA:9
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22 a=InTEqNb8lIr1xazlwGwc:22
X-Proofpoint-ORIG-GUID: qg37Kd1ScwZIZltyhEVNYTJPRnJeu5xw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfXwf9Y5icFQhDm
 wAjDo7NBteKl8gq4eKA4d0UBjCCT8QJi+kXGzXINvP57rVoa9LK/eBAjjALc65qLGRCQjJkekF/
 OsXbVq+RimBfyHaQhWMXs/GzKcypktWD4REFDXylk3MbIjG1xS5Eg2rE9HbjRfu1faV0ha7zpRZ
 BJa2Lbe3fJHstNVUcynJvnIo9O6cVyphcZN0aSZg1SwNZEhndtOlRPMWFH+X0IcUsDoaesetlpS
 BGBHaUPFzBLQmJq1YpC+V1HDcvCeQVgF+Ev2DKSH3JYORY/lVcXYHHltGp5ikBKDMJNIg/+URcZ
 udCrFaFSTImCSC+tGMq4eB75hYnQ6sEGZt3q8Z4kLACpMdTeHAg/8ky7rt/5Ak1UA15lMfksRSB
 Eih3gzlnFguUElJeWG8BplqE7JBHB7jT7CZaFNu/Akm4I9q8UScLzVaDWnP8RLVxNrFxDlLMU+d
 Pr6OObIT/c9sfghkSTw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015 phishscore=0
 impostorscore=0 malwarescore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_033842_474170_1E1FE276 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,UPPERCASE_50_75,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Update common DP PHY serdes and TX initialization tables with
corrected PLL control values (MODE0 instead of MODE1), updated
SSC step size, reset control, and various TX lane configuration
parameters including emphasis levels and driver enable settings.

Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)
Tested-by: Luke Macken <luke@phorex.org>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index cd14efc3c59a..4ed366d1751b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1502,10 +1502,10 @@ static const struct qmp_phy_init_tbl qmp_v6_n4_dp_serdes_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE2_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE2_MODE0, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CP_CTRL_MODE0, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_RCTRL_MODE1, 0x10),
-	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_CCTRL_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_CCTRL_MODE0, 0x36),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CORECLK_DIV_MODE0, 0x0a),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DIV_FRAC_START1_MODE0, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_INTEGLOOP_GAIN0_MODE0, 0x3f),
@@ -1520,12 +1520,13 @@ static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SYSCLK_BUF_ENABLE, 0x06),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_IVCO, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SYSCLK_EN_SEL, 0x3b),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_RESETSM_CNTRL, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP_EN, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_VCO_TUNE_CTRL, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_VCO_TUNE_MAP, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CLK_SELECT, 0x30),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CORE_CLK_EN, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_CONFIG_1, 0x56),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_CONFIG_1, 0x16),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SVS_MODE_CLK_SEL, 0x15),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_MODE_CONTD1, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DCC_CAL_1, 0x40),
@@ -1561,26 +1562,26 @@ static const struct qmp_phy_init_tbl qmp_v6_n4_dp_tx_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl qmp_v8_n3p_dp_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TRANSMITTER_EN_CTRL, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TRANSMITTER_EN_CTRL, 0x1a),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_VMODE_CTRL1, 0x40),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_ANA_INTERFACE_SELECT1, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_ANA_INTERFACE_SELECT2, 0x18),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_PCS_INTERFACE_SELECT1, 0x50),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_LANE_MODE_1, 0x0d),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_CLKBUF_ENABLE, 0x07),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_CLKBUF_ENABLE, 0x87),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX_LVL_UPDATE_CTRL, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TRAN_DRVR_EMP_EN, 0x5f),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_EMP_POST1_LVL, 0x20),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_EMP_POST1_LVL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_EMP_POST1_LVL, 0x2b),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_EMP_POST1_LVL, 0x2b),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_PRE1_EMPH, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_PRE1_EMPH, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_DRV_LVL, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_DRV_LVL, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_HIGHZ_DRVR_EN, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_HIGHZ_DRVR_EN, 0x3f),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_LANE_MODE_2, 0x50),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_LANE_MODE_3, 0x51),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX_DCC_ANA_CTRL2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX_DCC_ANA_CTRL2, 0x0c),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_RESTRIM_CAL_CTRL, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_RESTRIM_CAL_CTRL, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_RESTRIM_POST_CAL_OFFSET, 0x10),

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
