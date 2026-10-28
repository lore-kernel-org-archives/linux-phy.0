Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3BD606A327
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 12:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2cLDaEVb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=mJp16ic/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=jol6/q7p
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JL2r5adrVrrGzTIpM8mPjZclW+7PP5eAVXWCFK9V3UA=; b=2cLDaEVb5kcZe/SYWKiCFyFeAC
	I2vrbN9Gd7BIEKmzY+E1MwFVu84ROKa8db5BuJ7xX+ch/HMh2HMkzEINPLoQ9QHtNIw71Nyc4IBYT
	z+2mR3/7edCqAJrjdRI4nojstGyLIDNubhxA+E1wDEVR2CgFZwjC1gOt0aPil2VXhmp2rd4Xh4u+r
	NHJ1EpyT9jBhwENdnxNnA89vwfkZSyyuT8+Nc51pFwZb1uNqSB74XF9awV0i/xbZlqu7R5gC8OiFm
	BYDWgqJIjLvsIchy8S4O+odbeheXk8gRW4PWcjr8pZ8WSerLYiZ3t9ioV4Y6nsubo8ZT3E8HjsrYm
	5KRYwHyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM2ij-00000006x9Z-0gh4;
	Wed, 28 Oct 2026 12:25:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM2if-00000006x91-412W
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 12:25:31 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SBe3Ub994580
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 12:25:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u+aOGSLnsirSIlKBqojLhK2+vD6OvbhOz3Q4h4cNqXw=; b=mJp16ic/e1pBzQMY
	EJchT49oyLZ3HE1a9y5bUMvYqG0bnZFnZm/j54LfatL9ApxPST2kSKWkRAVZbxh1
	oNK03fStBFnskik5Zog+X6FGKgCnG8QAgBPFrL0zcbu6YjM9W5WUARHlMf61wI7v
	CQWdgdYH6aK/b7fqQeqenkgJI7mUZ3+mtR47PWlXXgge1KBter98uD9rhB8eu1DD
	D4NTCsslqxRwuWmMfiREYiP5gS6C/EuXuz+ixRX7LcKm3jLGM7u9oPdW60854I5b
	QjD6epgVJmzsplxNgRULEsbtO/42/is3d/BaoE7aIAIU9oxOUrBayDlTfMOy7P4+
	Nz2YZg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk82tt0uq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 12:25:28 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3ab2cb8d5dbso869668a91.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 05:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793190328; x=1793795128; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=u+aOGSLnsirSIlKBqojLhK2+vD6OvbhOz3Q4h4cNqXw=;
        b=jol6/q7pfVJfl1gLIJYkGokaMbYKESS1uYxFcLjnAE0jPl5a+ujLPmN8KdC8tegGgP
         HfRBMQ7WXjo3Mr32L33NxJ8Ef14f7T6KZwGW0PjWFTUO3IqY/VHsYoOcZKsAVcDuCRZY
         T8YH5y+ebtSkU210/U5G+szDrI6Q3c/Oy+AZortqPPTe687hlKFPX/WgTgXn+7F4Pvbp
         zcww6Fe2608ijPO+w/VVnvTlHMrwT+9hj5XLCxJ+F2JdT1O4Z4+pA7baRIKAR2klCnDC
         tOGCrKVMvEJaL0pUjR6wzYDIFV5Bv0dlVw3F7eqfzEgjUpplPiE/F+LHvMEknt2EobpZ
         3xOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793190328; x=1793795128;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=u+aOGSLnsirSIlKBqojLhK2+vD6OvbhOz3Q4h4cNqXw=;
        b=vRmX9XeYR7AQQqrE+dw6qzc74hLySfe1ICce6YmrSulwkP268dKptTdbjX0M3mNLDe
         n566gXYTYdvaFU1/fG9/kWkSrkwTHjfxe0+DIxZH0ST8YuW+AOFh/fGsp8WISlje1p4O
         CvV6oKGzCYD5ztKF8qmlIxxcUR6+JfEeu3pnzOj1r+20d7elGBE6HDr1Rf6b7viv+rEl
         f6Fo625kL/STLduBR+6NgbKQksQj6B0B6vfll/rxaiyO8X+S/O6Q7/zJQS1a7XW36XO8
         /+U84u+amYmXmooZQXl3YBtGpsSO1rNKxBp7AIlXMzUTbLUpTeUo1nW6Ys96qZWjHXCe
         +Y0g==
