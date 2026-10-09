Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A5DDCA6019
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 10:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=846ZAqD9UFXDGRQbhZTrXMnC9hUdRyLmNxBNq87pmOg=; b=VWuLj1bOJS+P//
	1S88TTzWOblUU6nVi3IVFKy5+vlfqsriPbNiezAKa6+7O0uItb/oE2/5+la23+Nj1fIDXe95StEpW
	SyXdiG+k61xv5nxeBkLHhlBzUgwFeRs2UociDcpEDKvsO67UKD8nqN3vwqQ8klhppfPLTed8z1zQ5
	RX/OmDFuAJGqtx1wOZrGOCDpvtKsYTBPV1O+6dj8lQReqzKKCM64uy6Ij2oEEao0lZFNmwRTh23oi
	ucdRVYLs7TmLlVnT3OV0Frd6ZIobmiFY/OfgvIsOEuezBWsM37/sDoumnwNzoMzIVSgkf8MIhEzTy
	bpUro48nA8vsDbvxahkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7y4-000000064ze-3KI4;
	Fri, 09 Oct 2026 10:36:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7y4-000000064zU-1S6c
	for linux-phy@bombadil.infradead.org;
	Fri, 09 Oct 2026 10:36:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=AtE/d8mRsSzaG79+2m8aJWMacLBckY8idc15SCnRGq0=; b=nsr9bzgNPAHJCTyNgNOfMzvuoV
	uxVKMLf+lhxf1XG8hUBA9fOKKXkQb0vxzjOoc0VcKZLY6LQ/2u3Q0U3CDvuJEz3e1EgHUlsddynwo
	OWZCC31MkPuoK3YmJy/8aqBi67be834lSJv0hx1rAduk68O9oRQ1sM9M6L0A+puoTXBFsG3rsg8cf
	caTwJlv6ZjCIsIovN3p+jLm15Lc9RU/ncwPiV9K14E7IUbJ3Q1bJBxoKqxuvbNnoCdP/nhY+mFPIx
	b2TNePC/pAhMc9JGrU76tVuxyzEA6eWW/w78jasKMAxkOtXwgM1vMUZTC+3K2bs+aQJ/U/ym5Koxn
	blBixh0g==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xF7y1-0000000B8LW-1d7L
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 10:36:47 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6998KGV01625936
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 10:36:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AtE/d8mRsSzaG79+2m8aJWMacLBckY8idc15SCnRGq0=; b=b9rkdaIux+ABQXxA
	AMoMbpQlAig3WRGgx6bG1mfA+IheKGvnAVSWNcGIzVzjfFvvmrNUKtKSX9IJJYsE
	H/wZlYi8rPGUNMCEIRX0zs4uj1uN9pyQny5sV86LdI7MoTCehTG12bbbrM3Om9Ff
	o58LDHQfjADVTmdurU1KYBRCGAaKQXufG7wfXvz8kzDOBYkHuodafE0Dyss/GXSh
	Bk1T1ci5yN+Jl7uBJjJi5f9XQr8eDPUeaO/nCMRWE/KgItILm3jov3vE+stHb0Qs
	XnaHMJbgGfPsBz94ZJSAmVhR/Ku33U2t+ztjqDgpiE/ONOZQ3XdoxJCWig3N9VhL
	5Rh7+Q==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6fyj33xy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 10:36:43 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc4fc935a11so4082788a12.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 03:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791542203; x=1792147003; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AtE/d8mRsSzaG79+2m8aJWMacLBckY8idc15SCnRGq0=;
        b=YDb6jjoTLhm/GcOsGO6ec8ofD0PlzyRFr32F+u3Nd85d6MlJ/0BsdTYMf9yd9SjCwZ
         ivVd+knW5BR0CyW6IzYXnCBT30T2l9uhUfhF+TonkaxOU/EaTQlTCh7EoChlJzFcnBng
         kYH+YZzQOgxl1K1Vi2WsjCNlIOMJoZ2FYmTXYnqE2rM+N+x+iQfbgX2Yq1Bx+cCMsD5/
         A4xJaSKwwsq4JBs+TZxRKDRjoV5M9qxQkO0CjlUhgEn8obkakE1bzhnWSc9oJzuau7ZJ
         JUJUqW28YmHbmoqFROi+1Zw4q10rqNaMI4xLvVL31X4rX71tjTH+FI+EggSkgpgcbx+5
         OMYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791542203; x=1792147003;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AtE/d8mRsSzaG79+2m8aJWMacLBckY8idc15SCnRGq0=;
        b=ijC7tvppAEe49FoPUMgjxW+NB29QkMFEJQtthytB1zJRAdOmxbhn+3piTNAZM+Lb9Z
         UgzXDJVujwQPX6qMrhZtUy2YDOySZp0sLOSYJ67FpsXgwiHh0Eb3YdE1ulKf20kVy+FH
         E/kTg84HKpOnpmWo7ZAk6jK2YH+DjHNT9YJpqEjUN3hfVZsByQDkr20M0fpFuvrAS67t
         3+jNphhcs88xj0FVhwF6BURk6wWCz45L9xfECbvGnDqSOZU5rdylQuyltE1UoOVo0uwG
         te/dWmu5yx6uNQLznhhTpLWqAH8RD4qf+IMhe5AhF+RJFdYsxs2CSXf7JkPVlOexIqt/
         F5rA==
