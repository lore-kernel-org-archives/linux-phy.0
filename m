Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684B3606A33B
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 02:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Gx2Kr4ll;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=NYdFd5bs;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=SvLUJfOU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=o6o6Pyidl8XOjqyK2/YTw4idYnZEtN9vw7TnqyJKXLU=; b=Gx2Kr4llbmBdtW2gDfFz53eioc
	cSYMzCyirQJDiILDoefw/AW2b5272ku+7xugJvduSuriwCz04lmDf1fYHgFgFgACH1pIDb605OZcM
	fEZQiUXVl1nBAcKxz2X7ZzxQWlBavWDJVEWKXpQl/WVOyaN7auZLDBMGBt9ntWXT3ydhTefXYX4tS
	rqE7PiGVYdcddSZ0+wRggPO7FNPfB8OfHGsK8WDVV6pJKBBYxjsA2GDXwTgSTMjldH2IyLVjJwBgn
	BEMynze6h33s4bveQGzwWZkQYTH8fBgp2fRL4XIgRYTjF63GoISlMByFvSspWSCXOJVwo1s0v49Yw
	PN7dedXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxlN-00000000h9Q-0YRO;
	Sun, 22 Nov 2026 02:57:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxlL-00000000h94-2c0E
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 02:57:08 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AM07oDl2172915
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:57:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vcCSKiEVp1onOIUz37SBkeUiaPNCLwE5jiEgCzuAmSA=; b=NYdFd5bseRzfCXzt
	d8aJg5vz4MYycLsLY6gJcUjcBbyln2NaS/SgvQPXbQialcB55FHjww2sBKAq8qia
	h6aDB9U+2/CtlVUTvFN/JRYgumvbLqkT90+rz/fxgMTgJDQQtk/twHMy7/ZEnMCI
	evtaU8xv69mJDERv0vsAW0ARveftu4lfJ45+IK9sOOQbWJv+Hqd2ez8FmLg0txCX
	R1kytBO2gZVh8iUOLTb2/2fliVmwqjRz5me772JxUQpkq257V4nwjrO31erueNVA
	IgTJy5ZM7g+5F5GOl9qso8DQyNxq5qOCoMgcH0+zgbs+ysVYmdQoVCnR5s4Kr+YH
	kviskQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j328rtq4x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:57:07 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-386a65fca25so360654eec.0
        for <linux-phy@lists.infradead.org>; Sat, 21 Nov 2026 18:57:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795316226; x=1795921026; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vcCSKiEVp1onOIUz37SBkeUiaPNCLwE5jiEgCzuAmSA=;
        b=SvLUJfOU5fV2+HtFTvykT5FbDuizuzd2q3pbVpL57EHSF53wpWlUOZ7DC/Ta5w63LE
         lGJmjl8bXjAN6QaZiV9PJZyPw/kMFilzP8gH+UBAoN8F1CtSkFyMWqC2tMJsRj/xH4q0
         Sx0LuZ6BPlxmpgjdNqEpfCSjVOGTE08lLeZo4y4Bx4Zme6+Du3ptrBcAXKuxGjjLK7Gp
         cJKRDG0eBTiCrXHX8lUmmNCyHCD+6m/i+qtcHRjDl96EYzWGHzfhxvZAK5j5merBbm/V
         B+idKSTGWHoNWlMuYbpY3KQTW1b1avwzHcNRZzKDLIx0ywJyeMqnsAW0hgQUqM/kpEC3
         2d5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795316226; x=1795921026;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vcCSKiEVp1onOIUz37SBkeUiaPNCLwE5jiEgCzuAmSA=;
        b=ngk5u+vCnXLtU4XhujSdr635g0TYQnWx3Zk5BdpBPZA/T9WWU2taqxLetd2soA4R9I
         YRDJq4sL5bxWEobGKxJvKxbsf7wfUCGZocgmXN8uFBeJ2zb7r5BBdsPjDCbdSH+7YTLv
         emJL8PxLFNTlmNEMtc+icgfhD56FHs4Wu/TFZLE7xsGJuBRHkPtwvmfe+RNinkhSxmld
         VctQJIev1Xd0ng0x9IsGcyitKgZOfeS0uvjpBmiDrTyy0LDeDMr0EqXAt0tYTGVamzHJ
         Q+aT4tK9PlyUKcfDMpVaozZNcc1mL4klMBz0YDVPBNAc6S3FUh8h3otj3z3VjrXTmdb5
         rDTQ==
