Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 278F7CE9D65
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 15:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HqSzB0ZYbstjBHXy5IPcBLuD/Npv2ckGGbFk7W19h7M=; b=ddA+4+RxPSIXLn
	i8z7UShsQGKQIfvra8Gj9M3Gt2Vh+lSG8Xyk9yp+RrNeIZefGnO99z38VwOZSycViAxtUuCjlKsKS
	p1TaQv/rMQb38cFZ+fTrQgt1JoM+W/6I2nhhqTMsmlSni5/plEoHb8Rt7dW92UiwuKZFBa9If28sm
	f8VugbQNrl0fZDQYdhLx+IF641ochKt0jxVHG0BRiwkdtyRjQEyKB1yn6+J3gUmeTkpy40uPz7SPW
	BJcgsHz7+N1WOikM3HvEF9j3WvqG8VX+tdOPy9xY120cFijoC6A+uWw4PaN+SKs/xtYd+KJUYPD6V
	/SUGP4pQcELV7ao25WpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd9Ck-0000000DQDf-3QHV;
	Tue, 06 Jan 2026 15:42:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd9Ci-0000000DQCX-3RIZ
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 15:42:41 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606Aiu9u3271952
	for <linux-phy@lists.infradead.org>; Tue, 6 Jan 2026 15:42:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Mty9CPP7Jsu
	pHUVUgRA6WjTGLkSoSb22qlCPdm1xAOg=; b=ePgiS/tZBFbikeLjSU9HogSMWFk
	XlDRXeV1rtYk3U+ALiJtQPVKfC0Zc9yeNzS5ImKK3/s3mSFA27O7MceSlbbFvJsS
	sk/CvnISTKzDfOREzOgN8CA3OoFSVkCcYCE1nGl1BIxkHgHFCtFXwVSDcaqchprt
	bM9xJAkp22LNu2Q3B669WD6SC/7dyPD2tDk/yyeSa5h9LapK613dT2anMFgaXB1B
	Wlu7XTF0gpJL6vcuhM6K1yhKqEM9QvjsFRi1QLMk4npZ+Hsv0rC2j97CFUbqKiIC
	Z/9xUgVc55VzVYMExb8aNLzX707+6uUJvBBnFJ0kI14Y6JqpagTSKpYN80Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgfv03sv1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 15:42:40 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a13be531b2so23749955ad.2
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 07:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767714160; x=1768318960; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mty9CPP7JsupHUVUgRA6WjTGLkSoSb22qlCPdm1xAOg=;
        b=cUWxqw7Skgu2Z/lACQk6879Q8YSvGdEe1ZWA59e8t6tGIHSKSMKWlhrvVuxYpdxT/Z
         NZvzuQUlH0/Gg9kwL15sZ+qZmSKtguSy9onRvwX1YfssrWNvN84vNdbrbixGm+o89HEq
         cADfP/I7PE7UGlcMft+kyjH+/xnY8q9mED6Vb3hZIyP1ElI4rCme194hAWCLkYAWLAPY
         rs50OaFl7ycJf7sXljRsQL9Kaw5tT4CdM4+jfqXLKbs44VcQK+meaOgwVK5G1JAx1uQb
         PNo2y+Af0PGfTd0EcfXwqRZOTPztfG9JvavwhwoOKwOZuciHxNXf6TUYEpKg7gp4qosx
         gScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767714160; x=1768318960;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Mty9CPP7JsupHUVUgRA6WjTGLkSoSb22qlCPdm1xAOg=;
        b=t4s8Dy/jRfSV85dSrc7ul78ndTrEsbGFsDAF29GV83S1jy8ml1TgIw/89zKjl8TH92
         Yr1rvB/zC9cOHrxFKVvnT9LXE4l3/v24YXIakSfvQBb7x//vQ4m9Gs2CX5Le3g9bU9sz
         Q1GYtf+ygX6wy81StC2ywQWjq1EYNba9ltP/6lRsO9vEnZUy/frwDfPBh5Hnykt22+K2
         7kR/9fcJrZtQ6OZHMkQ93Zbf9L4Pjg0FblcypQRKKXMKS7K+Ajarz8tW5NbewmkwmSEo
         lXAI999WV6TevV87kODwn1mPHJ9MCGIpzyoTWWQyHrJr/nhUMzb+0+0uEc05W6UYxBVv
         2JEw==
