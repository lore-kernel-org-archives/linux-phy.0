Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96E19C88E53
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 16:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TV8otudDW3Y2rvc+Ct823dyOrLn+ZNki/1G9cUDVErc=; b=rg9wbseCGcuWkB
	Qy+IwyLEPlEGPBtEv+A6SPJ6tKNwDXNgqmlfXiNv2KZxiYC5EgFtOS0y5Sw/CIK/ZTi+gHFDvTrxM
	s3Qa90sHkW44BLa6C46Q7gLAruN94s0fmqIFvz9Y1bKyY6Q3kwOjTjMtfjhYAe8HZDWVtw2IOZ6wv
	dNBpEQCTWhrTxciVRdPUA+/LVdphA6xhuiq2UOu82YBGXck9Z1aCW4LStcrepmofhch+71Q9kLhlm
	i40vnttVfIkhGufKz848/zlA3b6Po6hqPLZ/XO4/e7hkd1YOA+hSlcQP0BetmFUxWRs9tD7n6A0kW
	sJNRbldSvEZsNnw91yKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x54Pk-0000000HFtE-1Deo;
	Fri, 11 Sep 2026 16:47:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x54Pi-0000000HFrx-0ks4
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 16:47:47 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BEmEnd3780628
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 16:47:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u9CNAekAJivwXy7eYNCwSDqk/ML6zKzGhgflPEnIL3Q=; b=GkEmWbCIEyDS1e8j
	0YQt8hqxwrIfm5ryLxb40fjeXzP9DXEGNEZcnLcBoJq2Swc427AT98Iy3If5qLxi
	WHTiSZpzH+rCRPrjzo0ntsgvlYX5PVWgIps/gFVMvFZJhPVdEoUWAX+Hegj3c0it
	TtB6W0EkBbqKKaFswL/ggOpw0l990cK5u8lmJ/7gtGGjg+rL0HfmZAI+znQSNRfA
	k0sHCJPZ/KbzkanHNmkQoYFfP9jby0rgc7tcSadCj90Uz6b4XR0tJHNRbriC17d6
	v406MPK1YfT5pnmo0e5uV70quew9ubnOxcYcOozR7WNjSpH6GiHyvlRTudEIVZDG
	7X1elg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmcgfjh4j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 16:47:45 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-398d292eac1so1830936a91.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 09:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789145264; x=1789750064; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=u9CNAekAJivwXy7eYNCwSDqk/ML6zKzGhgflPEnIL3Q=;
        b=UkqCX5kXUrBARIyv3g9Hq974/ubV+FrmKPSMvY/IEo/h4OftweJyzqNves8fruTaSH
         jceMlHVKNdj8DX3rgkYGDTRPxBhdGnGt23lJ/oWCq5+S2g/CfVe4D+OfOttryL21B9Hv
         0T82zwRHsupaLWGZUXaAZ+dQlyShwSiHi/eN7fV8KI3hxGRkLd8g+C97f4C7iZiRwWjw
         9i7H8dEN3vLbDeAaIHnVmF4zqEAbBfliUGu+3USygaOIUboQG/mvHjn02NAqfc/CWmDB
         mz4nKgN715L1MjlZLJ+/lRf0N9rMdAO5AzQGyhS2egCZxCkXEELmYzRumTNSzArw/xQY
         OaWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789145264; x=1789750064;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=u9CNAekAJivwXy7eYNCwSDqk/ML6zKzGhgflPEnIL3Q=;
        b=Qlf/8pcSmENVE1NXf0haGK6GT8EAJRkdaJ1axXsiwBLKWa5TZFvd2lqfNI7o5daP1o
         6N8OjTCRDwzNnxfvy1FUhYAJpn14CDbdN9NrB+VoVkTvGfVr8p69jhS0ovolnRpWEvtk
         67pzOkWOpUE2dfexGJ+/mjlEXuBK9BvM9FOvEvjmjJLsA6YNYjdsSZ7nITn1qe/FV6gC
         mRAppjR+s/j9Syh1V9RCeFHQvYF+dROx2gtUCRo9iyuut5iTgTeSgX4cTipu2SvqFlH3
         yyZilSrI0LKH+YMgMjcrfh/vEwL0bJjZvWhDzzh7OyOAhygPtwO+GylzE79CkV6LOk+I
         /hmQ==
X-Forwarded-Encrypted: i=1; AKwUvBzO5x6kZ0Y4DKP66jvZboyx5M02GclyPiKEo2fXn4TH7DNgsKoBF/RxyzbUyJxdYrZKXr0pmy8RulE=@lists.infradead.org
X-Gm-Message-State: AFuF++kZMj1S3GGdgrI5OwDNnOdbm6vdmekqW3w+xd6EivhKxySREgkZ
	EoGACqVuqQDzaspnoDT/pqt8rSnXGueqD7KByyZHoGvXwp60ghNmRfLGyIrzD9qa3EalMEA+SDM
	IMLF1IoHMKAosVJ5C+PE0/tP8wf/Y7KpyCEszSSlJ7utvhHIqFCuhwI/tq1A1Iob1etcB/+Y2tq
	CC
