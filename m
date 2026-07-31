Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 187AEC55171
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 05:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZyUSmX8h0xfeV0KU/Ro0elkC7ORmibnREZ7xXEOlUpo=; b=b0A5VnZK/1ak7U
	t3wJmvJ+ingQ5ucpBuBgiG7GyQ+nXukEFzCCmjY+sM3H52jXn3zMkDXc9tjLqd41ApLJhl2u7v85X
	KTQMnC5glNOzVCVkHaVquywwettRm67Nx5rUya2HTu17Mt+UnB1Goc+dn7WQShib8/g1d6kq0FC+j
	hKd1VHsYzML0314kYbDM0iMkvkF5Ash+Fzt6mK/1A79JYNtA37iZvZQu98nC8CEgoxQ1k/VgLXkVW
	QbPIjHSjXv3+9V95sS9C3LWTYNxm9xr7h5pLwPoN70QWEFE7uSjN5iZDwboqI5Gd2JPT8E3Lj1wmW
	s88FaxI8EfPJj1pG9EMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfZM-0000000Bmpf-33eY;
	Fri, 31 Jul 2026 05:14:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfZH-0000000Bmm8-0hfv
	for linux-phy@lists.infradead.org;
	Fri, 31 Jul 2026 05:14:00 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66V4udK83191864
	for <linux-phy@lists.infradead.org>; Fri, 31 Jul 2026 05:13:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6d/2U4YewFRIIf4iOJkyKUmed0nCfVbt+7pCHInXOPE=; b=iYkfM3WIGZQpLlH7
	XRlqtJ1hbHpEIqzx85VwC6qgzp87GuA4diR+TaSxZTrJd9/jWPJrcsOcx89joGWx
	MylrPsjQBC6EKGPXW8HxlrxXUAZKsvQ6yeR7X26HIqZjgXCdllmyQk/LY+pWREpQ
	+OfNXtJs5dt4rXlULdhODrEvsbz1LmG2QRSIVvPm4cN8DibItH4o4af3UjArjOUI
	eE99os1R1sqwm5PKXJikLiZTUeH1zAw0U1GHxAZklX8e7Gl+3xi4TQEIXvA6awVU
	X1AHMMmb5soF3BVtNJoUrjoFLEKUCgoAt9zUCPmV7ltwTOszhlIkryPcAlAOAeL1
	a+F28w==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4frmwrg2y0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 31 Jul 2026 05:13:58 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-84c4cd31b51so1850309b3a.0
        for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 22:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785474838; x=1786079638; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6d/2U4YewFRIIf4iOJkyKUmed0nCfVbt+7pCHInXOPE=;
        b=fzHuijXxJnYcxVhUQiAMH3BGo4HEhYNatwJtmwkNzVBAwf2SQM9XpKGARuKiNDA2Yw
         /aP2raUMDKibaJnBDXCxiqnbzpgU8m9OTPIww+sVTP6v9deVjwNydjexYAqeqOOFYhQa
         74IrpSNua+M9LfOSzmDTPrPmw3RY82SUXtpxRqYkyjS1ZhP82CRgmlQnuZMOnHOEwtL4
         CYoOde38u+/UBD7rfSg04IvaptcsNvbTRuuGtZ3228dG2F07S5t8F0qLd61B0P7uMSwL
         ajAhfwmuLbfixtjhfXM7MddTRWyMTssEZ10qFGcpZGSGkNj49cM2AlQMqc6GBE84wFwO
         hOlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785474838; x=1786079638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6d/2U4YewFRIIf4iOJkyKUmed0nCfVbt+7pCHInXOPE=;
        b=CmmrzVNgfXYZBqiLT4akCoVi7PRP8mr5MbpDi0E+MVAzyXWqqhSqBTRrdQUYAxTxRS
         RYVeHvP+waRxtixEZdQQjcOn/J+CY9QItRiN9JiORzbluIB1lH24F5lp6Rb7UBTNms1u
         HZShwNRjtqSscIdph2S4KzKIzBRKtV93V4+DjAsLkSR8CLcgEt69rvkJlKAJ7oGpAthD
         qXuT2WhxGGVQr0NvvswSNOia1wuDvyFLwCz0Qu/ZghT4pyR67z8Ko7HbtX51+BXGyGh5
         Wd8TABDqWp3jEGTC19Ehy5/J912k9B1n3Y63jfC9Siia53nisV+ZVljHpCdGSsfqSx9J
         7c9g==
X-Forwarded-Encrypted: i=1; AHgh+Rr0C661lW+DVhYsqoiE2av2CzfrXzRWqpwrX+aVNxvr7efWccj1LgeaFqwlfTJje1/mmX+ScfZpdms=@lists.infradead.org
X-Gm-Message-State: AOJu0YwVx8QsqR+syGh/YkZDzVgV1LtvzUcjieO8KDjBMiQzqFHPbZKS
	6rsCM/l11TSRQbKxUo/zDg+7iWYUq9bL7DV4uEGeccppCNePGzWCC6Fwb81rtfam/OtIRgp67oc
	Z3tJiCtCGcrJZeEaWardklyiYiqnjmAvs4yMemuhClBPwvAJblLJaWWQjaNNJnDXBrQQq
