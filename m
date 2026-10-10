Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC44ACA9EC9
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 16:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AOmRD3X/e6JgHrS5zW1/E6e57nNoKp7V2+MDXeBkSuU=; b=THG8ghncU4zx33
	ZPm3T13emLHvdkCMZlb1w2bBU1/1/SA94XnnDeXFLwzopMQ4cvcUwscAG2iwvU/61YZn9OaFtONsx
	+qdAFAQnW+uZ0XXFeWCOIFWMACmNa9A63c1rLjvQU2cJEcxsxsCYohRIOKN+QW/ySlAb9eGs17QF/
	4dnLJJf79ZwIsxm4zjTaluFlBsYpnXtcwDU9vSBCIK64CKLZotXuz/4kYoAUTMD9dByzcO54ixj9x
	6PxveaivR+wHWcTkaE0fvcGX5hkRVzO8PMqYTsErAo8l+kBpC47KaLlM1WMJtYLNMqRoyOIsxDkPS
	PwBzVTG7E/M0V30yaxMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZW2-00000008FGH-1jbM;
	Sat, 10 Oct 2026 16:01:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZVx-00000008FB9-17zP
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 16:01:38 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69AFPe6x796131
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hnv0qmK8/nEJAwt/Str/SSMG0YhjSM3cMdd5FG5Ong8=; b=h8i/hsyInNhm3QPh
	nh3+34tnMSsNLNX6z6DzVq28hObujikHmP1pUDbbXSt0C98tb5jdWUqawLo+gtqF
	b/zwoquChDDL9R8PeJLjuuZG0umPyJnAc+wCqQWvVXNmthbG9aWBiSF+02VtxS59
	SLvfkBMvjLjegTOl6ABVTNft+GcdDr/0AJKDT5OfWwm0E5RolXRhxMRzptDeeL9u
	aZeL7e716BKuvpR5B/furPqQh863mPFKENHjM0qmWWvpHexFXaOcb636gQtYFSQl
	35AOMFJw3YTJf9p0LlL5L0REBVg4QuD1UqH3SqlZ8VLjKHmmIVnAK/x9W2nYg7Ub
	F22+Yg==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7aqmsr2n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:36 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-34ef0362d95so1802096eec.1
        for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 09:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791648095; x=1792252895; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hnv0qmK8/nEJAwt/Str/SSMG0YhjSM3cMdd5FG5Ong8=;
        b=KMmKHg04PF+nBJboUmyiVUKGb6vym9t6ADi87Q0rgma6bHmYzlsOX2nzZd/2/EZ2rn
         NuMkFjl8roujjE9VR8ylK/ZrSWTuK/wd1Ozpr1Dde6Y9FAZKhzq9IlVAJgxJyta65evq
         BJIzqq/4EWRYemI/3yaMGGkxwRos8UqQD1XvO4RGYDfoMi5r65CgTEMSEKpy/Z8iinz0
         xk3KG144yIzpISCPulRx2E3CWZJnndAk/CD3gq1yC9OU3hYQmsJofDs4x+Cnl7MPg/vn
         bkTOTTYQ0TZAMqvdxpput2YhO+G2reKkqma9MtcrhO1B3TU2gMeuqM9+8hT/mz30EjaC
         oUqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791648095; x=1792252895;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hnv0qmK8/nEJAwt/Str/SSMG0YhjSM3cMdd5FG5Ong8=;
        b=MG6atKyXRsEiFyOY7tRJLZKdvuiaDSgoQfwcZ6PEOmfV6uyKvqZpCUXB/NgJeRR+Sc
         T5yz7lsSze4i/koBggy4axKMsenSoloTqFtFX3/MSfd7r9LaxZi42TJEtLm8g+NVHd85
         PmH6IogbXppC7HlCHvX1ENXyw6yxmikyFfCg1Klt/XIZpOG0osGolr5b/MnsM3DP+5KU
         Fhpk2lYZw1BzQhLecIqv0MCamHROyxZMHSIUG+EfYfmPLO8vKQGaAOv70HTG/l+l3mik
         hB9hCZ4/FWxgA+VDsUH1HBxvFDM4Arac21wmS7QLvP+vLTE8A6be30OMM0j5MG88UBRs
         Kv1Q==
