Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8B3606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 10:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=B8qoqPvA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Ss0pvhSg;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=BVRIoZho
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zYXEWGh9wBrmQ7b+YmNRJ9uZ1ziqdCDfoRHFjsyKf1w=; b=B8qoqPvACde8ZR0II/LH1TzaHr
	gbGQdMYpMHHrIyjjVTzDUyX2rpp3ci3iL3ThhlxONbtLjKgxIE1Ds0EPlnzno859ZRrzcEp44e6ap
	CVxBMZ1ROQfb01YBHxDZEwwwT9pMQxqbEVUEbOgJKq5SDFC7vQP9ga4+Oifp3h/F98MlBxbcax8/B
	OB3t936caeHR3ImVieprve9Esgd/ztDNY36JfiRoQANClv6YUB+XNb6M7P04tIX5CsN/bpw9JsDrM
	H3JPUvsT8tztxu2uJS9z8+rZvm5kntpEnE2eKGNsONprx3UqTtL8dakLZgvWOEN1jtSjJXVLzBHPW
	iTso3KgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13u-00000006mFL-3rRV;
	Wed, 28 Oct 2026 10:39:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13r-00000006mDU-3Gt1
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 10:39:17 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69S8K4Rx1167702
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:39:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aD5t7JOukG95iTHOP3pJ3yfvTJMi39Agt8nuM/lwlqU=; b=Ss0pvhSgecEXLu1v
	Cs0hyMGOf/utTX+HF5iH2Jip0Qt1zH9F+cOgLbxlpykKqD/CHFF4jKDneGU/QD6v
	P8A0A+Vkun5uSLl28p9qgTidjLZA3Tc92lpZ2MQ/0HpqXmfJ267OlZOytxgEBisL
	gczbCrAXoq5WgU0NuPAb0FnfptHn+SDSd9LbX21df/TBFzVCQfti6hALdNfRjhbJ
	pdy3A+BLueTRtbF81zJ1eZJLYv5z0Yamwr3FqmDvoDfJfdDvFQMDUfi7NR0/2Vhs
	81RQ7sRhbH4iPB4HRqwTY9tQHb/1mdY4ztJ5LQnkZhxUZPyjJrJ7u9Bnn5vGCrpt
	+/qTFw==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk7g7hs9j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:39:14 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-1663fb7e005so1064902c88.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 03:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793183954; x=1793788754; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aD5t7JOukG95iTHOP3pJ3yfvTJMi39Agt8nuM/lwlqU=;
        b=BVRIoZhogMO639Bkmzvu/RquUJDg/EIa+cl+fkDrLn4drePDt0cItZVJEx/W/UL8O0
         cBwdHK1ozfD4TRQTE63T83C2yXWXCNTNwi7v0m2hUPGzygjRxwJF6gznP61eJ3fBg3SH
         7A0QbjqzzYF0NKx//MD/EVV3GQf2B/NPqyysxR9S+n3fiksvbpjKUy30/rYaxDlWLNkB
         /2r3VKp4WKsPLfLN2uMp+sqRF6Z8C5d0Hp9DndVN9EWKovv0p8DqZJajeGrawXonp7IL
         QpWK9Voo6idJfrhBGNXjewC/UQoOj7QBRzY7f0XSVJtRHotNF9n3at5b5XnPNb7UBiPB
         Y8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793183954; x=1793788754;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aD5t7JOukG95iTHOP3pJ3yfvTJMi39Agt8nuM/lwlqU=;
        b=Vyx3R5YeVlTN5V6ij+42Zm2EOey9Knp3M3AfJYUd53FjnoUC7yPz8MmdvixffGv7Me
         I1pTnfA7mtDsAqfOU7iJ4pz4ly+7CpVQzgQPS/Nav45QRVOvXVSMT5bBtPHjmRdR0a/Z
         lGxkbXthwMNtpn6cjnS9IbBMe+GO53YJB9jT7O0XP7D6n6Q9dCRnWSqntaTwL6Fb9n8X
         YLMNkaO8GmzLN8HZm0Cp3Z11lamrF0Fo1GB/V10t9+PzcgLJ9KkB+RDn8cEB/m/BKHGq
         KXiOm3Yk0wyt3fw3p6AUVGO52qkkOMFjtN1ORo+5e9C4m2BVVjDVGqn2xEq2Lfz+1dwd
         LduA==
X-Forwarded-Encrypted: i=1; AKwUvBwfqshsVTQB8deN21C/uF3/l1775Ivhq2qBjEB+52oMK2sMqooGvhHQj9srUiybfc6IEoz9aZr6/l0=@lists.infradead.org
X-Gm-Message-State: AFq9FYJrigs2r/BPaA2cPs8MeCh5L2RMM/+Go1xpk5WhwHUlYNfRz+2Z
	54QZAoMBFD2RdCshM7uCRBUWyuat1NsJt3hUNVFdzQwRoMBIc0IesIvYE8Z7FbAk9F3qptwpPjM
	fqFRWdm4Ts7FsI9xMgFL7FwvClxTPpHAMvl8md29H79tzVipolOpUZ4yEZw+ilhVQmn2D
