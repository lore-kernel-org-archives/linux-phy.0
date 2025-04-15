Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80F37C369B8
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 04:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wag6tqM2H60phiSoBmlpObcvQvmXByZp+s3RM4pzNWw=; b=vXuqxaMkaZVS6D
	UrXHSRfgl+WQF75xyWqcxGQjqud6jXy9TXXW4N+NspFdf1RzjqqHtrytSocbuQGmczwHjsr5ZFaBS
	fRfMiVK1GAOwuLKIj59BEbmD20cCKD/C28ulria2Gr4hgiXayeUJiIlen06Lw0z/U1j6xlbXzCqMZ
	B90dYY129UfSq9oTA4nHZVOdzygWiFvb1ngygxFw6zoGIT7Xj5nvR88Ty5m8YO/kO/t22IE+Ty8NL
	FL2cRKS0/FMC/rKfav0KqMQWwYIsIMNpUFt+l6GcvvwoxuWnWLszlY8bMnE3t/z1HxMjhoC39/CSl
	SMdHnIsH7UWBaY3ZKnBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4XpB-00000004QmM-0yjt;
	Tue, 15 Apr 2025 04:23:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Xp8-00000004Qku-38Pf
	for linux-phy@lists.infradead.org;
	Tue, 15 Apr 2025 04:23:03 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F15hB9031652
	for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 04:23:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8T7lOJ76Xmdt352Zaj8TCw/f2lloVkkzYTw7CuNrRlY=; b=VMFdCWK5656p02xa
	t8by6aDEFplIvgljBTnO5nxLyuwAEMINNKTOaX8ThHCilmI84FcY8vWtc4TeP1LZ
	oyFiEw37e8Ips8UyQNommW4u9ZjXPqPhPh8vMhiEvhI51NX6TV+zrtULOKm70sPc
	aq34TUJGKrQ74/RTqeGXFudPMcFNppOAVFryyX+tZJBmRDslczGWBdB5C7eXQehv
	gmEPHN+3gyN7gycncZpyntKwcEAJBN5ctQtZqlTxW1M7JsqMHUIN3BZw9CCmkXFg
	5KFf9ilDnM5K7cpPMweVetJjzEse9vLx/kKTCjk5x8cSC0UBpXHmMdmw6laA1ly6
	S8HHkg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvj6tfm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 04:23:02 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-2ff798e8c90so4851366a91.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 21:23:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744690981; x=1745295781;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8T7lOJ76Xmdt352Zaj8TCw/f2lloVkkzYTw7CuNrRlY=;
        b=JOOZQ2GC2khdVuT0OGnIOqbSWeWQCklm2bdJQQN9+iid7K8QMsrJGqrnykdEt+LPAi
         7cG3Pb5P56nt6mHMRnRVp7gzGJN6UKbnU5BdfHKZ8kaZWUx2KaFLqm1Il/WkYiQn+prB
         RwzWV/4DUjk+a2eqiwmSe21ugUK70Ey6DrGk1MDz2sW0Qy/XUTEhaA60Se9EZzG0IWUf
         RZPwgkqJWBAXUC3KGZUXYdUfyVq6MVWsKpniO5WGVH8NRDXtVyenqv96nNYH1HBPAw82
         a3w3jkBMvYuSaazlvO0BPkT3mw6NcpT6/wY4sdvD6tTCYrCoiH2jqLtWeS7qnUig78hA
         pKcA==
X-Forwarded-Encrypted: i=1; AJvYcCXWY1aotCByspPwusm8fU/ejjOt9BJBvM6OPmhPeyd7vKgYnpjG6WyIVtecI4A/b/Pw40BohR+uUpQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7GWJIipv0AcGGwKq+a95Jt72Y8igaL3fRMo0MAsAHSulki7ow
	anfHJmZAOHLg1a2aqiUD02u0bMIcBDPAzPMMv7xR4Sz58Bg8mbHjvtjwOfyLqAMl+eLfEuOR8pX
	g25PfvD4V5t76iVmeveIeYp89JgXmbud5PZ0UPbhmHwKPyoCZaD0iEc697y2AgWq/
