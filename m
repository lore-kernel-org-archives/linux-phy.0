Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69839C5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 15:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMtCgAeprWnA31RoAYkA2PI9V2ztbvAHofctZxkqQXI=; b=sIxBoUFhsROgOE
	2JpXjpH7eaHPtwADvDEI7H674FuQtDXUd7uw8jdf1rEy9/CVfZRJipBCASp0XDRJY7T3Ynv0F2fUF
	KgwUU6rhiF7ShmWnm0g/EOoN4fBBcegq8y0ycbXaegw6hVXot0PESXNlUmzotLCemKua+VHprY3fu
	zy1+1B/ra6QfrmXZn8nsLnln8dHUgrMpFGnESnsZrSZKcxtOP+GHLRoGXwBohE9Wkwv0tPNJVvb5E
	bLO9Nbh+YsKrstXXTfR3NjPVB4Mq48WFg9dQtGIQK3Dd0mTmzSyk6hlmMEZnZSYi5IWTzmiSNR4Pe
	mX8+aqEssPcW9+sxQANg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS99-0000000CIcV-0WB2;
	Mon, 10 Aug 2026 15:42:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS97-0000000CIc2-2unV
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Aug 2026 15:42:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=vKWiI1N+R0cjOLHZF/QZRa5LZDuo/wMrVcjfTjWK7o8=; b=KYAEcNG/4ypTz+7fN5p01UKsba
	QktRV9FBUVfB0aq1lzZd7ez8CbzooG/25O4kyVMubhyiHr9pO8AD1POCkECMSS/BejEc2bxAI9ZYY
	RxM5xv951xv2misPfArDvm0BIAMhoOp9Q4qnnN2SPq/QneQrSKBpIiHvz9ujFacbGxVtjx06h3cO8
	IHATx62gIJbr8YlK6KJf4kCdScG6V9w8u4dlT2tAlm2+06kB13sOOocfxOy8a0MVfFh4+nyv13Xad
	KaT5P8H8Mig0cb4KEaAXi1yO3vG+y1UOKBt7xItfqHU3QFmS1VhBjDWnA9SpMcctFM5AgLJwqtofK
	5cFOj2Bg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wtS94-0000000DxMi-3c2V
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 15:42:36 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67AFWMFm2057365
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vKWiI1N+R0cjOLHZF/QZRa5LZDuo/wMrVcjfTjWK7o8=; b=akwxgGYiNPm5S6/R
	anwWFKN6u5wXh1RpndWx0GoZzEvRB9Q4YUuBSeCNqbSLlmREGasCbyNPAFBdnVj3
	OID1TpwEwliR9wN+DOJu4bEHENYrriebnfAzzn15Cn4ZFvA/m3CXwmxk2C3VUL9l
	ZMZwml/RTa+xuu4areXhKv2T2x+NbY0XErjsMYHSnPeR3mdCPveC2YmO5YvbJ6Uc
	xgf/Je96SLn/+j1YOTMFjoUfqhTRBxuLOpvckdPrDQp/x//F6ynUO4PWLSRR2EI3
	N85cahiSExYKnkN7dRtVVMgcqzXFxy1Vwcfj3dZb+hcnmeKahHgzgbq9r8mYQID0
	3KxkoA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8v2act0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:33 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c20762d21so26982241cf.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 08:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786376553; x=1786981353; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vKWiI1N+R0cjOLHZF/QZRa5LZDuo/wMrVcjfTjWK7o8=;
        b=ZMLCwp9mou0Wv42qxbHlbYooNj5GLtEoqdlV6Wrjc3GDtjpjN6Vaecd+M/MMYOffBa
         YkSpe8gsgWpI8OedmeJyugPxT+t0HGIUWChMXebqXugUJFO3DqodOaz5owPn+yQEQS9i
         AzFTKFFifydPKIVhlplUnRdIGDg0K/KIAxNdwMDumI3tEgkHTZSQWk78pdmVUQfR2zgY
         M5DuuORKcVl4A4Foy+LGEz6ko2Q6iBNLI0I4w2NCzLrSRTVglmToMvDH/ESmqpVv+UWB
         RCG6GPIvPqVKEVUnLmi9XYp49lcICCgHsO46MtoTy4yYJ4kcpOQwPJ+ms2/RR+5WE6lF
         NHHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786376553; x=1786981353;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vKWiI1N+R0cjOLHZF/QZRa5LZDuo/wMrVcjfTjWK7o8=;
        b=s9mB2KO3gaC8w5GHkHvFbe7cC7EAqWm5Jb+vHE/nm4hDSSp7w4LWwYq1zKzNOeLV6q
         4X9XfJk23bOJQJ7EFsOo3WISNYAXJVZxywg0xt+Cn3pgYPoZiw8O6DkYA0nD3gikbKad
         s7oIROnRjee2kGvqx4O3OMUo00VYGyPHcAqnJsVEJ6PF5GctCuD2PbxrDGHFf9TA8TTM
         q37wJSU46HaFienMQG7l4XyYXU6XgkwrNyIeMfkUsrAIlCnZer54aOw4ZxOBiV8mry74
         IJJA04tP7LzHxpsvMkXirlIWUKXhUjZOEoyTs5mflwV5gNQ/W9R8sU8CAdpTf6vofLzI
         BWHw==
