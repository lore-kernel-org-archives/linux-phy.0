Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8033560A2602
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 10:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TQUkvOF6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=MlnyKP6I;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=dq9ycrHj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8AYbTYqqP/eBVngItk+IvSA5uCBc2JP4V93KFlsa2zU=; b=TQUkvOF6S9x9SdgQZw10HwELiO
	7/7LQvsRWb2/PY3/e5sY5xNFZYK5evvI83EeY2ywAaL8TBtAluW+1IGQH1+M8WuquxnsYjKDHBXax
	/Gyb4ZP30f1SYp240sb+WsJQkdxlUUst0KSnqrZsqKuU0SvJpphN0++hJkbd6EWaLacgDgCrm2C+V
	9oOe3fvnE/WQH9rrKVbF4kJJg3DcXp9uHsIYcPXn9sg5pPvEo2C+nVxU4dDbxTWIzf/1g7pIGXJwx
	I5WEGMbk/aLv98gtFiTZeOhe0mf/NJU1ILY0ILsIhdBuPxhYDZZGfBwqi+14rfqwfxCepruwtVVeG
	OluA9lqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13c-00000006m2d-3zgB;
	Wed, 28 Oct 2026 10:39:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13W-00000006lx4-0Gd5
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 10:38:55 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69S8K4Sn557251
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:38:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1DmnsPu9LkHnfYUxkO27zCm2xtQYkAcumr5i+xtwZnk=; b=MlnyKP6IIrteuLZa
	xrqvjqkzp9dBygSIxrGWCfNR6rbRu7P2wnRvPrqQSR8OdPixEolQuUSTmoHiVr/v
	4KH0rfMm3xV565D1zyk/lMh0Q9RxIhaFStm/uGtCf1yHkwXvjEK22+r1ZEAh/t/G
	ub8BTHlDGyhcvCqywLuVd8yUV14zfmv3aXXpDCOyt4m/7a7Uj6dK+3GhrV2aW0d/
	BbCuwdoH7s4lHLlbxnCt1UV+AFKmWcGBjwFkhHti4P/FDuWefFmJgag2F3yZ8cxI
	T8jtTYEJZse4qx0y1O58OTWuGbECBCV2wwcvUdENOuNJuzbjp3S0bbXcw4ze4eas
	LANdGQ==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk82tsn7j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:38:52 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-147be78cd56so2520538c88.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 03:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793183932; x=1793788732; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1DmnsPu9LkHnfYUxkO27zCm2xtQYkAcumr5i+xtwZnk=;
        b=dq9ycrHjgu7dJYONM8RmARS0MIs9Ya4d7gbf6gBAR9LJMu9SttMHPkgdVu7AfYvDmt
         69KTyAF2xAx+UwL9DrryHfYeEseDG/qtF0F30rDUBq56cPZO1vVuvBH0Wcs5ujR3QPLO
         8sXH/IdMqYzwMnC1Zf/zRI+TKr4wnwXsgKd2b0b4mWlJD5THpVq6sIC7zSsOe0UHQd3c
         BKRvyPDZKdOxu8bfUYSJG24nSdxySaEkDVNVFzi2rlEXApNEUA47V06quuZ386Wngr5n
         kLYkOr2wLDIQ7FqGo5toVFlIFKmPtsEGdgQ5Quh+ObcyasZvslZezQINSIG1a2xf25YZ
         HPNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793183932; x=1793788732;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1DmnsPu9LkHnfYUxkO27zCm2xtQYkAcumr5i+xtwZnk=;
        b=uhAIn8rvpkg3coJZHGf2IgiBmqDwNHY9q689jyiPgKBRcgUH3mStPbJCIloZ3F0kta
         bQ8+4ykwRh/C9HR9cajl+iL3IlRBTIux/EmIi577zse8iFNWQm0+2Jp5gnkPG3GcqBQ2
         CdeG5DLJnXZqX5kF96qEZPuALLgehkBMPwHfzasfgAPf2x6yaaK/T4+A/t7n4WuZkWNP
         jGDI8KM8PzTa8J7O8daJpwCoVj3aWNWUmfm2DXJY2KgoVrDQBTXCSdXd06A7tT/LSKqB
         +L32htjVrOhYvGmJbaXMoGJwexaii+DdM2nL2BQL89UgQm03UyA8w6qesPivD/ztVCYi
         XbUQ==
