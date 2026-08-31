Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACC81C624A5
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 07:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5webxYD3nNBIqn78mHJX/MdQCVkZIAGV8Vglq7Fokpg=; b=o9IJQB3Xq2UFNB
	fbUBQxDDTVMafwX/4atSFwgX/qBaQgng47q1ZBNyB7z+IVE8s2Cu2jISpIogEnzjwd5yTWiBhxPY9
	E7FeJOoCuDYm7zvTSaC5rjYpslzCYgz9LQqSkoZa/d9HhjxP2YLBHRV6WZ5LNNJqNFHbkgBINyMpY
	7Nw/1sb2YRcttxPfMdYEMvlc78EVj4ftGD0DokU+LN2Xa06zKNp1Tnzy7AWor0xY0d9us1Cs0QJN5
	0ANAF2eP8WDME5sOrF/D3e6ZThHhtInoiuXxEyGNGbuOFQw1MGbemMnIsDpzVhBqKwG1eeVn3dxbx
	bLflsu+3I+Ptd0IpjKCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wPn-00000008j30-1hl3;
	Mon, 31 Aug 2026 07:26:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wPl-00000008j2b-2p5C
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 07:26:46 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67V6nwC03269458
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:26:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NdS8lJpcTMR3OOvAAebIM8DAFL+FJu0ANnnhwSRkLYc=; b=QXVqLKQGGVlhIski
	JVocdMpmZsuTQf/FgYoNBMX4PAog8dhr+1aswuhwvkLfH6IuhzPJm/vP1gE1I5Sy
	MRKOFjYNqv53eKh/uCyhxrcKvAgKQrppHIt6H93tJFA5r1CMbOu4+B1gCzG2EDRu
	od98gidx/o3YAiHOtVvXL8zQn02L/mRu0tqB6w+J6PIUOd1JVs2b9FsfRC+GhCKk
	zqIBCQpzC0lIriGLq/R5DIZdz548XT/AUoY4T6CnAMmUgEZSmcH336qyMS6uEndw
	v8gMLMHAxck5F/WcRaIzlWph7UsHI2pE0KyuxMFSwKjQfVKfCoIrjBkhzCRDX053
	tgtusw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gd4pm84k5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:26:44 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cc1cade6b71so2037185a12.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 00:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788161203; x=1788766003; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NdS8lJpcTMR3OOvAAebIM8DAFL+FJu0ANnnhwSRkLYc=;
        b=YY18lUJjw1AXU3M3fgSptMOdyosoCH9uELTDD/J8ryaZsaI7kdpguNvf7VgdrXa1ut
         XKr0v2UkDefwGosCz+0/O3JZFlET56Apr4pg0xu3CfUBbXwqkZfpxTlt46g1uhW518ri
         GJMIwmsTs8Cqf5OVAM00ayA9upEZIsBGAHr3gg1xtuNzTvurYiHxgDiwYLnPYJ2ZJROm
         UPzuOjbCGA+Qj+NzeAuI2cuSJU3nBw+Af2NJzruakakjBPATt1XULge5ZtEe0hzTKB/T
         xyL2+82Oh1f0uW0JdQ/Uh7UEHtRYZ/Un4sL4R3ptErHEBrzGJPPumMu5hi/ZnlAJuLbU
         aUwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788161203; x=1788766003;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NdS8lJpcTMR3OOvAAebIM8DAFL+FJu0ANnnhwSRkLYc=;
        b=kwYdZDaezCtcf6wivEru8LfzO/vT9aVdjDppsTHH2B2EhPNH9fxEiTF/KpVC0mabAL
         C02JdGxK/t9UaO1UzBb3kvjYl+7IdFOUvdX4kvEa5/N22RUdWoQAVJEpop0oMDnsktGH
         cq6Jjq+XtVn2spw9Tt1blB0AUmx1ZCuUjFOcHUKCrPxLirneZWOvvEKqEH8yx5G/Pu+M
         DjZyoexis8bPYqXXpuWrtLrxUX3Fs/VB9bxQzG12Y3R34WkdREGydEDRgqoliaA10r/Z
         Q9g8Z7zqJPcDeNAtf+1Evx7MkBAwzA1e2hOr7OCBlpVvfs+j7VsW4v5ukLhefWqtJ6ye
         SRfQ==
X-Forwarded-Encrypted: i=1; AKwUvBzi7zIPJn1sESEAoupDKnE4K9wq3bY/EU4MssbXRLPf7KIb3FLYELIHY2KYAjGw/oYTRAsZ51ZhmBY=@lists.infradead.org
X-Gm-Message-State: AFuF++lXHTX6wBnLqV6K4PuKgaw/liHnMyWR1b2UY7bkSGaKq3qJgLub
	GN8QHaJb8LDwCMdAK2HpoIMITX9n2k7lLIkE4TNryGqnvRLB/F9FqiSZApW31jG/Biu/IRjwAAx
	D6VX5SgT+tawSm+lxe/LkD5g6qyPwATXXb3aHGW6eBCGP452vej3yaG17wJ0VxRKIRi5ypPnDeP
	Pn
