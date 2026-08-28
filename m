Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0E94C61DDB
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/AYN1DcYWKjoRIQHJvFyEDHiOodG+cEwQk9suW/q+6A=; b=Cz6pniQ1j8ThSb
	Heu4PUo/5kflGzJ+ti1g2nz552Xir6dPcv5u/9PORW1N2N85GXtMzkpS+UX7QNIjd5Rq9s3TIyLkP
	yffBzrFMzI7XtSnlmojkxzUKnUex/CIvpIsly+cuzK/NadXXqygO23pahgIfAdYHg12amiuJfp+0f
	X13vgNsuSZvx/KBRuPYkC8hFh4D/dcrkmSdEu8zoG/PWW6+FBsKsaje3QZTWmJr5/+hoSBQck8+V8
	xJ/XsoaECS8s1FlERJaQn4aPxZMF7eehXuw10s7/3OFGDPD7t+S+xdMU7oCFwjzrHw2NAlsDQ7WLo
	oqrh65rRVphIZ2FWujjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxDc-00000005wdC-2qaE;
	Fri, 28 Aug 2026 14:06:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxDY-00000005wby-0jf2
	for linux-phy@bombadil.infradead.org;
	Fri, 28 Aug 2026 14:06:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=7S42qkfhoToVEYy/FsQ080jT2C6K7HXx1NfxPU2yAE8=; b=SXzAutLoepMok4V7DLQbV9gRGD
	iUZ8NEpiNre0O3xOeBuhRYbSbBxOBInSGrkqJb0WZB0llalWP7duyjDhx7M2bsz2TqbRZZ2mf7duQ
	8NJAhOwE/CeijzV15TFgHpl9XO4aKmXFdpIXsptAuUnJnq7ktDQAV7BwBkIyNu8+N+QNl4T+/Oo9I
	4K0PRb2MF/U5ze0JdB98b5CSOVDfijPhWKohchnXMDleui0wZysfPrIs3+y3nVMuT8cXDDNJh7Jl9
	4XDSgjil5bJoUA+FVLFSGoPVHqw8V/Hb+kryOXAWupbr7r1gA/cCYexToIa9pOIKXWxK3s0a2rtkR
	Dl6YgxQg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wzxDV-00000008IwJ-0HmF
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:06:03 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SDkqqj038429
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7S42qkfhoToVEYy/FsQ080jT2C6K7HXx1NfxPU2yAE8=; b=VwCD4dLoAzD8N4dr
	LLUEvS2ahZRwbDsYPXkb8GI1OEVLwv1y8ArrGOd+5h0/FX22zw29Ck7jZMFy5LCV
	TRKniVInuRMhWTbUrH1epIu2notpicVY25m4JqBOmH3Z6Ro2X09ORiyFKHykj+X7
	bAfy/tM6bVMKAC8s8WyxlrRrfX1qm4/oFwnF0aP2iq00BMYvZgP7mcZuzfy/ji/Y
	UJMQNARJSm0nVp1IKICpIT9xk2+jH6W2QNm7EesVdeh3NibnHH3wT+LcqrWrmTSo
	ZYan83EWZD/Vz2VYf1mEhGqUPa7KLcE4DapI73IEDQwPI/omNCw9h6cjWYNgHs1B
	RDAoyw==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb8afgtq3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:59 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-7475c666b20so862280137.3
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 07:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787925958; x=1788530758; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7S42qkfhoToVEYy/FsQ080jT2C6K7HXx1NfxPU2yAE8=;
        b=aatR9Pp04tkRUQRomBomywLjlYBAvKxduemyrtDYmbbdgJTw/MgNBdpqy8LCtpOOG9
         iWaBPjHsjcU0omtBjymMAHOd4JFdUsKMI+86bhk5sbf19RYu10U1VPNsESTKtYgM/7HK
         8JMcrNpdrtvK0w8QLt7L92bXIVb/k3YBQSdbumMvH+LVxjXaushBxrcwGwkLEW25lCJ0
         xQgT9xb8Z4KKmqGrpnWuUOH3SnOzD4N0iJdzEjRJ8zlQBdThjX0ivZnSEI6/v9vUYTsF
         HqxNxxfGwft2BVjF2f8GU1lYhwO5giNNIVFAbN4Wae9/qVZkuEFeulvs3QIXCZoEJsz3
         0R0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787925958; x=1788530758;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7S42qkfhoToVEYy/FsQ080jT2C6K7HXx1NfxPU2yAE8=;
        b=GG8190IIzQyBsGVZdaRFa/+VKbBKOw5/z1OpLVr3khFSs/djsY5hGmfOFIdKHD/Y+D
         AjstE9Zorqbh0GusGrD5my9suYGVjom+6wlBHG2UOqqQYgenIpDjfU//2+FicBFLMvss
         CWmvAck+020nqdgDMoOFGxBpCY3xoaRktAv241EDgSp/6u9jiReb4FQcptCiW6UCinYB
         V6Np9p8gRQolUpikk0/IqQEijbu61wGcBa6fZqdYDWTnxYfxz2RhLTycKGVdcUg+/qe9
         laneMzlm9CHBcAYCTSGMRe8i8vvVKHO/msIIfRRodsVyEmWcUnfdc1JuW0h5uhX8LSDH
         t8fA==
