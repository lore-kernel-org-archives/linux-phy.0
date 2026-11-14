Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06BF606A331
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=a8q7jFiH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=N6DCdMVu;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=W55OwOXg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gXlfKcOBxAyCgCLnEpgxaQLll8FiOCFpZ2AcQs2SbOs=; b=a8q7jFiHTG107E8pBSNVw0HtxL
	2xBXUv8CY6bkLUeQ+hOJNaSq3gVu6YFj0/MGDVM4iTzqHhyftr1QTv0QhR404zw+dNvxydIF2R6lA
	wuV57WkH4jWpZDNjs952CP0T5zjjpGrZEQtWh9FNj5qOzWtBzUfMdo682iz1+s7uNewlXqMBWC0IM
	Ku6NhzQq8uWKF0/h5UBEec1GwWFT0E1qs2ND/hvExrssaqRytAbvz+2BiWNIOsJA9ODeGoDynoRh2
	0YtpxwNDJIxESxBfAZc8a+hTz++G/y3F2Ro0hxWzFCU4zt1FP9GEh6QMTmKX9N5kOLR5BOE5pb1MS
	fkdbCXqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSC03-0000000Fu7I-2CFy;
	Sat, 14 Nov 2026 11:32:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSC00-0000000Fu6k-282j
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:32:49 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wNO3174079
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:32:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v1U7sBZaKqbNbwJInAu56We/z6Ce1sNVBbGtf7uj2O0=; b=N6DCdMVuKhJqR+KQ
	hRhkHqPOgGzkEe592gkZnkrri0I1fAkmDRhdfsCsydRfefDHUq2zFvcYXqpnBNHT
	QbOUgukGZJYfM/eRcQ7G3Ny2DPnLcGsLsq6H9otfsmAq6+/b1jdgu9cUOh659CP8
	MViEJDsKlve7mPmtw2+Q45ydS6XVvv8klrYJTNP4aeZ07zGq8S6lyQVGw08LMSJA
	Zn1AKZSCjZqiLAXm3BU6wtiHd3jGKYNzK206gZpCdCiknYp2xrkM98o4e8y1tM4c
	aibWVe0QkhWfhveqWvKiiyIaEGScl11CTmhhpoyui82buFOYyjSQkt5nIdT2KTK8
	5zSKjw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhmagkp0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:32:47 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-91e98bada22so36540076d6.0
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655967; x=1795260767; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v1U7sBZaKqbNbwJInAu56We/z6Ce1sNVBbGtf7uj2O0=;
        b=W55OwOXgh+CEaHYh0TuJTqnulRGFdxqfEgmXaCdP090PGwwsdUCkapHNpKa677UpxI
         HQCWg5JZJ0W+5XW6SovWwoTXLAtj+XR3F9krWk+rFho/NsFoM+57GfyLxTayZGqgbRaS
         hmvbO7/LQJlIQn3kINIiCPfwkOamkKe1mZLRbyV377KSN4DwZEKNbJ9kc7fLrdQj67Tc
         WIjbd4OlYygQsTD4ISkpND+lUTjuVOr0CIZCk/Xr+8MoeiI5w0wpVqxEN6fFW985tD7d
         7ZNRr2WvgerswLj3MOmc/3D9IBBhNg/uv6SWusdkb/Q2tuCUXN3QW3L0pYUd2ve3AEM6
         nE+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655967; x=1795260767;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=v1U7sBZaKqbNbwJInAu56We/z6Ce1sNVBbGtf7uj2O0=;
        b=beOlWFYIpYn+WQn5oCAeuoWHqzUUNz+29IX7IcdMcowPYMLSHoyne1B+sf+ur+1/xr
         9xtnotkHdWHlqNdNLKj1KB4LCfovv6YIwtePlEBY/Wx5iyrVkay8VZUfXeLaC3f7dXnk
         47iXnj+ssbkt0LY48aaUSPcMPQyTwuJJ8PntWkxL8oYi+rR8CGil4CPZewUj316wkZ2U
         w4PGAxuVyJ/jGK5GO2YdorKwVF6UT9TEfsaxskbFM+HbZwd3MAcuOHU8mHKWNym7rASM
         NAFtz4EUd0gZu7wK/qb7Lhg6W/Cmwsm2sNuaqzauNODdtV6df6AchC54f+mcupivATJB
         7chA==
X-Gm-Message-State: APuU4Z/Nftv6CDxL8qAX8yQUIrAksm9Sd0IWE71yB+qdnifW1Z9B8mkv
	QSgMAVToAF2DbvQp1t/rjE5mCT2sdoJl5yjI9/9h6oRF4zPm98KEvLNe7bu4Klh+0+HenLvdK6v
	cZnS19tkR22qej9CZLj79L/ATd4Q0/ug8SqogltXeaRUfnHcDYx/plF4VGacOfL4M2EO3