X-Forwarded-Encrypted: i=1; AL+hErGt6B9a88f0PTMVk84yJk/2T0z4vdQlBL3EPkWoXAGcQPfEKmRYAtrY5s1BBw8XVzp2pfWa8Nusgpk=@lists.infradead.org
X-Gm-Message-State: APuU4Z+0HDGIHQqi1Lm2bA5zuDiX7+JElQggxLPWtL2UxRufQ/Tc/L0w
	PhU0bOX3b0LPBJ2fkm3Q5mgubPruIQdYquC7IGIJhYE5US/PuYC8gqqzo5qg1iIl/Pfdg7klSgY
	5XPMHp0a1qWTkpe7fKL2VHcKRKxxS/mKI65VXlow7jM3ZfnlklG4UfMpxqtCdbtiTV8e6
X-Gm-Gg: AZFdTZfdyAPpc3T/gktDkdc9+SRDy9BWuBFtm0fb6kY+BtdSeNpTddLVC4sXGa3jjOK
	lCf/aDpEul0UkpHC35u9lCZ/4OrBfxisicthPVBMSXRpIBad8U+0TCUfWkzY4yiPCYHbOq2M8I2
	QdkVQAvdg9smn/c0jZBdjTaLlJ5J7neJ4VCEME+u7qpBFiYvW3x75B7T3gk6TaWBmw0vbzM1Zvr
	6bJ+SQqwBDvziwbV0SykmuHiX+K+f1F3ZCXk/Ej/i01abY+Hani92U/uEPa77NF5QggtBofbyJ0
	jfv/WA076ehv2D+8nhi3VoylVor4tsCLOp3ngcTGephWtplLWo+nFxh928NXvX3bdRwWAFgqd9f
	mAlFzSH9Aoup2XAJ4ILQXaqU+80GhZfwEF2fmAiT2KGYSPui6MPwV1UDDQxyHrn3tjQ39Vr8Qo5
	P1LUWMQIWO
X-Received: by 2002:a05:693c:68d3:b0:386:912f:c8dc with SMTP id 5a478bee46e88-386912fe5efmr5271995eec.6.1795316226435;
        Sat, 21 Nov 2026 18:57:06 -0800 (PST)
X-Received: by 2002:a05:693c:68d3:b0:386:912f:c8dc with SMTP id 5a478bee46e88-386912fe5efmr5271971eec.6.1795316225925;
        Sat, 21 Nov 2026 18:57:05 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aaae4960sm312044eec.18.2026.11.21.18.56.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2026 18:57:05 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sun, 22 Nov 2026 08:26:18 +0530
Subject: [PATCH 05/11] phy: qcom: qmp-pcie: Add PCIe endpoint mode support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261122-nord_ep-v1-5-6d8839ffa9aa@oss.qualcomm.com>
References: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
In-Reply-To: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
        Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Frank Li <Frank.Li@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Niklas Cassel <cassel@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: mhi@lists.linux.dev, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795316184; l=3245;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=9UVXub4tyfQyqAJ5iLairdqM1PlMxztFvo8mRpY4zlY=;
 b=/xrnyvXAlwvkroxvh1fh6Ne6gyQ24oDqJjVsXBGs8mljggskqwHJ8AW9eNpwHn3irT19BeiYT
 lqikiJvdKZZCrCsuPpUawQ1VpjJCazPuc8cDV0m8ITn42MGHDQw3421
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX/Z0zrfdFGRDx
 kGkMcvE1PMieA6oizJSwuhg/cZ+6sYa9TlRs4QfLwZP7Wi2ylA5DCqVqC3XM1yr+wGvvLSMvcQA
 ginlG7vGtXEUf6S9YsH+q7tZF0y2Cx0=
