Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9576FEF070C
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 04:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFmiwCEorQf+P01Yd5Fr70lSfMxp0wUrHX0UvxZT0eg=; b=PGUOhjZ0iud0qy
	Tl0c2TNE2xjAO7XFCu2zn+NPh6FO9ElCiteCidaVkNEtTJeRY4FXBejdh9wMjQrd1Mbw4HFkolIHA
	jJ7T8clCtQkXJeJoqUXOMisRSYHa4XIO5QUCx+LU42vck9BWlEwn8ey8K55KZSCWlkgrTvsrtaYsZ
	TA2sKk+Is64SSt9WyQCfbPcAroFPqJEIGPcPdKuMqrptRKHdmdGv426zxoFfXQAgPiH0uHEPqlbf8
	mPkS9zoqDoLQe/tCqr/BV6g10CPgDD9xGnEl7IkGqJh72BhfokOFL5N/uJov5OCZkVbvczdfD2u3M
	624tl0QmRajjuDIou0kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpJDY-0000000EpDV-0P42;
	Mon, 09 Feb 2026 04:49:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpJDU-0000000EpBv-1DB1
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 04:49:45 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6187tpQ0677483
	for <linux-phy@lists.infradead.org>; Mon, 9 Feb 2026 04:49:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tn7+1ZTIunWgUjyvBreXP7ExecfRfTUx3mEzBmpa9tM=; b=KStd375RaI+/4WHN
	CUInmDLnK1X+o1+id4YeTw0Nfwruobif1e/QyoYE9BSbwRTkzKm7OwYBrJpJYZBG
	ixNUyQUBadw0DC+ejYDB8oOTV0RQnb17bLA/xc3l4Azg8uZxhkyChjrqe1kQFpu0
	go3qG575617IsLlDDzfKWgV9Xo4yifEefnX3D4glu+60cJSJsRCb2eqvgeBXZVcS
	GXm3pkiZLTqIt90yswjm1OcA3Hr5B2ICxnUpoFpryLs1J/fSIieK4SPy60L/EQSj
	GlhbxQnJohWn9N1+/ygXBykjPyDkSnI8nJRFGevBd/wWQrlQfulCSMRlr0GWiU+3
	k0JGOg==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xb53nrc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 04:49:43 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2b86381a107so13922232eec.1
        for <linux-phy@lists.infradead.org>; Sun, 08 Feb 2026 20:49:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770612583; x=1771217383; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tn7+1ZTIunWgUjyvBreXP7ExecfRfTUx3mEzBmpa9tM=;
        b=XaZiJrceuPxPCsrYXTdQsDShmbidONPNhVmfp/eFY4Mj/X5B0sVysDwRWxG7dp/gDz
         p6gfRPt4rXZeai9BWeDc6WjdUrrZakOzFXcilGZhb7JYq3oQuFdJFQlzOd0W+JhoNhK2
         S4M0piD3Zin8cW7tg31S8AIllW13bkhHt611fDGo5K94iOv+5ha/NtlcALHCiSm4d6VV
         xblVStFHDIacZ2XoplZZsuyZ+aLRZTN/MByYu1Fgy23KKDnerYNv9WE23uAO5XHGQfx0
         /dhuI37l5TNddpeZ/I/6PMUgigZ599/F/K2MLvOdUSZuyPCyxIncN7v09FCChF0nRVj1
         Evrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770612583; x=1771217383;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Tn7+1ZTIunWgUjyvBreXP7ExecfRfTUx3mEzBmpa9tM=;
        b=fwofVd6mEjOj20UNVDVighNyawfnNXKeUON4hESzhEID5XxYjNSvcWfeeXDWY/qlP5
         Tiy8kkWDk3HU72n1wIqOIuGx+8XW9K280N12j2WPvAzUXwC629J/4gcjXNl3tE0uwd+7
         0eijKlc48CFJdP44OwsBeD9mNMEAF5H5KjwL5fYpHg6NMy4/KToeRuxWgjqLYzuHGuHg
         nu+zpAGUqGU6gV/DtNHBSuuwrVZtDoi4CMr+fmaG2eNzLrOV5qmithU07MeHXGFLOicg
         9mDumLVjE9UMzUij4f1GZrdz+5+B41ZishPsIinb3O/x8q4crsgUj75RWz+IG+pGv4OM
         Gr9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUZjsPBKYmjBV+Kziy6OnTpx4YMqFpPlp1eZKC1Cc/D7pV0G7hcH27EwETUP+8zEVyxoH60H9MGfZA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzyT1o0gt3sqb0ryjHv91WDJbVClCbOo6LdoX55PuA11FqxZw38
	crtvNj3EMZQR7ultvkQ1r0f/kkee2OSAsVU1psUZLyPXdcqHSyJYKecnX+fV0FyT4xeo3KWFAAj
	kP4P1NE6BmJc6exKIYr8Z0SIdQ0hLaQ83p97PzC4zNm2Dbjz81i2kW7jvnPavpbTIUuFn
