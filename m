Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6591F606A328
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 06:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zRzybrIo;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=maVmE+fk;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=O5JdEiGf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0F+VuyFZ/XcZjhf14AU+3XSl/mrx6iSfCSEtke/++oA=; b=zRzybrIocb+w9G3F7MjL/YGFGy
	MSP/NDCapAD9iUw+Y+4uXjFsdIXN7CrWuT/U6aU+u/xN1k7Y4Yr0RZFAab57ln1wgdXym2fnocQbh
	LxHxeEif4ifyK+8q4GdMHZgWxQ4qd4wFnK0TmRsespHF6okVZFA2uqft+C4jUMhkrux5MJJ7JW0g9
	5MZb9j4LqdQkuBK9SCxGkxiAVbFVQGCqjex4wmDbzDeVScO+O2OD71ZeDcVKzypwiME4m3gEWKi+7
	fEHX+UoHOD7E1QQoj2F4wv4GRUHnUJsDzDFcZHAn6KbSC9yoyLVug/4wMoVBQB/Re13iLWmx8bKM5
	iljh3qfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPDnQ-0000000BNdK-0YY7;
	Fri, 06 Nov 2026 06:51:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPDnO-0000000BNcv-0eYn
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 06:51:31 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A640C4j3857022
	for <linux-phy@lists.infradead.org>; Fri, 6 Nov 2026 06:51:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kyb6DIRzyj92fp2kO/zPn2THkDfGJwbc9S97yxeZwD4=; b=maVmE+fknvWwjkXy
	0Xk2Jq332c3P09S6hmY15ylzHfmfI9Cay4PXx/OB7PtZugIcfWV8lyY5+YpDX3pc
	q5nJMVd4oQ3xvO/HOcyJvlCwSTa97JSfE3jvny/BDHyGN7+1q2UC83fLxIgs8MFt
	QPD+U4n3N11EEVetEs/emnqOjZ3mmQxMM5MQdrsjGJIBaBhVgSWAGgg0CcpTXV8O
	q48uaJuKA8oIy2Ce4LN59wMd4GGhRouwH9opAtiF2r6U+twVMEnrHrGo27Z+eggi
	F0aQ6Z0OEUcKWlAKb9sHwqLqzmYxjEwyH9hg6QMl8QYcvpYtrmuF/0R1sHpG0CYj
	eZnSuQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hs3p9sf00-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 06:51:29 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3b0afbf532eso399888a91.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 22:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793947889; x=1794552689; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kyb6DIRzyj92fp2kO/zPn2THkDfGJwbc9S97yxeZwD4=;
        b=O5JdEiGfM5kfVs07dPKkx1Z9cEb64uXkrX3h9A5h3AACKeza2EzK03vEfafWhMqSTQ
         CSgtU+cGB7UdGleWDP85cUp+t6TyyL6IByzNCJX2dMTqjocTHOcihKf2dkKjBS0aNz2T
         xsztRZ4Fu0DiuosqZFd5/2syVCfEog/+DeQAKuLNrSkn/FAOytvFZfFAHB+zcbFVNgj9
         hujkfQOvtoXsi3TuRUYKY59yyXzFg9xcwQd+ln6wGB4ns4yxhQTvuCOGYma1WRuGAR9m
         k83Gi0/3TEtb8NCtH3TbHk2k3xL27wgIMglYf8Lx3riTdadq6h757fiG3agD+Bqx/6F+
         g0JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793947889; x=1794552689;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kyb6DIRzyj92fp2kO/zPn2THkDfGJwbc9S97yxeZwD4=;
        b=Ife8n3JTbTjPHmcM9xb+jn3tFtnw1qxZ7yL+TccTq+lr9XHwoZ43WDMCK/ms1/7y66
         LTgq9lyGfPkcjt6K/wkHQeWYZrmJhoeGTl37UoLhnQB3umJpiHFfM0K7KZcBS9EB2d7w
         5yiMBc2FflI1PjPVoqQXU9jWQlC/gjkX5/RWsTiaKWLTtQwawjMmYdOuzTBBpZR4XUuj
         /8qhJOjDAmpbDYxLmkgPOOBb4fcDY7zL/awvruDGJBvusKDt0FufnZ/mHXKLSP6u2fyB
         M3JnA6cXy6A3Wr5zW4ctaFFSS/eb4eyQAxkL+t8V/KuCc8KCBsJmpb31lWkVw+gAMNXc
         mjSA==