X-Gm-Gg: AR+sD13tSHlwfjw2MWZ0V2V9HgzuBgvFnoeN7RPMqmRN4ZpkaOb6NHw+5EVALoHQnnn
	+XjUH0FqROHa9lHUQd1YOJCTxXY5jwabsZQ5oWH27Vr+US4JkwiZxVOEhoGhMulb/R8CNfBQ+sE
	RXeDGkbek41rS/eW18dezgLe+ZPgGoLsUS4pytOR2ZF/BTa6P0lkjuNqE9t9SjiuJK1It9G3HT5
	g19Gp4ehwjed0MV7mKOCV0syxcMkx0RqlR7hEjXzrcF2GYjUtFbltbY7Rnai93Zy4YQ9/i8zVOO
	ymsGUolghIUpwrpOaSfef7O2x02odxlNhEiLGEdJYtMs/5lkiUuZRUxzF9Cu2D/dMl+5av3Bi9D
	cK/DS0pWU1exqL0XUFotuIK1bFFPxUZGv/u/vKhdpM/VZNow=
X-Received: by 2002:a05:6a21:6089:b0:3c4:2cd3:f0bb with SMTP id adf61e73a8af0-3c91a777750mr658221637.10.1785474837992;
        Thu, 30 Jul 2026 22:13:57 -0700 (PDT)
X-Received: by 2002:a05:6a21:6089:b0:3c4:2cd3:f0bb with SMTP id adf61e73a8af0-3c91a777750mr658182637.10.1785474837511;
        Thu, 30 Jul 2026 22:13:57 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3153e06f88fsm976435eec.20.2026.07.30.22.13.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 22:13:56 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Thu, 30 Jul 2026 22:13:53 -0700
Subject: [PATCH v8 4/6] arm64: dts: qcom: glymur-crd: Add PHY supplies for
 pcie3_phy
MIME-Version: 1.0
Message-Id: <20260730-glymur_linkmode_0731-v8-4-a455265ad8bf@oss.qualcomm.com>
References: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
In-Reply-To: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
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
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785474832; l=1071;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=yFqbRmvKASE8ispuSnhnm/irGPiWYA6Psw6pyUHDm8M=;
 b=T/PpHPPG1SNWAOP4rQ8qbe9SpmWnhg8+GxiGQJf3+b2vhabGXPIUOnOm4hoAOcWwde1Jv2DNR
 qBJJQp2d/YCDPYk0pWbXuTH/CO7L3jLa27MdLJQBLUOXg1LnuQ5uM0w
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: CZhNRUeJiFHJjlmCzoSc3UailYxysQtk
X-Authority-Analysis: v=2.4 cv=dYGwG3Xe c=1 sm=1 tr=0 ts=6a6c2f16 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=QdOup1CusybIpKGx1HsA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: CZhNRUeJiFHJjlmCzoSc3UailYxysQtk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMxMDAzMiBTYWx0ZWRfXy3aoQ5JODQU/
 qSoKrXYJAWIm3hkBibUt7SV1ssGmyICKg+2KPSsSjzDf8m9noAqVzJQRxd2KgUIGX9kCiRx22h9
 d09/L6Pp/2IhvwM6kTnDCpZwtjGOPaezNzIFM7cPP4H7nJBKuDi0xGxvc35vv00y8p+QIeD4kXW
 gsjBkFy4026qOTbRUj3qniiSoRuckpNzoC/lgTPBSEI5SGEvhw+FzB0gTHUthf1G3Rx2oUwgavz
 fxl4YaWidLPSuFTztdWDNQgySIxTOArlIBPooXYAn8gjSrEcX6DJiLatBVS9EUhuxnmzFxvLj/G
 3Iqab50X3qn9mNodvE+J40bB4MQ1Uk85C1TireN9r0JQrp+OHqJs+Ui6Yam4BvU7o/s/3VKFeKz
 glOSzddGwXxnZaO5uxKRFiN0QWU0C9pal+26lusW7pO7W8Fk324m61KvgbTFKuN/FbcpfEFxwGQ
 pLi0p2VBkg3C1Nikoog==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMxMDAzMiBTYWx0ZWRfX0hjWnpVg0Vf3
 vis3VoDU3Bs4CVp6xnNkGxzQwcqu1b4L7iStehIkWpptYLx9bcvW2evWDr295WBk6W1uSsx4+zu
 TM5gYtmaIGiBuYDL/bGBR0ktb4JmHIo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-31_02,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 clxscore=1015 phishscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607310032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_221359_260140_6B81B4C4 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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

CRD wires the shared Gen5x8 PCIe PHY's regulator supplies through
board-specific PMIC rails. Add the vdda-phy, vdda-pll, and
vdda-refgen0p9/1p2 supplies for &pcie3_phy.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 44766a73b0d1..b8e3fedcdea8 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -29,6 +29,14 @@ &mdss_dp1_out {
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
+&pcie3_phy {
+	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
+	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
+
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
+};
+
 &tcsr {
 	vdda-qrefrpt0-0p9-supply = <&vreg_l2f_e1_0p83>;
 	vdda-qrefrpt1-0p9-supply = <&vreg_l2f_e1_0p83>;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
