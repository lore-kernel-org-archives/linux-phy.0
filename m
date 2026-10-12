Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 252C6CA9ED8
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 06:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AOmRD3X/e6JgHrS5zW1/E6e57nNoKp7V2+MDXeBkSuU=; b=4Dmmoyza+Bxqyj
	U9HTrZgtE40WCsymBflBv5PSHhDr+r2+LC19ouaRRZb2ENQP85kkon/0Zf0mI6wVPBZyny6HMz23U
	u34UWCvq/khhG72qdnJpddVl6Dz14bSPT6/e21tsJxvVdFKh1EXS7zarr+8W4G4BqsEtS8hfookB4
	egeULJhvzm/CxTkwtN/XcO6onzc4egT0bGtQ6pcjOs0/qSo83fn/Th/lSqh9Nwg0YPV9nqJVzBY2j
	PIyYejGiGW1iYVqsaqRQY+3oh7lUZIAsNr2QO/r0+uILL62qr9RtmCI1NeZXgClksaRhGWQPFivBx
	+H5cEZtCLjLL0SW1HRVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9n9-00000009lmD-3ZC8;
	Mon, 12 Oct 2026 06:45:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9n7-00000009ljw-14FM
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 06:45:46 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69C55oWx1314663
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hnv0qmK8/nEJAwt/Str/SSMG0YhjSM3cMdd5FG5Ong8=; b=TBqO2jl0Bu3/iorL
	kJGdWmwP+MKV+62hxRvZID2WbF+xQW33FDdajxpeCyQU2NHwyVfZiyGxy2gyo6ov
	faaYMyG/i/2EBUMeHZyXYF3M+CMmRt8wbQD6QkgWl5HL3MdyX324qRv6Q+W9X9B6
	0cE6EpXcrku4/74dmERS3PkHakPuNG9ZlK4fpihtkXM+0x9AfB6+hWZd7Tyl0MUQ
	/TZokay1LwNINxWwO909JXeqCJrTX54S5gCNSfovJ8COabIFy5haq3/dFpz4UNDQ
	XS3URa6Mt3HJYD7hllz/XO4BjW6rj6j0870XT2E/OfMKsgz4qvReWuiidNk1G5RP
	F1dVlw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8j711d1y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:44 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cca35cf9f77so834511a12.2
        for <linux-phy@lists.infradead.org>; Sun, 11 Oct 2026 23:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791787543; x=1792392343; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hnv0qmK8/nEJAwt/Str/SSMG0YhjSM3cMdd5FG5Ong8=;
        b=EJrkOuZzl1AP5DgR79ix56w99iPKWhB7CS6hZL7k28Hi2e9SBn7vW63gXDs7YYRI4A
         DF0HuSANEoCONMHIMFMZC5R7JFdjQsJFAQJO+hOQHrLVUxwS6l6/lt9W0TZi5Ow4nVAU
         M/bPG4e7yKN43u8Oin4bhwfm2Yp8rbeG5nuSsRERsHTRvqMfufF/9AO64bRoZHeHDLpk
         T5bmJ/eZddP6cauauZpnLVU6aWzZrFKTzlaLrNbew4bgG25n6kXZqs3wl8ymLfu9OtwS
         /mfmnBwlDGG8PoAMiktSmt6hH3kFAHv13xk2Cl6+byk1AIWxy7ZNlZCq/fYQDJlligiU
         07uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791787543; x=1792392343;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hnv0qmK8/nEJAwt/Str/SSMG0YhjSM3cMdd5FG5Ong8=;
        b=YkyNBGOd5B9aZzPt8qRjPxeZVgC3LKEcWZ0Srp5YsOum3FF3uNbzqakgLWWjyfS2TG
         alo9OtKZZXvmgHpCBTdFZegsg7vPjZ0zagces+olGkQmtwKJLoiXsO+itz31blZpgOap
         S/Pyul1ubaVIW+kBwgHwO0Bsk+2URdF97VcBRTxgfubQr+wByuwnoe8MUQ/vfO1pIPDg
         vQb9mQp7JJfOkRKFCfPBFJVffTAb8rA2O2WgLDRvIxW3J0m7wrlfSrG/+T/Up97IzATt
         00Dd4ALFlc3lvfBRmvV4EeTNXg/6h63WtIYgA/q/x/FllDwmiWp5FaClzanAkHIaUOBW
         IrOw==
X-Gm-Message-State: AFq9FYJ64CmRtB6uJZuaimuS52E9OriNzqtiUjGtjDDZ2tDNDB1XwkhN
	e6K1j4XDXLOIzNwGfgiCAXTZcxIrjKU5uqHZzjWcA9pWxcdGjnuXvt3AZYbyWw+EU0Z2oejmc4q
	SLZPwqevHBQkK9O+NRRS4GAOYcGK5ec5zEKBcUbAeWmqjcJOs1mP7wwGqSgc7XjunUqFN
