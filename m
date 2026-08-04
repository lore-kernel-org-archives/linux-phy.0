Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A6BBC55184
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waiq2PEk4Ukl78KIhDlCI5ppjaPmfLeFZRDi9JwkPeQ=; b=DdIntGvnbEWzJz
	XNxqt1221cLEQXkvPh+NdstaDE62My4Ko+p+ZFjvkY9UDHjS2547Puntnl6lnLj5nQN5odgKVdbBB
	2GeCSl+CbGJJn9bZ6xzx9wr68Q1MxQBnP8J8vJ7rz2vKnHE4gtSz+0vqqCDjIXhro2qWUPcltFDQN
	gKlx9rvXxSZmsslxbUXG3CokTwHc2A5ZCIkowau//ph6cVAm79Z74Uv6q8+uBblI9UC/EC+AW/ZKe
	tn2W1VQtx/tpGH1WfzniRBNrHUYyrm9AXUVLA6xeSsW1h2aeRp+3vLWgBz9i3bNV10wvon+ykaVJ6
	PFR/ZwLfmdwokh0Ik7Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrE98-00000001noT-2yvZ;
	Tue, 04 Aug 2026 12:21:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrE96-00000001no4-09jP
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 12:21:25 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6748BwEK3016127
	for <linux-phy@lists.infradead.org>; Tue, 4 Aug 2026 12:21:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=KdKj898WkIL
	sZS9tdgYY/c/+Yvj59qA1oLwiS7hsA0s=; b=OKZSPj4pQ3y/QUHtdNNP04qQD+b
	yvl8lhDfV7yzGElWD9L34p1Qnzgm7P9zBVzM8lWbnHKsCdTrJmEFA3kAB8zc2dPj
	lA9ptYfM6RDXot8wn7wspYFH/xxcs4KBZajlehF6sE+GzeUyg/kzdm7D8uw+9GS4
	2HI6DG+Zop5SGDUNtHFuXFEDiAexpCUzdPaNgqq7J83sj+1NC0vzrq182bmHu5WV
	mRqSRUz+t9KooEJJh7pEz/7Zt4JSKZM/B+m1VSzP1yRU2bQaxyHWIvICFVhuUynl
	p/AduFXST7onIC9RXrTnCkaNRJPXMYw/4HTJSSzY0iKYqwV5Ji1eOMbnEpA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fu7272a3r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 12:21:22 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-38f5ac7354dso8225750a91.1
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 05:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785846082; x=1786450882; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KdKj898WkILsZS9tdgYY/c/+Yvj59qA1oLwiS7hsA0s=;
        b=bA5ArYKTEMqa3XEQWZh8ZVA8Crq4Y27pHUdQJdL+aCWbKC/m2YyW5X9cI4ZJYuefZn
         D5CnmdNPFdGTRVlWOlNHwH6MU7u7wAMD5A+R4aXSmsQR7mCtJq8KCqriMwnOiRC1vxc7
         16Cv5e0qc34zXnsHB241X0SEQGtXMImGbj8vQ1Pc7idjvgKg//8YfPV3JdhCl7YGClAq
         FLYjPuuWMC6lGNDZKSRQyT9ZmpYMYqEulnGV0rRc3zewJdVcnxd06N19vBYi+PcssOwq
         l9ACxYM6k09r/5um4L+7B8+CUozVKL2ZH0HfIAyOfViDuws84hl+gCuFMj03hiACyDIP
         /g3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785846082; x=1786450882;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KdKj898WkILsZS9tdgYY/c/+Yvj59qA1oLwiS7hsA0s=;
        b=KQElPK3Fu6YM354PydGGnlTE4thSJ/HxaVpQ+mfK9VDs8xY0AtPT4wXsdlej6uxZ/x
         Ju5BY3uwvHPfSqYRHEUVxMtPPKNjZhROMMVareLl6hnSZnI9okG1B7AsGov3kklOTDyr
         y0dRkU3xsUFytetjvEa0TDzofkQA6H1r7AwTYotSrdvqww2KrQY5fpMh8XsYBs+i2UNg
         Ul2Yujfvmx+Ovpt5DoAA42RhIqIal7MEyeghScxl+4apYVvP+dc6NrtA+bwtIHeJAWrJ
         6NnEfvbERLIgFIWR5IxMhv4EI64g4GhmYWGF+aMPLcmgvcqmBQegpVgWi4qxV9l4X2Or
         YlGQ==
