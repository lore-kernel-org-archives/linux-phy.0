Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5DB1606A32C
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 12:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wo5YHAYB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=JaYhMvPb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=UwnBVKI4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QYK9kZd3bVtKRbn1n2iGciS8/5YlgzRlknmbDBXeHbI=; b=wo5YHAYB8IVa4wDmcyDOG3ZuBo
	i8sr/jMThv+aF+aK+vGV2+ztAyoLZnH6hu1Z4p428anvNynfB2PwsKfdk5wOkQjguMEX6WnQklI3W
	eB79fP5l7VEAHsc1vvIV8ZuojQmwqSOvGL1yWhwR9mFLjUFF5PBvNflMrcKfXUKiGj4aTF99XFc1D
	fXVp+HZLUOWJjRvPsjxO67gxKs292sibPIKNw+nBJ2XYGTG447elFakDDnBP2TBFcH3a6JUKy/Vaj
	2qUw5jvAsi8hfq6YSBAGIoYuPmzrTl7hUgflGKgFlJLPMB+i0WkUTECD3qs7nXuVHTlDK6MDiTwiz
	7gDWydxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM2iz-00000006xBk-1zrz;
	Wed, 28 Oct 2026 12:25:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM2ix-00000006xBP-2vFc
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 12:25:48 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SBe1oC4154726
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 12:25:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XhGgIoX9GQVSucSqNoFuZLYd22G+9ogxeRdAKrej2dA=; b=JaYhMvPb/aS4mild
	JgXIZhPe59bZLnHlK0T6pnkwsrpevxGg9ZarBpiMF/BwPddNY2Me1PsYubdYbuVi
	UNC11LH709H84be8Gzm9hP9XYnUofZcWC5aaKlTrmnq2V+LysTw7ORGxuGUicujE
	BY4rKDlF5LTdoLi+6mezacLoiMWJ8TBiMMaUBIp/7ezFM1x5txSpnOdo/RbXXRh8
	TKt88695qLS0o4WCloTHgz+wyogfhK5YEs+XiRI2Tnc4Gfv8hUfNhsmxxBnNclMd
	Rzso7KKCmj6KTfBm4f4dbK9r7LoTUc1L0ZhkrF0m2IQa8r+HPii9x4hKrhJDWDlz
	vSKgZg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkdsp0s4a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 12:25:46 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3aaf955db5fso1337973a91.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 05:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793190346; x=1793795146; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XhGgIoX9GQVSucSqNoFuZLYd22G+9ogxeRdAKrej2dA=;
        b=UwnBVKI4xdFbcDehbLafWRjaS0rGUqRAxStqhPr8fD+Oet7JReMWZ3BzlqNMX71Xnr
         XllmlzqTVkjB7mhDO5pnGTwrRyK1bYdUhGPiCGD7aAozsj9SqrOK8wb45+JJSkEUpaKu
         uzQTehwyehKoR/ZC0P6eHvCNRZKSUJCtXTGckBJ9e4JWMMgG4JpqBo6odjm0QarDhHMe
         t2PGP/p84+TPVNGhYDzG0/U2RTxCxWKVz18Sdb1ELG3NA2oPF9/sTU80e9Jts/kEpSla
         4CXwU/i6BMaVvBNRSxBIUOU+GjTYstVDksuhSjvczDq71kjtlG/S/DicT+jiFJKfjE0Z
         J9Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793190346; x=1793795146;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XhGgIoX9GQVSucSqNoFuZLYd22G+9ogxeRdAKrej2dA=;
        b=wEI3FFMEfg5y2woMXKbVVeGf9Fjlg5IHpfTviLP+RvZhtNUunUsuS2itg6WvpBMI+I
         0yheGkPZeJ/CcP8+qv9UlvuggmCDguzYHVvKUl7VN+rbuBleTKYxjc7JSaTFS3+xtKX9
         B1nUSP9CjVzSwBSiO1Uf/A28rFS7QUCDkFLycaueo4xCcxkqMDgWofKqlFPVTlqs8ylP
         V5FDtIyDUS6S3aPEcKQg/ovhHJffGfVX54H30lGdAyHwlTsNNFBu/aQ20zoyrct7+D9C
         J60FGjHVLq1gwAMgYsrnm3r4DCRMByKglFb3J78q++su2L2yWk503Xr37xXdl8o1rMqF
         nhkA==
