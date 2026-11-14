Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643D8606A885
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2QfRJvVn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Rb30fIlB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=R4MSkO+h
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WK75odluANR4lHfe9NhbFjSlaYOC4kh9hHsf4vUvwQE=; b=2QfRJvVndadZHShIHNJS/v27Rs
	TNS59jSiLf3b6WxOL1XxkdMoRAeUuNvtzJUywWio2dAX0Pfbtk5pWlLrmKXTYUAqJQTUYztHexd6J
	Fmoc2IfjrLa9MkQZm5ZsTvepCqWjLEjuUb5VuvODl8hUNlboL+LdaTuw/xkpJbgXmPx74i7rUBPVq
	XXjdQBM087SyH0vS0799UMsH9aqud1GOUjN2hHH8b9R9DA5/+mPvzub+nOweihVy2wuUqOCAPncBj
	IbsCN/8Ck6CsThNgLwdVopE9wL2Gei4XxmXEHQzyhIJqcWetRmExFQrX1D25a1sVW0fOmUQvXp8ZX
	UaXSvTbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBzW-0000000Fu2g-0bFR;
	Sat, 14 Nov 2026 11:32:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBzT-0000000Fu1x-1lwC
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:32:16 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wR6g3276456
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:32:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+FwRq3VlxuZOz2/oWpMJYB20jd+VwiCoJHfeMLbEL5A=; b=Rb30fIlBgs+mcJCD
	QUBI9NvC+h1X+6x5RkDiB4jvORgBbB5+6PMB0EpONoFZPCx4kdp1j6XNqARdEx6Z
	ypy5qVylklR1HjsMl9Nvg9WEJC8qte5JxFxcuDHArHi2XFE6ErX1aSGA93H2XiJ1
	orCDrKqx2X4DdXwgytW8Ws9UQM2cSRQkG4NPboww7Z9qLUJvnhl6V8pv5Al+FT1O
	XLNAMNEytXRpU4/bWp5qMOdz4YHoOgjFoJ4uec+58tsCj+f/plJeFsVmhjin9rCJ
	FWZ8H6Zi56R5xrbHD3/dHGD4aj0/s+bln2V1mAAtDom3QvNtFzskD0Kk8K1anH1I
	DHME0Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhjqgrk7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:32:14 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-55c950b47ffso7177101cf.2
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655934; x=1795260734; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+FwRq3VlxuZOz2/oWpMJYB20jd+VwiCoJHfeMLbEL5A=;
        b=R4MSkO+h42B2bRN+2rxgl/0mpflg1HDzayTXClxyJhgCv6Ard/ZXaSFdbUFI1hgOxi
         Z6EJyLj9cReS9WfLNpBosLxG6QF//4Ohi3YVtJRJjDMChR+yfjZw+iNc39RsLujN6viR
         Czu3dtir696gJo+DEa8xIp/ZnvSEA2SIcf2Vxhb8qcdf6AWGd4wrz47CIzlpj9HQhFT5
         Bo5VkTZKzoyw61n3pXk3bzU30HUSc2CEN+60ZSHAXBzQhp6lalUGS2u+2apmFFrh94no
         e6D1tSmJoHQ3YqgNbCfN3NZkjC2cTySWIMVPxQkYH1J32OvJK/5Kl21YSmfXpzZaFz+x
         knMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655934; x=1795260734;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+FwRq3VlxuZOz2/oWpMJYB20jd+VwiCoJHfeMLbEL5A=;
        b=GfmtX7EUJl10xvbvReJVgg4jH02Sti20MADFrwwhVXMmUol3PilUrZbcNJpoQxhL0r
         2GGvPC38J2KgK5LJ3dgRoHHSLSq+LrtTRfLLH6ePs1rIAabAPH/HXN1m6JZiDs1WRQS2
         mlcWRWIcHYsv9Ip9q0B+q45mlnuDclNI2wg2KeoE6d8B3V5avlkEw8Bg3VCVaTUVDSux
         U0KzikkreKi6zJ3ZHRqksF62OxEukng+Z7c6krJP2VPcqDAgIBfN+mZaiBzFzU4y0Nqo
         b9qULZpMrUnVOleXsd8cwIPEFvHmid3nsHAzVCyEbCM12EDz+I3xxbG2PpIBhL6A4Z8B
         I8LQ==
X-Gm-Message-State: APuU4Z+to5+lSjpscN17CC6aAzId5ZbM0eZ6K/J7YH3Y7XP1vjhxNVtR
	Ddf8VFBXnwlbkLqqwROSxMR/GsMD8NLaS1WDyCAbbRklBKZBwSAqV9FBBQZigQQQ3rYCg5Zg9wb
	DbAVWut7n2Wiuru2arcYWtqrzE/39Nd5BiTHFZn0HNJkE7UanRTVeRuNsL89JydmUYNbX
