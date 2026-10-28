Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE630606A327
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 10:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Z2KpAfP2;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=lfONDjTg;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Zg4hsMVB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DkmVVFUXdN2FQ0mYklGFnAQTAYBcrIVfm/OO4jaaPNQ=; b=Z2KpAfP2vTQUNrgGBp+xOGpU39
	WZhoUXZnd0oNrXeSMnuuhhiMMOHxIBh+2W4hihD+kS5JlV0a/StDQMRYqiBBdsXslB8mbEDMSwIUk
	N9Ys+FOHOsMegJkEc4eDDPCfsckCF+S0b4Ats7id5vJXXKAmuHKQSd1TTGObwCg/2g7wb1pCj9SU0
	k1ZQFuAF+83wl7uCATjtUg3PHbej7MIYfCOf5wIyC2dAnTXxgxiDxLYBqPooxV4LCr3xZZSj7zCkJ
	RbHNx8Fw1lYp2LaWXfSxIYgijq1vKM1fY4r/fYMIsAFesyhoTf+qKcWy9m7EMW+OYKPRrtQts1POf
	XjEceZyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13F-00000006lu7-2gNL;
	Wed, 28 Oct 2026 10:38:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13C-00000006ltL-3Aq0
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 10:38:35 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69S8K90G1642933
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:38:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mdQogbyw565MwGyAXZSXXJs+hMpJgQr7bh3Iu18EvWs=; b=lfONDjTgkToCXvMg
	BoMv2TAAzlzJp6j5zJoWnEW9+mC/jonY3K/37e1FX6s3wT3bTW0vVlVSZ2zZwPWf
	0AUp8kwEYGDNG4HJe13e/UsonKHMOlcKFVOHCa3NzasP4yWvvUmqgp4ikIZ57XcR
	9wD5EnECNP6en8OdQusbRPOjaCi+Rh8bmjTqVt1gaf4XF7OLRWPE6CmGY6GF2zB6
	cPdE9hRp15DMuBO3WZjBexXuwrkpEw10W2NTVXFCz+ip7aTJBeoScKnfSKWE85Dn
	ZMMo8I+EdBNiwvQxb8LzRn5HBGx6eL7Wd9LE2WtfNzvlmQWtZRd+tdZXRW4JIm93
	yUV7Ew==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjyjpujxj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:38:34 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-193b5eb133eso1040073c88.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 03:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793183914; x=1793788714; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mdQogbyw565MwGyAXZSXXJs+hMpJgQr7bh3Iu18EvWs=;
        b=Zg4hsMVBLf5uBisaoaDAm0JbMbzWfFgAvsOOXXm4tCAQ7nZWiKMMxKU0OqoNJj6uzO
         7qFZYggqEW/wAm48+nyBbHrJ7LXfmh5gwTPhp3qDmWLgCpRuU61ObxW2NDpZRxQ0xHzo
         hHOj5MxVvI+Awj0C7o16bPlbmZKrAzaPNJEOzZ797Mx8m/fjisNFIl9ZeRasj8ji6kum
         1hQyfF27N71JJ4SO5q5jB2vraI1mMnh4tJO6AOw274fE2EbjXpN36k3r2/bwE7kr1fXW
         0dMG7bmgHuNAT88fMl3jrAqtsmi9NJ7qXwdmpKFEXTzh5u86Hkl01jhE5vyZWYdn7XC0
         VpyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793183914; x=1793788714;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mdQogbyw565MwGyAXZSXXJs+hMpJgQr7bh3Iu18EvWs=;
        b=ttkPySVkmHvHR+VfRIqPxtsMZGU1wXG1EI7GRfzTxG/sZNHJToOli9l0ldGxSPiBZc
         77dD20a4BegUBbpsZCrUBpPTHVekZjwH6IiFTO7yAJpBkfol5J4NttD8PjXjMebjwv99
         mcUYnw19SxQ0ZALbaqHUDrNBzX/KAcml4NpUdcQ6mSftmsXXx6YLxlg0/csnQoTQfHkK
         h7OUq8nKUQ5nezmpG8Ddl1EDbpr7bQWeVZq5KS/OEdMyhrZtUHl9uL4i4kQfts7TZKu+
         mhtcJY/TlrxI8pZYdq94IPc1ApXnRuztTk3iKIvMBnak6CVRXH0KZNBRbI9/9E4oemb2
         LbqQ==