X-Forwarded-Encrypted: i=1; AKwUvBwBDdm182yLlC95gBSJJHL/PHdROwHeqhdohncBUVhUuxv9b1xpJsnR3YC307RTK/zbtidmlcmwpoA=@lists.infradead.org
X-Gm-Message-State: AFq9FYLx4WUjI/M0h1yDkqPtZNP2hPYivBlTwMprPZ7H6xn2QMRPPxXs
	U2Cqi+0h09Dpr2J+2Us+F5oJwHywLqjGdOZx9wiE9XIPFmEA+TWsu8RvrXWbAhabizVPnbnuXtE
	08DT0pdepWYw7Bi2S9TFZKblNluqaOoBkxk7hoaXYzuXeOqA9MQAJP9MB0Z+WGr3GpQXA
X-Gm-Gg: AYBFou2mBf5D/8/GJ+tKQAvp/i6NAAxkbBOcq89RbGcPHtSVGPIZ1+re4m6jfzn5/mC
	bAAkeVIoIs6FSdwqC0XN4NYG6qeFCfTwta4H1qeOcvtymWacLNZaBnj5dOrdAumiEQb0BObdwnM
	3XxEDOFGCkaQU2P0kDdbxpPQaLf7X7e4uuNkTQbiSLBJKZF4jyLSOgYOdk38JlFNekC/5mIuM3d
	LmDfIgmlri3auoksUXkITppkWxOZp408u/Sevy7I1sgR9vmo6/UaRXUGS9yd5agCQ1IfT75v+UD
	lLS1BnHLFV5bFck8RcGGXTIFb4jeUgPgnqJgdj/OODfuxfCsXnYO9MFjCrL+Iezi9Q3nzeBTwlG
	VfZFzTd9ztnb/RUCVduwrQO63L7zbGYsGD4PIslNkXNunt7GmwC4U5Aa+6fesnyJarTxIYgNk8g
	U=
X-Received: by 2002:a17:90b:2641:b0:3ac:80dc:f41d with SMTP id 98e67ed59e1d1-3ae581d3cabmr1553059a91.32.1793190327893;
        Wed, 28 Oct 2026 05:25:27 -0700 (PDT)
X-Received: by 2002:a17:90b:2641:b0:3ac:80dc:f41d with SMTP id 98e67ed59e1d1-3ae581d3cabmr1553006a91.32.1793190327249;
        Wed, 28 Oct 2026 05:25:27 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ae5a9f287fsm2995819a91.16.2026.10.28.05.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 05:25:26 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 17:54:46 +0530
Subject: [PATCH v5 1/3] arm64: dts: qcom: glymur: Add UFS nodes
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-glymur_ufs_qcb_enablement-v5-1-09cda5e3bab3@oss.qualcomm.com>
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
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793190309; l=4404;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=lx4QDJQ8xne6p4Wg5DQ9+pgRxdE/BlGcSZZOdqlsUKw=;
 b=4wGgxUttx81ECAd5ykhYaNl9cWeYwlP/VcUOsW2Y4ot7QldEIOBNiNMhuoICy/OxfYK/7NXE4
 sRNu65/MvvbAhwRu1RwX+hQA2ymrLWqxz6r5960aIlzn9NxpJwUbpW2
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-GUID: gsVaZSwAEEbopz8ymCdjZfdCumU5m1zF
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0OSBTYWx0ZWRfX8V3L0CAB/gTO
 VtZ4Q6QXNVHYQBuZ99e5JgJFwOzTPB6T263sTO1+BuYYzIQ8pycJ5pN5xvuz4HDfx/7DTsenCMd
 3zrUreRQUCR4DswDo51GA5OdHWSpBD8=