X-Forwarded-Encrypted: i=1; AHgh+RocnhsifdSVsJLFqzFEv2vRvirELmn3dMigQrLyPExuaE33+QA+658ywPfgNEyjlYLMkeqz+kdy/+A=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfG5lRFQTCxnEtITxrs1PI8cSwLrBGFfDElm1gYXv0qg07D3cI
	R8GHS9TZOj8wCOZTxA7gAGSY3wYi4QZDX+Zr9Xw5koBZD7O6bNJvG94W9P1LdEwjZlwv8NkrsLR
	TvDDwjTWgYvxYG8i58+UBEfJ9Qw3LmJsq7qYr1/Za6VJwlXrdJBABjRgFLp/my6hqhupu
X-Gm-Gg: AR+sD12jdfzQ2JFgj4Z/3bkc/dQOAAlQiQ0bVypn8ZwMOOUOUmqqV45C/Uv5SNMlHLE
	ga21LLpLApfvZyW55rsjZ1LeEpjfeNmTjijkRMZq/kFToWw+b7gzJRyFkiJ0igxD/TmjBb3zTOj
	YXVbC0exu+FjjUISOY2PwiLti8kVhM9urYD5TaoLg8BuxUApuegHlHlZl6BLPjQgF3pCgQ2WhAR
	JMfk2dZlUw9XnejzwQWWkCVZv2yShkh7fQT6iLHi+O3PH8xjxvVuHKReSkgTs+LHR36WHvsVjA5
	EYnxR8jiPROndP3zPhdxsgmxBUL0z+JKMm0HdFvE3aAisi0zUdP8Agv/czVdzsOXwBbzkUWbzAS
	Bw8XRvC9giZ3+VYg1nJr9isu6lqGaAuehwBr805n9NzgavEWJ8yENwfENYIsLcWGJYW6VLBMNQo
	yMg8jRsgSgXagybg==
X-Received: by 2002:ac8:5cc5:0:b0:51c:207f:6524 with SMTP id d75a77b69052e-52d1919e59dmr265070311cf.37.1786376552603;
        Mon, 10 Aug 2026 08:42:32 -0700 (PDT)
X-Received: by 2002:ac8:5cc5:0:b0:51c:207f:6524 with SMTP id d75a77b69052e-52d1919e59dmr265069211cf.37.1786376551886;
        Mon, 10 Aug 2026 08:42:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b3056f1bbdsm2071673e87.82.2026.08.10.08.42.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 08:42:30 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 18:42:14 +0300