X-Gm-Gg: AYBFou2+mp3UJ3XWp3gNW5CblAPCFELwyam9ThNcY91HGW+YJCPmGdHzj/z6uw4Gq6/
	qIDxZgqWAMPkj5B20AZCjU/2GS56fxzUE6fD4d2xDtgZdZO4MEWdZpJ7HP+1rv+shtbwmWyAYJW
	Hx1T7KtXO+Akr0Fb67Su3caeTao6GD7tOkVNY9NnhVeQ2FzRJPLJkddSyFAeytdLROc/M7M91+N
	kp7DvOPJvn5Ej7QfT3o7Y2HZPnA7OHQig2g4XuxpWI8T1tY71sfQKcU/M/zvD3EO9HCVOKdnypu
	aXeDO/luMaFVUnVUP/VbanY9Re1BtdVqnLH1DLLN8Zx4WAyadB82JGT+b5aiuBEKs/2oQ3SFPF4
	YlZuy52SUwdz0zMAya5DegrPrFoSKvatZRBaQSQdOzsvBBaSzQ4V5Do8ePAn9YkCMVoIXPW2rAL
	IZWr0xiJohoaZnpM0R89ceMOpNyeq1O+iVIWObR1ft
X-Received: by 2002:a05:6214:1301:b0:91f:136b:d44a with SMTP id 6a1803df08f44-91f24166bf4mr85261446d6.33.1794655966666;
        Sat, 14 Nov 2026 03:32:46 -0800 (PST)
X-Received: by 2002:a05:6214:1301:b0:91f:136b:d44a with SMTP id 6a1803df08f44-91f24166bf4mr85260946d6.33.1794655966199;
        Sat, 14 Nov 2026 03:32:46 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.32.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:32:45 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:37 +0800
Subject: [PATCH v7 20/23] arm64: dts: qcom: eliza: Add camera MCLK pinctrl
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-20-8ff2a11835f6@oss.qualcomm.com>
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
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=1457;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=rB8pkz2FCaAP+r/pTb8lDqYixAV3o/wVSCv9gP1ibjc=;
 b=bO4rJz1QmC84EY6U3r1bkmZ4PXhLhKxM0HlCwJLVHdnT6+kWWrVPCxX06MNssdNUzjoYI8idQ
 feMeZ8f/G3FDr2iRw3wvf0PMTlcgmsQHkIIzvI8R7g2ylrMX85Hh2zA
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-ORIG-GUID: nouFuih9nQXIQwd2UJ52dR0Suz9beI3S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX6y2IMZLgAhtM
 AqwmHUD8NKdr3OYvvx/XgGlAChpaMe+ZC6+0H4S8Y6K3erJOiz2XFsdLIo3JhKOxbC3ksHJbV+M
 Yn07r3/rtibUwb3xhgaTQHDDHctFVujhbIHop4B7lNvMCOzRNbXxFYbICAIjtBgR7lvlcWFlRKq
 0u8kzwjfGsETwmLd84p7Rg7OAbM/4uL/xXDDqqyP7XdHPQkeWXzw9bJNhDlWOb4xvJuYefZ6YIl
 oUcNUy5sLewVu6pD43LmxpYXgzuCyawmQ2LZxXmdtk9PstyfA4DzoAlzJ2mr0YGz4gUNHpwMyJ6
 LLgNKBdfHiZp6hXofluI3VdtNw+KqyFub6y4YuBr2yCqWi07UT/OeCChXcLO9TYrWCZv/cjYiuh
 vfhfO1Bw1ayA9U5nKnYq+jN+yJiOzUM8PGgoSOTwZfjth5PihJsKnDE5Icfdg8qfgIkE9+WbOoY
 kW1D2F4SNQNtfJw43pQ==
X-Authority-Analysis: v=2.4 cv=NdhzRGD4 c=1 sm=1 tr=0 ts=6af846df cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=wPaziBaVlFKsotjdNj0A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: nouFuih9nQXIQwd2UJ52dR0Suz9beI3S
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfXxfZSmDIgNIqx
 CSnS20v51fqTKVO1AnaB3RN9iQQx0LxsoeNdztfe9XhQwTu/zBm0gOQkfsib5japvuz3Dr5nCET
 FLJTX/9BFHTjnhXcfa2/psv0oIBwb94=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033248_665683_A93F303A 
X-CRM114-Status: GOOD (  10.43  )
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

Add TLMM pinctrl states for the camera master clocks MCLK0 to MCLK3 on
Eliza so camera sensor nodes can select the MCLK pin functions when
enabled.

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/eliza.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/eliza.dtsi b/arch/arm64/boot/dts/qcom/eliza.dtsi
index 0b759bf5b91e412743c12982b79ab4506b9a50b9..f22a8b031e7c56e4ae7311c34ee6ca48359ce8fe 100644
--- a/arch/arm64/boot/dts/qcom/eliza.dtsi
+++ b/arch/arm64/boot/dts/qcom/eliza.dtsi
@@ -4013,6 +4013,34 @@ tlmm: pinctrl@f100000 {
 			gpio-ranges = <&tlmm 0 0 186>;
 			wakeup-parent = <&pdc>;
 
+			cam_mclk0_default: cam-mclk0-default-state {
+				pins = "gpio65";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk1_default: cam-mclk1-default-state {
+				pins = "gpio66";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk2_default: cam-mclk2-default-state {
+				pins = "gpio67";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk3_default: cam-mclk3-default-state {
+				pins = "gpio68";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			cci0_0_default: cci0-0-default-state {
 				sda-pins {
 					pins = "gpio70";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