X-Forwarded-Encrypted: i=1; AHgh+RrnRdQ2zPsgeYCeH0hpZdAWHuvbx4R9XcEluQDtN5M6xZHnKu/ilCwneolU+Oo3wc0gnqmHLTyMvUc=@lists.infradead.org
X-Gm-Message-State: AFuF++mnyt/G1lzc5LsKhMI0+rNS9ahXnA252VWbK/nlDeIAnNaDUdsG
	vT4l0qikE1i0K1MGQg3LLV3y+BEH0QAXCBHI3VFLlEV/0LnERx+o7Fs5FZDEqD4fq6lOuav+3XH
	T48UImyoxtO5x4yHfLVc59yuogZzF26LqbxTwuO/oZTVSeiqVZxPDeUKU4ErgKjdIHCxXlWYCau
	qn
X-Gm-Gg: AR+sD11wE7ovGXP3o7UGHSGBkqi5KjvHHLpjX3lQja3LnJSugavYV09sOco6TsJlEnO
	mG65Jnsk7vHXheBClkkxmk/EbpokLrzyPCv0axaB/+lzUAcjzCeTw/1tL9cQ/FDG1PekO0h2mLJ
	jc/I5E5ctK5WtzEVylxGNLIsrv9pz1BvlDd561zy8CXlevqlfEMTHGjz84lFAqVA7iItjJ6WsD2
	bSeFmiLcp6NI1yhjKstoY1dJT50C02HyC8TU7r/NxR6kbDBlkjeXIOe5ckBp3WRKtx9sFjDoEiu
	J96ksJwx9P6RgGGMsQz+CKNziiyQaQ0uzJNCHR9PblZgiroUGKz8LDqAoLe8hqWoPG8b/hmp8Z7
	Yy1MghX6YWz/o+fxJpokqeSw=
X-Received: by 2002:a05:6102:14a0:b0:785:8f76:654d with SMTP id ada2fe7eead31-7859996dea3mr2555574137.13.1787925958208;
        Fri, 28 Aug 2026 07:05:58 -0700 (PDT)
X-Received: by 2002:a05:6102:14a0:b0:785:8f76:654d with SMTP id ada2fe7eead31-7859996dea3mr2555540137.13.1787925957739;
        Fri, 28 Aug 2026 07:05:57 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482fbb20122sm3908633f8f.20.2026.08.28.07.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 07:05:56 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 16:05:09 +0200
Subject: [PATCH RFC/DO NOT MERGE 11/12] arm64: dts: qcom: eliza: Add HDMI
 display with HDMI PHY
