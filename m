Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91BAAC982C5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gmtu6gt202msUY3vFEZgkM/yNHKsa0s6ToYsgbFNysw=; b=pc64joZ7Sja9SL
	siswOvYProBTC0Mm6TqGFu4povKwe3BLjh3Tal6W3QJ5C6AitaSOApRfT2ESLvnAXRsfgr3Ug31ZX
	3ABdenBQh68ZJysYXie8+C7ndmCiqt2nY4KYrFNc8/+OrO147XeFY8To4rXxw/7gsK0El7eNDmqze
	ymLTMGHm5O9uaUa/OAlrTWmbzbmvC8vJVxBYiGvztAhNfWaCaN13jDt4UZNwKknkO4Bj7l7XoNQMN
	PwBleqUSb1uUXttQyI9b/3ds7As7jlY22+cP2RBSE0ILO75zUpsiP+hCerPAQEymjlfgq2ixKOFxb
	FyuQerk8zCuJQ4Jl2VxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Q7o-00000005rjf-0Wjx;
	Tue, 15 Sep 2026 10:10:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Q7W-00000005rRq-1ytw
	for linux-phy@bombadil.infradead.org;
	Tue, 15 Sep 2026 10:10:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=trLgG9o9dNxaGAqSUsu2rJ8d3cOmfxBXCCOBMvJB4AI=; b=dyCPCb9kh5zBW7HNUJjwh8OFGJ
	DA/ysPV28ZjxNJ0lvSfvCRTHUdjH6u4ce4FSOjbC/0pikZ4gXUC0b5Aehd+IKX97qMtvqWYvlfEMk
	KhlsPBX8V67ws61DlCtOmRTvt1cnbCPcqSFE3tjd/0hy2OrhGvbWGL5GJHTx+s6bniuqtJQojuPNv
	Fq6jpqI6Eo1ov1DuhPeAnwwBtsxW2fanMqcUBhG/TqRVoSiowJObu0Ls/fpfwT+LL1s5562NcLNi+
	0fxH/LWbamCzpdqiil3SHat6Xm8og3BkWk8tdhmsgX/Czv2W9U7Mym+BYk5SG7RK16UTQepR+0o/J
	AikVR3ew==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6Q7S-00000006XAf-1TYD
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:10:33 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68F9gwns275518
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 10:10:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	trLgG9o9dNxaGAqSUsu2rJ8d3cOmfxBXCCOBMvJB4AI=; b=mtyDQlcavY5//1KV
	uHU7TqkuPzQf4sCNmIrqUuwvT/d7QP/2oa2TXT40nRNY39khiJiPRc+2Jif6e71o
	d9rUNbt5wmota7UlAUpEhad2GZst7lAzEIacEKKIvwHTngBFrxMMLSgeZ56lXgKq
	kOedHYMIBm3IVo8Hx6059anjddNkDmLKJPHTOYjbtFZsa6dl1SJxdQ+WsYIhFt7z
	1yzUsJhYWsRkRqNDI+WhiQMEte4D95f1FhMEmzw5/R8Cbd05HJYX2W7jbqkrbcpH
	cBYfvDF8RnYCSjMGxylaxJ9ZCEem5FS+FBErbOoEi/V4axyK33RzLOTyU49LtwYw
	xRqKxQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gpyea17fg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 10:10:28 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc42a07d04aso3648546a12.1
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 03:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789467028; x=1790071828; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=trLgG9o9dNxaGAqSUsu2rJ8d3cOmfxBXCCOBMvJB4AI=;
        b=jvU2NSkx1RFhBTugMXV2U0oZ0TV2O8978lJBBYUwWJBxb0vixWhHjV8lclGWhNJ8Tl
         IRBHibQZGAuQptrDIX8bHc9iudvAEy8heWuf3osZi3VPN6rTCUwakeOj6A/zo+hph1Ij
         efLy1R+8cIviAYkLCcvXWx+PZ+VrUrBU2DaQOSjPwOb1KtctmHd06uds/FOnkUAfwe64
         Lm87ydbQqxFJQYg/sAOzT0BLXfZDqYIIt0KYT4vYYgSxv9FSC+QcBzU90yBDwHe9mKHC
         +6VFjMjMv3+VYy4TVF7v4XFxhkBGMt958pJSvacp4/l92/PusvdjTCWcs37w0X7n3Yv2
         2p5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789467028; x=1790071828;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=trLgG9o9dNxaGAqSUsu2rJ8d3cOmfxBXCCOBMvJB4AI=;
        b=JFuM9hEKKPuKgNEO3Ar3mprWw70dODSLS7yaa+MgmyYqNFxhoGDvtt1nb3Ns+WxZp/
         /x0tcp/P4YtKLsUfSW798bLUpVeolqCx0vxD+hoOJ+7svu2nx95Xyawz/O8+MtlFIeQs
         BmJrnAJv5G5khLafwniUnkE7XiNYFJPNWEoK/t0AogHXaXwjkM512NfTYvE+hDrILIzI
         mHglZrjUInmClsu9XwwoRzCztTHxheSHkVZlvLB5XW7QB5PQdPDEQ/0AJ73MVqd5wRXZ
         FIotlFDG1ldqSrqdB2uxEed2FMlUGIw5rh/4s+0qbame9VnPXCEz8vb71FX+vcb+MU3Y
         EKfQ==