X-Forwarded-Encrypted: i=1; AL+hErFMXvbtl+UgcE4vUWgTCiMUwKDHF8IRdgpruwEuwevhToUJ4fOmwYp0nzIxeOLjz+O3T0aCDequf14=@lists.infradead.org
X-Gm-Message-State: APuU4Z8F1Ua0/HCNEduCs2pa/2oP5rpHQFaGEy+gCUQhhbIGnAbZ8+cl
	zRnKTPGiOMq8bFhy9bCr5vetPCM8bSop9zdULFXHa3X2OQgb8mpxGFS+f36yXJDVIAvr439+An/
	nX+f5XvQacoeWYDkFtrhLOlplwiZZ5T3MuqEt6SmfrU41ET5K858ERfYaGylERbD0pTzB
X-Gm-Gg: AYBFou1NCroiRCm/xrr8VC+akfGOFEfO2WICsjvB0H2X1VgwrmMFoLlTPw5ZHOB4nzh
	sPjUOtP8r49RIfH0iVj9yeLs5z4dj5Hc8l73wPe58TAGsWgdSE5Xw94mVzJ/5biTQQqZPMrOp/I
	4plbhu4K8Y4Mxrto/uk4dqNddztptH/GgB8/fwE90/5QB6/1rHaBWjNhMiRa7hKGD/KtwZoeLR8
	rYvDIZhLZqJVw4OKkCmCTAakWfd4UexCQWTVYQgGzicdxGlZaf0YATIbwl4SGleNfgW/oeQjWy3
	Dr/tcMbRzoXpA93MkwIVj3BIYl40vOB7TMa7KqQOfS2pMsoSzCXlnSvKw37fcRS1cF5d4v8v8kH
	c/DzfRb2T5MkGIR2qmDXlO1EOdvmeyzqt32+vL46cHoYfbcPYIfNNSlSJ/tXUN/y9OKGIciH7iv
	lE4zhg
X-Received: by 2002:a17:90b:180f:b0:3a0:d265:3647 with SMTP id 98e67ed59e1d1-3b0db611621mr1396338a91.8.1793947888574;
        Thu, 05 Nov 2026 22:51:28 -0800 (PST)
X-Received: by 2002:a17:90b:180f:b0:3a0:d265:3647 with SMTP id 98e67ed59e1d1-3b0db611621mr1396308a91.8.1793947888002;
        Thu, 05 Nov 2026 22:51:28 -0800 (PST)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b0b313c0dcsm6597274a91.1.2026.11.05.22.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 22:51:27 -0800 (PST)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Fri, 06 Nov 2026 12:20:46 +0530
Subject: [PATCH v4 5/6] media: qcom: camss: csid: Scale the clocks with the
 CSI-2 link rate
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-hawi-maili-camss-v4-5-d528c7a797b4@oss.qualcomm.com>
References: <20261106-hawi-maili-camss-v4-0-d528c7a797b4@oss.qualcomm.com>
In-Reply-To: <20261106-hawi-maili-camss-v4-0-d528c7a797b4@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793947844; l=10252;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=vmW0WFYVRPz24pEtwcKfQPDH+nrDKAban0QCkqZK5so=;
 b=KR2ZqTTPAKBWmU4lU14qkZMiw4bVnuFGNajzqXYi1B6pZwK9NoS8GHpuk/emITY7o2orwb/GW
 YhHnJyEMkoABvaMooMZxGcigt08G3CBD8Na47kl6lFm87ZbYIYF4D48
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA2MDAyNyBTYWx0ZWRfX7QxQpl9Q4NpW
 ljYiYLxiMqUAy6HdgOiq1qN+meumVBQheFuS9LzPkYF9mMT0hUAr50MP31NdaJEFaOpm84E4pAU
 HdEJW6F9NyqyrfnOukOnupqQNF8ap3U=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA2MDAyNyBTYWx0ZWRfX7iEyDvzdV7BH
 C+WnF4AhmzPibdecOu0o5yGNKNxDdcGyrrUeCVyepsP3jA9PpjGksSch2/WBNRDZNnvIuubi+JZ
 kQkj4t7B5yb8TaoE1qo4mNHTC8ZXol3vFSrCBAPd6PouOxhJlcwewevXDQPk1nJsK8LfR8nCCz+
 QQjhgJxDF1+3BGxMs/JNORgM0tsmHYaHaCa4qnjMqr416A6jPhZGqBfJkhtzNob/vY7tNlbto5o
 KExYz1jVS+k1pvCyqG+BQyVBatNCz3YC9tyC7HNeSslyay2e1bMGVs9BmOnhIaLsOy0emKLfZTE
 dyysqv4hPU1inIXjPyKC9s2NneI3tDO3z/s8wKmAwIAdZTbk5HAskgOyTT8Jsx6tekJCEGLpHs2
 RhV/mqwP14D/AQEVHoBacubY/tTxvddIGTxMGH2+XHchtCtu3EoiV7Ln3DhHdixmR181211YxLx
 WE2/1HXpZH0PyNn0+mw==