X-Gm-Message-State: AFq9FYKcj08IrvB+ibz8LfP5BCkYosrdkETBu1GdW+SDcccloB25Sd9d
	TA2Yz3nY4S5fhCgRz3PMsihFAtQ59ODneAVQBol0Etd12vT5obLZVP2192Ot8XDY3PTYKIDsO26
	4ecfbNDj4xNzjCF2Hp2+JHvzmtJUeSwwn5E5WpRPEmV+5q9j/srYwzNgQKjypTrQPF0w3B2BlIl
	gydXI=
X-Gm-Gg: AYBFou1cah0GZ2TkM/RMm1g+ArGSt5sET7/ZZyCX1lVDWBaV1+T/aJ74KVmyL3hH353
	wlDnhFeZM+JPLnFovGPuOrAMHn2wrNp5TYiIsR5t1mA4QbFvDUzxaL4IDSsyTY6TqfedXXwNpIu
	ti0kb/s3AgjlOLgCHIXA9JaYGu6l7Lm9Nq5M7kmQFki4JoMxcUJGdeel/mZnc5GRVaDZdCZUABu
	1l/yywwlcQU6W3JCkaq6kL/rtcSaIlQdtAlCb91v4y8ofyDe8iNC+MWcdiL7UyhDFeN59oT14se
	MnpfWR2OrVncLt14GgZ8yMCflEv+y0vWrrJeF/9+iE7VX+/dbp9okfQuDWlmqZsBRoxJiiUtIPP
	ylYN+0twj2w/9krAGBbiDACFOJ1SBXUQAwRWdId8lZsyxLDwUjFVD/7DVwgW9OlPF5xHdNizQih
	bidL2AYDy/sQ==
X-Received: by 2002:a05:7023:a56:10b0:143:46a6:b01f with SMTP id a92af1059eb24-16a6203dcf1mr6420841c88.31.1791648095072;
        Sat, 10 Oct 2026 09:01:35 -0700 (PDT)
X-Received: by 2002:a05:7023:a56:10b0:143:46a6:b01f with SMTP id a92af1059eb24-16a6203dcf1mr6420791c88.31.1791648094402;
        Sat, 10 Oct 2026 09:01:34 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a31f6be0sm30786022c88.13.2026.10.10.09.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2026 09:01:34 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 10 Oct 2026 09:01:17 -0700
Subject: [PATCH v20 12/13] arm64: dts: qcom: kaanapali: Add camera MCLK
 pinctrl
MIME-Version: 1.0
Message-Id: <20261010-kaanapali-camss-v20-12-63e98ce9ac0c@oss.qualcomm.com>
References: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
In-Reply-To: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
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
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfX+31Ev/06fS3r
 RnJBGWT3/eKmJB2YLBnRSnku3SD6sdyfJ6tggq2wVMWqcjRZLU2WUdLZdWCATcl2py+uZMI9JO4
 aC716P69rmrps5I4+cnf+ENpVnMCR+M=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfXy1UQ+ClxSzun
 EBqe9vdMKQkygZAHy7UKCwmrsQMgN7rx4fqIMDSF2yCobSaDgv33vK9uCotOUY/JkFKxgV+w4TK
 eHGXWD4+1LOXY9KCtjFr8OJMIK/RRIYLC/SNBelRibI33Jc0oOk8yiyWcEjcyPmfeEmcbnmyG0K
 Jn/bpoi6dDOvYDcXpElHQohX+pC2QP1Hq0fltFoe5tkBOLhnZ4Diw3zboHjC231YJALYmC+CFKk
 ky0TdNDJtiYwvTxmra4XZpkEp6meNn+dpNUws/az1asE++4GbA+0VY0dPUDnRu3yU3A+IIp9v4T
 LYtIu/mjIMziB7opyaHSU1Z1ayLaRF1Llq+dmPlHalVvFRYMDZAm50mDa4Z8Rs6gRRfCXNoV9ob
 qV0B9OFywj+qVPLzLUnOBYpzLG3b5pXU7sCSugQ6roRzaqAxWI5sHc26JTVE7/MT9+YMBbDKKH/
 QcICFbHJNkeU3PtZ2ww==
X-Authority-Analysis: v=2.4 cv=Uq32pOwB c=1 sm=1 tr=0 ts=6aca6160 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=4Dwyees-64n8yO_2jeYA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: puPDd6bUPVGY-6tE23XX_xdBmI5Cf2Pi
X-Proofpoint-GUID: puPDd6bUPVGY-6tE23XX_xdBmI5Cf2Pi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-10_03,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 bulkscore=0 adultscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610100063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_090137_435777_938A6997 
X-CRM114-Status: GOOD (  10.54  )
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