X-Gm-Message-State: AFuF++nJcXxsHJsmJbSzDuU/hVx2YgwsEtlcG/mddknjO0fuNNuslBl1
	wtiIKCWvT1y2ibpVbpRuCaeAO6356lTF7RJjmC3g9y3fZNHEcHSzVvfDOSrSKjlNJ+n2h+grjcg
	b4x57hBFTeVDyM7uW+AfkAyQC7+tDrLXo8uTDZxrc9Sf2NhBPLr0e6kv4azVBAefYCCi9
X-Gm-Gg: AYBFou3LWq0fTbWhHAZEF7P+GeEEanLEhaaFcq0D7LpKFMFpoy56S3dl30LajwzbM3d
	WfHTvE+keHBSySRDicNy0g4Bw8FuolfiqzmDv/fdh02m/10L2/Xjv6YyR+KpsMPvOFiJE82gveC
	V4t+VHGqjSaFLAJhLQgHh914++ccwLDWphRx5IlaTSRu4dBCP3jirLXn7TJ+Z9egHByKGp3fdp5
	Xj46SMW9QVo2hbnYS9IjnHkzR1B6u3AD8SYxlIsBe846GLpoPnoFG+nPHlIkToTIq+BB5pFIZPN
	r0P5yLFUzzHyQE4x6AFjZGEzuT6hnJ1Ke2uWLUrBkzQ3ej6I4IFwKEWCwl2HP39vjAOJqF0A3Rd
	vp7nxo38ycBgVGWf1B9WWkb/ZHBo4KhX4zwP9AQAi4kCkgHvXDokfpu3uc4fOYuK/Vo4J3ESk6B
	sOrrsPQZCnFrc=
X-Received: by 2002:a05:6300:670b:b0:3da:15a9:a18e with SMTP id adf61e73a8af0-3dd528eebf2mr958662637.23.1789467027609;
        Tue, 15 Sep 2026 03:10:27 -0700 (PDT)
X-Received: by 2002:a05:6300:670b:b0:3da:15a9:a18e with SMTP id adf61e73a8af0-3dd528eebf2mr958589637.23.1789467027159;
        Tue, 15 Sep 2026 03:10:27 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14382741839sm14244091c88.6.2026.09.15.03.10.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:10:26 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 15 Sep 2026 03:10:06 -0700
Subject: [PATCH v16 11/11] arm64: dts: qcom: kaanapali: Add camera MCLK
 pinctrl
MIME-Version: 1.0
Message-Id: <20260915-kaanapali-camss-v16-11-c9f3f6f4180c@oss.qualcomm.com>
References: <20260915-kaanapali-camss-v16-0-c9f3f6f4180c@oss.qualcomm.com>
In-Reply-To: <20260915-kaanapali-camss-v16-0-c9f3f6f4180c@oss.qualcomm.com>
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
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: BprA4rEEJesoS_AwieLehoVEDFWf441_
X-Authority-Analysis: v=2.4 cv=cehHPXDM c=1 sm=1 tr=0 ts=6aa91994 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=4Dwyees-64n8yO_2jeYA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: BprA4rEEJesoS_AwieLehoVEDFWf441_
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE1MDE0NiBTYWx0ZWRfX5MK50kd0Fv1A
 h6ogJnQRCAJ97pNmQm1MYJviPglpGDJF7fCoOTUMZDKYoxw9FPPcvT1EGIvoU3EXThd6JlLLpi8
 rARRerCGR6TtH3UEFhGH/dY9iYbDUDc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE1MDE0NiBTYWx0ZWRfX65FvuxcDbo4X
 hBA/rUCw3Ns0qsQhRFWoOqzB9C5fXgh2i8hy1d3kDzPh6N3Xn1rryTYYxXHuLbaAncZPqtzwUaz
 kpfw0DQDnw/GIb8KaIDitQ+qdwyHTWqvC3uCzvn1NwmV9nFbHoz1Iyv7s6hnVsFKj74mDr5OPtd
 WKCYhkgTjG6JgIFJhRc0DjVHk2/Jaoxap/EgHE62Ndr8HixJAzUZpJqpktlA1PQqFTfDNNAPr4j
 2RjVZ9qOZ9FXbevlrd+9BE50NIP0KSVlFvVHcMZNkWQJ+NMC9GHja1gB9UaE3dwtIVd7q6ASZyM
 9My8VRUSW/AArBQ4AZoh85ryx/SFox3M4TsuuIEMwqQvE410AuwNLW39FevOwljB5ocSFwjCwQY
 TJRAwow/kJO6dwHnhLgeJpl9QLvaYxvPeR2/QL2WWvsGUeXj5mpE1nE3T2UkLFK380hOb/tOD3P
 hUhqzvCiGbmbvmEJp5g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_03,2026-09-14_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609150146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_111030_931901_40DFDE78 
X-CRM114-Status: GOOD (  11.48  )
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
index 02f8dab30b91..44fb673185cd 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -4335,6 +4335,62 @@ tlmm: pinctrl@f100000 {
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
+			cam_mclk3_default: cam_mclk3-default-state {
+				pins = "gpio92";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk4_default: cam_mclk4-default-state {
+				pins = "gpio93";
+				function = "cam_asc_mclk4";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk5_default: cam_mclk5-default-state {
+				pins = "gpio94";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk6_default: cam_mclk6-default-state {
+				pins = "gpio95";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk7_default: cam_mclk7-default-state {
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