X-Gm-Gg: AYBFou1ivOQbmprbDfdBokQhes4tOrgj79e0Q1bq9J6+Qhv+LTlxWjYCsJKdPQkp9nQ
	LuCyw5Z/EUKNvrmyDdNeqlsD1UeXQrJU9o93jgaml/DiEgDbfHk8DZ4M8nkARxVdNjXwizGYI71
	UkxxFzA/G3RVRbbRXX+WbE8rjrmxGYz0Tk2eFnASzymcec3JvELugkhaGqztrXw7JENYpVEaqcZ
	np0JZPLjB191XKBbmp8Dqrh0Du0ILAH95y8br+ykGtBrl6Qb+96mCPTbMwNyhNWbU+s4sGUe7S8
	KAUPymWzQYBMB3zOcWPAnnYVLPZaNVGYl7nSbIqVviqNgLvUlqOMYijuVqjGsIiold/5JiYgoRw
	oimU1PHG8nQWzBqtZ5Eg7TemF8A==
X-Received: by 2002:a17:90b:1347:b0:38e:4cb:51f with SMTP id 98e67ed59e1d1-39d9bdaa4fdmr9801089a91.11.1789145264035;
        Fri, 11 Sep 2026 09:47:44 -0700 (PDT)
X-Received: by 2002:a17:90b:1347:b0:38e:4cb:51f with SMTP id 98e67ed59e1d1-39d9bdaa4fdmr9801015a91.11.1789145263440;
        Fri, 11 Sep 2026 09:47:43 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39da64d4bdfsm944193a91.0.2026.09.11.09.47.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 09:47:43 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 22:17:07 +0530
Subject: [PATCH 3/5] arm64: dts: qcom: glymur: Add UFS nodes
MIME-Version: 1.0
Message-Id: <20260911-glymur_ufs_qcb_enablement-v1-3-b9fc5e2ee99a@oss.qualcomm.com>
References: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
In-Reply-To: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
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
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789145236; l=4155;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=TsGyf/0y783xq7+CT1WADVEQsdtp8DeCVCTbK/xDt4U=;
 b=rXhR3qv7ys0Vr+ijLalC1MUZkf9fRkI+ELOA4vu1UeWL+rlK7/RItQyDZGlOgx10iE7rLoyY/
 Lq9xAS5Yw6YDb5svmBlXfV6LmKCiFcvvgrtmzNvfJMRKYSPiT1TA92b
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIzNCBTYWx0ZWRfXyulAnbCs5VO5
 kWi7gC9j+1avJu8UFkC9WN/XiSY8U5omlGgF6QloAiiFzSn9aoDgcE/mF5zwz6bMDptpfn8wQpV
 uGgeD9YyjgoyDCCreCbImNofl2N09imB3vYjRjkGOviXh/JJZj2ZanpveYjyXCulo2P725MR/qa
 GPrODNITJEZHU6cjoJSoHwr+MJZNp2w/3Vkqb8CdFFwRP8BH+qU5tJSBeiU62N4NfqbibfobnDp
 4MNahgneY9PNr4TCY+REje69S+TvOLXiJ2cAA+NxqNQwEmFUXMJl1RYHmbPCxZS0jLK9qxFrqVn
 Hsxun5U+FH44Z2Vllry8KEW3hpWk2a2vJ6ukV0B0ca9vTmZGltYmWpwDEAH0+9xv31I7iU2napY
 DwHO1xSBd/fmwmtXZn0GA2qktd8/jXd8EfF6nuvDWt1WD2xBPUQmhRn50/R0x+8cpqLjbwQGMwC
 WMt+npLxnLt+MtwuCiQ==
X-Proofpoint-GUID: joNprA0jh717JsurxcOvTu6BzCXtEcfq
X-Proofpoint-ORIG-GUID: joNprA0jh717JsurxcOvTu6BzCXtEcfq
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIzNCBTYWx0ZWRfX1QXH25AGDhuU
 4EAQ5IJAPFzOLVO3Q3pTqQELeQnuZax14A3lRTQMvS4Lle5s7cFkkzfZVAw0lZG6uzXI0e5/sjQ
 d/ovtKcaAlO8vK25JldA4FoQwSeOcZo=
X-Authority-Analysis: v=2.4 cv=ULtIjyfy c=1 sm=1 tr=0 ts=6aa430b1 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=BFjdVMYQdvGAjPbYN-kA:9 a=5G4pU0lRd-HiNKXt:21
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110234
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_094746_347985_2132527A 
X-CRM114-Status: GOOD (  12.85  )
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

Add UFS PHY and UFS host controller nodes for Glymur SoC.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 114 ++++++++++++++++++++++++++++++++++-
 1 file changed, 111 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 624a9edd602c..7bbc804ed340 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -812,9 +812,9 @@ gcc: clock-controller@100000 {
 				 <0>,				/* QUSB4 1 PHY RX 1 */
 				 <0>,				/* QUSB4 2 PHY RX 0 */
 				 <0>,				/* QUSB4 2 PHY RX 1 */
-				 <0>,				/* UFS PHY RX Symbol 0 */
-				 <0>,				/* UFS PHY RX Symbol 1 */
-				 <0>,				/* UFS PHY TX Symbol 0 */
+				 <&ufs_mem_phy 0>,		/* UFS PHY RX Symbol 0 */
+				 <&ufs_mem_phy 1>,		/* UFS PHY RX Symbol 1 */
+				 <&ufs_mem_phy 2>,		/* UFS PHY TX Symbol 0 */
 				 <&usb_0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <&usb_2_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
@@ -4103,6 +4103,114 @@ rng: rng@10c3000 {
 			reg = <0x0 0x010c3000 0x0 0x1000>;
 		};
 
+		ufs_mem_phy: phy@1d80000 {
+			compatible = "qcom,glymur-qmp-ufs-phy";
+			reg = <0x0 0x01d80000 0x0 0x2000>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 /* UFS and PCIE4 shares the same clkref on glymur */
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
+
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