X-Gm-Gg: ASbGncspfd2WO6Ee3uYiDJTB5L3lgsGGD2lrKIpfkW03vKRy4Jj8R4N+Vg7UnhwlBvu
	1hPLuIkUKXUMYlzHGX0yk10Y1FKrZKOcNHilj87NHQZKPJK7UvQYyXyn8up1ihxDjwXRBsXIAVO
	ASgnkIwVzmhZRT6vTjPbkS39c1+yROF7owgnraEZiS32L8NCxGuHLmpsI7KUR15clh5rEYSO5jI
	TudtyAF2/KabPsMFp3wMzDuRA1IYC3zpy5SJseR/SWh+Pzd9Z5L19FAeF6V5J83fMZszF3J05MD
	9DQrnN5RmBSWvOFCQZkxzus5Gj/0hT58VXrVsnzORpDdqKYMRbZsU1YGTM0geml3fxHDggqchwW
	fALiuNDixEtI86xTQr5/M0rBML7QeUtBZUe1Vx9k+SwT2h/4=
X-Received: by 2002:a17:90b:254c:b0:2fa:1e3e:9be5 with SMTP id 98e67ed59e1d1-308235c7f7bmr26548446a91.0.1744690981277;
        Mon, 14 Apr 2025 21:23:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF3+lFYQm1Lb3iNLP+M6nJSx9YN29FsGYZdIHS1UCct9ZZj2wAMP0FIRD3AbVju5FMgqNuH1A==
X-Received: by 2002:a17:90b:254c:b0:2fa:1e3e:9be5 with SMTP id 98e67ed59e1d1-308235c7f7bmr26548412a91.0.1744690980844;
        Mon, 14 Apr 2025 21:23:00 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7cb5047sm107381865ad.170.2025.04.14.21.22.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 21:23:00 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 09:52:51 +0530
Subject: [PATCH v3 2/2] phy: qcom-qusb2: reuse the IPQ6018 settings for
 IPQ5424
MIME-Version: 1.0
Message-Id: <20250415-revert_hs_phy_settings-v3-2-3a8f86211b59@oss.qualcomm.com>
References: <20250415-revert_hs_phy_settings-v3-0-3a8f86211b59@oss.qualcomm.com>
In-Reply-To: <20250415-revert_hs_phy_settings-v3-0-3a8f86211b59@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744690972; l=1205;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=1qgyXPTe8cPcaxUv+bBjP4DpTNp5myZOf+LMbrL+u38=;
 b=mMLhPWrhpGCi6Df6Y+VfgT63nzaugIMVz1NzPuE0G2fHWeA0F6tzZh+0KnkSvdclp7Wr3M8ag
 CYsmeVhWrm6CB5U5mWtfOe9gVhF79i+IxQpWswfcmlpYhWJcOFvo2lD
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=67fddf26 cx=c_pps a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=45MnPZ1KAyxS56gpr9IA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: cUxA5Lam1IbZ_YXvwovSQ9Qqvlva4JV_
X-Proofpoint-ORIG-GUID: cUxA5Lam1IbZ_YXvwovSQ9Qqvlva4JV_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=999
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_212302_799989_5147B69A 
X-CRM114-Status: GOOD (  12.98  )
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

With the settings used in the commit 9c56a1de296e ("phy: qcom-qusb2: add
QUSB2 support for IPQ5424"), compliance test cases especially
eye-diagram (Host High-speed Signal Quality) tests are failing.

Reuse the IPQ6018 settings for IPQ5424 as mentioned in the Hardware
Design Document which helps to meet all the complaince requirement test
cases.

Fixes: 9c56a1de296e ("phy: qcom-qusb2: add QUSB2 support for IPQ5424")
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 81b9e9349c3ebb4d303cb040b5c913336bb6b6d6..49c37c53b38e70db2a1591081a1a12db7092555d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -929,6 +929,9 @@ static const struct phy_ops qusb2_phy_gen_ops = {
 
 static const struct of_device_id qusb2_phy_of_match_table[] = {
 	{
+		.compatible	= "qcom,ipq5424-qusb2-phy",
+		.data		= &ipq6018_phy_cfg,
+	}, {
 		.compatible	= "qcom,ipq6018-qusb2-phy",
 		.data		= &ipq6018_phy_cfg,
 	}, {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