X-Authority-Analysis: v=2.4 cv=Tr1zFzXh c=1 sm=1 tr=0 ts=6ae1e9b8 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=7sHo3vQ6stv6frjssEUA:9 a=JqOrBNmfTE-P4NNt:21
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: gsVaZSwAEEbopz8ymCdjZfdCumU5m1zF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0OSBTYWx0ZWRfX3YxowQ0ZSVzj
 X1VB7Yk0zO4HOBhILsGK2C2N4O1jZigUI874dC685Eqceuyjj2FwJXpMgJppSKKGGxinosZicZp
 c1Ac+4NGwnhYvfjow8TAZLmUW75gbcrmlPHGn6TBg3SC+dqNLyWL7vww4HXWR3bIpLKAS2MzW7V
 ZNNkJlKutbd/seSy9/7+FDf2XQwShEmiOSnhIlfJ7gux2NZf6tt4ag/DA293DaApIPpc5BNj6J2
 FC9BlmbRwwgzs99DVXhUEEfV4KorJvlHBuEKLB6meyLoM/pCssL9woH0F+xaLj7p5FRu1IgMQJb
 8hj/bQv1xsgzezDHg/bmhFl9cRPmMxnOofGMOyDuPaW+7kf7XA3fkqu4mwT0tEXxKgkvnG9bB57
 RwBRs7TlyyCfkxtwqktAmsvBwvEyys7hknUoDhT04cS5ITk6KlKfoo0+HO9u07CUMPG+K793nZ1
 HD2sco6iY5Hn02qPG/w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015 phishscore=0
 impostorscore=0 malwarescore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_052530_142647_8442A47A 
X-CRM114-Status: GOOD (  11.71  )
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

Add UFS PHY and UFS host controller nodes for Glymur SoC.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 125 ++++++++++++++++++++++++++++++++++-
 1 file changed, 122 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 65a398c0a992..049fb2226466 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -811,9 +811,9 @@ gcc: clock-controller@100000 {
 				 <0>,				/* QUSB4 1 PHY RX 1 */
 				 <0>,				/* QUSB4 2 PHY RX 0 */
 				 <0>,				/* QUSB4 2 PHY RX 1 */
-				 <0>,				/* UFS PHY RX Symbol 0 */
-				 <0>,				/* UFS PHY RX Symbol 1 */
-				 <0>,				/* UFS PHY TX Symbol 0 */
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>,
 				 <&usb_0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <&usb_2_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
@@ -4102,6 +4102,125 @@ rng: rng@10c3000 {
 			reg = <0x0 0x010c3000 0x0 0x1000>;
 		};
 
+		ufs_mem_phy: phy@1d80000 {
+			compatible = "qcom,glymur-qmp-ufs-phy";
+			reg = <0x0 0x01d80000 0x0 0x2000>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 /* UFS and PCIE4 share the same clkref */
+				 <&tcsr TCSR_PCIE_4_CLKREF_EN>;
+
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
+
+			resets = <&ufs_mem_hc 0>;
+			reset-names = "ufsphy";
+
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		ufs_mem_hc: ufshc@1d84000 {
+			compatible = "qcom,glymur-ufshc",
+				     "qcom,ufshc",
+				     "jedec,ufs-2.0";
+			reg = <0x0 0x01d84000 0x0 0x3000>,
+			      <0x0 0x01da0000 0x0 0x15000>;
+			reg-names = "std",
+				    "mcq";
+
+			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>,
+				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
+				 <&rpmhcc RPMH_LN_BB_CLK3>,
+				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
+			clock-names = "core_clk",
+				      "bus_aggr_clk",
+				      "iface_clk",
+				      "core_clk_unipro",
+				      "ref_clk",
+				      "tx_lane0_sync_clk",
+				      "rx_lane0_sync_clk",
+				      "rx_lane1_sync_clk";
+
+			operating-points-v2 = <&ufs_opp_table>;
+
+			resets = <&gcc GCC_UFS_PHY_BCR>;
+			reset-names = "rst";
+
+			interconnects = <&aggre2_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "ufs-ddr",
+					     "cpu-ufs";
+
+			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			iommus = <&apps_smmu 0x460 0>;
+			dma-coherent;
+
+			msi-parent = <&gic_its 0x460>;
+			lanes-per-direction = <2>;
+
+			phys = <&ufs_mem_phy>;
+			phy-names = "ufsphy";
+
+			#reset-cells = <1>;
+
+			status = "disabled";
+
+			ufs_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <100000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-201500000 {
+					opp-hz = /bits/ 64 <201500000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <201500000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_svs>;
+				};
+
+				opp-403000000 {
+					opp-hz = /bits/ 64 <403000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <403000000>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>,
+						 /bits/ 64 <0>;
+					required-opps = <&rpmhpd_opp_nom>;
+				};
+			};
+		};
+
 		cryptobam: dma-controller@1dc4000 {
 			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
 			reg = <0x0 0x01dc4000 0x0 0x28000>;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
