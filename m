Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CF0606CBF1
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 05:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UBYVVG5E;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Y0DydbRI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=J+J8HUdQ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wa1bdDK15pyPaoJQkGHkiqxwJwEZn7agzd+D0TmKGl8=; b=UBYVVG5EIqEeI+6E7c/2fl8kwv
	M2NLGMB5RsLYoG/JLVfXTk1zKYm218bCHXfi26gVNY5Q8Sb9difWrPgjeMQoK8WSWEMOpIJIYkqzB
	IdKmyB4i2APCttRZI4ebUbCuYemESUOw0YDNk1Jfal1nJzEJNH6tmdELI48jHfJWgVp3jCJ4l18bZ
	pJiHv+AX9LARdv7tgAlnmINnJ87Il39nibinM/kMklK6Sv0l0eadlQA0ybpr8Pb4VNFcJ05/sWo0P
	jbcrO4S+mnqzZ5ihsSF9GpeTSyvcVmBmiYtIFkggQDRi6g1wPA2pZo5a9Cr2nN/En/h0aPEgDxnKp
	bpH8D+dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvd-0000000BhSa-49Bs;
	Fri, 13 Nov 2026 05:34:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvc-0000000BhRz-22fd
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 05:34:25 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD57AK53615965
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MAVzkOF6jO6BAOmuh3rbkMOms6rYjdBmafGplJihrXg=; b=Y0DydbRICd6VfJxi
	wjL5DVVFUYeE4tgWndVMMVkjwvXSdFHl84VMV61V0bsHm3uwhTsCIcwi5Xu2OH+V
	G/xZyjBSLULkBCGGz0anfipn1ETxvO0brGhm+zLLWpm6GxngaGphwX+5fwtBzsPB
	3gZOND19WDlSoaimiAUnV/Ggy9kqsClW0GIBLR9FLVgi0E7PEfoHlQSnPSST129k
	yGdG/qL/PfBD8KIwMRzT4kaGxqFQQrS+V5rKoFb7VmoxO+xbxK9NQY7FC/vHprGS
	CDMpGfKAMXN9hQe1OFFZakaoASQ9PqHz+f8PLnGESOvcGkYMBAFIf1A7+jeNFvyc
	AXFhvg==
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwh0aja6a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:23 +0000 (GMT)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-49e5451d6a5so614642fac.1
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 21:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794548063; x=1795152863; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MAVzkOF6jO6BAOmuh3rbkMOms6rYjdBmafGplJihrXg=;
        b=J+J8HUdQo6wgd4+dMpaOyYUxd9TnYuFfJSK08c7mym4Qy1IcHn8BkHi4S4xRnmFdsM
         iDuFzmDfsrsRy29c9W0lnsn1PLSnYx0LCounIHGcfuumxgPlhj0X5pI6RFoI3OFRDQOs
         kw0lsRrAZUYmOi4nYgMMXR03CPGzZpc5yq8JZ91NEAyQH2ASTUww3PXYbzvig/iuEOlB
         MDGE77iN9V8kJislsFHqRwX5TfocaUPIxbYrlIVNqk9IoIRlUGZPchxd1O6VkXwhUq2g
         pQe2Mmc+MlXZEs0pj06rXP1boAsCl14ndqdEitZPug/oNvvEBSgAGRzWaOPFBWy0ondX
         9RwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794548063; x=1795152863;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MAVzkOF6jO6BAOmuh3rbkMOms6rYjdBmafGplJihrXg=;
        b=ZgqODfCbB7VO/V0lZfZfzwxuX8FRhDsGBoi0FTFG1PL9qnX+8YeOJwHivh5j4dlfQv
         TRRYz99L8M4d9aPbjcplMEdvO8dEWElQsONqHRXnOODwdFe0KC7ocqYMdEkZ/LSpciZ3
         oQrNJTQHHUCSmrd0ecLd2C8JalQ/Z+XJREzmQZ4cvZdZTXdM4vsSvba9RdJ4DSzJ0SSk
         Z57A3aNieyhrsUBqIJRMX06c01pyE0dTq3Buft8OcR8+flW/OOFBrQzp3Zab3anI07xL
         uPO9/0T9uD/TjrU4CftrDNZ+1leplh/FKHxjYbqjzRwAONdUF3yo0mKCLo2d5j1m7vhk
         VFaA==
X-Gm-Message-State: APuU4Z+e+cKm7XMXcKjGGLLXhgYHADr90KrQN7Qnut6ptuSiZVbrow2v
	VSTL0MWBrTzYaST7166pY3VA9MKDgb+OdgiUWqNjuDySEHZQSMDVN/iZpn3Vwy5qr0nm2jPP5eh
	m/wzIzkojjZCfVKQJtG2SAztxb99dugByAWrZgp+e+j1K5iD6WB1u7YPK82p7QEDs2pFM12UcUZ
	MTdX8=
