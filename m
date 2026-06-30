Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3263C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 19:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QB5QjBbkSxYVXFOu4O9wQfATPuZQw/cCqOLbZMj3dpE=; b=DkiEhx4RmZvHa2
	CEyjJFCBe0qiF9YXLejf6vPcuqx11UoKbfffVmhO63wOGgoW5wwx7TCgx+45tr5FpXRyitEZwiHZy
	XYlxQfb9/A8kxgydgtcmsNuUyR+tbpZEHSDWSjElrY7MtFFbJxCAhD5lyop/F5SU0MvVtCbEoCGMN
	Ky3gABzUiwnprcwmhcVcEe/OHJhpzwYZ1IJCyuIQ2kcQO/VdjutJtnYWpnPWXfckpmi9SpuzZQlxb
	DVTRMjTh0aVtdYvrjBQpU3bZfymDjqa97O9n8w7pRrlvp/eyViputnsaEQ1w/lbQQ5eeARif22jF2
	WLYf4WQrjZojn/M1CcBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedkr-000000005MW-1wbp;
	Tue, 30 Jun 2026 19:04:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedkn-000000005Lk-3jiS
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 19:04:20 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UHl2Ju2721887
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:04:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S6Y7YhobAf0BVh62LWHOQSP9ynKHGLmfRU7MX9qDErg=; b=fxcnZ001O+ruLVK0
	BXa5CxzuAefjhn7iYYCvlCwtrsEk0blxOXoLg9y9bd86Kxk4dyXqoOuipge7H4D9
	wxZrY71mt5uXx2OH/aaazQsa2zVvwd/wnLl4Ic06+MGJLbD1t+H3ocZ/8kQLLlfW
	0ThzjGa8xmIqLPprp5RdLDXM/onc3TJLxUDBFnWHUSLNz39/B7B8pZM7D2h+lgHt
	dm9YmyM8p3jOBJ/NNclZzLITV2XXim1sU9uRGwUNBZFss3AUeHVb3MEMJ233DieU
	wRVLPDrzPzCa8m0nPAEdMS593Ic3SQyI0vQ4zmKzwyCXhEqDGEfP5PimuHfs47ON
	HPosuQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4fc09gcv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:04:16 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-30cb5001ed8so129155eec.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 12:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782846256; x=1783451056; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S6Y7YhobAf0BVh62LWHOQSP9ynKHGLmfRU7MX9qDErg=;
        b=BHt1zhf2Ub84ZNUIPLvkL2AgvlB4KY5VnLQCLC5uFWXGyrDQSn4GZNAVlSGE9PsQk2
         LhosxTm0rctzcTo5VJ38wJ6ewrYdz4TkYyjNWmVxPM192Fva9OiNDzG7cKFqbr9YZhAV
         O9VbtMTgSRgWdWwz2h1YQP0gZumCrCHH3UaFeCaIQ8PrLw67v7Gl15C05L8AnWu6hEes
         yQlUVyjoUMyBTkmT2XluFDxKbSHUZKk8VDUd+ML2xAf+OfLCZk4Ojl21qPGfZeUDHJss
         de2sUmdFLWMoykyC28MaiJtaAAZc0yY2p+QjYCKyaDf94nJ5TUYs5tSlWiGaR34dKhEJ
         6ncw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782846256; x=1783451056;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S6Y7YhobAf0BVh62LWHOQSP9ynKHGLmfRU7MX9qDErg=;
        b=OMkuHaGcm1Qn8iumo/tKOAquYAsNz9uNFeulYRkXtDbyMCGlOiozrT+KaAVofy/DzB
         aAHg2CytJmAfPzTJVuliP1g4f+R05mIzZ1pmowKTrDtQiMoOO/yuBgOU4TkvctbnbU3e
         po4rTK3anzojsClWl1LhQmA1j8KUc0HnfaZCwzXk36FtIa0yMX2/E9gd6gC2dprYWD39
         6/4AhzLMSkMB/dRD8UMLy5reULwjuM/oM+h4OuvLXGTrE/dSpbzqIEnBrd66OAZyXkD0
         Y1uhJ7GLgau36AFXqj7LM6R+Q25vkNgxLSzgf6Po8SPymg++/f06sx7iEDT3vFgwWGjY
         6QYw==
X-Forwarded-Encrypted: i=1; AHgh+RqNpKSdJZyp342gMtb2D4dt7xL2d8jtM08y+9WaXX8/I+LnzZ4KlM6afEBavUtAh1KS1lPRFSFA4vk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyd6MjO7b2KPUkAuxJYAgrAIavqi70O30tUDsf5lfd8PUBOLiET
	Wz6LkupayYAAFwzt00ejzZR8c34kobiZkiSmCba7K1UaSFiPFzaxuMSaSJUdGifH3w4CzBPtoxx
	rc9jAFvK3TE8tKpUyMsmWCtb/3UFuUmtAlKypFOFKSjQQXWgYTjZ9uSJBYYRoLLV9sldu
X-Gm-Gg: AfdE7cnHXSw6OnzljN+Veq5LNZLUeK6gnb689JeROTUcMRbE6RcLm05A5FVAR7nPUoK
	7YIKcvsCS65fhWoOgaBgsMNRxsIQMG5efjFMjkgJMGkortDpAFQec68iA2ZYiLrMmSHUQU5sPty
	B8eBnzRPdOz5iduwTmZ+NyGcXxIggkWet4kUdIqZT2fUUmeo0RZ91vGH6GZBH+4gmVzOmHm7PLP
	MwxJDXbySV6JdP8trxbp4BhB1DiaC5c9bFzkmd0qZ8a7gna1S4Mig3CTsExX3CbajNKriqLC+wj
	D+uv68JXPpY6InXORlkPHLTTzbec+/EqKjjib9lb+2CjLdcpSYjFfAmFo114LWxdZ8KYSAAdyI9
	mhn0mUtOa3bhrT3lzjaXCHrd6A8dWb6WP8ZrZ+6abqTZu0+E=