X-Forwarded-Encrypted: i=1; AKwUvBxk/A3k9kEXV2K7r0BNaQjA6LXzBJBHI2ZZRQ/A3sXiiO/4U+Zz/Bzi9ZRKJs3wVTmioQfj5W3B9O4=@lists.infradead.org
X-Gm-Message-State: AFq9FYKB+3p3u1WV3HzH6D9AdjzaahaOS8TjNK0GBB02MNCJ4F8oHip/
	DIiXNxt6gSLN6e8rGXiurQxZ657QHC5DhTZFwHqSrAL6rwct5cG3dbbowSBUOsezZIPnqJgV2+v
	5Fz1CmR79a8HkeQhLCru0TxyDkWFCZgAc/XSF4+5ajPeUNioTmH+XqTlhizATfJU6AniT
X-Gm-Gg: AYBFou3M18PdPenrV4GJchE1Tc3afkfX0zqorkQOiEbETmJ/Cz/S5jDKUOS9/302G5t
	KH5rIeojiU6795yZaGPfaWrsQC+Oog0yERVb/7/4RjK9eXxQEkIu2actv6zbE2LFszE5drK81z1
	Ko4qhKBtfzp91Omholv84a+/Ik5O1CJ2ejyAE2josXj/+WcEpYE6HNv/GtoJGiWcvwGqvGu4QRt
	lTfrSOuG1jbaJYsOkTnYyDXNYoMlwIwmMuRdRTdt2082erHOiUNHsrjB8WhQWKZx+UqFwt8C2B9
	FlwJxsNRejIrtdIdL5ziQjrHynElCehMR5V3STfhsxpEyMaScIQlQ6ofFyI+IN1paCNPH2G3uzO
	SLNbHrn7rVRniOIBYkzj1B2/1waKWAKqfUuHP7tb2nfDVlydEvDLfxfgtJnl4YPc4mU1mSEHrhY
	0=
X-Received: by 2002:a05:701b:204b:10b0:194:9e7a:3ba2 with SMTP id a92af1059eb24-1a6c800e5acmr2967044c88.2.1793183931553;
        Wed, 28 Oct 2026 03:38:51 -0700 (PDT)
X-Received: by 2002:a05:701b:204b:10b0:194:9e7a:3ba2 with SMTP id a92af1059eb24-1a6c800e5acmr2966998c88.2.1793183930839;
        Wed, 28 Oct 2026 03:38:50 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1a75e5c6d4fsm8340186c88.14.2026.10.28.03.38.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 03:38:50 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 16:08:00 +0530
Subject: [PATCH v6 04/11] phy: qualcomm: qmp-combo: Ignore Type-C
 orientation for Glymur DP mode
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-glymur-phy-v3-v6-4-1f1d2e565a66@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jeff Roach <jeff.roach0@gmail.com>, Luke Macken <luke@phorex.org>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793183900; l=2505;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=vJCG3Igx+o3iKS2uCeMJkCfwOhV1lYTiyUt2vCdACQI=;
 b=i6srCDerdX7UTdkxOZ9DwZFgpi8lttjaccsdR1KmJ3FNLQdXp5Z3u7yc2wllcHcjDptAqHIGC
 NcqICQf/cUqDLhYjXpS+J/PHK09fKFxwhT4clFC44TJ9NUU+yWj8ieu
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-GUID: fNokaPXySvhMSWvuzt80NN0DlBaT35bo
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX3BVcgCkDe/GD
 Gl8SEdrcFVmaHGcFdd9Tpqf++7S4fJCVyA0fuTh3hkebzO/fKBjhWmANTnR+wj5FrstzZKoiHvD
 C+ksYHpiUBDqOIH5WPyowVY95ISMM3Q=
