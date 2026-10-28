Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407C1606A31D
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 10:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GNbp0sTF;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Ex41vhHj;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=c3Fnvhd4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5gBoY8wfPlP+8VdQ3b/3zs5lbCBfsU3k8fwsM59d5Ng=; b=GNbp0sTFi5SOaPcGPKLuNUj8Bh
	NyVm9PVPgAtgtt3nAK4qxJwdSvcxWbMhBhITX6PEd5CEeoWzyMLDIG20n2vL7zhZAVat469BrU8rI
	iXX6i2fwDkxhXcOH1XYTc5sy0BV8FFYqGxuVZa72JSiHdXAcSE7rhZcj9n9JZARPZiWoC45mNFUek
	Yoo70/qEe7fY9OaTfTce3+D3nv/hMD6a/ZQLP4BY7p6FtxiX1qzThifADmV96smdCAGtLiGHd1e8E
	LTUgMelLBcj6CFt9p3Hrb8rtiS5b1/x4jOnJGZ7cA5Nk1rYFekXU2vb3PKFlb6Cpub+cfJBb74RRh
	doKdU3kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM140-00000006mHA-49Mb;
	Wed, 28 Oct 2026 10:39:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13w-00000006mG3-2VJG
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 10:39:21 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69S8KAxi066164
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:39:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cOggzBuXe5PWUbLSzi+bwdNe7VzMo5TdvnBdqMxg6RA=; b=Ex41vhHjCXZfXRf3
	M5h5ID5ktYSlPWFWs43rtvcAEPFiAcZDLTQa3MhrKPvDDfxT6f15bqD93gFqQcpn
	jPjh84iD9iJQ9r3PmqdWhleVrOro9AjVZmov59xGcmsrvJbPiIKC9z/rIZRaZv8Q
	YcQFQRYAhLEinnY7YcBCRRXkPhHZ/sv2+aZpAdKn/yr2uejDQAplgtROaEIiTEnx
	DXUWAxGRTNu/L37zlZI3KC7Y7TgApZB5rUj3I/FoXlmtuKkVKSR2Z1bSsKL0AVYl
	K8UUt9VnaZpuE/CGTgjLfCg/6UR88gL9BsakyhxwF69zjJWsVX1arqLoqSuGGJ3W
	UtkLYg==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjy6g3p9j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:39:19 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-36637676140so1308557eec.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 03:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793183959; x=1793788759; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cOggzBuXe5PWUbLSzi+bwdNe7VzMo5TdvnBdqMxg6RA=;
        b=c3Fnvhd4FjgX2Ck0+GtaDaEDkFLrl0dqKQpmuJfbdJr+TOpVhQrecbP3DCmNaCNkSc
         wONWAThTiy2HshMHwAmhU4JwrXOssSV4FFktmSAYXvGGBrj+hV/iSqVK8tX4GgvIXCW3
         2jwE4YOz/Hl/szj043epysArYuZLutDK6fssTBAV+6Ncq12gf3F5VojNVOdeyKGOS9mQ
         NoMpA7TLEh1SRsYC9sNeiO7vs9gkSbQUGw4b+S1VKYwDeEJSVB6S2YTTaCVgQhVy0C7X
         rks3yxG0oqtxrWuyBx9ByM9ItluiD/3tlDd+k/1NyLkttDO6XsrZxaXBRq4QrP0RPxMG
         d4AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793183959; x=1793788759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cOggzBuXe5PWUbLSzi+bwdNe7VzMo5TdvnBdqMxg6RA=;
        b=lbpwRXrWd3Qe+TkrNqAa6yrE6Gru6GNnwF2GSIbeQ9m04cAKwkzg5B/KsfhB2h7hXB
         wV+O9z/9ntZK6nJbWb2wamxvA1Bn6m04XK9C+56akKJlxSuHe+kfHkcyEmzaCgDIleF9
         b5KYTDrlJS50QKWWXuEXC4+J2sNEoAFzDXRKlq9kEb/O15+Yn3k16Ap4jXw5egxNCUg2
         W9qJdTr2qfpcuv2vj8aIixz/E9/1HZWfggSgZ3ItaD4WhxydBYLKhmDOvZnwN5QDX8lv
         ffP7cJPMwEws8iqanOtRVTvIZeIL5kRFLc1ZnkUqMGuDwR7+Pw0J9/9QhjYJQY199ryj
         qKLw==