MIME-Version: 1.0
Message-Id: <20260828-drm-msm-hdmi-eliza-v1-11-67843277de17@oss.qualcomm.com>
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3332;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=1brovUppJvb6ttZNs7kwMEVpoh0akbg09pFKeVhGO2I=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqkZWh434bFUqmEnSRcqsBUTydZhsSgPv4+miDG
 XMlneJoAQ2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCapGVoQAKCRDBN2bmhouD
 1wsCD/9Mr2Zz4eadLs8rLbHZ5HLoj8IHcYC6XeDJBJ1hq4JmXgA9jzZ+iJwEmqmCHO+hd3lbluM
 L1ufQWKSIRAP93y/MLCFtw77XbOtvmpCg6nKr1393bd6hMFwzpwJn4E8VlMojR7kl+PnXamsAsh
 pPuK6s6pnv/uY5yZfWO0gMCBdTuwXjpUbpYYnMhP88AgUFUykJ55+9Ba5DSZVAtmK7ZjetkAv61
 I/u2P1IbLdsIKgUUQiR1wbXa0phdVCUoVr8ziBhkOVT60LBNksyXoKjGZPr8EzQpAgU9LUhxJ3d
 TjiM3PLC6Ur1wPvN8ANHOxQtnDkCdY4He9djZ5266iTpV1ZrAHpqGNhbMWnsjXVuTBwv3QeKRXA
 hlppN+whNMClQuLSY12GNHRINbI1bSyh5gWk7bHKsO988VkutbnhSgOnGUTBpjTz1OC5bNaxFNs
 6pPhgIq8plNv3MOhsu6rpno+QcujtZ4y1k5oIFHp0kbkLK60F5WP5urqGNR0sUBD7XmqwmzlyJs
 eFQYX2MnjvFzese4jNfjZHcapT7f6R8OKRxGRH4kP9pOYIkCkzNQ/tQXxUC/gxdnBigh/riykcV
 O9mPclqIeHGQSjF7S2fHOvChM2pvK5j+L6J4aCQe+FpFYpo7edImd/Kub32vtHP1DtbIKgp6Eb+
 0RMxMekt3ocM8ZA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: tH49bT9cNSE3gVAS4EIGPjCoDY_w8Otd
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX1ds4cHVQjwa9
 +IHn7bNvI3zbHAPInDdEQQ6S09KnUxDVl5/MgOiAm/xQZV8t9rjflo54A2gONjUNHO3Iks40ziw
 lxJS+Ve5Lfozs5xXLKTizttACYmeEHk=
X-Authority-Analysis: v=2.4 cv=IPoyzAvG c=1 sm=1 tr=0 ts=6a9195c7 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=BhlsTWrtbvULCAht3EwA:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX4wolJt17ZhI/
 LEt/vh3L6lHKIzhk14HfLBrQ6AR4GiZL0wAa3mdV2/QcorLWbw2Unl++ir6DmMuCUuIgDUkAh6C
 +vpk27rsfJWjXIiE9cfRd7H5irk/cH6aD0vcWduagTofFxgorsx2l0TCyS04zMAgzvz6sZG1nKY
 sEFeBq0cX5QGEliDy5yHcIYwg6co7xABgve+MgHMg0vMdzXqdFpQTPhm+cHU7yI8SEUxVMPrTY4
 v5/D4M+eqYGeyelDRtz48w4QVbspMcjZJaaHUCwIwdoPkddVeZUDZzL3KkYfvfRKA60NjWsARZr
 9drFwa4WjhG9Tzw9Kmue0Igjq9q4qGEv0ODNvAgJcl3VUCHZXZ4xpi7Y3IyjYNHZF1Z7ZTi7aZV
 JcXfCiWZ2E3QaLqQQHXPnP/LTIR5qEeE9AVhxNK3vNhgMqoABqhUu52WKaBJ4kpX5RFyyFFe+H7
 kQsJPWWtOtbCSW0ekew==
X-Proofpoint-ORIG-GUID: tH49bT9cNSE3gVAS4EIGPjCoDY_w8Otd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_04,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_150601_571845_3DC426E4 
X-CRM114-Status: GOOD (  13.28  )
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