X-Authority-Analysis: v=2.4 cv=Tr1zFzXh c=1 sm=1 tr=0 ts=6ae1d0bc cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=mO8_gwkcAAAA:8 a=I9iHhWb_IStLGF-kurEA:9
 a=QEXdDO2ut3YA:10 a=vr4QvYf-bLy2KjpDp97w:22 a=InTEqNb8lIr1xazlwGwc:22
X-Proofpoint-ORIG-GUID: fNokaPXySvhMSWvuzt80NN0DlBaT35bo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX5UhGzJkZRzGY
 KkVUDeTzAxaFVK020tEAUIaAOIMlZt1VQfXOpYmCED1Gfd0UDA8DSgO78aAsUeFv7mq5IBUggYq
 ZbOhmZi8uYdvdQ0DoFaQSPZYtcGpdeswrv4gFU92YfWx+pFShs9wS2Hxro3zWoZFzv7tyK912zW
 XN5UwFj9bIJQrUXZwMFZtRmzrvlOd+8IKk2eERFgDkSDMU66fihwonARJXvNoQmNBhknS1z/rrx
 IXq3rztXVob6hdCoULTbtwniS4Imou0NzVhdHtP7ng7mep4Ts/y3vr1aPI0HMYsPBlhd6K1WYiu
 0o6lGLrpCY653qAnQssaDZk9s6S7hetjIBdtNcE/2K0qi5ou2vRrrAMAbPrZjnJWkuB7onkVmvJ
 dPqLLQBMvYsGkXJLVEV0tBtw95jLLMn7GrbB3gUAPVOXTkFD5Zn6ZV0yGCnRCVRa25YhdQdi9xt
 tKt8uQy0ICLbt66VDDA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015 phishscore=0
 impostorscore=0 malwarescore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_033854_231541_086E7134 
X-CRM114-Status: GOOD (  15.81  )
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

Glymur platforms use a fixed DP lane mapping and do not support DP PHY
mode reversal based on Type-C orientation. Add a configuration flag to
ignore reverse orientation during DP mode setup and enable it for Glymur,
ensuring that QSERDES_DP_PHY_MODE is always programmed with the
fix mode value (0x5c).

Fixes: 815891eee6687 ("phy: qcom-qmp-combo: Introduce orientation variable")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)
Tested-by: Luke Macken <luke@phorex.org>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 71f5e8ccfabe..062ee4397171 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2565,6 +2565,9 @@ struct qmp_phy_cfg {
 	int (*calibrate_dp_phy)(struct qmp_combo *qmp);
 	void (*dp_aux_init)(struct qmp_combo *qmp);
 
+	/* Set if DP mode configuration should ignore TypeC orientation */
+	bool dp_mode_ignore_reverse;
+
 	/* USB4 specifics */
 	const struct qmp_phy_init_tbl *usb4_serdes_tbl;
 	int usb4_serdes_tbl_num;
@@ -3429,6 +3432,8 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
 	.configure_dp_clocks	= qmp_v8_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v8_configure_dp_phy,
 
+	.dp_mode_ignore_reverse	= true,
+
 	.regs			= qmp_v8_n3_usb43dpphy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3622,6 +3627,7 @@ static void qmp_v3_configure_dp_tx(struct qmp_combo *qmp)
 static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
 {
 	bool reverse = (qmp->orientation == TYPEC_ORIENTATION_REVERSE);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	u32 val;
 
@@ -3635,7 +3641,7 @@ static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
 
 	writel(val, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
 
-	if (reverse)
+	if (reverse && !cfg->dp_mode_ignore_reverse)
 		writel(0x4c, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);
 	else
 		writel(0x5c, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