X-Gm-Gg: AYBFou1yTVzyzpxyCU4SkkFDLNRdNWccx9RNKTqpPT+fqqG525oa7TsTI/lqN0LvHqU
	TyaDcKGOwj86wZsZKgyAalwYB0bv3j2j7kiOOh9PKpf4BwhFlF+QZF8GF2VHVkcM9DHTB0dsp/Z
	zJ2scKoGJHpttUZaiAwA/TVOuBiGk7l7UOEfv2Nw8xJFfZipId326PtJBld180qYTrrazh0YSGq
	2itjYVo5vCwgyVP80suIqxNnECQErY0ySstTrj5x3mAb7zAw7YW2r60ck0KX8Irg+AAGrX/Pi3B
	EwiKJ+vjX3vhKZiQYSoOjA80yPo5zL0L6zTt+oGu3jBCO3pp8k3sp3f8BE018M6FN9rmfA+fnnO
	QNN/eyE/nyBhURbuTr/3j0AWI0hjYgwCfKGDO0nWXjL5w9Li9LC3ZmHy0aqrRjX8POftiOvfzRA
	8=
X-Received: by 2002:a05:701b:281b:b0:153:3c50:ab85 with SMTP id a92af1059eb24-1a6ced8ff93mr2501419c88.12.1793183953590;
        Wed, 28 Oct 2026 03:39:13 -0700 (PDT)
X-Received: by 2002:a05:701b:281b:b0:153:3c50:ab85 with SMTP id a92af1059eb24-1a6ced8ff93mr2501389c88.12.1793183953086;
        Wed, 28 Oct 2026 03:39:13 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1a75e5c6d4fsm8340186c88.14.2026.10.28.03.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 03:39:12 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 16:08:04 +0530
Subject: [PATCH v6 08/11] phy: qualcomm: qmp-combo: Remove VCO_DIV
 programming from qmp_v8_configure_dp_clocks()
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-glymur-phy-v3-v6-8-1f1d2e565a66@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793183900; l=1790;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=Q/gqQqFFXIemqSvwDZ0I5cKPziAiAQ8r3AkT9pgNa3Y=;
 b=AzC7qd7YSqM74rPddg0ipPk778IkLrfnxikkG9XEw+/L0uEJ4ZAKerTdE37hMHnsHUO81GcDo
 0UEodpB0TolCzcd87VUjKukrx3dsYTo6OC/41WpDx8T/vwOTfD23PNv
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfXy+w3R29JGpD8
 Rbz0TdPqc+KBBwqTSl4lS55NPuUDNjHss5C6BF3WDY+xuHkb2FZzVLMmdlGLfMnS5rJi7xeHz4O
 ZRK4Ig+svimowjToDeyq631C04+OepA=
X-Authority-Analysis: v=2.4 cv=SoIFe/O0 c=1 sm=1 tr=0 ts=6ae1d0d2 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=mO8_gwkcAAAA:8 a=VniZYPIeq2n4UU9-3AgA:9
 a=QEXdDO2ut3YA:10 a=vBUdepa8ALXHeOFLBtFW:22 a=InTEqNb8lIr1xazlwGwc:22
X-Proofpoint-GUID: bXFqj6HhsmlZL0LQ8Fa8_DzTxWgeQuBd
X-Proofpoint-ORIG-GUID: bXFqj6HhsmlZL0LQ8Fa8_DzTxWgeQuBd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX5obQlA5meuL1
 JJ0BluSap3dOBtG+F3zf8kM35aUYwaU3+lV7eHjxQbhSDRKjndVaWZtmsfdeguM/3dww/EhsLAg
 gUne2GaIBAny+EfJcdYoJhNmZI5PuMAXKqPGR9sLB7fbQqnfqfmk4vPtxuXhe2v9g58QvpEh+cy
 aVu8NuMPWNP7yoCU1cGJotpRT77ZizvUqUG66rLkg67vo5GRs4EI/hIyQ/56YyBSqGcupAcGqav
 2Xp9U8nRxLd7X46clOAFAfKd1N01SvdZ7lH6YQIj38I34mFWFbvPLkhtmFScWFNEZ7JT4PLc7pI
 LCQYhUgnPBxq85ZklBPBlL4zekoEUmeyq1FKxn2Lw0qbkD8eukqMs8duu6sPgXuc/hja43KXgLm
 al5nJ21QfgsghwG39ISJEd1tWpMF/arqZPr0WX57wnBE5QDETNP/AeTyTapE437MhUNXtxg66JM
 GurbdqNslCi8jEDQDlw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_033915_950654_6A35379A 
X-CRM114-Status: GOOD (  11.57  )
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

QPHY_DP_PHY_VCO_DIV register does not participate in the
divider of vco_divided_clk, it can be left as it is- No impact

Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)
Tested-by: Luke Macken <luke@phorex.org>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index ff7f0293638d..51d7102aefc3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3945,32 +3945,26 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
 static int qmp_v8_configure_dp_clocks(struct qmp_combo *qmp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
-	u32 phy_vco_div;
 	unsigned long pixel_freq;
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
 	switch (dp_opts->link_rate) {
 	case 1620:
-		phy_vco_div = 0x4;
 		pixel_freq = 1620000000UL / 2;
 		break;
 	case 2700:
-		phy_vco_div = 0x2;
 		pixel_freq = 2700000000UL / 2;
 		break;
 	case 5400:
-		phy_vco_div = 0x4;
 		pixel_freq = 5400000000UL / 4;
 		break;
 	case 8100:
-		phy_vco_div = 0x3;
 		pixel_freq = 8100000000UL / 6;
 		break;
 	default:
 		/* Other link rates aren't supported */
 		return -EINVAL;
 	}
-	writel(phy_vco_div, qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_VCO_DIV]);
 
 	/* disable core reset tsync */
 	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
