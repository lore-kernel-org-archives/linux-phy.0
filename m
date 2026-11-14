Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455D2606A336
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=S3HFGORt;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=is+jw5w3;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=GEyUDbNh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hMC1Tz4u+MblCX14aPyo0BRJisbVAz4J6t+M/yRuOeU=; b=S3HFGORtung6T98Z/yzDY9B15e
	q7wWYWWIozurtWblSAV5sub1k4FRnB3NE4tB5jZ8TcekoCVnKFguwsFyWJA43yUzh+yp84zg16oYZ
	fzRTsefS43zIT2gJlT+nbI4gmIYvfrsuc42dSZSrb3KOFR5793Fp/Y6ICf4R3vDzvfqzbNlyXBLCe
	w2nupXKib0ExmiF14G37QKOq4w4ANB2CZbYgx391sIVmC6tI15lseTCaPAcBjVldEeRS2RRg3HJaH
	nIjdlEofeQUjLTj55bsha/XvYwm+3VE9dMdje2K223nYMjoOAv74rBHEi8cp7n8EPmjlCLzDbkbwd
	Rl3lFR4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSByG-0000000Ftr9-49n3;
	Sat, 14 Nov 2026 11:31:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSByE-0000000Ftqk-0QWu
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:30:59 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wKp91750458
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:30:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HvpnDcakWRnW3PYccxcSi7pSHHqf2SzUoRHYqMjmiUg=; b=is+jw5w3FuItCwi6
	PB5nilGPbRX9RDS19eIHfUTmWjeWwtOiuzsjtMtiBzUhXYsXu0f6J9Gx5ufxZXca
	vRHBOCOydbv/BzFG1eo5U0cTLQsseAqR4CqZmJx7mkF39EYa60Yyq6bfKmWzNufl
	StTglC2ubE12WZDs3K7UGE7ahs6LhTygH7/ADGtZqe3rBfGXAzMCXP5VcWpO0Sev
	/z7b7aKFoTa/qysPoj5dyhOY7RKa+zBixU74Xfol2R4J0yZiEkbtlqUI3qjKnDpo
	fA1zU6JgKDwa59vbUE/slA0+7RslM6LNNQeV984stOJvpXWQ4zC0U4FFlRKRcdaZ
	+Ws2kA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhj40mx7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:30:57 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-91ef0fe2914so36082926d6.1
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655856; x=1795260656; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HvpnDcakWRnW3PYccxcSi7pSHHqf2SzUoRHYqMjmiUg=;
        b=GEyUDbNhQN6PoCcSa+FUFAo2sWDYL2TlNYiqQTT2wQuuGNj+7h5MY588vMymv3YKyy
         4woS7zLQCl4yQFXwC3q2dbJcdQMjgvoNBwvuaqgE7Ew32RCneczCRXmNvzKiPQ0Uhl1H
         ujjUMHIrIk2vhlnGJZ5vS9G+3zdqzGl4/eWl90Qbk7UuJDGebhCrkMpgcLOKDHUHFbel
         K7d0oF0L6l60qu1TDLo4iWnGyQMlrue7VmCxzs0VbzfSRlwODaBB6kvhqaWz+n2fKN4w
         ZcHZuCsn1E4NjOB2Z7OgxFdQDWxb5vWumHAtZbPBE9ABFp+73tUNW8kyCEAru1a37Ve2
         zp1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655856; x=1795260656;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HvpnDcakWRnW3PYccxcSi7pSHHqf2SzUoRHYqMjmiUg=;
        b=W9HiXjjKCmw6NJIBQuTWlqgtvze6A2OM/PZWuGq2ilYR50/7OjnyyKZX9hfGB7BI/C
         E2Or9AWNq7m4ZvhgpzxFNyhUqVmbTJj03YMwwmwia2+lDdGXbIopV5s+GbCbLjVscLrD
         EYh2luvmIWa2J/PyQIUKd111hrWSZPcR5iIW3STZhMx1L1EqKAb6vg4iq6kc3Z39e+kj
         RGXcgHX/mR1O6S9Q7UosrpnBnx27lgtA8OlLjrLrfPQabM+MkAM8j5yaQaXsIfTCpwQ7
         ZJNWCMuBHm2ohI8VEOdCN/uYAgf4m/GNdb3QdfvCz26ltLc6V1LHr50f6Pzdc3gZtIpp
         UELw==
X-Gm-Message-State: APuU4Z+sfX/aWXoQ/T50ziWrFPGULvfzaeZlNtGJI5/s96Kr54CgbfCV
	o8sLOGLCj8ZfUbenMBUVbI9ERrc/+dWLJUHGLl9iuJ5UVJsDNCoOujbBZYT/kiGzwZ/TAYfbRCl
	MN2hOKMNUyA/sEiPgInixDHaQXM83iUAAXYE1JF0/9V01GjGOakPQZNj2zK/xX2BdBhIz