Subject: [PATCH 10/10] ARM: dts: qcom: apq8074-dragonboard: enable the HSIC
 host
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb-hsic-v1-10-e5f93ea76ffa@oss.qualcomm.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
To: Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1766;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=vDDm9UNNeBZngu98OmnO9mFNj134tAZMEgio5MqFpBQ=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ1blx0DxUsOgB3I8DaoFadt+iH/JjhX68Vl7069yvqQUu
 5qu1bqdjMYsDIxcDLJiiiw+BS1TYzYlh33YMbUeZhArE8gUBi5OAZjI2f3s/7OLY/ZetjCx/rFQ
 50HID9O4R5eSlr52Wb7Mjzs9J23y/jCD6xp2O7h3FXfMFb7+PbHfkmXKvmaFGzEN2T0tug8CZuT
 UWchwZxd8TLvSse6Tc6FYxtRZXklLFIOU/Nm4+W2SfjmGp7TGcPp5xByzcc2yKZ9w+vxO7XNuoT
 qry9YX3VkvvviGQ4PV8QPL+VgsTXlmvuhJOV5fHHB+t1t1kC2PQPMRoZffui/Wi0ULG5/7eeHN8
 gZ9juWri/RkO7+HZqWZuhSLLDys3zttx+tPZSZdvGkzhYKCBSJS1xYdXLZ9psj5BMFrpUJ5c9Km
 Mynsm/s/ZteSbGPVVx4avTuav0+5PvntR/EXJ4vqhFIA
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=S9PpBosP c=1 sm=1 tr=0 ts=6a79f169 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=VFyZVMh9rlY2QtTs7IkA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: IYeLfPntWQsisQTEamagDc_m4PZvkeqn
X-Proofpoint-GUID: IYeLfPntWQsisQTEamagDc_m4PZvkeqn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX1XnOhOf8e3IV
 i/rMBqxQYCtQw+bVpN/l40ME64QhzJJ0JSGtzJJu6+sCC1f7CCsQwWkGT2bO37FtNKoaBVv8oUU
 qFAidwNOwrWnOKh6goK8VG8pcHTbJeemB5nqUMY5GdngO7eCMt0apac+Qe7mmW/Fm0uelkAP2fH
 fg8aYOM5NSKYvEceA+fI7o8FIcFUHXALsNkjmXlu5Kth0ChMkpT5itQvDo8tDjHguDYpn8Sejfj
 13GsHpINPe8kBMF47otUS8lHqan+Ajfu40wIsfgmD2NxOY98+VZoj0Mm1ay1wi1PswvTjUln2PB
 HKrL0rR/Kng4aQJF/pB/WMjHKfOXKt0cgVo9LT1aCEIBrf1QGoWn0G/BXdbKVAyOYPZia/rG804
 3PRqMqB7CslkphjnfDcLlABKiHexR91JyDcd5oHd3vkyrPdrwEctjCT6r4yYWZsHvXzBvSVZ7ou
 Cdh20iBTnf9M16OU/ag==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX02esc1iPFDPZ
 Cibj0MmSNmkSpdLO8U2SHR1nnFuaOdX0IgShzzcOow3qtXsxt/+vYfl0niWa7M/9svIeeeXPiSf
 v1ybmGY721SpSUeeANGR2Nll2nMR9dQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_03,2026-08-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_164235_183730_CF1A7C7C 
X-CRM114-Status: GOOD (  12.79  )
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

The dragonboard carries an SMSC USB4604 HSIC hub, but with the HSIC
controller undescribed the whole HSIC-attached part of the board is
dead.

Enable the HSIC controller. The USB4604 hub isn't controllable through
the I2C because of the board design issues, so reference it as a simple
USB device, describing the reset line.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts | 27 ++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts b/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts
index 083fd8fa0aea..02183b37ddbe 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts
@@ -158,6 +158,14 @@ &mdss {
 };
 
 &pm8941_gpios {
+	hsic_hub_rst_default: hsic-hub-rst-state {
+		pins = "gpio8";
+		function = "normal";
+		drive-push-pull;
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_MED>;
+		power-source = <PM8941_GPIO_VPH>;
+	};
+
 	msm_keys_default: pm8941-gpio-keys-state {
 		pins = "gpio5", "gpio23";
 		function = "normal";
@@ -487,6 +495,25 @@ &usb_hs2_phy {
 	qcom,init-seq = /bits/ 8 <0x1 0x63>;
 };
 
+&usb_hsic {
+	pinctrl-0 = <&hsic_hub_rst_default>;
+	pinctrl-names = "default";
+
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	/* SMSC USB4604 hub, standalone mode (SMBus config not usable) */
+	hub@1 {
+		compatible = "usb424,4604";
+		reg = <1>;
+		clocks = <&rpmcc RPM_SMD_CXO_D1>;
+		reset-gpios = <&pm8941_gpios 8 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&pm8941_s3>;
+	};
+};
+
 &usb3 {
 	dr_mode = "host";
 

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