X-Gm-Gg: AYBFou19iis6Xlyg5zoMkm0ExHTiJK0TyADMbFzdiIIGVNjfICCmv2ZnosiM1UmyBvS
	v4x2jv024rwBt1xgjF0baiZZvn97M/0zHU6tQ2bDXdGkb1ukO4SysGj2xy0KKP3iDw9u3zAsUjG
	H02tCZkNgYuuMe6mX3JruQXqieUin5+dpr1CbMAd1cKwyyguXix4nrNRf0WSEMvjK7di30md60e
	CncDOQ0Hb4ske6R7s/wR3xL4tus47AiqgzJBzs7bG1cTD0J8CsmH/TTGe/qpLPEaxN28e45ybiT
	Io4oLdo4XCJoWgctv8eMCnN3TatgUsNpF8KhZeqaDEnFftgD3TAcST+IzMnpwgfdGY1MMjPBIWd
	YJSGI0dR+giaIgrOEeV6/dCwynrD+H90OCsjjei9M2Z3YLLPT+OhUJbPHLc/MHWJUXc9w4JULgC
	uQSauUHPF2ltUyY4Vfk+bUbi7ZFK9FAu07SjuegJGG
X-Received: by 2002:a05:622a:620b:b0:536:5ed9:26e1 with SMTP id d75a77b69052e-55ac667fb1emr78978151cf.18.1794655933466;
        Sat, 14 Nov 2026 03:32:13 -0800 (PST)
X-Received: by 2002:a05:622a:620b:b0:536:5ed9:26e1 with SMTP id d75a77b69052e-55ac667fb1emr78977961cf.18.1794655933007;
        Sat, 14 Nov 2026 03:32:13 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:32:12 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:33 +0800
Subject: [PATCH v7 16/23] arm64: dts: qcom: sm8750: Add camera MCLK pinctrl
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-16-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=2166;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=ZjpIL59WVpDn2zuhTRFHiQbumlAhh6tSXd8R3gIf0As=;
 b=hqMmOgnhfauqkwhUk2lv+qrc/2o12LH4x6v3Jcd5C6MQx+NF/ugLG+9jQALC6LqjrjvqK4+NB
 SxlmJRyJgwdClYSPI9vbmm5M7ig+CXxAVrRS03QARqIcN2Qv5oNmuc1
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Authority-Analysis: v=2.4 cv=KelHIgYD c=1 sm=1 tr=0 ts=6af846be cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=ZY3ACuDlzNLtHqm84dYA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX2NNO8RiVz6T9
 DSR8aUzuwid4ddh0cDbhq3IZrH+eJMQCUfJARq7EFKtstUUEXKJ6GHb3HTueIuLsyNbYEAJFAz7
 wkM5wgz1YPRhEJPlgXq37zdFjY23FoQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX6u/27TKLzsi+
 jziHmxiQAJXzF0WObzhww4Q+k1ogTPuMSxEzigeELuG94QTk09EDAeFSUXh4N0Wl3quiI6zAH7A
 Un9zx7IQQ3Kf9vcW24lxMDbiISI0dmk4UChFRp0/c8s35w+uWiFqGEm9Shd1L39tKZd+ZPkWRJH
 ZLxcfY6DerBoYz60rSgrFtqVgTENbnv1evrPVtYZmzSIn/3KHyaQg2pwZ7rP4SeAx1ROxMm4prg
 hqk82jHLFDOs/1IEkX/15GDejGdWzf8C7aOqPqb6CHfNUvdbBgfbeEaJXb4pMeQIRhiovBZhtNP
 xOU1AhL4Ajm/ZZ4ksYV8f9bMpFjHU4YiJO8iFiKumLc2R9DgvE2p6wHt+YfdZWF3D96OslkNfy0
 QiEknL/SmNL5tjJ6jjoaUKr1wBsXGIagpmhOaud7QZfn0A25XbpQoVGtL65x7RMS1cc1nl9vvGk
 9+PtpkC9+nMl+qrMbwg==
X-Proofpoint-GUID: WJin0iOHS2mXu1A8-a7nCt8FsyM7Yp9z
X-Proofpoint-ORIG-GUID: WJin0iOHS2mXu1A8-a7nCt8FsyM7Yp9z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033215_589121_7D080C77 
X-CRM114-Status: GOOD (  10.14  )
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

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Define pinctrl definitions to enable camera master clocks on SM8750.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 56 ++++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index b1fe1c2f5ae9c5b6107729fbdf31c2577ee3ebd3..522d2c0c374cba48de1420be5357db65864bd3cc 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -4386,6 +4386,62 @@ tlmm: pinctrl@f100000 {
 			gpio-ranges = <&tlmm 0 0 216>;
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
+				function = "cam_aon_mclk2";
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
+				function = "cam_aon_mclk4";
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
 			cci0_0_default: cci0-0-default-state {
 				sda-pins {
 					pins = "gpio113";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
