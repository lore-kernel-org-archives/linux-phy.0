Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BF8606AB2F
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=juGjiZ9n;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=h4W73ywx;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=DH/tU/iD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4dsIIh3igUEdawkMDABr7cDDQqnIfkkjeyEiNfvfB20=; b=juGjiZ9nWu7EMqa8Fi3QB5Rc7+
	rMC4bYz3IuYp0uvDGD8KkwiMSuK5+u62KLBpAz3U/YCyetGADCGclXWUSQ5uszYtbcytKUEC3LQPq
	dAHcJ7uccjp6cZ/AbUzZq8kZK19xVwuVRocnnUpeZJ96DiU//F0K9oJyteOiyIT2/sKn6XLkPU0Iw
	pPdGJPN9H7+mW0dEK0iR+n7vSw0IXj+5Tviegb0vX3oasnGHts1dWp46uAZWMMPnqzy+nY5SJhNVt
	lMhVBN0T6c7z2fYkkMeVHApzHmGOWaPovQVt6w7tC8Zl1VLbt8lU+QUY2H8FW1JuGSCmaTgkluQXg
	Nj1YVpYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5T6-00000007L1F-0mMP;
	Wed, 28 Oct 2026 15:21:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5T4-00000007L0H-1WTt
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:21:35 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFACsU2001630
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QJtv1elE22/fRjimfKOj8JWMX+qMHWo6gdQpzkiKlMs=; b=h4W73ywxA4Q8m0U5
	Usk6b5h8PQNTEKu35aqmA2uN6VgL2B4w9WmiKNwMRqdCErb692kjYqpCclh6PIaw
	xZmryNihJQZCmqhlwVlzjC1wxDw8NezzHWMGYHGVpL4yk9XVoe98e5Ws/aq+OXsS
	1Ydlysa1C+zZmSvIzt6epqcXdkujkjmL/u7kOwcJ+Xvd5JGqaX9LLTwJaOMr5D0u
	DZ/dUfHtftHP3Thqmi62940ZP7CRdUjaxO/BabvnHxVDjFjpTXPaFpQY05+JJKe5
	5MY+cWbUHndhcrSqu6jA/nib2R/BfqlpUIBU6yiL4h8Ucv47iDn5RVxVWUnZH9zU
	WYrg4g==