X-Gm-Gg: AZuq6aIlB78gtHv1PhVp+1JwwERHN1ae3g4+eAU2oy8I5zNAzcaIqdenOdQdYaF67JM
	0d0Q3UfLQ3MPDpCuQ7ov7ZrX02W1YCJjvU0axX9Le5PHBmJZewZ7+xkIXRhS9EpeRIn9a2iKuMe
	zgaQHw1W0LV3G023y5mo/nUh1kO+MlNS+DPm7Vtcf2Trth1vISsw8R3sPS9s7cVYEuwczkaPtyq
	4E/Wp7lprGxJDGompty8vlvH1HyoV6piyRpV+bh3x7TbLMgLWnp1RbU0WhezATnh4cTdHTgaQ07
	HnA47NVNQEBXoWMwmFGGPW4KgJyiNhsFBULcY0D/0z5HUjqpytzY6sDMxUm5bhkM1ZyI8TtAl6V
	MK12KEZyep3R7MKv+VY1br+nuuOI+/yjcPJ4rh5plyh22JP6XC/kaHCXS
X-Received: by 2002:a05:7300:c8d:b0:2b8:2910:dcae with SMTP id 5a478bee46e88-2b85640191bmr4599717eec.13.1770612583173;
        Sun, 08 Feb 2026 20:49:43 -0800 (PST)
X-Received: by 2002:a05:7300:c8d:b0:2b8:2910:dcae with SMTP id 5a478bee46e88-2b85640191bmr4599709eec.13.1770612582644;
        Sun, 08 Feb 2026 20:49:42 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b8647bd6casm5609940eec.7.2026.02.08.20.49.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 20:49:42 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Sun, 08 Feb 2026 20:49:40 -0800
Subject: [PATCH 2/2] phy: qcom: qmp-pcie: Add vdda-refgen supplies for
 Glymur
MIME-Version: 1.0
Message-Id: <20260208-refgen-v1-2-87ca84fd78b3@oss.qualcomm.com>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
In-Reply-To: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770612579; l=1964;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=+Qdh1KTp4rpkKuZ6jiND1J5x3Q5cGxD4YjHz6yZWsi4=;
 b=wLn++a8eAKQQcLHtX5yoaE3oQLpP6Bv24NmK/5D4gIMlCKrlm4Ch/Y0tkMVNImA8JaosSSQLJ
 yAmAB170VIwB1Om86GFNO7hdvn2MKriep4NGuUSXJLDTPnWHJtpNPeY
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=QMBlhwLL c=1 sm=1 tr=0 ts=69896767 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=m2jQVEIWa0EwQwJFt7gA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-GUID: 8AH5eYqRpsI1NVDgh8zbPgjGmM9guwQ1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDAzNyBTYWx0ZWRfXwhA15Kkis5L6
 C9QF0PqrQ8v/mOIZSelYE6QcpWrHEFfEpY2WBvIjdnzMwfFwzQf4r1POiWGThqFJ/xzE5mqr/7W
 ZMgh/OM7deycGDegOirQKT9cZG8esORcxxBgZqmbHy2NjFywhXe7ktqRvWB3KoiF0LUzuKHAJTW
 i0sMyFIKEiLB9zfkdmU8pdjuWiVqjOZLXmAO2OuH/Yoab/WdZCQvkLkavVaUHI4F26naCIhuxNn
 BIc0LFOHU/G/ZLuHXflS/BEvFLLrrZCjLIB2CT70hKrNdFod65KqJIXOJvHiTolM7pF7OO52cT3
 rKMkKpbbcWtvUrXburga6Us3WKOMA9zFHs4/uf/PtOUIC6ehksN39ZsCJ6rZ2Uyj5Z2K4u3dNsQ
 ySPnTsDLGO2smTQAoADm0m+IBo4AhD46/7VsIMg9SVLzra1Ak9LFvYJ/0fw3liTwaBSSDiuvvS+
 iPBLWA3uGPo/26z2Hmw==
X-Proofpoint-ORIG-GUID: 8AH5eYqRpsI1NVDgh8zbPgjGmM9guwQ1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602090037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260208_204944_333280_D6AA5C6B 
X-CRM114-Status: GOOD (  12.61  )
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

The refgen providing reference voltage for PCIe QMP PHY on Glymur requires
two power supplies independent from the PHY's core and qref rails. Add
support for vdda-refgen0p9 and vdda-refgen1p2 supplies with a dedicated
glymur_qmp_phy_vreg_l list.

Update both Gen5x4 and Gen4x2 configurations to use the new supply list.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index fed2fc9bb31108d51f88d34f3379c7744681f485..b24ed260f30a689b5668f38c1471c0ab2aced0cc 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3382,6 +3382,10 @@ static const char * const sm8550_qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll", "vdda-qref",
 };
 
+static const char * const glymur_qmp_phy_vreg_l[] = {
+	"vdda-phy", "vdda-pll", "vdda-refgen0p9", "vdda-refgen1p2",
+};
+
 /* list of resets */
 static const char * const ipq8074_pciephy_reset_l[] = {
 	"phy", "common",
@@ -4623,8 +4627,8 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= glymur_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(glymur_qmp_phy_vreg_l),
 
 	.regs			= pciephy_v8_50_regs_layout,
 
@@ -4639,8 +4643,8 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
 
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= glymur_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(glymur_qmp_phy_vreg_l),
 
 	.regs			= pciephy_v8_regs_layout,
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