X-Received: by 2002:a05:7300:57a3:b0:30c:23ab:b7d2 with SMTP id 5a478bee46e88-30ef0975166mr1520419eec.28.1782846255694;
        Tue, 30 Jun 2026 12:04:15 -0700 (PDT)
X-Received: by 2002:a05:7300:57a3:b0:30c:23ab:b7d2 with SMTP id 5a478bee46e88-30ef0975166mr1520344eec.28.1782846254702;
        Tue, 30 Jun 2026 12:04:14 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee317095dsm14963815eec.15.2026.06.30.12.04.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 12:04:14 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Wed, 01 Jul 2026 00:32:51 +0530
Subject: [PATCH 9/9] arm64: dts: qcom: shikra-(cqm/cqs/iqs)-evk: Enable
 PCIe PHY node
MIME-Version: 1.0
Message-Id: <20260701-shikra-upstream-v1-9-e1a721eb8943@oss.qualcomm.com>
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
In-Reply-To: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782846191; l=1973;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=RTnxmJmcXqptIc1CpIlZkuSiZ1cZFh1FUN601H5hlC8=;
 b=H+Moevnq+AybpYWzC/36+UGo9gtMkD6aY9ze/Ewovw2zgrcI8aCNgiY2Gku5HmDaOD2qP+Ot4
 qWwR9iSiBJOCnJ4ToDj/gO5wgkYZBE/rhbERXLbAk24+D74dWgNVj9L
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfXy2gOfxW/tXVu
 2e+lloj1Hk7qg1FPv2VXTnjvKeGs2E7tBmBxpmG7+Gwvpp0ADXeZVZiRyj8/901B4g9lswWz0Fu
 MSUpidG/dvJtZCOjn9lGoTaOYlFwe2qAgsOzbZKqW9EnsZvnEZ5moWpI+KPaRKDdIOyakqe/BqW
 kVgyql0FIP5DV474WIil4lDEIWTE+hdYBe7rKTLShAKLfSDWVhFldXWJc7TUz5vDPb4w6PN5hkF
 T8EDFhcpAZ3iRBTjZXV9THO9Xhlxza33KTtP1qE5BlgfJ1blg3xnGGDp3iJIrS0r4G8hQ5NeTLE
 3vqi6bF4LZMBOruTLcYzqqb6hrBAsCHStmvE+NIdMc20jR15NKeC2ScovmZx3cccMAS/uHvJDY6
 kj3jmfBMUQfEmwK6lMqn8STX3QNJ/lpLdfH5vd2LIXGyuxRqT9kuaKf0BTkMWkg57wUBuIklwaq
 c3B7+b7gbvmJ5E/L/HQ==
X-Proofpoint-GUID: 1wqRLCka1hvGBjhR2ygahJ-Ekf81xOK7
X-Proofpoint-ORIG-GUID: 1wqRLCka1hvGBjhR2ygahJ-Ekf81xOK7
X-Authority-Analysis: v=2.4 cv=Ivkutr/g c=1 sm=1 tr=0 ts=6a441330 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=Dx0sEE52Z9zFkSaW5IkA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfX8PvJaNL0KJft
 N977NBbnWcvBjuRQIdkfYhYdfxZRUYi1eqDqL0FIa8ewGq3IwFZ+scgbqF7+tyofZHID4Pn46Rj
 Fr7DBi0CnOGPWx5PTE8ZwUiyWWvbe5U=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 impostorscore=0 clxscore=1011 malwarescore=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_120419_265985_F9D7A618 
X-CRM114-Status: GOOD (  10.74  )
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

Enable the PCIe PHY for the single PCIe intance on the Shikra
CQS, CQM and the IQS platforms.

IQS platform uses a different powergrid than CQS/CQM which explain
the different PHY supplies for IQS variant.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 7 +++++++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 7 +++++++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 7 +++++++
 3 files changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
index 683b5245923b..06ad32041546 100644
--- a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
@@ -60,6 +60,13 @@ vreg_pmu_ch1: ldo4 {
 	};
 };
 
+&pcie_phy {
+	vdda-phy-supply = <&pm4125_l13>;
+	vdda-pll-supply = <&pm4125_l9>;
+
+	status = "okay";
+};
+
 &remoteproc_cdsp {
 	firmware-name = "qcom/shikra/cdsp.mbn";
 
diff --git a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
index 26ff8007a819..e467c46a55c0 100644
--- a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
@@ -60,6 +60,13 @@ vreg_pmu_ch1: ldo4 {
 	};
 };
 
+&pcie_phy {
+	vdda-phy-supply = <&pm4125_l13>;
+	vdda-pll-supply = <&pm4125_l9>;
+
+	status = "okay";
+};
+
 &remoteproc_cdsp {
 	firmware-name = "qcom/shikra/cdsp.mbn";
 
diff --git a/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
index fd691d53a0fa..a7628443cb36 100644
--- a/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts
@@ -68,6 +68,13 @@ vreg_pmu_ch1: ldo4 {
 	};
 };
 
+&pcie_phy {
+	vdda-phy-supply = <&pm8150_l12>;
+	vdda-pll-supply = <&pm8150_l9>;
+
+	status = "okay";
+};
+
 &remoteproc_cdsp {
 	firmware-name = "qcom/shikra/cdsp.mbn";
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