Add device nodes for HDMI (similar to previous one in MSM8998) and HDMI
PHY (new Synopsys-based block).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/eliza.dtsi | 94 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 92 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/eliza.dtsi b/arch/arm64/boot/dts/qcom/eliza.dtsi
index 66ea4aaafd73..27dd15766f51 100644
--- a/arch/arm64/boot/dts/qcom/eliza.dtsi
+++ b/arch/arm64/boot/dts/qcom/eliza.dtsi
@@ -2570,7 +2570,14 @@ dpu_intf0_out: endpoint {
 							remote-endpoint = <&mdss_dp0_in>;
 						};
 					};
-					/* TODO: HDMI */
+
+					port@3 {
+						reg = <3>;
+
+						dpu_intf4_out: endpoint {
+							remote-endpoint = <&mdss_hdmi_in>;
+						};
+					};
 				};
 
 				mdp_opp_table: opp-table {
@@ -2805,6 +2812,89 @@ mdss_dsi1_phy: phy@ae97000 {
 				status = "disabled";
 			};
 
+			mdss_hdmi: hdmi@aea0000 {
+				compatible = "qcom,eliza-hdmi-tx";
+				reg = <0x0 0x0aea0000 0x0 0x1000>,
+				      <0x0 0x0aee0000 0x0 0x1000>;
+				reg-names = "core_physical",
+					    "hdcp_physical";
+
+				interrupts-extended = <&mdss 8>;
+
+				clocks = <&dispcc DISP_CC_MDSS_HDMI_AHBM_CLK>,
+					 <&dispcc DISP_CC_MDSS_HDMI_APP_CLK>,
+					 <&dispcc DISP_CC_MDSS_HDMI_PCLK_CLK>,
+					 <&dispcc DISP_CC_MDSS_HDMI_INTF_CLK>,
+					 <&mdss_hdmi_phy>,
+					 <&dispcc DISP_CC_MDSS_HDMI_PCLK_CLK_SRC>;
+				clock-names = "iface",
+					      "core",
+					      "extp",
+					      "phy_iface",
+					      "pll",
+					      "pixel_src";
+
+				operating-points-v2 = <&mdss_hdmi_opp_table>;
+
+				phys = <&mdss_hdmi_phy>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
+				#sound-dai-cells = <1>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						mdss_hdmi_in: endpoint {
+							remote-endpoint = <&dpu_intf4_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mdss_hdmi_out: endpoint {
+						};
+					};
+				};
+
+				mdss_hdmi_opp_table: opp-table {
+					compatible = "operating-points-v2";
+
+					opp-150000000 {
+						opp-hz = /bits/ 64 <150000000>;
+						required-opps = <&rpmhpd_opp_low_svs_d1>;
+					};
+
+					opp-300000000 {
+						opp-hz = /bits/ 64 <300000000>;
+						required-opps = <&rpmhpd_opp_svs>;
+					};
+				};
+			};
+
+			mdss_hdmi_phy: phy@aea1000 {
+				compatible = "qcom,eliza-hdmi-phy";
+				reg = <0x0 0x0aea1000 0x0 0x1000>;
+
+				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+					 <&tcsr TCSR_HDMI_CLKREF_EN>,
+					 <&bi_tcxo_div2>;
+				clock-names = "iface",
+					      "ref",
+					      "xo";
+
+				#clock-cells = <0>;
+				#phy-cells = <0>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				status = "disabled";
+			};
+
 			mdss_dp0: displayport-controller@af54000 {
 				compatible = "qcom,eliza-dp", "qcom,sm8650-dp";
 				reg = <0x0 0x0af54000 0x0 0x200>,
@@ -2913,7 +3003,7 @@ dispcc: clock-controller@af00000 {
 				 <0>,
 				 <0>, /* dp3 */
 				 <0>,
-				 <0>; /* HDMI phy */
+				 <&mdss_hdmi_phy>; /* HDMI phy */
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 			required-opps = <&rpmhpd_opp_low_svs>;

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