X-Gm-Gg: AYBFou17wyC2uCRqjwfSm9+paQ3LzTNt/6ZGhRYLB9SRnmoxeUPGb80O87of0KdD+5Q
	m6q0laKX1d13uKcmcM35kAESpR1/pJY3amRz1zWOnYBzRl3LNKhibJz+v6CtZ4eow86mzIGnqGS
	iexEcIHzjylgBHEGrwTcKFTFR8cRFKO37qIRpEd63rWBAgcy92/LUu5K7TvFkWYeGZ1AfcLpn/G
	0E6kH2Bxw4jS/CCOtkPagXNJ5mZcn6LK50QHX45NEDwp6W4GWUcEJQUyxkuhvpA4zt+uoxzgbei
	60XV3DXsyBjgH1PVo2WArKQSHVFee2EWta9IKrofRgKw4auaie/NxvtpHcbqyaX4oZWyT9U+5pc
	t/MaXwR5upAHPNOyGTgJ+PX9vtIO+ThtlvZ7pZ7ZfkMQhRlnVbgqNfgfH/uDOmJ7os+5tp+dUQK
	RR69rfiDlPmM3jJ4TO30QatgMTPvKtW/vtrYKx98la5722ynzEyevx3iNGtyYf
X-Received: by 2002:a05:6871:2e96:b0:4a6:d447:c07d with SMTP id 586e51a60fabf-4afdf2a858fmr1846701fac.11.1794548062838;
        Thu, 12 Nov 2026 21:34:22 -0800 (PST)
X-Received: by 2002:a05:6871:2e96:b0:4a6:d447:c07d with SMTP id 586e51a60fabf-4afdf2a858fmr1846679fac.11.1794548062344;
        Thu, 12 Nov 2026 21:34:22 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4afe22576bfsm803252fac.7.2026.11.12.21.34.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 21:34:21 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 21:33:46 -0800
Subject: [PATCH v25 14/15] arm64: dts: qcom: kaanapali: Add camera MCLK
 pinctrl
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-kaanapali-camss-v25-14-1d709f57f370@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX1XWS4mWsr+Yh
 pG0oxgr3WY7WxEpRyiIv4hWpg/WrzlqR8UOw4X/D/PkO/vLZ+KnNQg4d1LdAYcmFzc6tRc0/TnA
 BUsg9UB1mFXxBdukBt0iF7GT7/PIrmw=
X-Proofpoint-GUID: cCPmWUVSw5-feRbu_ruxSdo3etHhbztt
X-Authority-Analysis: v=2.4 cv=N+e8hG9B c=1 sm=1 tr=0 ts=6af6a15f cx=c_pps
 a=nSjmGuzVYOmhOUYzIAhsAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=4Dwyees-64n8yO_2jeYA:9 a=QEXdDO2ut3YA:10
 a=1zu1i0D7hVQfj8NKfPKu:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX6s68aV6C9KOF
 i74xJg+XDtpN2svNP85rfrykJYEUwB8sqxJRY9UI3MD4auTljgPGiKMB3SC0xDUaki1q3WT/4su
 ZgAAf9vg/69TE/uzYX79q8VSZAfgJ7Z4ems5Uu7+o+Xx9ZHZ7yH/fUce0xs6AdvJfVDgLtxl0M9
 SACGSmd0j+hqUMmdFUlS+WXPdoLBw4WwG2N31uAk6qJml/3OT2bzz59MTSn67y0g/qpE0MUkJWb
 ldtEkOGWJs92AE6y7HlfKImw2hOcPYp9DMkXi+FNTd1vWt/ZdECZqXl/gu/XJb8lHiUu1uxa9YM
 c4zAoy3bU+IZaPoXZ1ezIJ8/jpNfWj4Bf/F2Z6PpW+6HSOnkpVDV9MZjp+gfLjsWRRvR5+jIfV3
 tmYaC2OJbdDBH7TvP6lyiF7TL4mK3MGgosf1zjKsEPJgcS/hZA0OaibxU8p0SSdcQXK6MPFgbwI
 xh3yjmHh3nWDGJqxRcg==
X-Proofpoint-ORIG-GUID: cCPmWUVSw5-feRbu_ruxSdo3etHhbztt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 phishscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_213424_648431_62832C32 
X-CRM114-Status: GOOD (  11.28  )
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

Add TLMM pinctrl states for the camera master clock GPIOs on Kaanapali so
camera sensor nodes can select the proper MCLK pin functions when enabled.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 56 +++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index 1662ebdfe729..3c9c97a553a2 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -4663,6 +4663,62 @@ tlmm: pinctrl@f100000 {
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
