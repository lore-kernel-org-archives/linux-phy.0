Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37CBBCA6019
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 10:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8qTewcjnVNJrtM+l7utkyDP/WGa1LN2KUicrGVEklQ=; b=3GZouFen1t2QYO
	Wlu65wHV0oYk8D1la+McntlYgQQ6oKGfcKm2GD52X0a85zqQ3uwsP3J5hvF+5kpW32VH5O2NFDjRG
	PsJAxlAW3+ZHT1uDa4QCa99yjgNZZNKW7jR8xOxe0FysE+972vhLUBopqEFvAmy6+RZJR1+nwY3S2
	9XpD24BM4NRDFdtKQ26mxGW6r3B54HHDKmCJzCgdfvVW2kHOHGIxay41nz0/WZi4AishDyihCMAou
	Onxj4S2PNW7OFxD96eIwrAidsvh7SUxG2M3MdDIasRwnGUjWyflrCp7s7VhT5/pHje3z3wnRFit7b
	rwJQAn6RYn5YooS9pitg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7yD-0000000650m-3icT;
	Fri, 09 Oct 2026 10:36:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7yD-0000000650g-10zm
	for linux-phy@bombadil.infradead.org;
	Fri, 09 Oct 2026 10:36:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=IE7TTEPp+mYjYOJnw2S5JdN9e/VGEB2SwjVCAm8BKAQ=; b=YjB+eQVn5tG8kPPHYvchiBP6xW
	vNiTmK66psl+0Upq0ZHwHv79uQgU0imezhdJRnlueK0dAjBwuBQmfEqErb/CP9M7X+fD7nHqv8Zb+
	X7lL20jcZKkCLLfb6g5GEmm0WjAeg4p2FHxAg8xXcDd9F1JD+kLQ1kwbGEPOAHoJuUkfOC+Hj99Xt
	5WNMknUrdE+MSxG5rRIA4vcS5qqW3QO6mGFjFCjA2OsvC+XjcMZdPwS+CMvp4z3mr0XpujubHU72P
	aLaFdCM19AeQRw3lNw505G/xxvM85JjIMcnkTPJsB3Y9Igcu95e+QtlTyB2j9/ACEDjDNigs9erEm
	25zVIlNA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xF7y9-0000000B8Mj-2sR4
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 10:36:55 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6998KIae404386
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 10:36:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IE7TTEPp+mYjYOJnw2S5JdN9e/VGEB2SwjVCAm8BKAQ=; b=gpg65mZTb1CfJeuu
	17tahFNDNqr7iiAQ3T0CYhsx7AiNyR7uTfnTD4/w9r2irb1s/Ml4cNz3tfvcy+at
	f7iU2OAiJVCA+noWpD+B1W7dk5f/DuloVjv9Dtzl/3ezczt2MLmDkEfe6AREXdTb
	2Y+sI/ya4tDMLrjukHNvxMAAWYbgxl8cZ66QUCewg+X+TnJZc8bwlP8Ew5177Q2p
	I48d4WNz/A+N3pDBOc0GgW4KeViND9S1VKmzEtIUAes5klL05W5mlEVXrx6X/TWT
	ci2aoliViIcBpL9Ha+0hrFM2egqZNiwo7N8sg06Y+2Qv7DwoBk9y10PGsyB6Ahpc
	cCjQNg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6fxk35qx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 10:36:51 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3aaee1fc104so2969755a91.1
        for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 03:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791542211; x=1792147011; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IE7TTEPp+mYjYOJnw2S5JdN9e/VGEB2SwjVCAm8BKAQ=;
        b=LfYJkMJNjW1J9MeNIZg5GRQAhBFWGnKfRwK/j5Hi0sn4ZYX8l2X5C6SH6/S/cpMbVq
         craMWaiR1CqNgQfMU9OHSGJeBK0istzBbiSOg/PIQTWylvm0lD7tH5PycRaq5nc2xokG
         ASttb+o0Tj3fnyo6HB2TWlhT3z+OeP6nuOQx2huxiHu98gJawurQXWe9eA2S9b/5tDyq
         nCTYksBeQfj9DU+txWWUAKpD5q9SInwK50KiPIBS53yPZE+5XExR/3SBupBpm9CiHVU+
         lYBYctHn+4xjjas258v7Y6o7mbawL0aWUnLJEV7ya8QvHmDkGM3f1BPk6AUdTY+54ISu
         UtDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791542211; x=1792147011;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IE7TTEPp+mYjYOJnw2S5JdN9e/VGEB2SwjVCAm8BKAQ=;
        b=DCcRY/g6xKjLNmEPgbQDDJBL+9anWBuTESwXZJqC7SAwWfHYiGMa+rEBTv2PzaHFLb
         b6F9IQN3GyqEKa/6W/rs2QKBHY1l9kJJAEEZb86OG5H/GRE9VNRGxtGOCL8mWcqy5BD4
         r+/v4Pt+8O329+ICa2W6jTxcoBCiu6uBBfmHYf1nNNkMaWlfPMgrhwPDF0ecujnUtN08
         skocyUIz5ySX8gcCs6EnkxxKSxQCikYt09r0F6jxQaFB4qKVY+1r2x4Z/AVxeuG7Uexq
         8GkRBJcWUvHOO+/l8RAQIVwxFkpPd8BFF3R8e1CklMcHDILdP7iqCZAiDT8hf5jg/o8A
         Wj1g==