X-Forwarded-Encrypted: i=1; AKwUvBzIVrXRCndEFrbxsxkuTDCh8cZcXPRhM0XlXBzCHkKaj6a5kK4hWITO16MoYv7KRN6lAUfltIz9HkI=@lists.infradead.org
X-Gm-Message-State: AFq9FYLo80fqLyBMb2O6kGoeEAXCEiPVI8TtMN+DeKrUU/cJoyQtXPqz
	DviSC5LNBN8dZzahcp187dDyOw/99cEgbhXB4g5bi8F1YYle2kyw3Vy0+WMaZESuXsrxuaMr3Xt
	g1hxS0IH7yJlstcnoMWF5YI3azDrat7opk5nrp5GysovTGefgPEBNEh18qQcgG9VPEjhm
X-Gm-Gg: AYBFou2JXPPWJ4E4QdU/NEWyhGAC9ENkqK5XLsPWBV6ZzlbLmwwOUFjYgHUZi50AYwD
	SoYPC8FId7iG0pdyrdl58MOXGJtScTYLkDFtSL4LcDFQ8DsAB7am7JOQ2sBHzjbcz+u6E6SRFmZ
	udj+amO5ubZwyKnTU1Og6jD177QezRhQZe72cfyvHeW0CO+CJ5MnhcCeKCM/dgri8js/IcJjuvG
	O1hkYwcDQH1GwxIezEgBd9MxH4k5m9DCZJbuhch9FIqcEoTy30ay4gL0MU4ib/ZUwTGcGCXuPw+
	X66sIRy6KnCROIYh4rgFcT0Jr9vHO57B7NfhyscbTh5epMPR+W79RK4w1wc1hhZ1o4s/TWEWzdf
	1nvbCrw4pwUL42BZxYWUsDFc382dW/PLmWh7co6H0WQ/9kM/awK4tEefo2xVPlDKt4tLQ+q3A+1
	s=
X-Received: by 2002:a17:90b:4a4f:b0:3ac:97e3:7389 with SMTP id 98e67ed59e1d1-3ae58299f75mr1599646a91.44.1793190345674;
        Wed, 28 Oct 2026 05:25:45 -0700 (PDT)
X-Received: by 2002:a17:90b:4a4f:b0:3ac:97e3:7389 with SMTP id 98e67ed59e1d1-3ae58299f75mr1599632a91.44.1793190345192;
        Wed, 28 Oct 2026 05:25:45 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ae5a9f287fsm2995819a91.16.2026.10.28.05.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 05:25:44 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 17:54:48 +0530
Subject: [PATCH v5 3/3] phy: qcom-qmp-ufs: Add Glymur support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-glymur_ufs_qcb_enablement-v5-3-09cda5e3bab3@oss.qualcomm.com>
References: <20261028-glymur_ufs_qcb_enablement-v5-0-09cda5e3bab3@oss.qualcomm.com>
In-Reply-To: <20261028-glymur_ufs_qcb_enablement-v5-0-09cda5e3bab3@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793190309; l=6525;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=ldQBD2uXwAXJJrMOGsoZuUpZ04qOGizm0CRQ7vkr1Q4=;
 b=grcpIXosquMaObKOLseW67QNTmPag9XMw522vEBv29iCi5jNoeKXyOo687lcEd3X7FEwqAaOH
 Pb4NjwRI/M9DBYBOjwzuINYr32HrQFSJGfH++nmBQwTp2AWlVA3YigP
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-GUID: ehL4kXKmJ52RnwWUeLR7Y9uckWSx8fnB
X-Proofpoint-ORIG-GUID: ehL4kXKmJ52RnwWUeLR7Y9uckWSx8fnB
X-Authority-Analysis: v=2.4 cv=Cssq4X4D c=1 sm=1 tr=0 ts=6ae1e9ca cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=EEZK_nQxm5Uv2-YDnh4A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0OSBTYWx0ZWRfX02HecCX+yLZQ
 0ZfrdYO4UPt19jCTPWUJl4Yr7+QcNVLxF7AQ3dOo/+58A01pMOrH30cvW4U01ijIqZIw51zv+OK
 rRkxfynaG/bZ8ni7ILd1mavGZnemHNYlJ/y6iTx5FniLhwfnEcKbgPy/psm837aj8/NRah+Soy7
 wY2GNy1o24pdPLtPq3L9lNweKQ90lshZarlsZ3qujz1VtmFSmjZ1NV17KX1dF6YliklClcGYB0H
 IfHJxpGMDVoeEiPD+ImXxaP9/+ZQiOdxIoGXNMpXUgIeuoYNSM+PlpSJmGcDF1gYSfZtHzBVB3W
 1GcfrzjfYqtRftaL+2oPFlqfehd3ubOuwEehsa8RED4wn3NaZRnstJgZD2jpBww45Mp25YePJiH
 t5JIIR7HfdolIcFJtgKK6XcuEocpdSl0IOexsm3T+2R/0cQgGRkmDS87OV9p0D1A4bFA0u1Ei3R
 PC4jXGwSgpICr8tyQmg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0OSBTYWx0ZWRfXyba1fLrS1n4S
 PllMhXHIDnbNNOqQSZ3/sfabYkPIllWFzL5LCykcUHRP5Z4oMuMXSXEe66n4dY2vfRvgcHZ2YFD
 tSsB2goY8JcgrUszgT+ZkKCakTI9wIg=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610280049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_052547_877406_C03F1E57 