X-Forwarded-Encrypted: i=1; AJvYcCWwl4IIYeN08q+fR73AgmSCuFtZ37ahvsbcfJnweWeD0suyWcF5qH0IUp82tHY72DDkuBlsDu/ZJjI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwGsWu9WBQEipcdkiKsRco+06xBXNluNtm3UDCJD7xBu7xm4Qtl
	HmmyYTbWlpwSuMc+BjUKmNn8rsfGmHbczpGqLkK2DinSpRJdYaH3NIo/qJQnhTQW7QSc3kUqi1R
	n1LsB8xKTcMb/t6NlojbsF+OPHwuB9cp594Cydqo6RtDiKeBOHSzdJG3UO+1cyZa8TU71
X-Gm-Gg: AY/fxX6Pto9wToz3NtNUFSu+YrYVWUPrwgph4Qu5asp6v3+xb8FE1MkkCzLA//deGkH
	i6D45b0Jk96LOvD5FixCarjr2CYtdO0L3lTWxNEdpGoFnU+XRHwOvbLrLqYLwD1iEkGHPByO+dX
	gwPMvhUiADdYceU8KoCvm37Spf8U8G1oS6lNEcLtZFLiYhUKpBtwejbcPhUGkx1PilGY7It8sA5
	N9RYPc9EYYxf90hgj+lOShJ6uoNye0RRiBB507JLEsCGsoS5S3TxzInJZMojFboQ8SgU4jpgL6I
	ma0/xyc8OtmWQO/tJqN2DztHa21FINsTb5ELH8RgbWcFW1RjDo+dHxZuq2TsMBeEttAc+amOlc/
	0rcF9Z3x6kPJ9yQxC8/lc4XYgI4hpqDEdCVHrQHaL4ytx3Pey2nbk
X-Received: by 2002:a17:902:c40f:b0:2a0:c5b6:67de with SMTP id d9443c01a7336-2a3e2e1e671mr35426895ad.52.1767714159730;
        Tue, 06 Jan 2026 07:42:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG667pmkGDth+EgwS5JLYw269C1+n+LtMnapVQaOfdQaxrvpwZx4BYdJ10YbUoQ+a3wnQQjaA==
X-Received: by 2002:a17:902:c40f:b0:2a0:c5b6:67de with SMTP id d9443c01a7336-2a3e2e1e671mr35426545ad.52.1767714159218;
        Tue, 06 Jan 2026 07:42:39 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd492esm26606395ad.98.2026.01.06.07.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 07:42:38 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V4 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
Date: Tue,  6 Jan 2026 21:12:07 +0530
Message-Id: <20260106154207.1871487-5-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=e9YLiKp/ c=1 sm=1 tr=0 ts=695d2d70 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=cMKPt8sKVRzp0kMMbBYA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: DAH8DVuPkaVn1hxW_YNQsIrNAkPpW-Re
X-Proofpoint-ORIG-GUID: DAH8DVuPkaVn1hxW_YNQsIrNAkPpW-Re
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEzNiBTYWx0ZWRfX+lzs7RH3Jw80
 z2ZyKFtzUJRzuXPNaplXnsP7QfkAG5PMAuga+E6dqMvLNF4FMk3jdKgOeDyfD1rNck86A3ufCdY
 H62BfvcfT1R1MfpLe9J5WjVFSX/c5L5L/A21J5QE4azGdKWYSihqeEIJ4PqjbGvbuLCKq7MdPLf
 qxp7ZL3lALHVo8PEZYfROeuYXzHEtX7+myONAFVCPK8NEO3nc8DGAFGxrm2PRWD9gA6dodZOomd
 0xFeU9MeTw/5AvnlsstcNM8/9VhdTF011vTkHVOHBvnHTnhJ8tSM6PdrocuxYYWL6ORC1obIVbS
 GdrtdaTKuzqb6uTo+7d+qpSJmc4eeocZhwAQ/nT964QeeLELoxPbwHOFrivfRa2UgNCJEWHWW9I
 4f7q4V+ORweBaydQYxjOcaUCFzEtfdmlcX9zjDaSLvXAbP9G1R/NpkkE8mREGJ0UXeRtt19IZhj
 BXtnSSZF4/eI309M/HA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_074240_874262_FF3CDF79 
X-CRM114-Status: GOOD (  10.69  )
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

Enable UFS for HAMOA-IOT-EVK board.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 88e3e7bed998..23cd913b05f5 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -1253,6 +1253,24 @@ &uart21 {
 	status = "okay";
 };
 
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l3i_0p8>;
+	vdda-pll-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 238 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l17b_2p5>;
+	vcc-max-microamp = <1300000>;
+	vccq-supply = <&vreg_l2i_1p2>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};
+
 &usb_1_ss0_dwc3_hs {
 	remote-endpoint = <&pmic_glink_ss0_hs_in>;
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
