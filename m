Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCD1FC88E4D
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 16:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxJiGgtBUUcTibuvQSivTar2f2zfrAVWKlJ0CZYyVpg=; b=BjH93jPY4jovNz
	k4oVRAo32RoiHpKv3SaAu9K69dvzmrgak4PKzs3lxiPLXEz0Lsz3Yv1s8uqt17jvAhofCmRqQbJKx
	qc3hMM9bWuPm1p8bEjdq+LSfB47fC2pXU3kZwLuu9UCv7KfOtpz4ON1nN9m3qfGgTzLf0h6iD5IDp
	duwvo2KHtewPR+BGQH+PrZnltw6xS/4L6rdLzYrXE2sIC6dcECBZClOXCweVDLUGP1DTL6znPEOyC
	FZV2cX/wRWX8fP96U54wrjtr2J1XThxWu0PkQi1LqU4ErYMX9f/UOom5ZjnBdvK2t2KpsVdN+A/iH
	JrnLGiwhplogvtgiGA1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x54Pr-0000000HFvG-1X7x;
	Fri, 11 Sep 2026 16:47:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x54Po-0000000HFuL-2T1B
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 16:47:53 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BF8h6H170537
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 16:47:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4cEUKXE5DpqJx2/opT3X9YU+08mmezXZCIySb8mUzYc=; b=CNhBSeedpGW5VovD
	U1Ys8HrY/OdLzrABvXpUcZuEtw+/fmKlpT8uwEb2vRdozY46uy/bOzDWHesWEZ9n
	cFBwuQOQJZzQSEhIJdFuff7BBPfcGUPo+34Ck/MqQVR+81Uf6zyhKH623G6xdZVC
	BpT+76sNr+hEJS5rTkOounBjfusZbBoO+vQIePTJm3DjBD7y36xU+TOUk3VTuXba
	yNEVPxyelQGOZ1k++DeT6z8ZMjlT+DbulJHBKgTWxtkmcSbo/7ufNBcVxuecA9ii
	X4ZvICApLScQJ/3sZfEq8ivGBie7bSjd9Olq2rzjz4lPr0aqxujhlOqYhRDFIp3a
	kzCRHA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmm1e8d54-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 16:47:51 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-39533bb224cso1352600a91.3
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 09:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789145271; x=1789750071; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4cEUKXE5DpqJx2/opT3X9YU+08mmezXZCIySb8mUzYc=;
        b=Q+QWpEwVX0O0AyELXYmYtrQo0f2YZtS9W/tsYZ9OED56o0mwyT3AnxgRIGqIKQFChz
         wj64d9b1HXII/kbyGpR16jPIn3cc40p+QwFXGIVOF48fT/SRUTGaWaMx02ZbbH0maLnZ
         3e+SN1TQUV9gSaqnOGHX92jcZbrMGzi4M1IUpApTPY1rieSjtr/OCXT4X7S6+7eDM0kX
         UETJSDXp2JEm+dYTYMEY+uXBm+yMP96KoAzJlqKv5e3UJY2ZIoJYxWkMqVJGM25Z+wdN
         hU1nXhgftZ83V1hJG7teLLAoEHING9AYFrNvTHJ8xjq3hUirSMco9kHHoRrKEfeND33g
         fhpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789145271; x=1789750071;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4cEUKXE5DpqJx2/opT3X9YU+08mmezXZCIySb8mUzYc=;
        b=l7Qs1LF7WzSGM0Esj/qmn14Ti/L02kusEOaSv5o90DBEYQm08EYNsu4Vuo82cF/ZUe
         EDd1eChHSx1uSLB7s+1OXcB28dToRzfe3MwMl7mMC4Y1W0wBZz6EvwQNyK9/lb+lmC7o
         oL0SyEofVGvPEjl6lIAGoH3dYloxAOELUAqmUHXmOw4WtW9ByYoR5X/HWO3+VIV1TN+X
         SlB09x0PyCxOpq/rY9cn9Z12oHejZw+i3bwJv0ObRpFKPxZs72fzST7xNznMXj19qxLu
         RkD+5H0qPlRYr5iZcOp87VXxI1Ui4hZm5NuAt5XWHsdX9Wd5xkZyvY/vurEXTHxGYRKR
         xWZQ==
X-Forwarded-Encrypted: i=1; AKwUvBz3GP7QfKmX2BW1vC4+yE361H9NFblO1hQb2MW7cqGRmnFJ7L30LJzjPoXiu6qZqRRtgGYShwqmD5Q=@lists.infradead.org
X-Gm-Message-State: AFuF++mYntgpCSltBBCAX5/5gP7RBoJx1tDLGtxXd40LfO9CtZ5/TZcq
	skiUiE/bofIKKk6yNsIdbBR2Sy0Qlctznm5azVu0WqjcvfrqCT24fYagdXftRj9PVLV2B4RVWJf
	Ykr5r9XSkNlI4p7n/4sc/SEyD9OSwt20DJBzFun96LKmpO7b3dJOrpbb+4e+f52ccEWHGaQSi3J
	Hw