X-Forwarded-Encrypted: i=1; AHgh+RpK30NA68qnmxiwIHcY5XUvJmyDFDljuTnLCyoMnCr6zz5n/stymOyoQJWmgk68+JPtCkFG/8k3uzk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwAQsEEJ5FgTW2nHVvkOey4qsIIAHZp/RdJlNYfB1jVf1Ug881Q
	pFVW2HHKICmB7yJd2SpAb7nJg0ezLalaqO3niltNiRDneE+Ih4HUElqDJZxyS4Uogqej9Z7lPfV
	0TcuEjfv3rhDoS6J9aoo9G7K0wYVqKBe06mB3K8euS5M3CgcS9u5iuT3bgUylGuq/2RZk
X-Gm-Gg: AR+sD13MXOALHL6+6aaxSaP36o00BYmsb++Q9C2eHNhd+K9L35acJV9g/GxykP5Szih
	yvc+ckx2GgfqOllQ4bHC+LMJR25fHn3ZSCAwqeDSkaYpCF8vUhZFcRlMrNxnS6Qm6noYupuSSQq
	NYaOMq0YSi1ygHbtB98e9GUax0MUsycBzefVNxaq+mWf0zQrPP8DZiZtVu5K2MoW1BpcHXULH7X
	qiF2JwtoltU3UXqaHCZ/L7Dv6faFsjdlOarAQ7ufNymhNjvNpM7TkMmKJUckIy/GdMTvFPgDkME
	hHfEa/68iBFPm3Ab9FoOtSx83DybhBN7HCC2zTuOXlpS+1tKwt8YsGhIiPB2AXYcCY/BDVciBt8
	+YcL4701C1Jv66aOluiel2309hFZF3Ms96I0=
X-Received: by 2002:a17:90a:d004:b0:380:873:49cb with SMTP id 98e67ed59e1d1-38fbc4d615emr13286640a91.21.1785846081771;
        Tue, 04 Aug 2026 05:21:21 -0700 (PDT)
X-Received: by 2002:a17:90a:d004:b0:380:873:49cb with SMTP id 98e67ed59e1d1-38fbc4d615emr13286167a91.21.1785846071748;
        Tue, 04 Aug 2026 05:21:11 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38fedc650a0sm1237832a91.14.2026.08.04.05.21.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 05:21:11 -0700 (PDT)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V4 1/2] arm64: dts: qcom: Add SD Card support for Shikra SoC
Date: Tue,  4 Aug 2026 17:50:53 +0530
Message-Id: <20260804122054.3462145-2-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260804122054.3462145-1-monish.chunara@oss.qualcomm.com>
References: <20260804122054.3462145-1-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA0MDA5OCBTYWx0ZWRfX92dcW3xWsjNG
 ATEH/aC/epddAQMjnXd1gA5sT6SrCefGwfkjwoXJBNFLtc2W5gJBtR+PZMtjXCHzt1zwpIEcRar
 WOeZTtuQ2DOF3ntudQ0J7qeN7bDshRY=
X-Authority-Analysis: v=2.4 cv=Z6Lc2nRA c=1 sm=1 tr=0 ts=6a71d942 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=8A8miFJkZQRJ8vCztksA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: SX-wzBp1v6FFH3Uqf98lb46KNMFvzZd6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA0MDA5OCBTYWx0ZWRfX8YIn5lqs//z0
 1hmFulAqYml8ftHOnnLlUNctoKzgxvlqJv2DKcFHUJ+PY+ixpGBGxCWMNpyDW5l9eGQjiDO1pNt
 2ntGFau+F9SYxh8GsKJQNIwSA3Ki6v7aXywFnXbpakmTh5q2ljVGzm3fB2QKXWNxF7GkWifNFFV
 pKwb5XNYknCEExOOvr14fFZhH17IaWOzCCXc7hiZScPNo3rBy0hbii28zDTiE1/SoNNGoA7gVlr
 2P/e/ekZCBCYpwBv4yasR74t+vTdlCe/xGxVEWvz6t5HLq5LzTAQfca2228uImMqUJ+WXkXFqtw
 gJ25DKKW/G23c4dZOMYkQzewtICjDCwykh3TOPK54sHx6LPYrY7t+kPOMcj5nx/md1OEeo5BC6w
 tCOkt/xa9X9VwZDEZflZMHJMxUUisM+QI/ur1Y850ZVN8XfhUp/rqRnT/2th0MGQZdXy8Jgl1G/
 SMz95RsXKH9b2afgSHQ==
