Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3417A606CBFD
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 05:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=i35PfxeG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=AS0/rkbd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=NQ2Y1DZC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=E0rn2upLlZ6lTmJtwKjy9SaF1/OnsIOqj72+v+iQqRk=; b=i35PfxeGreN58vXMZo1vGzz38X
	xK8cfAnnPULtQ88yONEitGKHx7P3fWwpE5hhsC3N02BIa+xMeLHYaR08Ug8Tj5FqasjhW7JT4EQ0W
	VtFvD8ijCiMIfcENooZka+s6l9EGTjAy1MxIPtu5CTzUJowwB56PYv9q0Of8DtLw6nmav7EuN/imR
	rF0l+AJFkYi7NtFl/rowoysfUc+5IYf2k/z7TTm9WFXJob5jPAeARWHW5OcRONUqZYsf16H0Ol2yA
	N9+TDTAzSFgtYpj3mJxW3qmRkPz9onlxvLtXPo/O2OiXzEV75u1Gpb4PSpWmmByuvjVc1PouLzixK
	Ts6p0PYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvd-0000000BhSR-3tiL;
	Fri, 13 Nov 2026 05:34:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjva-0000000BhRV-38tG
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 05:34:24 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD57TfH074347
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nJPwAoljw5+lmQOqvX+chl3cD6Qer3JM6uT5px6LGGE=; b=AS0/rkbdJUBd/7MN
	xFxHCyqspuPEGtMJzl/7gy1OBVwlAQ2aADu73ViAr5TW13EM5vP+8n/wS9I8fnX4
	+Rk8L5YDDrzvoqxhd+BRkqx8iGBaDqk882kj4cO3syd9u7J8E/a/53lPoFjf+Oc/
	1LIYpbPVPz8M1bp/c7JbajRfqN21uecENJumTBdVGOzf6kiUwV6NJCNtGy5r26CQ
	d8JwQ7XtUcgQxQKz3xjRoJEQJyQfmdqY5gT0cebMSzfMF+hmMZawLsLSmjWt+NON
	7zromXGv47YVy3TZcuz2PT9qqP02OMZXh2WxNOksFc+yugNY0DEyMATRlaf9kAtY
	51DGIw==
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwbs03mfx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:21 +0000 (GMT)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-46ac13882ccso565860fac.1
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 21:34:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794548061; x=1795152861; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nJPwAoljw5+lmQOqvX+chl3cD6Qer3JM6uT5px6LGGE=;
        b=NQ2Y1DZClEr+mVAPqVnDEd1fRZ9G3mCYFi2SaSrIPtrIS8PLGO8nzmE0hMh+CP+K8N
         4pz+StEBCULu77KFvqk88cFXkdJIZQjZ6sOa1yqE8vFSDQwU5DAjl5/Wskxk4RulMtt8
         TurXAFfujePYIuN4fZ8NLjqipNyBQWYtTNoVSFi4B2srucHXDrXfA+7l4b7ajStziSQI
         xVU+dko9x65E23QujePSAdZvg09E/rpv2brLhE8V6QgTM1bSRaqO6Q6EHNZy97Nc+dOM
         aLe1yYYVrWJLNyc0yOkQv9twzMywWPNe3ppPkJnS3jdQKwKHkTG9YcBegb73vrdcIkvz
         1AdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794548061; x=1795152861;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nJPwAoljw5+lmQOqvX+chl3cD6Qer3JM6uT5px6LGGE=;
        b=0uPifPV9oSiQhtrJlVTlV0hXI8dbuMQ3Hez04ysQJ5E7F66/JAe+mY7SyO1QKu5cRi
         gycOft5088dkE7HiZ07gZB5hUSxCdLB+rU/yceJCsCPmQY31HgJvwvfcVHlKMN2sTwZ6
         V/k7MzeEQ4OE2AXXda+etWYBjcVUsz+fFpv8zOorNKwmccA/SeJSkB3ryyoVHRDbcOWb
         8v8xsmMj7twcnjj09TgFpe3ie57rTH/WU//z1DfbN+XZilRrC9PdFl474KXxEWERTyjS
         t51wwtCQU4fy+tMLw35ybL+/cgKrB4d9Nkw3A5JoT9INVZh/LrxSulUkzNQNBzoP1rRe
         6dOw==
X-Gm-Message-State: APuU4Z+SaWgpWv2MGQhbg9sv7i+eI3jMU5OwIXmPNnuIG1ZvWBntgV+5
	0PIUMm8Z8dTIQ0kL0xx7OcgRmMvEnXRqt5z7hWcz99+0ashDyUi60DUXQmKFS9MMn9qaxaF1RTh
	kiv+8BGMqu01OWuJmztXiO0zPlFKkhRVA0NrILBJzE5ftj8nw5OGemqEmwVrq47Wv/mTXUZIZz/
	NN/Zc=