X-Forwarded-Encrypted: i=1; AKwUvBxUg47xpKnh+AVOxccMg3KHOJ9XZtwerCo0VbKcsRTAOb3cozcb9uqfNVQwAqyrA4pyUrojkLhXqvI=@lists.infradead.org
X-Gm-Message-State: AFq9FYKZXEf4FlYvZM5rj+LqbvDM8B6NEpCn5feJOpfWaGLaXJizawl3
	0fqO49obVT9ZhowKpgFwRCZniByQvLojNrBGtnGX3ObU7rTA8OfVwtscTxg/rZtM6cVi6sLHJHG
	JfLPvVn75yJXSb+X/vpvwI1ylr7H5AttgEPFCkUz6Epqh9H/H8QjbEvCf0Dt3/eNXo8Rg
X-Gm-Gg: AYBFou3sN4sNLfI70QbYkY1ZuERzuYf7eSCKZA1Lp54b5eH0pXWi2csZIhBI+XFGNpA
	qrqxrZ/5TClO3yQge4fesypl8RzS0NvqC/4GLv0+AEDSPj5Ho3sv0cVKBtEjJ2ujQol/2LfxPxP
	XTniYJXRZoVM35h2b2uCwogQZY36P4K+l4BKUY7KZmOE4syrPKTJkaJfvMr76mNGzj0BlVU2f2R
	HXQfBgZflNqTss/6cs0r5knUOvdV0TGaUjqsHR3Ep2uxU5s5QZHOx7ocdoV1rYbqD0ewaRhLeNt
	0lI7U29F3XgdQTN8E8bbif3VHFgFqiTg4qysJCh0l+XvxnMM/q2VDyuyQ4L7KbUkzbQTC4L3ycO
	lqtzUuw/QdF4Lccj98dgZbhDDOPul52a8NrurYp5ykI7N1gPSyOllf1nnxtb1shkqO8E2znxSiV
	8=
X-Received: by 2002:a05:7022:6989:b0:183:7d42:cfb5 with SMTP id a92af1059eb24-1a6cfa0c476mr3695710c88.19.1793183959146;
        Wed, 28 Oct 2026 03:39:19 -0700 (PDT)
X-Received: by 2002:a05:7022:6989:b0:183:7d42:cfb5 with SMTP id a92af1059eb24-1a6cfa0c476mr3695659c88.19.1793183958485;
        Wed, 28 Oct 2026 03:39:18 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1a75e5c6d4fsm8340186c88.14.2026.10.28.03.39.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 03:39:18 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 16:08:05 +0530
Subject: [PATCH v6 09/11] phy: qualcomm: qmp-combo: Add per-link-rate
 auxless/LFPS and drive level for Glymur
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-glymur-phy-v3-v6-9-1f1d2e565a66@oss.qualcomm.com>
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
        Jeff Roach <jeff.roach0@gmail.com>, Luke Macken <luke@phorex.org>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793183900; l=4357;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=3qT30A/YMPDhZ+MpLmMclyxDiHTDhR4lXcagSkGGyhc=;
 b=N32otEYMycrrVUbiLKxd65HewJ1OTs55AMU4yQ0Dd2DDTU7AYkDw3VI/Kpri0vyyi4Fhe3i1P
 StPcxntzNSQB2r7dOGUVrW7IgGz3olvVov/KWYKQHF3Y2PhxSwfGRHF
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfXzQFeO81IFRxI
 Y6Y9XEL7AmHN+lwBNgE6RWdUidNM4rXNxR9pBZ+NICvaRXsw9pYLN+nPm8zarIYDs+dcnWPZP1M
 dMdo+BJgpjM9hmR33RyA6xliRQzxK2pru7BTrAWfsIq2kbyQuqEKKFoJN0m3CUd2nUOV5Aj1nsK
 AF112J9wG1FHMNL3hS51NtuqKwhOmI5rhvcJ1I/eqnLxwfpM3Uiq81psBPE8rd9d8yqCeGHs+vA
 gutoJn8mSn43AcIH23FI1sQl5mWjYdpcjXqCjETvJ1XBxcc5qCUmaW5tspYQgkOM4+8kcpH7qiY
 PFn12tQ0o7MYjYRiIvABdP6AH6SovPf960O12vfKAJx8u/8p6L3DM1s8PSG99dzjVimwXfWRs1T
 0fNLGKmphdSJfPLkwpYwtAhJv7s/LI+2sisdsq7OwxQ/76/8MP4oD/OE7hIBs/STMkasM2hWC0E
 kFQ2EA6Es0wm0bMFCUA==
X-Proofpoint-GUID: yZYFkyfn8P-UYJmAJNWEMu7c8iQz-29D
X-Proofpoint-ORIG-GUID: yZYFkyfn8P-UYJmAJNWEMu7c8iQz-29D
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX0NK/gjCn0Nph
 GEyOVoVdr5Nw+CdGZJ0kzo9/BejMefY5G9E9z9HD3KUnVfh9sCNVIQ437BHYHJW+oxKFf9pWwTu
 Dkbwf2sE/Ib6ZMMOU5iSgY24UktJHck=