X-Proofpoint-ORIG-GUID: TaydozkQ_4Y0tm5S0O9gLLXf2VoY6iOU
X-Authority-Analysis: v=2.4 cv=f6Pdl+yM c=1 sm=1 tr=0 ts=6aed78f1 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=1mbsq_4py20XrWrvqusA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: TaydozkQ_4Y0tm5S0O9gLLXf2VoY6iOU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-06_01,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611060027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_225130_237494_69BAAB8C 
X-CRM114-Status: GOOD (  31.12  )
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

From: Loic Poulain <loic.poulain@oss.qualcomm.com>

Only the gen1 "csiN" clocks are scaled with the link rate of the sensor,
the CSID core and CSIPHY receive clocks of all the other SoCs are set to
the first rate of the resource table. A SoC can therefore only be
described for one sensor bandwidth: the lowest rate first breaks fast
sensors, the highest one burns power with the slow ones.

Compute the minimum rate from the link frequency for all generations.
The CSIPHY passes each D-PHY lane to the CSID over an 8 bit wide
interface clocked by the receive clock, so that clock has to run at the
per lane bit rate divided by 8, which is link_freq / 4. The core clock
must not be slower, hence the same minimum for it and the cap of the
receive clock at the core rate. The clocks are matched by suffix and
voted for with clk_set_rate_range(), as the CSIDs of the recent SoCs
share them.

Up to 1.8 Gbps/lane the selected rates are unchanged on every supported
SoC.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss-csid.c | 208 ++++++++++++++++++++-----
 1 file changed, 169 insertions(+), 39 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csid.c b/drivers/media/platform/qcom/camss/camss-csid.c
index a00791b00feb79bcdea7dccf6d1d120f01a8c485..26d754d72b66747abfa02fbbe3f2b2bd662b6d40 100644
--- a/drivers/media/platform/qcom/camss/camss-csid.c
+++ b/drivers/media/platform/qcom/camss/camss-csid.c
@@ -16,6 +16,7 @@
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/regulator/consumer.h>
+#include <linux/string.h>
 #include <media/media-entity.h>
 #include <media/mipi-csi2.h>
 #include <media/v4l2-device.h>
@@ -532,72 +533,197 @@ const struct csid_format_info *csid_get_fmt_entry(const struct csid_format_info
 	return &formats[0];
 }
 
+/* Match the core clock of the CSID */
+static bool csid_match_core_clock_name(struct camss_clock *clock)
+{
+	/* "csid", "vfe0_csid", "vfe_lite_csid", ... */
+	if (strends(clock->name, "csid"))
+		return true;
+
+	/* Named after the CSI port on the SoCs with a gen1 CSID */
+	return !strcmp(clock->name, "csi0") || !strcmp(clock->name, "csi1") ||
+	       !strcmp(clock->name, "csi2") || !strcmp(clock->name, "csi3");
+}
+
+/* Match the clock of the CSIPHY to CSID interface */
+static bool csid_match_phy_rx_clock_name(struct camss_clock *clock)
+{
+	/* "csiphy_rx", "csid_csiphy_rx", "vfe0_cphy_rx", ... */
+	return strends(clock->name, "phy_rx");
+}
+
+/* Match a clock whose rate depends on the CSI-2 link rate */
+static bool csid_match_scaled_clock_name(struct camss_clock *clock)
+{
+	return csid_match_core_clock_name(clock) ||
+	       csid_match_phy_rx_clock_name(clock);
+}
+
 /*
- * csid_set_clock_rates - Calculate and set clock rates on CSID module
- * @csiphy: CSID device
+ * csid_get_min_clock_rate - Get the rate the CSI-2 link requires
+ * @csid: CSID device
+ *
+ * The CSIPHY deserialises every D-PHY data lane into bytes and passes them to
+ * the CSID over an interface which is, as per the CSID HPG, 8 bits wide per
+ * lane and clocked by the CSIPHY receive clock. That clock has to run at the
+ * per lane bit rate divided by 8 at the very least. The link frequency is the
+ * DDR clock of the link, i.e. half the per lane bit rate, which makes the
+ * minimum rate link_freq / 4.
+ *
+ * Qualcomm recommends clocking the CSID core at least as fast as the CSIPHY
+ * receive clock feeding it, so the same minimum applies to the core clock.
+ *
+ * C-PHY maps 16 bits onto 7 symbols and needs a different ratio, but CAMSS
+ * does not support it so far.
+ *
+ * Return the minimum rate in Hz, clock margin included, or 0 if the link
+ * frequency of the sensor is not known
  */