X-Gm-Gg: AYBFou2bgZJlFRXMA/s2w0GSDZJDCg41l/M18lXrlBVtCxWBpzTVPek0PFdl1bMSdat
	pa8EGO/BpGfQTqbweDl+Xl/h69oevS1TZXS8Mns0X7UD2ObKv/4vJkZEUfCX1DY7sKIksyuMldb
	naY+FjLaex53Kv2w1ZtUAm620xUSvukXven+4FLwNCxlcnXeJ/ILupASNI1gBQeSH8DXQHRv6qL
	H6jloBolRK/c4MFvmrXOhrJ0pAWGx26CE08sgcscQt1pa8r3GQTPtwjPtKxbLimrVuMR18bKAMb
	Fezbf9jQg5FvWBOXJCKltLW8qE/u4YHxy8Md6Daa8UjQmobBmteDUIik0txSdogRN761TzE2BYE
	PjliADK5+lpJbpNZ3d7tCoP8J43wPNnF0U8JQ
X-Received: by 2002:a17:90b:4b92:b0:36b:b903:994 with SMTP id 98e67ed59e1d1-398da5e900dmr6017259a91.4.1788161203399;
        Mon, 31 Aug 2026 00:26:43 -0700 (PDT)
X-Received: by 2002:a17:90b:4b92:b0:36b:b903:994 with SMTP id 98e67ed59e1d1-398da5e900dmr6017225a91.4.1788161202906;
        Mon, 31 Aug 2026 00:26:42 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286f9595bbsm31327059eec.14.2026.08.31.00.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 00:26:42 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 12:56:05 +0530
Subject: [PATCH v2 5/5] arm64: dts: qcom: shikra: Add PCIe PHY and
 controller nodes
MIME-Version: 1.0
Message-Id: <20260831-shikra-upstream-v2-5-406661d75afa@oss.qualcomm.com>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
In-Reply-To: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788161164; l=5578;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=TRINqUe4xwKAkE9bKbm01PDqmvL1+mAGSLwvgN/J4z0=;
 b=QWYT2K6ppw2yIOxWeQ8o7aXJg8DoyCXyyuMypmQbNe6rS1dmX7jHB5cHLGKWUBNIqid57mQaq
 mp4X5gfndE7AJs9QQz7OOTwoOkuglxtA/UK95jodr2020qvAhPqdBGr
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Proofpoint-ORIG-GUID: fwN3IbNpllDSUR3l7m4XPn2fg2FadEaH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDA2MyBTYWx0ZWRfX9uXzieDls/+3
 OiHif/8TGvUSJ4VYNLjePWbFkwndQbjsBfNyZfDKLdPgEKqUVc6wLUjIraVVnlCI4oWa9AVpQ6m
 EX0qD5xvVwVcyMV2WjdAKkPptgpaLPGLjQUrrYMrL2EBtzNUon6b+O9tuXdtXFp1mKPqVOCClv6
 tYYwMb5PKnTwlDCRxko+TPmIFPIALGoQW6fnuS6vtCjlCTdvxBLv3BdHOATqRX5LfMMrQvPf0wL
 eDOIyYzCBeJNsh+bMq2+hjHJ6Rn5Wz1KD6o7sl+pXUMwzX+XIMmMGq1tIEk/nv0qrOhtp9/Qi3e
 MLXNCiuImJ9E2RTIuHTV97aI0BCG5bdH5CXoFz5eufubzyct9D5T6CqpmkgRCSl8W5X0hBCVY5g
 mjFEb0hyFcjwPEgTI1L1L+l/wNhQFLHXB3i91k6fLhyO+p/PKTM9TiLYOhnSl3Oh+slkRr36hZP
 qmxcuEDz761qKvC0btw==
X-Proofpoint-GUID: fwN3IbNpllDSUR3l7m4XPn2fg2FadEaH
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDA2MyBTYWx0ZWRfX4SOAxg5tzH6/
 A8NoKJ9c517SWcVmyq9oUxtwZ5+GS4ZHva1hOwTPdbDBdSQqgq+rbQFwFeYMQDvtL7+N0lyS/zL
 q1C6481iiV59pt4rCJsjP6pcpWngNq0=
X-Authority-Analysis: v=2.4 cv=GbQnWwXL c=1 sm=1 tr=0 ts=6a952cb4 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=Cqz-_Xt_bCzV1Ft-kyEA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_02,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_002645_836924_89D70370 
X-CRM114-Status: GOOD (  13.98  )
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

Shikra supports single PCIe instance with 5GT/s x1 link.
Add PCIe controller and PHY node for this single instance.

Shikra controller supports upto PCIe Gen3 but the PHY is
only capable of Gen2, hence limit the max link speed to 2
to avoid link-up failures.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra.dtsi | 159 ++++++++++++++++++++++++++++++++++-
 1 file changed, 158 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/shikra.dtsi b/arch/arm64/boot/dts/qcom/shikra.dtsi