X-Authority-Analysis: v=2.4 cv=dKgzC+Zb c=1 sm=1 tr=0 ts=6ae1d0d8 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=mO8_gwkcAAAA:8 a=tE633ojKFf1lYKHj1RUA:9
 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22 a=InTEqNb8lIr1xazlwGwc:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0
 suspectscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_033920_651759_C4C12C55 
X-CRM114-Status: GOOD (  15.22  )
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

Add per-link-rate auxless setup/silence cycle and LFPS period values
instead of using fixed constants:
  RBR (1.62 Gbps): setup=0x03, silence=0x06, lfps_period=0x00
  HBR (2.70 Gbps): setup=0x04, silence=0x08, lfps_period=0x11
  HBR2 (5.40 Gbps): setup=0x09, silence=0x11, lfps_period=0x33
  HBR3 (8.10 Gbps): setup=0x0f, silence=0x1a, lfps_period=0x55

Add per-lane drive level lookup from the ln_drv_lvl tables based on
the maximum voltage swing and pre-emphasis levels across all active
lanes, replacing the hardcoded 0x1f value.

without this change following error can occur:
- Link training failures or instability at higher rates (HBR2/HBR3)
- Incorrect LFPS signaling timing, potentially breaking USB3+DP
combo mode entry/exit

Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)
Tested-by: Luke Macken <luke@phorex.org>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 39 +++++++++++++++++++++++++------
 1 file changed, 32 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 51d7102aefc3..10b3efe48721 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3945,21 +3945,47 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
 static int qmp_v8_configure_dp_clocks(struct qmp_combo *qmp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
-	unsigned long pixel_freq;
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	unsigned long pixel_freq;
+	u32 auxless_setup, auxless_silence, lfps_period;
+	unsigned int v_level = 0, p_level = 0;
+	u8 ln_drv_lvl;
+	int i;
+
+	for (i = 0; i < dp_opts->lanes; i++) {
+		v_level = max(v_level, dp_opts->voltage[i]);
+		p_level = max(p_level, dp_opts->pre[i]);
+	}
+
+	if (dp_opts->link_rate <= 2700)
+		ln_drv_lvl = (*cfg->ln_drv_lvl_hbr_rbr)[v_level][p_level];
+	else
+		ln_drv_lvl = (*cfg->ln_drv_lvl_hbr3_hbr2)[v_level][p_level];
 
 	switch (dp_opts->link_rate) {
 	case 1620:
 		pixel_freq = 1620000000UL / 2;
+		auxless_setup = 0x03;
+		auxless_silence = 0x06;
+		lfps_period = 0x00;
 		break;
 	case 2700:
 		pixel_freq = 2700000000UL / 2;
+		auxless_setup = 0x04;
+		auxless_silence = 0x08;
+		lfps_period = 0x11;
 		break;
 	case 5400:
 		pixel_freq = 5400000000UL / 4;
+		auxless_setup = 0x09;
+		auxless_silence = 0x11;
+		lfps_period = 0x33;
 		break;
 	case 8100:
 		pixel_freq = 8100000000UL / 6;
+		auxless_setup = 0x0f;
+		auxless_silence = 0x1a;
+		lfps_period = 0x55;
 		break;
 	default:
 		/* Other link rates aren't supported */
@@ -3969,18 +3995,17 @@ static int qmp_v8_configure_dp_clocks(struct qmp_combo *qmp)
 	/* disable core reset tsync */
 	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 
-	writel(0x04, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SETUP_CYC);
-	writel(0x08, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SILENCE_CYC);
+	writel(auxless_setup, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SETUP_CYC);
+	writel(auxless_silence, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SILENCE_CYC);
 	writel(0x08, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_CYC);
-	writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
+	writel(lfps_period, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
 
 	writel(0x3e, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
 	writel(0x05, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TX2_TX3_LANE_CTL);
 	writel(0x05, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TX0_TX1_LANE_CTL);
 	writel(0x01, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_CFG1);
-	writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
-	writel(0x1f, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN0_DRV_LVL);
-	writel(0x1f, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN1_DRV_LVL);
+	writel(ln_drv_lvl, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN0_DRV_LVL);
+	writel(ln_drv_lvl, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN1_DRV_LVL);
 
 	clk_set_rate(qmp->dp_link_hw.clk, dp_opts->link_rate * 100000);
 	clk_set_rate(qmp->dp_pixel_hw.clk, pixel_freq);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
