Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79738C531C9
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 10:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hx1wEO5MVaQj4eWq+YyFHmFYL9OYDILRkgcYYDcqem0=; b=aGI/5UkWbLEJY7
	qQ4uq4QjIlkz+H+jQx24LacWdhlFfBzUl1K9zGaLReJ/4Lttc1xoot2V0jwso14SW9MnwhG04nYBg
	zXLukE3HMNhB8abp7DXwsm2JBExP8n5HrTHYSSeTdKxKhASZX4ADmSO0j7/2Ai3Re6tb8A7DT5xTC
	El5jcA4fnUS8ZmoeTaZMs1/pWwmjuEDerLdRg+i6KwUX50E+R0y9MjYMpg5ZwEwrrjBU6T8uI4+YY
	f0tK0ggB/ekjhCsVyEXFz/459GYHhgUZVfMFxKj7H0egpfuDrxBZuPT02Gz/yHj+UTzPFbHLdaR1Y
	4613nT3Pebn6Abzbj9sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCj5-0000000G243-0XW0;
	Fri, 24 Jul 2026 10:01:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCj0-0000000G20z-36ck
	for linux-phy@lists.infradead.org;
	Fri, 24 Jul 2026 10:01:52 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66O4lO9d1976995
	for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 10:01:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xGQESnapNniC439AziMhXbTJfLqaefgPzfYKsPTLavw=; b=OhoJytfUnZyAoPVX
	KgtU4Gf6CpX/0eBveUVSGWOllCb+REQbPJ12tgoxRX8Go0yPjMbobTHVhKQnu4DG
	mWMJ6wQlcawpGGd/90WsA44gBpCY+Lz36FXtTtXgv1Y++bjvMwca3ClybBKP6BV5
	Yff1oNiAQzlKaGxfPem59kWiG/cucgtFSfSQkkKmSZOb7aeszRb9FV7dJCHwM1rg
	w0ZuIqA/ogl72bPRI1N6gWgYtdk8VZM2F/a6mRU30JoVFgOIIdGQKd+sGGkOWPA0
	Z48J9JXvzebCkZjQP2gL/zcDI9Ip1rbLC/o097Mv0b0u2SDy0yyGo8J/6dlTDcm7
	jUX8HQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fknbmkwee-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 10:01:49 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8486ffba174so411198b3a.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 03:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784887309; x=1785492109; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xGQESnapNniC439AziMhXbTJfLqaefgPzfYKsPTLavw=;
        b=Xt/bnlF0+eCxWbIwunuNTNSv9F2imqOQgWxAzeh5YiOeBiCOpyx0D8uT2DJUS9dRdJ
         Y1ieKBTGfa4yixy06nNVK1IGUD6F/Z6Aq5f6NazYyhDV+Cxvx7jFiS8iL+wPfw15k4wD
         QimvNbaUbTYJ6rzVjxXm4XQnxSZAwZE0izIvnjiaho89U4tXdolyCAYjVYoJaZEPGsZd
         MwxwodXp/oDAVirrHhsEMvlLsEdKVL8tV2YvLFMzP/5aT6tPs4nYdNC7qKcEzJiUPVqG
         n4a0D9XMcYcn7NOi2gtnyVHP2gEcx2xtuz7eRZfEwJPbIhW4itGd+g4+BdBU7L4HpLyt
         w4/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784887309; x=1785492109;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xGQESnapNniC439AziMhXbTJfLqaefgPzfYKsPTLavw=;
        b=QS1Th26TFJX6SrSNsSaTJXYivcMZBshxMMOaibEX+YE7OGbJVzfZJKnYJwo506LHDo
         nNQvo85fwe09EcymRzo6/yYyCR91jfUyv0j3zF7kJg6OsPeAH7chH7ChoT2988vXX04h
         8B6IKpvu5BVF+a9q9gvVM6utiH73IAZa9Qo64clwDAHZeVZNoqbfONN2gCl4ERKOiJw+
         bxPeTahx6w5FwKQAnYSZZ7Z25QBuLEw6tD4voQQ+P/jNvqYUzbTKZeoX/c8d9W56qnyM
         VCNgXocNZIgHr0658Z3+LaO3IdsqGKVJqOblG/DrM3hMDqlpKSpVUjtam2wmd1dO7hA+
         GBuA==
X-Forwarded-Encrypted: i=1; AHgh+RqpG3+4GAKzmmHl3gXmLnI+BHVeKHco4RcfMkD++1UAq8RcN9SCjBfjdOC2P6jTy1I0qK0+0ot64R4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyr25nEGF0ZNkGbmjiLoq+AhMFnTs/vzMRRJKRIVkzOr/IacD/S
	zRR3lSKVlF2dI2rhkgNxSJNK+sNB+3ozZ4lNojmGKsQNUwtx5uTHWI7q6aSsTFJwIAduLK1Qw5q
	/cvaBV7xVumuqvlI8xrWmdO5ooV82Bx1aZRjLNOglqUH/aHrL6xuqJR99CkbcMHKWS7P7