X-Forwarded-Encrypted: i=1; AKwUvBwhE8jjztz2S3KrJGVehrZOu+2+AJoLwDQG/tceqmU3vyP7Cu1eXB50VwbIKo9Tya8jVB9VgLURFJE=@lists.infradead.org
X-Gm-Message-State: AFq9FYL8L/UASkARdaoqHluTvcH+JxZ7iL1taeTx/59/bTvzyqSBBgM9
	y9F1PnWRKq/rSrx+AXbecr0osSQQ7H2eInyCG3qQXurh8RhWl4Ojwj86wenq4jq5BcD+kLqgw1L
	0kfdISflqblgcIdZCvWy5Z+ExbTULKPRW+R0lGOlh7LXkf8iLu2cUToWYl1EnZAIE/lhN
X-Gm-Gg: AYBFou2y91BVxnBdwqgK9SE7mOla2ijEn+uJ4yr2KDaa9rNtJfh2nZz9WvW0hUlTGZV
	Pm8P+1LFJrDoKWV1AusQH2UL1mwj/dh6ICf/HRItQF0OGpCw+PsaYMKT11d234CPGyiT9KPGgew
	g7kkryyJOis7tbLT3HLJVkv4zb11Lymw/S5TGxgKEzIA/ctiP8F0QIIOJu+7pZkanjzdkSIcWyB
	Mg3e/5GM8O9SdLvwa6k329Bj/wYkgkYSrJP1vLQl6gnM1fJ39DK2k44JYyl4V2bovHlwowTXyw5
	/MFYnvh/SjG6s1xEDpsRjzJXCoAt0uZIWko0uHFFjw1WhzT5VJb4fBLuuMZBjHZ50iAieOmziKe
	or8NqW6eiC2ib+Oupcvr1h/rR
X-Received: by 2002:a17:90b:1d4f:b0:3aa:6b5d:a00a with SMTP id 98e67ed59e1d1-3ab3ac7912fmr1351562a91.53.1791542210891;
        Fri, 09 Oct 2026 03:36:50 -0700 (PDT)
X-Received: by 2002:a17:90b:1d4f:b0:3aa:6b5d:a00a with SMTP id 98e67ed59e1d1-3ab3ac7912fmr1351545a91.53.1791542210379;
        Fri, 09 Oct 2026 03:36:50 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab371c32cesm2827285a91.16.2026.10.09.03.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2026 03:36:49 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Fri, 09 Oct 2026 16:05:56 +0530
Subject: [PATCH v4 4/5] arm64: dts: qcom: glymur-qcb: Enable UFS
MIME-Version: 1.0
Message-Id: <20261009-glymur_ufs_qcb_enablement-v4-4-9a6ce83195b7@oss.qualcomm.com>
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
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791542167; l=1034;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=qZOq97SsVPti3oQZnFWkZh3c728gDdolT+V4/jasJQk=;
 b=PXedG+C7Vz/FcxbMEUnWOm+ZponbU5XxVcmfG0e1f742kHIZOPwWSFQIMT8Hbr95BQs06AhWu
 DEZUG0C7Jl1AAqG3ruPsXNdZ0KITXgm/PqFFNUKj0mu6a194VEBX8yg
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Authority-Analysis: v=2.4 cv=fKesTpae c=1 sm=1 tr=0 ts=6ac8c3c3 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=cMKPt8sKVRzp0kMMbBYA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: br2k7dI13r3APpzURB6lZVXDLfynRJ3E
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDA0MiBTYWx0ZWRfX/wtYmoRwbGLK
 jnvzpOwzaC2CJBErIfgpuWKIjLIXTW6cvvq4a1cVH2iBFpdUTEcMDoeXERAsrPifMFqm9WXePmS
 BkYSxBQyFriwX3W8jb3NFSm+ruJzQAY=
X-Proofpoint-ORIG-GUID: br2k7dI13r3APpzURB6lZVXDLfynRJ3E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDA0MiBTYWx0ZWRfX/I4TSAgGMSps
 aHbcT+/uHfsM9lv5VGdIrhbfwWmhzgCN/o4kETwno2y+2qlb6ZQcQKfcYV2jvgFTqCMq+bIv0wk
 /kk9minpbflZwET+7bgQqVMVSP6WzmmTX3hZziM7+4vhQ55xb/zZVkk+vwKtUW9Iyp4E3i1nDUu
 31gxviZgWaZ2E1qh+cdh/22mx2yf+kgFp/6Bzrx3Sp3IDkMwMBhkIVS/FdN5S3ZLhMxwBuwiIjC
 ycAWDSPUC8fnJis0tcg0vi1Mnp9J7xgvyTZZuO1U3yZnH4iZDV6ZKyvQreMqMYSaYbtA7JEApH5
 IFbYQOBO2HFfNZ0IBDIPrVxRJ1Nd0e6DeFQas5utCSPEvvvmgnI+xNasXIdJ1K8SLCHfolvCvcU
 VmTMzyj6Z9M0A0JHr7btkkaLxfjAQVTtddpp1H/LK2ut9oUCNn6TVbAfn0+5H8XSxNyg6DQ23oC
 K41dNEBPFKJFaIGCOAg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_03,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 clxscore=1015 suspectscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610090042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_113654_159199_02DBD40F 
X-CRM114-Status: GOOD (  11.49  )
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

Enable UFS for glymur-qcb board.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-qcb.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-qcb.dts b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
index 17d8ff3aed23..f17181bfeadb 100644
--- a/arch/arm64/boot/dts/qcom/glymur-qcb.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
@@ -697,3 +697,21 @@ bluetooth {
 		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
 	};
 };
+
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 250 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l17b_e0_2p4>;
+	vcc-max-microamp = <1200000>;
+	vccq-supply = <&vreg_l12b_e0_1p14>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
+	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