X-Forwarded-Encrypted: i=1; AKwUvBy6GTvSOgpcOIqkSIE8BV2EYM0kgBdxrYcLGD9MVpY48S7BbMuKInxZRU01cWmnQ4GBk6Lb47jwCe4=@lists.infradead.org
X-Gm-Message-State: AFq9FYJWBiz3zIok3BsDmhCP2Oy9ItXpApXtE6rIqSKYDuwN6t1mNzIn
	8tKPsWStLBmFTvjtGTKH67oWLn+91N7RG4u2e7QfWFL0wXAxVevtSfwNs8z+ZOgSWZxd0YOBH+9
	vMXbVotAITD/lRzUcOHhLV3C8BLidkuDVEV70hg+vPgtuqbfgONlIIBvXcACpTnagxgfK
X-Gm-Gg: AYBFou2vABezlmiLImcioX/ZFZQ+QNIlVk/6rWpucqYe+vg4ukhfd6V1cHFRG0S1y6b
	8AuTDvWiHp6MtDjMcXCTRl17bmfkJzZ5f9xqoEkrxCfduADysxFzhsbdGnPz8WXWa0H4xlWM0ec
	QfsMcOpOiOY2ww5NviX4QNBJVjoBWD7F8e6B9Ll/u5f/7GsMHTNVqinQk15zmWnIyFSotdEMHEI
	eBJ5uRCsKP0m6UnldvUKNeW9czUKx8ABVEJr4vXEnIZ3s+mGxsLTGxkeYCTnQewO7kuI8K6X6TU
	Z4t4IeEVFQD7npkSkXjBQN7Pkg7Yy6cW0i1Xi+ufb5Q2qrzfqhvK0N4BpO18QJ/hmBSufm58s5W
	hAJanDxUy+IqSVyW42XgKPfdFIyrSeGisOQueA7JynBXaZaZbYO3sRndzpN0+wfPzfko1DZvXH1
	E=
X-Received: by 2002:a05:7022:6727:b0:155:7721:3a4c with SMTP id a92af1059eb24-1a6d15f8182mr3744004c88.35.1793183913427;
        Wed, 28 Oct 2026 03:38:33 -0700 (PDT)
X-Received: by 2002:a05:7022:6727:b0:155:7721:3a4c with SMTP id a92af1059eb24-1a6d15f8182mr3743906c88.35.1793183912618;
        Wed, 28 Oct 2026 03:38:32 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1a75e5c6d4fsm8340186c88.14.2026.10.28.03.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 03:38:32 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 16:07:57 +0530