X-Gm-Gg: AYBFou1jLDsKHY9fn18WeXUIP91szzBq0oj8fPlIsPLiVEyYwP6079MbFtQsCwM8LyW
	oQZnKCSqKIZco64ZgoLwsIXYQ0+AztpF9Ie9dDB5u8XBDGseUcCu7iCJOzmtdlIIH+NXcXWvXd4
	wka54155TO+VwCeIVgeu3w6TLzqlffZ8bFl2tytJ9kJ4S5N25yI5ZeGVLpFDUFvCyVJonjXX8v6
	tcTEB4Bp8f8K4K3sTQoznUDUZkxXJARs11rlNXDMJ7/fqfdKc12fDCFUQSq+4/2vLo/G653y5YA
	UrzQPBvIcPk8nSpiPbvUC51JnIFr0abkEQerQX9ihgS/8mmevZRNlQCEPpPkIrDj62ofQNt722o
	w7RpILS+J+dTXnVPKeZ3ZYJ/uU8NyOVxSgRgTP/nAeLl69mG0SsBqkLZXiFauQGZBdqVoMk5wL3
	pcLteOopgO/Q6YJvcocFxakHjCVEwHW+ZfpX9DmuUr
X-Received: by 2002:a05:6214:c64:b0:91e:7abb:a927 with SMTP id 6a1803df08f44-91f241c65c9mr86645636d6.21.1794655856223;
        Sat, 14 Nov 2026 03:30:56 -0800 (PST)
X-Received: by 2002:a05:6214:c64:b0:91e:7abb:a927 with SMTP id 6a1803df08f44-91f241c65c9mr86645216d6.21.1794655855778;
        Sat, 14 Nov 2026 03:30:55 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:30:53 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:25 +0800
Subject: [PATCH v7 08/23] media: qcom: camss: Add PM clock definitions for
 SM8750
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-8-8ff2a11835f6@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=1035;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=aRxMrdDtYyY97/huckpcHrUdtu8c4K3ZC3GA/RWZCDs=;
 b=vWhSMHcARnVI0vXB2VQvgOzisoN8ZRFT+BwfFUA3Ajfs/RhNvQmm+8FhnwOhPEPYq3FPs84El
 /6E37tDjOSZAaqDqFh+2KI8ArW+N1uCOjbs6QglI38hhbVXTFl71AJs
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX5cU7RFwcVIqe
 cfXstj5zv0yoFxjq5ZPKpB74zZHR6mSlifQw2pRzB7ke4Q0myY77wyGlTMoSJWFZsRiFwvInVtP
 k1KB+ars4YqSYybQaE0WpCWFOXY1/r/zPsKo47OG6qeNj4Dan6b3CnVEMn24Ik5OwBzP51snW7F
 KUkS9lVuPFWr1F1SvnOfSTfMEODaqw12e8W+IAyE44NLkOzmpbSBO5VKSSRQ8v51+gBr1Cfrlli
 ZTs0QDe3uDIDpGNZAgsMkSWUfxs/3k4tieXVgJa8mESshklz1yh6mggfbK5c2culY1g1N1q/SbO
 A3C+6gTK++qIb13kyyssZuOPNXt2J3rGqGBXwc7amJ6suaT6r4E/pTQFs/mj3xoqu5Pfq5fMcVJ
 6kzi1va3yypWMUd6ejTQBLhemkC3Yh8YyIhrBLJVscmCzh0Q6zuXoGkhLbo3KF0V1JViHksoIil
 F96aGqFzMkQm6edv8SA==
X-Authority-Analysis: v=2.4 cv=av0nmiZV c=1 sm=1 tr=0 ts=6af84671 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=MfOgH6a12QNS3LiSQs8A:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: ui0AKaA7wfZUubQA_ldZSO9ICnlDtly6
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX6DJZWKEe2Xlf
 PGrYWyfacq3R9H605oNBrIBDwmvLz2up57vKQojJB6LszD6cYbbzhaXUYySMi3MzbhYEqId6UhC
 i0oShN20yFCyYtxj1SnPhL9sfG/ZmIo=
X-Proofpoint-ORIG-GUID: ui0AKaA7wfZUubQA_ldZSO9ICnlDtly6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033058_292074_050E0997 
X-CRM114-Status: GOOD (  11.15  )
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

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Add cpas_fast_ahb, cpas_ahb and gcc_axi_hf to the PM clock list for
SM8750. The CAMSS core enables them through the shared PM clock helper
when the device is probed.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 3f9dd3a2ec088fa87a9ea90d25c906d14b9a1896..196eebc2d7d118040319bcf967b91c4ca98a4833 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -6043,6 +6043,7 @@ static const struct camss_resources sm8650_resources = {
 static const struct camss_resources sm8750_resources = {
 	.version = CAMSS_8750,
 	.pd_name = "top",
+	.pm_clks = { "cpas_fast_ahb", "cpas_ahb", "gcc_axi_hf" },
 	.icc_res = icc_res_sm8750,
 	.icc_path_num = ARRAY_SIZE(icc_res_sm8750),
 	.csiphy_num = 6,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