X-Gm-Gg: AYBFou08/LTJApqD2M9gWffhwoxiSHPYxIjm2FCQ89oq4HckpkneBfv6BZ1nb4cPL9U
	IooKtUPtxorP+J4zn2JxrRG8eY3rRO75C5/5mGBsqymsMIsi8HrwvsyDF6wABFLgnIPDNzajjJk
	bseJEQ9YJ1PSTnp7mfKMz/YKyeSM66zoCVrGbQrm/bGzAsYdLYLcnbSoYZceooOK95laqTpkngS
	XOLmK2WJ+KkwALWOsc8xenukz2nb8H7BF1Il3FZB38tDa0M40eqExgoF+wQORYM8bdr4zzIbR8b
	46s8nixserdV3qhbsKxyK72OeBX/oV7PQ1UOeKcZzxXdTX5FUib6JF/7566tVzScNLLccUXGrn3
	2JImTyZKo1i2yb1BkRuN+Sr60a/ObsUdhFHdtEiFefm0NTW9afpcaQDEOwZ1pPSedjW1MbcF6os
	3+DCroWrEzIw==
X-Received: by 2002:a05:6a21:3292:b0:3d2:89db:1688 with SMTP id adf61e73a8af0-3e16ba9ff90mr7154933637.2.1791787543297;
        Sun, 11 Oct 2026 23:45:43 -0700 (PDT)
X-Received: by 2002:a05:6a21:3292:b0:3d2:89db:1688 with SMTP id adf61e73a8af0-3e16ba9ff90mr7154921637.2.1791787542836;
        Sun, 11 Oct 2026 23:45:42 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-896c3dc6c93sm3534420b3a.33.2026.10.11.23.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2026 23:45:42 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sun, 11 Oct 2026 23:45:15 -0700
Subject: [PATCH v21 13/14] arm64: dts: qcom: kaanapali: Add camera MCLK
 pinctrl
MIME-Version: 1.0
Message-Id: <20261011-kaanapali-camss-v21-13-04fd28d815c6@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
In-Reply-To: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX395DR5aPa/k5
 Aq4i98FX8wvOj0BcluKNhQlI2/dO/mobtTk2+W+S5V5CWqLnokMkYh4DAIGTqn6QC35skHsdlSi
 WkXLu1MTAicgz5f/bdbPMRhPcz9HgaQ=
X-Proofpoint-GUID: sdndhhn36T6mVUOLZP1O-85UCXRTMkKL
X-Proofpoint-ORIG-GUID: sdndhhn36T6mVUOLZP1O-85UCXRTMkKL
X-Authority-Analysis: v=2.4 cv=ePGGH3p1 c=1 sm=1 tr=0 ts=6acc8218 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=4Dwyees-64n8yO_2jeYA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX28ZE6qE6eS7O
 biDR+gWkfxEF6o6piPKlcXM8qYavQiW/tlutTDNnIsK/eoDrhux2HA6Lz0Nzx/opzEB+HPUsolF
 iVzrRKgGrAzCnT+gSv3Ou9TuljpZOKIv7hwbBfpK3t93a+K7qJBik858Aj4kOzYBmX59Ua9vmnL
 9C+fK0wyJq83jx/M5xRtoPJVyYRDXglMNA09/fHozXi26hNwgwbtT7VqkdsqlSyJwzvqnFE2D3M
 UQIGX2UnzS0d33QVIbD8jAaroufmGU9iYnxRu/14HfV9VVX1Ar+F11EDxn/Fr44T/7n6xJE2hSn
 EPIAMmyGLeu9OXpIy69OluwxqRjTfeMIJs7LLQ3ccUkqvNu2Xd69iXaGtezltIQzS+ueht5toZl
 CMtJ030GgYBqYZ26suxUzsDJljSWA1OhOirgGmak/TPK3YDF9HEMEcvZicLlwPGnO6fHzRR6DwW
 R4PC3er3nPW1yVmvtEg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_02,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_234545_408530_02826E37 
X-CRM114-Status: GOOD (  10.11  )
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

Add TLMM pinctrl states for the camera master clock GPIOs on Kaanapali so
camera sensor nodes can select the proper MCLK pin functions when enabled.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 56 +++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index 62f02bff0227..63fae1bbfe66 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -4648,6 +4648,62 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			cam_mclk0_default: cam-mclk0-default-state {
+				pins = "gpio89";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk1_default: cam-mclk1-default-state {
+				pins = "gpio90";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk2_default: cam-mclk2-default-state {
+				pins = "gpio91";
+				function = "cam_asc_mclk2";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk3_default: cam-mclk3-default-state {
+				pins = "gpio92";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk4_default: cam-mclk4-default-state {
+				pins = "gpio93";
+				function = "cam_asc_mclk4";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk5_default: cam-mclk5-default-state {
+				pins = "gpio94";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk6_default: cam-mclk6-default-state {
+				pins = "gpio95";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk7_default: cam-mclk7-default-state {
+				pins = "gpio96";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			cci0_i2c0_default: cci0-i2c0-default-state {
 				scl-pins {
 					pins = "gpio110";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