X-Gm-Gg: AYBFou3nqOKAcPu81C2fpsEvgRppjbKUpJteSZwLeDnIINtnL0aQPksLxYRcScG+O8/
	QBP7RsQueiqbxfwu0NU8CY2IEKDYmeaOLNckpUyvvjw42G1wNJHR6PbcBrSTQRDct0GXhZFT8+V
	D+MYiJ/EOu6eEm5qXn3GfFshdRadSQwBwPfHe1BxHAcSFxH4oQXXyEthfAlNCIWkrtXf48Pp8H2
	9IyssYzKEZjclEPzaNG4pVa9CmDuieCBaK0yDQItwyCB45mneT18SM7NoAzvNldrNYdUYmkzMF8
	pC3ajOzgoT2/cMw4O3wLP4I8RRer1OlfobZuADSxtFoDf2Zh3b4/8ajBTO/+s0JUzJDvSbvX7da
	9jzNlYXcaHMwmtOBCIXOC7+Bn2A==
X-Received: by 2002:a17:90b:2701:b0:398:9beb:5c19 with SMTP id 98e67ed59e1d1-39d9c21b92fmr8855386a91.20.1789145270630;
        Fri, 11 Sep 2026 09:47:50 -0700 (PDT)
X-Received: by 2002:a17:90b:2701:b0:398:9beb:5c19 with SMTP id 98e67ed59e1d1-39d9c21b92fmr8855325a91.20.1789145270189;
        Fri, 11 Sep 2026 09:47:50 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39da64d4bdfsm944193a91.0.2026.09.11.09.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 09:47:49 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 22:17:08 +0530
Subject: [PATCH 4/5] arm64: dts: qcom: glymur-qcb: Enable UFS
MIME-Version: 1.0
Message-Id: <20260911-glymur_ufs_qcb_enablement-v1-4-b9fc5e2ee99a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789145236; l=920;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=Z2jYwdVQ78mIekMJDREJXS7gB+GTYgUB0qqzsFkFfm4=;
 b=OmU0oAA9WSzJBwTnxVHTpInaFakIpqMuuTO/s/8Ko++RQJ555ESEekZDz7M/arOE1pZ9crD4H
 /kmMJyT64DeAAQ9w55hKfqVxc7lsByUmggGzW8cE5jdlllefXTOhe5m
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIzNCBTYWx0ZWRfX3GBRQRXqa+e1
 wcLVWtOVG+Q/9ebELS4l8MIS886YnsQQXoCQuSGsuoVKaRcaDrTUNri5tGZwO3p8NNrZIur5OTq
 vQgaf7WrpsIOrLwG2Y2kA+razRKUcZwTtrTxP7dYYb9E0lKFV0K0UxOT2oaR5e/934zLI03bRKr
 RM3xVZFYoxGIDOLNdJHyc2uiILVNAx5N0L5yX+UhWUAMWmEeaWBYPc65jmasoKyd/0hi/gr3FKz
 w5VFAViFkRD6lBzQ3lP8dq7SYcMHBzStipxWAioCWpoXfyE7rdkWq/9MOmYYwC75zYzJI5WM1zi
 XAQ9Lv/H40rleLIeiZWxtv84E98ujkGIezj780Av9Au+Oq778ZikrF+rxlu9NzilCYSW9aYaeAn
 oQ1J29FbwxcJCKq6M8dqtRTO/p8GoakcsBEhvOZxIkk4g6HRI49EhnW1HZEh0YCrBHWxlQkJ0l8
 ro+0H47ZEOtaEN94XJQ==
X-Proofpoint-ORIG-GUID: UsRdJT27MuTkT6Jocb1AjqpzjNl13lqj
X-Proofpoint-GUID: UsRdJT27MuTkT6Jocb1AjqpzjNl13lqj
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIzNCBTYWx0ZWRfX3YW3+inAro0V
 rj3sOnge7ZU3HW7VAW9ttkqYAS9XI+dKxEnJZVBoc6GY+cO5ItqFwZnUv2hc7pnxuibpAsKYK09
 iEOJjDIimv+8ZdzX6gkb3TbYSrLn3WM=
X-Authority-Analysis: v=2.4 cv=LrwHWXdc c=1 sm=1 tr=0 ts=6aa430b7 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=FwCcbryfLnLJMkbT1zkA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609110234
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_094752_752057_C1B683C6 
X-CRM114-Status: GOOD (  10.61  )
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

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-qcb.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-qcb.dts b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
index 17d8ff3aed23..b6e384024dff 100644
--- a/arch/arm64/boot/dts/qcom/glymur-qcb.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
@@ -697,3 +697,21 @@ bluetooth {
 		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
 	};
 };
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
+	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
+};
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

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