-static int csid_set_clock_rates(struct csid_device *csid)
+static u64 csid_get_min_clock_rate(struct csid_device *csid)
 {
-	struct device *dev = csid->camss->dev;
 	const struct csid_format_info *fmt;
 	s64 link_freq;
-	int i, j;
-	int ret;
+	u64 min_rate;
 
 	fmt = csid_get_fmt_entry(csid->res->formats->formats, csid->res->formats->nformats,
-				 csid->fmt[MSM_CSIPHY_PAD_SINK].code);
+				 csid->fmt[MSM_CSID_PAD_SINK].code);
 	link_freq = camss_get_link_freq(&csid->subdev.entity, fmt->bpp,
 					csid->phy.lane_cnt);
 	if (link_freq < 0)
-		link_freq = 0;
+		return 0;
+
+	min_rate = link_freq / 4;
+	camss_add_clock_margin(&min_rate);
+
+	return min_rate;
+}
+
+/* Get the lowest level of a clock above min_rate, or -EINVAL if there is none */
+static int csid_find_clock_level(struct camss_clock *clock, u64 min_rate)
+{
+	int i;
+
+	/* Play safe with the highest level if the link rate is not known */
+	if (!min_rate)
+		return clock->nfreqs - 1;
+
+	for (i = 0; i < clock->nfreqs; i++)
+		if (clock->freq[i] > min_rate)
+			return i;
+
+	return -EINVAL;
+}
+
+/* Lower a level down to max_rate, but never below what min_rate needs */
+static int csid_cap_clock_level(struct camss_clock *clock, int level,
+				u64 min_rate, u64 max_rate)
+{
+	while (level > 0 && clock->freq[level] > max_rate &&
+	       clock->freq[level - 1] > min_rate)
+		level--;
+
+	return level;
+}
+
+/*
+ * csid_set_clock_rates - Calculate and set clock rates on CSID module
+ * @csid: CSID device
+ */
+static int csid_set_clock_rates(struct csid_device *csid)
+{
+	struct device *dev = csid->camss->dev;
+	u64 min_rate = csid_get_min_clock_rate(csid);
+	u64 core_rate = 0;
+	int i, j;
+	int ret;
+
+	/*
+	 * Settle the rate of the core clock first, as the receive clock must
+	 * not outrun it and the clocks are not listed in a fixed order.
+	 */
 
 	for (i = 0; i < csid->nclocks; i++) {
 		struct camss_clock *clock = &csid->clock[i];
 
-		if (!strcmp(clock->name, "csi0") ||
-		    !strcmp(clock->name, "csi1") ||
-		    !strcmp(clock->name, "csi2") ||
-		    !strcmp(clock->name, "csi3")) {
-			u64 min_rate = link_freq / 4;
-			long rate;
+		if (!clock->nfreqs || !csid_match_core_clock_name(clock))
+			continue;
 
-			camss_add_clock_margin(&min_rate);
+		j = csid_find_clock_level(clock, min_rate);
+		if (j < 0) {
+			dev_err(dev, "Link rate is too high for the %s clock\n",
+				clock->name);
+			return j;
+		}
 
-			for (j = 0; j < clock->nfreqs; j++)
-				if (min_rate < clock->freq[j])
-					break;
+		core_rate = max_t(u64, core_rate, clock->freq[j]);
+	}
 
-			if (j == clock->nfreqs) {
-				dev_err(dev,
-					"Pixel clock is too high for CSID\n");
-				return -EINVAL;
-			}
+	for (i = 0; i < csid->nclocks; i++) {
+		struct camss_clock *clock = &csid->clock[i];
 
-			/* if sensor pixel clock is not available */
-			/* set highest possible CSID clock rate */
-			if (min_rate == 0)
-				j = clock->nfreqs - 1;
+		if (!clock->nfreqs)
+			continue;
 
-			rate = clk_round_rate(clock->clk, clock->freq[j]);
-			if (rate < 0) {
-				dev_err(dev, "clk round rate failed: %ld\n",
-					rate);
-				return -EINVAL;
-			}
+		if (!csid_match_scaled_clock_name(clock)) {
+			/* The remaining clocks run at their lowest level */
 
-			ret = clk_set_rate(clock->clk, rate);
-			if (ret < 0) {
-				dev_err(dev, "clk set rate failed: %d\n", ret);
-				return ret;
-			}
-		} else if (clock->nfreqs) {
 			clk_set_rate(clock->clk, clock->freq[0]);
+			continue;
+		}
+
+		j = csid_find_clock_level(clock, min_rate);
+		if (j < 0) {
+			dev_err(dev, "Link rate is too high for the %s clock\n",
+				clock->name);
+			return j;
+		}
+
+		/*
+		 * There is nothing to gain from running the receive clock
+		 * faster than the core clock, as long as the link rate is
+		 * still covered.
+		 */
+		if (core_rate && csid_match_phy_rx_clock_name(clock))
+			j = csid_cap_clock_level(clock, j, min_rate, core_rate);
+
+		/*
+		 * Vote for the rate as a minimum, as the clock may be shared
+		 * with another CSID which needs it to run faster.
+		 */
+		ret = clk_set_rate_range(clock->clk, clock->freq[j], ULONG_MAX);
+		if (ret < 0) {
+			dev_err(dev, "clk set rate range failed: %d\n", ret);
+			return ret;
 		}
 	}
 
 	return 0;
 }
 
+/*
+ * Drop the minimum rates the CSID votes for and take its clocks back to their
+ * lowest level, or to the lowest level the other users of a shared clock need.
+ */
+static void csid_release_clock_rates(struct csid_device *csid)
+{
+	int i;
+
+	for (i = 0; i < csid->nclocks; i++) {
+		struct camss_clock *clock = &csid->clock[i];
+		long rate;
+
+		if (!clock->nfreqs || !csid_match_scaled_clock_name(clock))
+			continue;
+
+		clk_drop_range(clock->clk);
+
+		/* Round first, so that the rate respects the other votes */
+		rate = clk_round_rate(clock->clk, clock->freq[0]);
+		if (rate > 0)
+			clk_set_rate(clock->clk, rate);
+	}
+}
+
 /*
  * csid_hw_version - CSID hardware version query
  * @csid: CSID device
@@ -707,6 +833,7 @@ static int csid_set_power(struct v4l2_subdev *sd, int on)
 
 		ret = csid_set_clock_rates(csid);
 		if (ret < 0) {
+			csid_release_clock_rates(csid);
 			regulator_bulk_disable(csid->num_supplies,
 					       csid->supplies);
 			pm_runtime_put_sync(dev);
@@ -715,6 +842,7 @@ static int csid_set_power(struct v4l2_subdev *sd, int on)
 
 		ret = camss_enable_clocks(csid->nclocks, csid->clock, dev);
 		if (ret < 0) {
+			csid_release_clock_rates(csid);
 			regulator_bulk_disable(csid->num_supplies,
 					       csid->supplies);
 			pm_runtime_put_sync(dev);
@@ -729,6 +857,7 @@ static int csid_set_power(struct v4l2_subdev *sd, int on)
 		if (ret < 0) {
 			disable_irq(csid->irq);
 			camss_disable_clocks(csid->nclocks, csid->clock);
+			csid_release_clock_rates(csid);
 			regulator_bulk_disable(csid->num_supplies,
 					       csid->supplies);
 			pm_runtime_put_sync(dev);
@@ -739,6 +868,7 @@ static int csid_set_power(struct v4l2_subdev *sd, int on)
 	} else {
 		disable_irq(csid->irq);
 		camss_disable_clocks(csid->nclocks, csid->clock);
+		csid_release_clock_rates(csid);
 		regulator_bulk_disable(csid->num_supplies,
 				       csid->supplies);
 		pm_runtime_put_sync(dev);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