X-Gm-Gg: AR+sD10DDmK6o+UrBgmtQEXwqNCtHPXbREXvKVkkb1nBWiJK1lCsaFSFyM71+AI1a4z
	eolCD9XKu/8EU6M76dM1cwGaIv4w7cIQYd8PIRimoiQE498IlYWaB5uX9sTEpYrOcunGbYyh4Tr
	ccXDP2hrgqInndSRrZA6MJN671FHaiaYaiI86gtpEVa2MLJk5JQC+kb2ae6LOffCi3p251Sw79L
	8qW0wbIu+t7ot+9JFe64cGsWn+CvN8DFDcB1yAP4G2XgOSO/bvtCxQr7XcPA+rMVZNVU3471KNE
	p6O/6xslYXUqDcRSxQEPGQysKnMveINe3XEn+Fypl0wwMDwGmPh0M/C7ZnIogbiKgnrlgLhG6UE
	Fzfsc/TVFf6+vAMaNMI7h6u2XUHvmVLRRYpQ2XoghWGVVqNs=
X-Received: by 2002:a05:6a20:c783:b0:3c3:8ce8:1fd with SMTP id adf61e73a8af0-3c44b29013dmr7413054637.73.1784887308594;
        Fri, 24 Jul 2026 03:01:48 -0700 (PDT)
X-Received: by 2002:a05:6a20:c783:b0:3c3:8ce8:1fd with SMTP id adf61e73a8af0-3c44b29013dmr7413028637.73.1784887308203;
        Fri, 24 Jul 2026 03:01:48 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3147e1c9289sm29515427eec.29.2026.07.24.03.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 03:01:47 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 24 Jul 2026 03:01:24 -0700
Subject: [PATCH v7 6/6] arm64: dts: qcom: mahua-crd: Add PHY supplies for
 pcie3b_phy
MIME-Version: 1.0
Message-Id: <20260724-glymur_linkmode_0724-v7-6-65c8469c6b65@oss.qualcomm.com>
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
In-Reply-To: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784887301; l=781;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=KWNs/xCEnPlXMN2fZRU/bfpMbHhsvVdPwo2ZWlrIGks=;
 b=9SCuhObYe9BCJuQXo7hP8niEwhoIQbq34eD+lL2jLagu9MGHEVaGXFshpAQAwg2ScgZ46Xd4S
 ddoDPu260AIC/45FkeXGGckfEk83JOTlbZBudbl9o2KWTBHU2a0yMcv
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=e742j6p/ c=1 sm=1 tr=0 ts=6a63380d cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=FJ594BFJAeq65zshAlMA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: ezEk-YPWYB3TxPPswEV9Ofo9MNQecvj4
X-Proofpoint-GUID: ezEk-YPWYB3TxPPswEV9Ofo9MNQecvj4
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI0MDA5MSBTYWx0ZWRfX+VXGwNQq/yv8
 XbwwD+ofcIiDXrYNSqX4Yqge7Ne2PztOjqzUAMYb2LcBp05VUgyXiDwBCfrZpmQMpmhpNhS8/J9
 9RkIS2Gt2sO1cMupThUf3rOw93zjLno=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI0MDA5MSBTYWx0ZWRfX4FkgNWkGbCCE
 Y7IJbczeGmxrao/g+cY5IINP07R0BB0az25ybrwW+rosIr5yZR5sSP14vdCsS91j+6Cy5rBpK57
 sj/B7v22mHm02yVpedfl/fUWyCEE0jN1/zZ3VCGwi+9df1Rr+b6y0Q3o6AjQ5UWVzFgRmreJcXU
 jd7x7MjcxJ2pcbfvyO9BGjSGhgIrpZfJ7bh+AmPtnVqIfMqzxZPRMnTCU8FEyAs+p/GVMYHZ2kb
 YxVvpjcTI+/tdxFGHgueM86irWp/DHMSNtH0r2Dyer5rg3Qo5FLgUwCZrQHYV0D7UWJb/Ake8GF
 014RTck0UXPY45Wop86Yhl3g0xZHc1rX6lA/TIu3cG/5os/CLiF6tTbHnubBRSzmKJTgfoQKTG6
 AQyIKXKiZtcKT0F/YweT+ohT4wCz7oM/xxS/UyM5762hmr/6511xugReeU2llb3Q+KPnfFJuKCi
 ghnic2LqrmbCACquLiA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-24_01,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607240091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_030150_940157_0728890B 
X-CRM114-Status: GOOD (  10.33  )
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

Mahua CRD wires the dedicated PCIe3b PHY's regulator supplies through
board-specific PMIC rails. Add the vdda-phy and vdda-pll supplies for
&pcie3b_phy.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/mahua-crd.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/mahua-crd.dts b/arch/arm64/boot/dts/qcom/mahua-crd.dts
index 9c8244e892dd..c56f0ab71f4f 100644
--- a/arch/arm64/boot/dts/qcom/mahua-crd.dts
+++ b/arch/arm64/boot/dts/qcom/mahua-crd.dts
@@ -19,3 +19,8 @@ / {
 	model = "Qualcomm Technologies, Inc. Mahua CRD";
 	compatible = "qcom,mahua-crd", "qcom,mahua";
 };
+
+&pcie3b_phy {
+	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
+	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