Subject: [PATCH v6 01/11] phy: qualcomm: qmp-combo: Add DP COM v8 header
 and fix register layout
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-glymur-phy-v3-v6-1-1f1d2e565a66@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793183900; l=1983;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=+DVFqiryDONG9McNRCJ+BQaBHXz+SBZgygyspAMF7VU=;
 b=hU/MOjd0eA8eKsd1h/SVBDZgJ3/iLUcET7l3O94d1qJJYmHK3shPimYQhHn/0kjz+NDtzlbdG
 Obts0F4k5ZAAiL9+gOaLCdEPrQBfV6hfbOJFgiBSxFRm2EskIfmt5IU
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX1ZqTKBoXcb77
 2X7kpcPlZ8Dn+PtpnaKzIBV8FPm0ma5wZ2ky8mqTaT8HyV7Yo4iR8+/y8yMjgChDe+RPnMAv4ff
 46qriRZ7NfwfI/pGgiayx8XF1/pyMFMZEe0J6lTsfbZjCLjkP9RePMmlouD/JFlxr4bIDNK5ZYX
 Za1nfKa0pgUS36dcSfQYOXJOmNKQlZ2xhIn3s80j0RF2sXn6N1ik2fnZnYt9CDPRV42KHPfWFp5
 OibeM754k/zqomz3JUYN30jycemq4ZizJP22y7N7/WZ1NKq2Z5jxEyxiPGRZpzCJUlK6WKDj9Tm
 qNjz/g+M8y1R4S/hXL7gtHHBWYTD6ysuNTVp/utRyPJoKITeDZJc6NulCPAXskEWT4k9HfwIWO5
 HQOtwUpAluHC29I4hU2lEBDJkHmLregIYdufzhJUVpxhn2wOYJ3knvkrx1DklftAaFgiqFAsyP2
 +cslEGWblAB+p6+WkVw==
X-Proofpoint-ORIG-GUID: aWUstJRnxHOoTTGkBzi0naNRP-4nmK5i
X-Proofpoint-GUID: aWUstJRnxHOoTTGkBzi0naNRP-4nmK5i
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX+EXdfh5K6QYn
 lZjAaQynwz+oiLo+TqCOhPm7PE3kZExeiYwfMZdixlFRUwvbt39qfijMU7SshjwN9k83Qjs2Jl9
 nC1bLjXNgeGyo8xqN5adJgXy90cCox0=
X-Authority-Analysis: v=2.4 cv=JodkP84C c=1 sm=1 tr=0 ts=6ae1d0aa cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=mO8_gwkcAAAA:8 a=uxOsGGhB1PPybffeXOwA:9
 a=QEXdDO2ut3YA:10 a=vr4QvYf-bLy2KjpDp97w:22 a=InTEqNb8lIr1xazlwGwc:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 malwarescore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 spamscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_033834_809816_C7D83D12 
X-CRM114-Status: GOOD (  13.63  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Add the new DP-specific QSERDES COM v8 header file and update the
register layout to use DP-specific status register offsets for
C_READY_STATUS and CMN_STATUS registers.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Fixes: 5b289913959b ("phy: qualcomm: qmp-combo: Update QMP PHY with Glymur settings")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)
Tested-by: Luke Macken <luke@phorex.org>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 187f0cd11f6c..cd14efc3c59a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -52,6 +52,7 @@
 #include "phy-qcom-qmp-dp-phy-v5.h"
 #include "phy-qcom-qmp-dp-phy-v6.h"
 #include "phy-qcom-qmp-dp-phy-v8.h"
+#include "phy-qcom-qmp-qserdes-dp-com-v8.h"
 #include "phy-qcom-qmp-dp-phy-v10.h"
 
 #include "phy-qcom-qmp-usb43-pcs-v8.h"
@@ -326,8 +327,8 @@ static const unsigned int qmp_v8_n3_usb43dpphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_DP_AON_TOGGLE_ENABLE]		= QPHY_V8_PCS_AON_DP_AON_TOGGLE_ENABLE,
 
 	[QPHY_COM_RESETSM_CNTRL]		= QSERDES_V8_COM_RESETSM_CNTRL,
-	[QPHY_COM_C_READY_STATUS]		= QSERDES_V8_COM_C_READY_STATUS,
-	[QPHY_COM_CMN_STATUS]			= QSERDES_V8_COM_CMN_STATUS,
+	[QPHY_COM_C_READY_STATUS]		= DP_QSERDES_V8_COM_C_READY_STATUS,
+	[QPHY_COM_CMN_STATUS]			= DP_QSERDES_V8_COM_CMN_STATUS,
 	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN,
 
 	[QPHY_DP_PHY_STATUS]			= QSERDES_V8_DP_PHY_STATUS,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