Received: from mail-yx1-f69.google.com (mail-yx1-f69.google.com [74.125.224.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkdf7sm6a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:33 +0000 (GMT)
Received: by mail-yx1-f69.google.com with SMTP id 956f58d0204a3-677c4ca2265so1848003d50.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793200893; x=1793805693; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QJtv1elE22/fRjimfKOj8JWMX+qMHWo6gdQpzkiKlMs=;
        b=DH/tU/iDas3MeVgUO1ToaO86UHWpGRF7Wx7SjczsdWd3FUYLZ8SN3uZP08W182hJSJ
         SxDqwTYhDJEFHbXiJ9+07O9zxJk/fCN5HouLWMAQEpgCoC7MvS6Jehnt6vTu2Rd/Womq
         v8kDxlUvPYOgQm5y3rc0F2NKcRmgZ5qxCtW1m50I0Ju+4YIu4bepIELd3E3f52HInGmm
         ADgwj0r8VcFDgjITO0g9z9oCXT4EEjng0V38x9ql/sY6z7p/ix5GEuTMVOn3q36d6+p5
         AXPmi2Gia58YyMQTnfSoojUedihDRS+2V6vSiyGZVLesnCWH12/Sn3Et8F9It7uoAzCX
         JUJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793200893; x=1793805693;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QJtv1elE22/fRjimfKOj8JWMX+qMHWo6gdQpzkiKlMs=;
        b=TerW8yA8PN+yWQjOKgVOxnXGoBU7adzDWNqbYipxxC+IJH9hltVEXC3oZXUE6craEB
         tC4bImstP8hwI/KDR6Ei3KsqY965CgvzGWD5is0sHrr2oj1FocfmNRzixCIbmEq62NgX
         vr/2vq5w1oj68de1SjAWc9VxKDDll/GuSetEY0yHj+18/C8oaYaAL3ImO6uDCvvvH/By
         +H3wv7K3UekUXos22NrToEwneoRoiMQxt62pUlcPd4ef6R+/mlcTbyA/E/1M1/rmUNzm
         OVlyGwg/YFLDzSQBlO3xkdHga4r9jQusnOtGcvKJrKBuL7/GovQGxNCfChfOlH65xW90
         f+PA==
X-Gm-Message-State: AFq9FYIe6u7DXskBgBX7dBiZMz+EMxA3IQPh4INyX7E1XlCNJ7vDV0yH
	0kg+3v4XMbYTI3IMTZhOLyu6l/3DMpualMP4TRzCLHG3f78fsF4JZ8Q3y9H6s6f9YBacqjY93Xp
	inkpBUuLVf3hRk9YmKlwS7mfn8FF5eD3WR7F/6Dgkt3UCJ7aBWeq6smKK+BJTJmoOa0C+
X-Gm-Gg: AYBFou1dqlu0adRNpWbvrLCvrhNjn4ZIBd89OZBxyu69gAP7KHd4c1yG1Tjr8nY7jfP
	x+NDTmjWfl2D0u8pQa6//7DIQV9rCC7KemJxQpmFh1gs08D1l2T3eq3P0/OYSpydS/QSgWYJX4d
	dP03qzZW/yfebp3TstZsnorLCGGzm0LXCCORHtKugwJA6512IPKKtPD2ZuHzI8rwiMdk4fbvY/S
	1fFoIfFUXeKxDmftONKRziu922HmrErbCiVQ9g9LVvQWoBZw5blk14mUfMbCU703IXRS6keRNx5
	aKWeBMy2UjqspA4Fqb9UcfSg5wGfYdYCmU71V28i9HFUiEv0L970x27MP62nJ3rcEXa1SYf0Ok1
	Lax9/nGKgxGAitIHi4mFcKylAPwcQbFiF+c+fOIcMh0eEoZHhaEbjr3FhX/z2YAaIWdslLHGh9v
	oljPyde3qmXugnT2a0JkXJor3kAynjxscl5aAq0Pf78Tdj23ex6vZSdWMv/iJ8
X-Received: by 2002:a05:690e:43ce:b0:679:cc49:55e6 with SMTP id 956f58d0204a3-67a7bd19598mr1289961d50.80.1793200892549;
        Wed, 28 Oct 2026 08:21:32 -0700 (PDT)
X-Received: by 2002:a05:690e:43ce:b0:679:cc49:55e6 with SMTP id 956f58d0204a3-67a7bd19598mr1289910d50.80.1793200891909;
        Wed, 28 Oct 2026 08:21:31 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-67a803cdd1asm1107541d50.4.2026.10.28.08.21.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:21:31 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 08:20:47 -0700
Subject: [PATCH v23 13/15] arm64: dts: qcom: kaanapali: Add CCI controller
 nodes
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-kaanapali-camss-v23-13-95f250b18612@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
In-Reply-To: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=M4bYuCws c=1 sm=1 tr=0 ts=6ae212fd cx=c_pps
 a=J+5FMm3BkXb42VdG8aMU9w==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=09nyjJ-fxQ_OzqxZyrIA:9 a=QEXdDO2ut3YA:10
 a=Epx66wHExT0cjJnnR-oj:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: tvYkXInMDJcvMPEFQHdiU5CKm2NlZ2q-
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfXyIgJV+EHUtih
 EJiiDZufWC3dA0Mjf9mGs7wq8VoL9ghltnZo8peLmr0QauQlJP6+1qBa0NYlIzSDcguV+PjVoqc
 h9qw5Umn6SURiZ+rExczmk+eYsqGw0Q=
X-Proofpoint-ORIG-GUID: tvYkXInMDJcvMPEFQHdiU5CKm2NlZ2q-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX0U25H/VIp6wq
 cIS/wNGuRLtyAjiOrta9A7afATEEtKY6flpN/s5cfsM2fygGIJKdq08l8VR79P8bbJ3rWdHQKKe
 qjDD9GhfKvzVYXnm2YO9E9QITPCH87L3c/2hI7LzV8sUT9Sl0hdVOsqkadvytB/SGaRjK8ZsqiM
 agrrh1DxopvPB5F3MMaLvYf0LPjr4zPswFohCziaf73EVVEZ6YSzAuKrZyrmHivPtAdCwSmH81d
 vpy4NO1asd1cyoCZgvDQY73D0k9RK+WjkZekb5hbLG4hYUWxNk1O3XmeTt2DCoHcBQC3VF/E9Li
 0GpXoLKgED13qJ7hmD4sWOpy3tEJMiZjqdGq99FMSm5kqD6h0RjztPdK8jZmpXq9vil4CrQLcwA
 kJ+keg0rITmxmxH/YZIYWvAerrx+Zk+N2e8+G10bAGA8c1EnZduEnyK3MrEmOlNmVqjt9L5GfyZ
 lLnrnSDhakogVWZ3fKg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082134_559186_EB79379E 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -1.5 (-)
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
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 303 ++++++++++++++++++++++++++++++++
 1 file changed, 303 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index 0c8fd7da55b7..bf3922f0ffb3 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -3748,6 +3748,117 @@ camss_csiphy5_in_port: port@5 {
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
@@ -4536,6 +4647,198 @@ tlmm: pinctrl@f100000 {
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