X-Proofpoint-GUID: 8oBW0dug8Ho_m4R5nwK4DAui1d0DZZCK
X-Proofpoint-ORIG-GUID: 8oBW0dug8Ho_m4R5nwK4DAui1d0DZZCK
X-Authority-Analysis: v=2.4 cv=c9w+0h9l c=1 sm=1 tr=0 ts=6b025a03 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=n6AvfDos_TaM4Tq8RocA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX0SMrbUAE7bzO
 DUU+a64SiEZ0HhODxyxArAPOeJ754cK1HdsxzvSY08b23uZkKTn6TGIcsBDCYfLOJZpXRn6La+d
 y6oWr9cLQDDx3QQnQMaaiItHsGuyJpJyS1xXVb1L2XIvs4JIGTJnsqWngTsJ05Y/48UefR325ub
 R5GDP0zhoyxwUdNY2f4sxJ9QkYfKEbolHVFDMHB8isCvXd6LBxI2DQiis191kHMJhtV5r+AuQmD
 AVCbSKF6J8Dxu6tCbZE7Yba6N+wvtfXwba0GulJDGqTxFGe9CWG6xaRIFGV+HPwz5bTZMvH2UR4
 fBMoPqW614fijkJZRoB9dcaWv7pTuC6uTFdrcvJIojHxsVCMTve/4WGApY0KDgTHfxT+P5h/mmF
 VUizFyubocvn+oxPOE1OLpaENBd7oX5iapibEDUIu+rBdSgAf965eqxe+0vshgwaNekNrhpY9Km
 edtq7PVQkZTV1bklNcA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-21_06,2026-11-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611220011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_185707_670700_5F4280B1 
X-CRM114-Status: GOOD (  16.73  )
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

The register initialization sequence differs slightly between root
complex and endpoint mode. Add a .set_mode() op that records the
requested PCIe submode, and an optional per-config tbls_ep delta that is
applied as a second qmp_configure() pass over the pll_common/txrxz/pcs
blocks when the PHY was put into endpoint mode before power-on.

Configs that do not provide tbls_ep are unaffected and continue to
program only the root-complex tables.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
index ccdb7748a9e1..21cf6adf7d60 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
@@ -13,6 +13,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/phy/pcie.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
@@ -89,6 +90,7 @@ struct qmp_phy_cfg_tbls {
 struct qmp_phy_cfg {
 	const struct qmp_pcie_offsets *offsets;
 	const struct qmp_phy_cfg_tbls tbls;
+	const struct qmp_phy_cfg_tbls *tbls_ep;
 	const struct qmp_phy_init_tbl * const *pll_tbls;
 	const int *pll_nums;
 	bool port_split;
@@ -121,6 +123,7 @@ struct qmp_pcie {
 	struct reset_control_bulk_data *nocsr_resets;
 	struct regulator_bulk_data *vregs;
 	struct device **pd_devs;
+	bool is_ep;
 };
 
 struct qmp_pcie_multiphy {
@@ -930,6 +933,7 @@ static void qmp_pcie_init_port_registers(struct qmp_pcie *qmp)
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	const struct qmp_pcie_offsets *offs = cfg->offsets;
 	const struct qmp_phy_cfg_tbls *tbls = &cfg->tbls;
+	const struct qmp_phy_cfg_tbls *ep_tbls = qmp->is_ep ? cfg->tbls_ep : NULL;
 	int i;
 
 	for (i = 0; i < cfg->num_regs; i++) {
@@ -957,6 +961,15 @@ static void qmp_pcie_init_port_registers(struct qmp_pcie *qmp)
 		qmp_configure(qmp->dev, port + offs->pcs_lanez,
 			      tbls->pcs_lanez, tbls->pcs_lanez_num);
 
+		if (ep_tbls) {
+			qmp_configure(qmp->dev, port + offs->pll,
+				      ep_tbls->pll_common, ep_tbls->pll_common_num);
+			qmp_configure(qmp->dev, port + offs->txrxz,
+				      ep_tbls->txrxz, ep_tbls->txrxz_num);
+			qmp_configure(qmp->dev, port + offs->pcs,
+				      ep_tbls->pcs, ep_tbls->pcs_num);
+		}
+
 		if (cfg->port_split)
 			qmp_configure(qmp->dev, port + offs->txrxz,
 				      tbls->port_split_post_cfg, tbls->port_split_post_cfg_num);
@@ -1179,9 +1192,22 @@ static int qmp_pcie_disable(struct phy *phy)
 	return qmp_pcie_exit(phy);
 }
 
+static int qmp_pcie_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+{
+	struct qmp_pcie *qmp = phy_get_drvdata(phy);
+
+	if (mode != PHY_MODE_PCIE)
+		return -EINVAL;
+
+	qmp->is_ep = (submode == PHY_MODE_PCIE_EP);
+
+	return 0;
+}
+
 static const struct phy_ops qmp_pcie_phy_ops = {
 	.power_on	= qmp_pcie_enable,
 	.power_off	= qmp_pcie_disable,
+	.set_mode	= qmp_pcie_set_mode,
 	.owner		= THIS_MODULE,
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