X-CRM114-Status: GOOD (  15.37  )
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

Add the init sequence tables and config for the UFS QMP phy found in
the Glymur SoC.

Similar to SM8750, the QSERDES RX and TX register offsets for
glymur SoC follow the v7 register layout, while the remaining
(PCS, MPHY base) register offsets follow v6 layout. Update the
register layouts accordingly.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 99 +++++++++++++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index d15db9ab9a90..f441b26bb8a6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -93,6 +93,59 @@ static const unsigned int ufsphy_v7_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V7_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
+static const struct qmp_phy_init_tbl glymur_ufsphy_rx[] = {
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FO_GAIN_RATE2, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FO_GAIN_RATE4, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_SO_GAIN_RATE4, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_PI_CONTROLS, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_OFFSET_ADAPTOR_CNTRL3, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FASTLOCK_FO_GAIN_RATE4, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FASTLOCK_SO_GAIN_RATE4, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_VGA_CAL_MAN_VAL, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_EQU_ADAPTOR_CNTRL4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B0, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B1, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B2, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B3, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B6, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B7, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE2_B3, 0x9a),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE2_B6, 0xe2),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE2_B7, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B0, 0x1b),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B1, 0x1b),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B2, 0x98),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B3, 0x9b),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B4, 0x2a),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B5, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B7, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B8, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B0, 0x93),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B1, 0x93),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B2, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B3, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B4, 0x5f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B5, 0x92),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B6, 0xe3),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B7, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B0, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B1, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B2, 0xe0),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B3, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B4, 0x5f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B5, 0x92),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B6, 0xfb),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B7, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_SO_SATURATION, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_PI_CTRL1, 0x94),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_TERM_BW_CTRL0, 0xfa),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_DLL0_FTUNE_CTRL, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_SIGDET_CAL_TRIM, 0x77),
+};
+
 static const struct qmp_phy_init_tbl milos_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
@@ -1212,6 +1265,11 @@ struct qmp_ufs {
 };
 
 /* Regulator bulk data with load values for specific configurations */
+static const struct regulator_bulk_data glymur_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 217130 },
+	{ .supply = "vdda-pll", .init_load_uA = 18340 },
+};
+
 static const struct regulator_bulk_data milos_ufsphy_vreg_l[] = {
 	{ .supply = "vdda-phy", .init_load_uA = 140120 },
 	{ .supply = "vdda-pll", .init_load_uA = 18340 },
@@ -1324,6 +1382,44 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v7 = {
 	.rx2		= 0x3000,
 };
 
+static const struct qmp_phy_cfg glymur_ufsphy_cfg = {
+	.lanes			= 2,
+
+	.offsets		= &qmp_ufs_offsets_v6,
+	.max_supported_gear	= UFS_HS_G5,
+
+	.tbls = {
+		.serdes		= sm8750_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8750_ufsphy_serdes),
+		.tx		= sm8750_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(sm8750_ufsphy_tx),
+		.rx		= glymur_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(glymur_ufsphy_rx),
+		.pcs		= sm8750_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8750_ufsphy_pcs),
+	},
+
+	.tbls_hs_b = {
+		.pcs		= sm8750_ufsphy_hs_b_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8750_ufsphy_hs_b_pcs),
+	},
+
+	.tbls_hs_overlay[0] = {
+		.pcs		= sm8750_ufsphy_g4_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8750_ufsphy_g4_pcs),
+		.max_gear	= UFS_HS_G4,
+	},
+	.tbls_hs_overlay[1] = {
+		.pcs		= sm8650_ufsphy_g5_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8650_ufsphy_g5_pcs),
+		.max_gear	= UFS_HS_G5,
+	},
+
+	.vreg_list		= glymur_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(glymur_ufsphy_vreg_l),
+	.regs			= ufsphy_v6_regs_layout,
+};
+
 static const struct qmp_phy_cfg milos_ufsphy_cfg = {
 	.lanes			= 2,
 
@@ -2371,6 +2467,9 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_ufs_of_match_table[] = {
 	{
+		.compatible = "qcom,glymur-qmp-ufs-phy",
+		.data = &glymur_ufsphy_cfg,
+	}, {
 		.compatible = "qcom,hawi-qmp-ufs-phy",
 		.data = &hawi_ufsphy_cfg,
 	}, {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