X-Gm-Gg: AYBFou2ovlsrrRytVB74mrzwC9nP2D25yw/UBLq8y8m33z3wNIITbrBFzPxYXgHO5pD
	u+e1fnuTNtyFCw1tEFzQAokOk35sRUtwKzW/Ljrqkl5XAtY5/XG0bKmq1rdlE25R0IVwk9bBEC3
	VPsr+Rg2KL/4QNFnud9JNgLy6KqV0MZmZ4/IVOZ3NBfUfUbrLIdJJHaZHfDshzmAHHGnbikZiUx
	49ilikAALFGc/fXvQ/whIDRVk4uj1KYz6qXmSuflHzWXa6TySWQ5BmT2WtTI3Y9TFxF9WUzh39I
	YHIB1k93ZeCC1bD/tami31c5YSOX1G+VXu54N7tfuAUhRG66t6GBVXpsQL4CczbCJ0J2myBtmEz
	x0q3EKQIFvGYpjT3P4pPAbUGyWP+8k3F2Llt0pDmcnsePhIq3BaOhrkORPPWc7tZlxJm6qYUdiQ
	9l68uYgNxmgLJQOySPqqz29lX4KqxGhNdn/bAEtDZluoQEe7AEdmYFHvIMFSZR
X-Received: by 2002:a05:6871:522a:b0:493:7742:f0f7 with SMTP id 586e51a60fabf-4afdf49decfmr1711022fac.11.1794548060723;
        Thu, 12 Nov 2026 21:34:20 -0800 (PST)
X-Received: by 2002:a05:6871:522a:b0:493:7742:f0f7 with SMTP id 586e51a60fabf-4afdf49decfmr1711002fac.11.1794548060213;
        Thu, 12 Nov 2026 21:34:20 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4afe22576bfsm803252fac.7.2026.11.12.21.34.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 21:34:19 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 21:33:45 -0800
Subject: [PATCH v25 13/15] arm64: dts: qcom: kaanapali: Add CCI controller
 nodes
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-kaanapali-camss-v25-13-1d709f57f370@oss.qualcomm.com>
References: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
In-Reply-To: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfXzzELUzvB006O
 E6I3OyMxxnXpcJqLfQGW6gwGuim0ANgcdC2pllcXzFpHFjuDBhq8JDLYzd8PSAjtQSFhzcziVhb
 MqadsWKYhecldiwC9J1cyyM0g3oF9rC+PQrU7zsEhUxoP1w+y56GHzm5mNgj3ydvu7l7IhRgdwL
 MEZ19r/3PH1zL/kuB9DPUtMjjkDcmC7QG/8I73lhZJDEAAOqfJdGwPmYO4MJExxYohvWmCx3Hec
 xUoDv9EjESWgFtXz87SIRJdAvh6j0R/EgAk5EONBAX9MrTNrJmW4r3Q4o8uEAseMnRQe0afQAS1
 /SnOaOyQDVTLCrQbq59Ft4Hi287BtnL7LvYA+5zf9tYw/9nHtksyEmBxOXpvH0zcW2vLhKoG+Q9
 Wlp2sGfLjqxRTJX1fy++nihdbjzWSPxKLmpKP1Jpna+A8S3ApgzoCVK7yBgOYGOeaXdDHGrP01Q
 7fC3mSBwiNPcab0nN8w==
X-Authority-Analysis: v=2.4 cv=AsF7T+9P c=1 sm=1 tr=0 ts=6af6a15d cx=c_pps
 a=zPxD6eHSjdtQ/OcAcrOFGw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=09nyjJ-fxQ_OzqxZyrIA:9 a=QEXdDO2ut3YA:10
 a=y8BKWJGFn5sdPF1Y92-H:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX/QpBxoWOATeb
 POyZrNtpglpsuCFu/Mp29jcGBm8kjjH3j8Ie8oJzlBMAtfuH/LYLeNCVPKwfpCk+INyQGI/VYs4
 T+Xg0/HXNxoIwgWzreC0G+6JhwNDyWY=
X-Proofpoint-GUID: 3pKYjGe3LnvypXAtjBghhYw-UBnuK0hM
X-Proofpoint-ORIG-GUID: 3pKYjGe3LnvypXAtjBghhYw-UBnuK0hM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 phishscore=0 impostorscore=0 bulkscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_213422_950632_0B179B8E 
X-CRM114-Status: GOOD (  10.73  )
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

Add the three Camera Control Interface (CCI) controllers present on the
Kaanapali SoC. Each controller provides two I2C hosts used for camera
sensor control, so define the controller nodes and their pinctrl states.