X-Proofpoint-ORIG-GUID: SX-wzBp1v6FFH3Uqf98lb46KNMFvzZd6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-04_02,2026-08-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 bulkscore=0 priorityscore=1501 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608040098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_052124_214702_1EA0C880 
X-CRM114-Status: GOOD (  11.78  )
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

Add support for SD card on Shikra SoC and enable the required pinctrl
configurations.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra.dtsi | 97 ++++++++++++++++++++++++++++
 1 file changed, 97 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra.dtsi b/arch/arm64/boot/dts/qcom/shikra.dtsi
index 80e8045282d8..1c56b43887e4 100644
--- a/arch/arm64/boot/dts/qcom/shikra.dtsi
+++ b/arch/arm64/boot/dts/qcom/shikra.dtsi
@@ -404,6 +404,53 @@ rclk-pins {
 					bias-bus-hold;
 				};
 			};
+
+			sdc2_default: sdc2-default-state {
+				clk-pins {
+					pins = "sdc2_clk";
+					drive-strength = <14>;
+					bias-disable;
+				};
+
+				cmd-pins {
+					pins = "sdc2_cmd";
+					drive-strength = <14>;
+					bias-pull-up;
+				};
+
+				data-pins {
+					pins = "sdc2_data";
+					drive-strength = <14>;
+					bias-pull-up;
+				};
+			};
+
+			sdc2_sleep: sdc2-sleep-state {
+				clk-pins {
+					pins = "sdc2_clk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				cmd-pins {
+					pins = "sdc2_cmd";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				data-pins {
+					pins = "sdc2_data";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			sdc2_card_det_n: sd-card-det-n-state {
+				pins = "gpio89";
+				function = "gpio";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
 		};
 
 		mem_noc: interconnect@d00000 {
@@ -604,6 +651,56 @@ opp-384000000 {
 			};
 		};
 
+		sdhc_2: mmc@4784000 {
+			compatible = "qcom,shikra-sdhci", "qcom,sdhci-msm-v5";
+			reg = <0x0 0x04784000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 350 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hc_irq",
+					  "pwr_irq";
+
+			bus-width = <4>;
+
+			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
+				 <&gcc GCC_SDCC2_APPS_CLK>,
+				 <&rpmcc RPM_SMD_XO_CLK_SRC>;
+			clock-names = "iface",
+				      "core",
+				      "xo";
+
+			qcom,dll-config = <0x0007442c>;
+			qcom,ddr-config = <0x80040868>;
+
+			iommus = <&apps_smmu 0x0a0 0x0>;
+
+			interconnects = <&system_noc MASTER_SDCC_2 RPM_ALWAYS_TAG
+					 &mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
+					<&mem_noc MASTER_AMPSS_M0 RPM_ACTIVE_TAG
+					 &config_noc SLAVE_SDCC_2 RPM_ACTIVE_TAG>;
+			interconnect-names = "sdhc-ddr",
+					     "cpu-sdhc";
+
+			power-domains = <&rpmpd RPMPD_VDDCX>;
+			operating-points-v2 = <&sdhc2_opp_table>;
+
+			status = "disabled";
+
+			sdhc2_opp_table: opp-table-2 {
+				compatible = "operating-points-v2";
+
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>;
+					required-opps = <&rpmpd_opp_low_svs>;
+				};
+
+				opp-202000000 {
+					opp-hz = /bits/ 64 <202000000>;
+					required-opps = <&rpmpd_opp_svs_plus>;
+				};
+			};
+		};
+
 		qupv3_0: geniqup@4ac0000 {
 			compatible = "qcom,geni-se-qup";
 			reg = <0x0 0x04ac0000 0x0 0x2000>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