index e67fe047a683..9c190e6e92ce 100644
--- a/arch/arm64/boot/dts/qcom/shikra.dtsi
+++ b/arch/arm64/boot/dts/qcom/shikra.dtsi
@@ -899,7 +899,7 @@ gcc: clock-controller@1400000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <0>,
+				 <&pcie_phy>,
 				 <0>;
 			power-domains = <&rpmpd RPMPD_VDDCX>;
 			#clock-cells = <1>;
@@ -998,6 +998,163 @@ tsens0: thermal-sensor@4411000 {
 			#thermal-sensor-cells = <1>;
 		};
 
+		pcie: pcie@45e8000 {
+			device_type = "pci";
+			compatible = "qcom,shikra-pcie";
+			reg = <0x0 0x045e8000 0x0 0x3000>,
+			      <0x0 0x60000000 0x0 0xf1d>,
+			      <0x0 0x60000f20 0x0 0xa8>,
+			      <0x0 0x60001000 0x0 0x1000>,
+			      <0x0 0x60100000 0x0 0x100000>,
+			      <0x0 0x045eb000 0x0 0x1000>;
+			reg-names = "parf",
+				    "dbi",
+				    "elbi",
+				    "atu",
+				    "config",
+				    "mhi";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x60200000 0x0 0x100000>,
+				 <0x02000000 0x0 0x60300000 0x0 0x60300000 0x0 0x3d00000>,
+				 <0x03000000 0x4 0x00000000 0x4 0x00000000 0x3 0x0000000>;
+			bus-range = <0x00 0xff>;
+
+			linux,pci-domain = <0>;
+			num-lanes = <1>;
+
+			interrupts = <GIC_SPI 491 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 492 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 493 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 494 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 495 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 496 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 497 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 498 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 489 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7",
+					  "global";
+
+			interrupt-map = <0 0 0 1 &intc 0 0 0 499 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 0 500 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 0 501 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 0 502 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			#interrupt-cells = <1>;
+
+			clocks = <&gcc GCC_PCIE_AUX_CLK>,
+				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_DDRSS_MEMNOC_PCIE_SF_CLK>,
+				 <&gcc GCC_PCIE_TILE_AXI_SYS_NOC_CLK>,
+				 <&gcc GCC_QMIP_PCIE_CFG_AHB_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "ddrss_sf_tbu",
+				      "noc_aggr",
+				      "qmip_pcie_ahb";
+
+			assigned-clocks = <&gcc GCC_PCIE_AUX_CLK>;
+			assigned-clock-rates = <19200000>;
+
+			interconnects = <&system_noc MASTER_PCIE2_0 RPM_ALWAYS_TAG
+					&mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
+					<&mem_noc MASTER_AMPSS_M0 RPM_ACTIVE_TAG
+					&config_noc SLAVE_PCIE2_0 RPM_ACTIVE_TAG>;
+
+			interconnect-names = "pcie-mem",
+					     "cpu-pcie";
+
+			iommu-map = <0x0 &apps_smmu 0x800 0x0 0x1>,
+				    <0x100 &apps_smmu 0x801 0x0 0x1>;
+
+			resets = <&gcc GCC_PCIE_BCR>;
+			reset-names = "pci";
+
+			power-domains = <&gcc GCC_PCIE_GDSC>;
+
+			/* Controller supports Gen3, but PHY is limited to Gen2 */
+			max-link-speed = <2>;
+
+			operating-points-v2 = <&pcie_opp_table>;
+
+			status = "disabled";
+
+			pcie_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				/* GEN 1 x1 */
+				opp-2500000 {
+					opp-hz = /bits/ 64 <2500000>;
+					required-opps = <&rpmpd_opp_low_svs>;
+					opp-peak-kBps = <250000 1>;
+					opp-level = <1>;
+				};
+
+				/* GEN 2 x1 */
+				opp-5000000 {
+					opp-hz = /bits/ 64 <5000000>;
+					required-opps = <&rpmpd_opp_low_svs>;
+					opp-peak-kBps = <500000 1>;
+					opp-level = <2>;
+				};
+			};
+
+			pcie_port0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+				bus-range = <0x01 0x8>;
+
+				phys = <&pcie_phy>;
+			};
+		};
+
+		pcie_phy: phy@45ee000 {
+			compatible = "qcom,shikra-qmp-gen2x1-pcie-phy";
+			reg = <0x0 0x045ee000 0x0 0x1000>;
+
+			clocks = <&gcc GCC_PCIE_AUX_CLK>,
+				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_CLKREF_EN>,
+				 <&gcc GCC_PCIE_RCHNG_PHY_CLK>,
+				 <&gcc GCC_PCIE_PIPE_CLK>,
+				 <&gcc GCC_PCIE_SLEEP_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen",
+				      "pipe",
+				      "phy_aux";
+
+			resets = <&gcc GCC_PCIE_PHY_BCR>;
+			reset-names = "phy";
+
+			assigned-clocks = <&gcc GCC_PCIE_RCHNG_PHY_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			#clock-cells = <0>;
+			clock-output-names = "pcie_pipe_clk";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		rpm_msg_ram: sram@45f0000 {
 			compatible = "qcom,rpm-msg-ram", "mmio-sram";
 			reg = <0x0 0x045f0000 0x0 0x7000>;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