X-Forwarded-Encrypted: i=1; AKwUvBxxuR/DszDtxd0IFVh1deQR8EHlJU8FU8vkYRbGZ8IurOOdyg2j0kaxfm+0zlc1q5JO5ouJiLTB98c=@lists.infradead.org
X-Gm-Message-State: AFq9FYKZlLFUaH1XXBC78gX3uSljqArPGiuVXA9eYbclTbDVa/T2ngJY
	x0YdQpKIQFzcHN8j2QpthymToPgd6X6N5q22APSG5Nq+bHMQLY7SIc/s2Qe5fW/HrKQSbhlCmln
	ZaxA4WtMKK/El9wixOes5nimQQ+AFftB7gXGq5weHl6PmOxw9h62zwh5OGKGmqjYLc1yE
X-Gm-Gg: AYBFou0bLP92AoExE+d61UkYbGZywceTpIdR4sZu2Vb6YV63jMgSa5DkI70I4lwzb60
	PzWpxnzbsYihujnI4ncDbxvkazN1c8265kx6YEZBerfPXMD0Je6Fi/JDrFL533l/L7KKbBXBj8X
	8GHi5bbcfwmbrj2j8WkmzdUsuC7lA4tiEVYe6T3rEyEoYe/qlxZI+AcC8aocFwf2zXAnpYOivhr
	QVmshspCZNji3p+taNFgwhgbfyr57DUxPnivLx463V9juCGq5u2gChDgEur9Ay7n2DLQrHKhC7w
	QQJI7V+4PllsYvrJ3QmE1Cy1VzOiZ6hI1hwaIo+6BHuM26iBtYXqrvdfas9pt7CxWL8+l4JX/wf
	+3HBeItsZ4/kvRYq2xCzHNBaA
X-Received: by 2002:a17:90b:4b92:b0:3a0:7d97:37c1 with SMTP id 98e67ed59e1d1-3ab3ac9fb13mr1430705a91.59.1791542202383;
        Fri, 09 Oct 2026 03:36:42 -0700 (PDT)
X-Received: by 2002:a17:90b:4b92:b0:3a0:7d97:37c1 with SMTP id 98e67ed59e1d1-3ab3ac9fb13mr1430676a91.59.1791542201800;
        Fri, 09 Oct 2026 03:36:41 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab371c32cesm2827285a91.16.2026.10.09.03.36.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2026 03:36:41 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Fri, 09 Oct 2026 16:05:55 +0530
Subject: [PATCH v4 3/5] arm64: dts: qcom: glymur: Add UFS nodes
MIME-Version: 1.0
Message-Id: <20261009-glymur_ufs_qcb_enablement-v4-3-9a6ce83195b7@oss.qualcomm.com>
References: <20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com>
In-Reply-To: <20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791542167; l=4407;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=9kyv/RmQosGyDp9VxTpU4lmroLa4HPs6mFTgIA1kMzM=;
 b=u8dC3+RZUfBlIhqIsXRGuNAz7pgI5v44WV2HH5GzVJ5YjkFfdWgwDNU33Cbk9BIdlR6mGtsYv
 oDUTtfQjz9nCsksKMopNgrudXZN7XogNF07Wzuk6bA1305CVVo/JEtF
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Authority-Analysis: v=2.4 cv=BfpNQbt2 c=1 sm=1 tr=0 ts=6ac8c3bb cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=7sHo3vQ6stv6frjssEUA:9 a=JqOrBNmfTE-P4NNt:21
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: G2MOgf1Qpoh23oNko0m7BTDfCMWyU-wh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDA0MiBTYWx0ZWRfXxD9DrrsXo61v
 ALF94tAsN4H7TB+/aJsPKP/Jb8jv8e+WESPnyRkFvt3pMBy7Kjhq8Xn2XXkvBY1Icx3cqw78fpt
 GlLFs2ZjZsxGCwmcaZv2vciTa9VlGpHsvYLYCUUCwpL/96xy8El5HflVfD1VPBGRustbzikGyh7
 FL17xS1b7gVgFDm7lsu0uTQ1U6SkcFh/m05ZT6xZmUfBZ4z1WWwc/kGGTGlMMoohZsUl/JNMsm7
 kgdrhoQB6eq7SHUOeicGGiWmwTXmLbnf0fq9UmSn2wh/MDTsTKDl1FhWHbiD8zlbiN/zkYZnyYt
 zpwuRSIvAcx3XAlRu9tgeyUnRYQJoJUB+AL30DWGmRI0u5FGFeyH/uN/kElL4U9FQEeQCcfIiim
 F1ZgfbqP2RXXzUWaFLsZ0/3NLGGY6SZlvX2+VzjXuTgThI9vmjCezD0RzAe0Awai+ea5+YAwfBJ
 jwgdWyY2iTSIp7dEBEg==
X-Proofpoint-GUID: G2MOgf1Qpoh23oNko0m7BTDfCMWyU-wh
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDA0MiBTYWx0ZWRfXyzwhXKs6BmKA
 AwteRKcKAVCfo69tzyEPji7D1B7DkS7McFmmIRKlaTVFc/lY69acZKekZTKr8ecgterc9QeSRxP
 FKwVzQMJSH5orpes/DkSsiaFrnDMH0A=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_03,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 adultscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610020000
 definitions=main-2610090042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_113645_767890_653AD866 
X-CRM114-Status: GOOD (  13.91  )
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

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 125 ++++++++++++++++++++++++++++++++++-
 1 file changed, 122 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 65a398c0a992..49ef89b41aad 100644
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
+					required-opps = <&rpmhpd_opp_svs_l1>;
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