The first bus has two CCI bus master pinouts:
cci_i2c_sda0 = gpio109
cci_i2c_scl0 = gpio110

cci_i2c_sda1 = gpio111
cci_i2c_scl1 = gpio112

The second bus has two CCI bus master pinouts:
cci_i2c_sda3 = gpio113
cci_i2c_scl3 = gpio114

cci_i2c_sda4 = gpio107
cci_i2c_scl4 = gpio160

The third bus has two CCI bus master pinouts:
cci_i2c_sda5 = gpio108
cci_i2c_scl5 = gpio149

cci_i2c_sda6 = gpio115
cci_i2c_scl6 = gpio116

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 303 ++++++++++++++++++++++++++++++++
 1 file changed, 303 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index 23406698370f..1662ebdfe729 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -3763,6 +3763,117 @@ camss_csiphy5_in_port: port@5 {
 			};
 		};
 
+		cci0: cci@941b000 {
+			compatible = "qcom,kaanapali-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x0941b000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 426 IRQ_TYPE_EDGE_RISING>;
+
+			clocks = <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_0_CLK>;
+			clock-names = "ahb",
+				      "cci";
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+			pinctrl-0 = <&cci0_i2c0_default &cci0_i2c1_default>;
+			pinctrl-1 = <&cci0_i2c0_sleep &cci0_i2c1_sleep>;
+			pinctrl-names = "default", "sleep";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			cci0_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci0_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
+		cci1: cci@941c000 {
+			compatible = "qcom,kaanapali-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x0941c000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 427 IRQ_TYPE_EDGE_RISING>;
+
+			clocks = <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_1_CLK>;
+			clock-names = "ahb",
+				      "cci";
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+			pinctrl-0 = <&cci1_i2c0_default &cci1_i2c1_default>;
+			pinctrl-1 = <&cci1_i2c0_sleep &cci1_i2c1_sleep>;
+			pinctrl-names = "default", "sleep";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			cci1_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci1_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
+		cci2: cci@941d000 {
+			compatible = "qcom,kaanapali-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x0941d000 0x0 0x1000>;
+
+			interrupts = <GIC_SPI 428 IRQ_TYPE_EDGE_RISING>;
+
+			clocks = <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_2_CLK>;
+			clock-names = "ahb",
+				      "cci";
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+			pinctrl-0 = <&cci2_i2c0_default &cci2_i2c1_default>;
+			pinctrl-1 = <&cci2_i2c0_sleep &cci2_i2c1_sleep>;
+			pinctrl-names = "default", "sleep";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			cci2_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci2_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		csiphy0: phy@9523000 {
 			compatible = "qcom,kaanapali-csi2-phy";
 			reg = <0x0 0x09523000 0x0 0x2000>;
@@ -4552,6 +4663,198 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			cci0_i2c0_default: cci0-i2c0-default-state {
+				scl-pins {
+					pins = "gpio110";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio109";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci0_i2c0_sleep: cci0-i2c0-sleep-state {
+				scl-pins {
+					pins = "gpio110";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio109";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci0_i2c1_default: cci0-i2c1-default-state {
+				scl-pins {
+					pins = "gpio112";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio111";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci0_i2c1_sleep: cci0-i2c1-sleep-state {
+				scl-pins {
+					pins = "gpio112";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio111";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci1_i2c0_default: cci1-i2c0-default-state {
+				scl-pins {
+					pins = "gpio114";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio113";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci1_i2c0_sleep: cci1-i2c0-sleep-state {
+				scl-pins {
+					pins = "gpio114";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio113";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci1_i2c1_default: cci1-i2c1-default-state {
+				scl-pins {
+					pins = "gpio160";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio107";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci1_i2c1_sleep: cci1-i2c1-sleep-state {
+				scl-pins {
+					pins = "gpio160";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio107";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci2_i2c0_default: cci2-i2c0-default-state {
+				scl-pins {
+					pins = "gpio149";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio108";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci2_i2c0_sleep: cci2-i2c0-sleep-state {
+				scl-pins {
+					pins = "gpio149";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio108";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci2_i2c1_default: cci2-i2c1-default-state {
+				scl-pins {
+					pins = "gpio116";
+					function = "cci_i2c_scl";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio115";
+					function = "cci_i2c_sda";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
+			cci2_i2c1_sleep: cci2-i2c1-sleep-state {
+				scl-pins {
+					pins = "gpio116";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				sda-pins {
+					pins = "gpio115";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-disable;
+				};
+			};
+
 			hub_i2c0_data_clk: hub-i2c0-data-clk-state {
 				/* SDA, SCL */
 				pins = "gpio66", "gpio67";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
