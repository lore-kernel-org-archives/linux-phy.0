Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9203C60A263B
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bD0aM86H;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=KYyPY4uI;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Bht78a6w
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Ga4+xmVoO7mUTHWph0Js81WxrX7LzZ3DnRUcD83FTF8=; b=bD0aM86H1SuaQ52b0xU9Y1y7j/
	NwVPefC+449dWUa0X//Hup3Yect7d6uf1Y9j3OTNyhS6kK2Uh+F1UR4W9pUweSS4+92J01CYBti5q
	3nqCjPuvKeBYYmI11Brkn0dicCmuDLrPbf83cR0qqJD8WLWPK8OUtqUW1wPhwyP2D3yFGkYg8GVS2
	FaXT3HJUr34dfRjhjx7xsGO4gtDea/HLaCV8EtLf9YFB5zKJY0V3H0+GD+9DPbM/Sp4lUNSgEQ3wI
	yAdqnijIGaIKAJXXSkRzrHJ1k1+4yI3tyBD0RkAOIx2PwW8oy7mENVDrN29uXcmepEShAHyn4QhQf
	OYOcOHJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5TB-00000007L3M-1OZN;
	Wed, 28 Oct 2026 15:21:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5T9-00000007L2H-0dFT
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:21:40 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFAaPZ1153527
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EljixnZBl5xalbXxR4onDZVZN67B5eA46yADJtCkT6A=; b=KYyPY4uIeIylLUO6
	z4yl5UozBPzx75kR5b4cgzHeRjWUzq06WCeh/XZ1uQPyTDRpawcbiNdmaM0Irv4O
	ktiealJqOSjYchvjImimcMVMrae2FCG+3frWh8VWOUXetMsWrnTURN49mqxu31uY
	EjTa3drCuebJaazLeiGtFR1utGzzEBcLix7HcvBQyAP3RWZFixGaRfKRQzhIGA8S
	/YA4ctkItgAjlzuh1tq9hB0PB9m1o67eoKdVH2ERkERNRS2TbrwDtQVNX6ocImlo
	sG+gveqs/Nbi2THtYvaxjxqTOGoaoWqBC53Lzdnhtw63LgCYNhiwkPvo1rcfhDZ0
	miUwaA==
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com [74.125.224.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk6be34t3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:38 +0000 (GMT)
Received: by mail-yx1-f70.google.com with SMTP id 956f58d0204a3-6755fef4f96so1756217d50.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793200898; x=1793805698; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EljixnZBl5xalbXxR4onDZVZN67B5eA46yADJtCkT6A=;
        b=Bht78a6wbucHA66SBn5KoCekxWilA9mn3kXtWfUXQUSER8BaAtyqA1n8flkRd92s3n
         iP1Fj3bR8VijAqRMqKGroTDCEV+zxyEIzhnH+wQfdPsbYMl7jLQGimyfB5WYKjZXaOeQ
         WLJOxdTNVvU6eDvEy2t2DoJBWltDHNf1FXcq5GWCBI9Vnh+xuMrmN5upHWICrkMuBvPF
         3ZWvxmvbgI1vsvRJraJ6pdBbzdBRypUfyu2exV3SzEpVB4MoLvgOOyji4b1ToZAw0Ko0
         cshFLgMFLbNiPlR7xPBxJNMsJKHGyLX74uud3w01xAwVn8ZfFn4NsQIkiyyIkpHfNWGb
         rHkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793200898; x=1793805698;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EljixnZBl5xalbXxR4onDZVZN67B5eA46yADJtCkT6A=;
        b=Dbu5bngVED4Y0zS8Erl892sxMVNHenymRjYtBqrHq97aRO/oF+PxW8DRo+LUIN7z/r
         1F7fw0kSMPiZxDa1SlgOwT9/Q4acBzJFe1W4sTtefaLVHV/nbLrYBNceNYUkDNchCvpo
         gLWWCgOhJlc6gM1aZjMJhsRHvEmsyUbHNyjgWUaMo4jwJcbQ7mvODI+XYlUUdsfJ4ncd
         2LiHVcwXai8gX2v+9j173uL6Aggxl58NoX0d6TXuCnGeTvLxFq1pMMIQnmPh7nSKWQ0d
         QoONcWfey/QmlFA3sOFhXRRnSQEIZ0WzkJlYcHQSO9zElscX3WpHVjrbU+QLdZOTjRvB
         D2LQ==
X-Gm-Message-State: AFq9FYLmhQmAsfTvX5tt8BGhbFYLsp+6XZsT1Yo/2alTW8wI4uU34j3q
	8CqV2Y5hyi5qe1ATSmEYeeJqTI6t1T25KcKuD5kRQktpAPwmAjKZUMAcTnJX/qtuZyYc1hjti2q
	K+eUFG622VW3qlYUrOQCND6u16Z7vczQwRMpI386QThhfkiFufJ077UVenpw7qAs5QJTY
X-Gm-Gg: AYBFou1oT0eoePykq0Scfi32oeY2rnXg+lA9dWUDc8bAcnyQJHuqIhTjNfWBPy1ruKY
	gmzOf6EXfRfO4mBHZdyTQaUth1yEjDd4Q2qFbUtrnvVp/4FgchaBJAbhCdqhfEkWMvtgsili/aY
	ZwaipiVwtp70jlSaK/ps9e6KFkJlFUMx+VbLnddxJfYbMWGxDtWAR59Hn8+3dBtUFQtT54rSL4x
	g3LED2esJsyMqod16bAIVH7DU6LuTWP8iuR4BFJMtflzvbTKtbD/ILron/nLcod4XndIuBvLrM4
	QEJrFXqw2ChgzjhNeqxav41jLO/f2OPpyFPXHw1SIvLiSOYY1kAUGxz8GuX7IlLDOrgZ/3y9+a0
	4zut0BvHgt9HfjrMm2gLwrMhSgsNReHAmkXpUkSltT8utA4uCW8kpYKxBXcqrd1iPUQfv1mvfqM
	Yyu6Qc5TZfxZ17Ee9rtwTj2IChXrzvJl8UQavyM7W9k+G+jMTVmYyGELvAFInE
X-Received: by 2002:a05:690e:4844:b0:679:a3bc:c23f with SMTP id 956f58d0204a3-67a7bc69839mr1147886d50.39.1793200897114;
        Wed, 28 Oct 2026 08:21:37 -0700 (PDT)
X-Received: by 2002:a05:690e:4844:b0:679:a3bc:c23f with SMTP id 956f58d0204a3-67a7bc69839mr1147801d50.39.1793200895124;
        Wed, 28 Oct 2026 08:21:35 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-67a803cdd1asm1107541d50.4.2026.10.28.08.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:21:34 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 08:20:48 -0700
Subject: [PATCH v23 14/15] arm64: dts: qcom: kaanapali: Add camera MCLK
 pinctrl
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-kaanapali-camss-v23-14-95f250b18612@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: UTKwNTQM884Q2EzxwT1iCEwdZIhLgE7P
X-Authority-Analysis: v=2.4 cv=HeuB3SE8 c=1 sm=1 tr=0 ts=6ae21302 cx=c_pps
 a=S/uc88zpIJVNbziUnJ6G4Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=4Dwyees-64n8yO_2jeYA:9 a=QEXdDO2ut3YA:10
 a=nd2WpGr1bMy9NW-iytEl:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfXzeOlUVVRVpcE
 b1luUSFob7AWfCyFoeppFyzLshexhDlbvEpM0pdx/3zZx0HKKySd/O5pgbdIZBf1cIOWBdb24lo
 0UydIqcG1PVqU2wnV/OxMw1ME2BueKM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX/R2Jbn7paS1M
 /0t9r0j/Zkng53ZS/dO2Vo2ShbckUQbIA8DDKyPE9kt8jDvGl0h5ehM06qpjtMhmW3wWSW1NQdM
 vll75EuBBEaH/CFO3ciepBvwt5zgddwylMSayVwrsaKosJOSVirEibZB5dq8ZZ+2XCC8+LGHkht
 m30oWeqBPar+RCZH1scoE3g74OLDJFd5lW5l7WGXrPWApZWsBVLvhpKXDllB4wDalvXQmUBOZCr
 VnBnbbfV3jNw8wqfcyOKyVjVEYqrReOeHOnHeoYoEYUOYimn8nbM9ao19WP9sQgFgFrXusxBiJq
 0T3rBxuQSXqWvucsRQJsBujq7wud4zqRU2r5selpsiGm7RNgGLspS8yZrfC3wBR+OR8vLlwTq8Q
 BTpLMfj33wOJJTPh81/WlPDi8rchjstNiT0o46yFzuTTf5fml7D/iCVOcvS0DrCatiSLHU4+c0w
 lo3vZsJbigj4F7nwqZQ==
X-Proofpoint-GUID: UTKwNTQM884Q2EzxwT1iCEwdZIhLgE7P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 phishscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082139_331087_9FCF66C3 
X-CRM114-Status: GOOD (  10.59  )
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

Add TLMM pinctrl states for the camera master clock GPIOs on Kaanapali so
camera sensor nodes can select the proper MCLK pin functions when enabled.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 56 +++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index bf3922f0ffb3..3f28f279e4e0 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -4647,6 +4647,62 @@ tlmm: pinctrl@f100000 {
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
