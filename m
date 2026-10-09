Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC71CCA6015
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 04:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGCp8W3fLGGy4470okhMHhIt29ptA3xNhao8PpeAORE=; b=XgWVJpIFzL6Yfk
	7N47cC4/gCamu/MDqJ0hy3it9M1cn6TW9pPUWwuzVqsG9Furp3JKpFlg9uroQ5RcFsKdVRN66/tbC
	7zWAa1w2MT8/L9W9Yba9Ycb/LwZQIYDi++3FFddeGrJQDaQlp7nINrwlFbLSUJHEY/rDGBkbgrYvA
	JPoxFIEYS5aP971a2x1B+XT9Kc44lqe4XNvoAk6rlA0KR27ZBjdAzHtuudby2AOqbF5NQHOtnzeI5
	a0WDzWZnwk8j3tfmwEakRLZFDaK/9DPF5Xc+8ERDpQrdBnTYVhIQTxmXTF0fwpeZiiJCd36lo4njI
	pI4sCqZiiCfvaCVctbtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF2Z3-00000005UKN-1xfx;
	Fri, 09 Oct 2026 04:50:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF2Z2-00000005UJk-1klu
	for linux-phy@bombadil.infradead.org;
	Fri, 09 Oct 2026 04:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=y6PDhPtXFIAM/ccyT8/MEF2gGuCNuVMLTbOdYMac8XU=; b=CwIiqzd4+7nw8GEPddvYb7xPpf
	G93aSkF6X9PQTEMcvKLoLdO0bqJqa3xq8HTM3OGVEiWDiSdPe9YBUw2VY2U0Zk7Jgn4KCPUKUXdIw
	98k7ElPW3frHE/l7Hqn238Cw93swzLJ1yQsLhaMoWJV1gxLIV/uLk4kX8BHlRtofDDHG4oJI5Szg+
	QO5hr50BNBMq5SI4UbdBmUMu8Z76LKux8H9w8TX5Mw9YmC5NSZqUbpphqSpLeN8eqwZXwKVTbodfK
	Pw6HRq4NzRGM+LuhJfifmt2DU5SpZvlu7uuImCfZDujILUN46NDXgaRxSbRXBepZvKeBWsrQRdYBl
	wFzG/M7Q==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xF2Yx-0000000AtDv-0GXu
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 04:50:34 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6993HhDe250723
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 04:50:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y6PDhPtXFIAM/ccyT8/MEF2gGuCNuVMLTbOdYMac8XU=; b=n8DflUv2GGnZ7OHH
	k0mx7cjfzL33RyK+vCD3SeAFnNxUkJK9vFtr+rTQPCV2pZZW0dElM8QB/R6oeUeb
	wWWF9RLUCSFqxaAivxamrp6kZWTleOJICgHKP0/cveiUSk07EzAcFI3bzDMQ5C4a
	WvIG4p7zWx+xbBEcGVpnRu9WTch/Kv6Q9gFXkeZ+oIkRPqL64OYmlKUpGgbbM5jd
	4dGPPJzYWG70p8fSHNmIHfIDXRR2pnzjSMSwkt7w8i5Uf2P6Q4MCVJzlZzbVU5ee
	gFsUFjCLHM/R5s6poIcyTc008GOGPn3hvGlsjIYa4pvMCxpldK1Ru5u2kUpCgixK
	oTRZaw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6fmqt1ug-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 04:50:29 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-3510d0baf63so12612499eec.1
        for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 21:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791521428; x=1792126228; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=y6PDhPtXFIAM/ccyT8/MEF2gGuCNuVMLTbOdYMac8XU=;
        b=JONb8foBDPEmi/+dTNHYOw6Nu9jPjFEs0F9++QcMBeRyb0IM3OAejioJLgufTaIR5T
         HpoUq24/nKAZ5/noRdDuDQs6PAbaiEsfVumDc/tyaz+uXHD6gvgA2IqjebjCiEp0pAYm
         7G2wCk+/Nf4EIW6Sayy4DWxsloa3hEgkipTruv2vFP9Q8/My+DDwtKI7VVLkOZ93+t4B
         rH+xAWFTkWJ++2X4wAaUOiazLTBZJE3yeUsQ3W3HWDjYAR90Jd6kyWJIiHB2dmhdJlBM
         fvISgiWtVQfbL4cynIY18bhTeHcRL5iX6Wc4B3BHlQPN8Sq5coPUA8cxedmkwOSQsR66
         UBLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791521428; x=1792126228;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=y6PDhPtXFIAM/ccyT8/MEF2gGuCNuVMLTbOdYMac8XU=;
        b=hUKMgd6zvjOLLX1HPbDxjSX2uIicS+kYSYm3wxqS78bL3+OCmDB+RTU/wLumSUNZt9
         ZjOUozvTbtF6FLh2toc4iLeLUqWP6VUZFe+hgh35ldcJyGdf4foci2Ul8mZbv2OdU5rK
         1ht/f3KCAKdGAv9TvRPl6TQQnN57iGhl0u0ePO1Kl1GA39Ol5fDguUPtZwfvCAT1Zwen
         UJua6W/+K6v2BBq0FEqeP4Ycj9OVYkJ/bxwpvl3IILsKNWCbZgSAFM7TQTyukzA9XD7n
         ulD10bW4EwjY6+mpfaq1cuJF0EQrrqMMwMSILnQF/h97+cayRudnnjQrfHfK4kEVQYn/
         imDQ==
X-Forwarded-Encrypted: i=1; AKwUvBwEhvEc4a5KN2xZlirshUFf3AfZ8aonMFVaE0MR9cFVBymCnQLlETEbZvp/XN6RXAJh9Xrzdo9dpJ0=@lists.infradead.org
X-Gm-Message-State: AFuF++lLxHcbk375I+hVvqcTQVIAq/X6d2XhE9QAiFYQL24h1OJqKkyg
	ikhkxgBD9v4/6Jnsy0URwyYPrpJILGH/jI2BvlzXVwcd6cA1R/6eyY2OpHEt1cFNnsNP8vyZdTh
	niTHyBqjqIghfkCz6gvy2zc/JDdFYpEv5mQifcSZou8U6/y74wxeLAO2BiY/jZCdk1a4M
X-Gm-Gg: AYBFou0Hc8+LrPklL37ohF4Lc3DWYMv4RvbkslgoZQejhs0Oaj6XB5LzLC6TeHymcgS
	b9EbqGd+9qq21x5jx/SH2hxqH20qLHMYBlPqZZEcoaITR+ka0IFr3DqUVE+h/NJf23x8eQzydTq
	5rZeFfdiSUuANvjbDQH6AqHaQHXbd0/+m3igMkkCP0n5NjdvNMHQaU3hQpN8EgbXgeWFYyVhPgg
	DkYgvV1EyLU+hF4vm4Pe/buqunHYhZRaiPWlMtQjZJH7rf9jQSp4u3VE0mpQSPYlrIR09a9toon
	h4HM0aOh1EAsBgKA56pIZ0gfK0xhXqWiJUYabbhJowQgkBupc1uP76m3O7wY/HO2ghR8AOypuNC
	1lJeFLf3nCQ1loMmwqQazRzvvMnftu2katjnToUEWjuiGHCq6ryhwlmX3eF2snjZIjQ/+rt2SJN
	pyympgg8sBF6Kb8rVrMMaKHDxH5V0NPQ==
X-Received: by 2002:a05:7022:f503:b0:143:54c6:6a5 with SMTP id a92af1059eb24-16a6169583dmr868431c88.37.1791521428415;
        Thu, 08 Oct 2026 21:50:28 -0700 (PDT)
X-Received: by 2002:a05:7022:f503:b0:143:54c6:6a5 with SMTP id a92af1059eb24-16a6169583dmr868404c88.37.1791521427901;
        Thu, 08 Oct 2026 21:50:27 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a442956asm4151609c88.16.2026.10.08.21.50.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 21:50:27 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Fri, 09 Oct 2026 10:19:58 +0530
Subject: [PATCH v6 4/6] phy: qcom: snps-femto-v2: Fix order of arguments to
 qcom_snps_hsphy_write_mask
MIME-Version: 1.0
Message-Id: <20261009-phy-v6-4-50408e45bcc1@oss.qualcomm.com>
References: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
In-Reply-To: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDAxOSBTYWx0ZWRfXxw4+26DNpAWe
 /8GdF32QIekfik6ey9DnkWwOykUEO8GxDJUJ/tT6cBFwVwpJi7ccMua8/D5JyONuCs25UeXD4iT
 bBvI2j4kpluiTSC5Z+gVCEeT+RUe8qg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDAxOSBTYWx0ZWRfX9yxgwkEWFPME
 qdyV44LBNnJozwnwxRFh+AQtq3Xldf49/OIQSW4dN+vB4MV9Kpwt7aSt0q3YPxBcmKYo55CSP+q
 tLSd4H6MUPg8iVC3JxrnxriRRJrsFfGVEbOuakgKT7BOGBKy7hnHQEcWn5QIXLJ0R6Ja9rpoOhc
 7FCjTPEiDp62MgUsr3xDa5YFRpjhlzCEoKTh6HXFW5qzyJOal2GDgvUw/xfvYrT6Rqn49OAxYeZ
 iIfvBNEGX8KoP51sXVc7nhgYqOdjaZxzrZYcNBkMeDnP5GMERR0GXO1dIeHPESiuHywIqGccxBV
 /uR49zb1btWWnZ8yb4PI4Xl6Cw2f8Fsi0MBCOf7eymR4KxmVOQXgCXlyvzA2Xlo7CbfJRbJSbqs
 inUPbJo/XGxx1lcjIf/U+GnRCa7xoGoYm7o9R7nn0DPvHKOIOGOpyvbrgFWOIzoRrqZvozsqxva
 GZnITNjEt16mLJwPFdg==
X-Proofpoint-GUID: PG5ufi7o-4eNrfrwIAWFRoGngrrH5YkV
X-Proofpoint-ORIG-GUID: PG5ufi7o-4eNrfrwIAWFRoGngrrH5YkV
X-Authority-Analysis: v=2.4 cv=IqCL47/g c=1 sm=1 tr=0 ts=6ac87295 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=GpOyvZhAS4UUCrMfQdkA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_02,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610020000
 definitions=main-2610090019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_055032_470529_7823C6E0 
X-CRM114-Status: GOOD (  14.60  )
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

Fix the register bit field mask & value argument order while programming
USB2_PHY_USB_PHY_REFCLK_CTRL in qcom_snps_hsphy_init() and USB2_AUTO_RESUME
in qcom_snps_hsphy_suspend().

Fixes: 51e8114f80d07 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")
Fixes: 0d75f508a9d56 ("phy: qcom-snps: Add runtime suspend and resume handlers")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 980ad1fb1e2e..0ead37c0dcfd 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -193,7 +193,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
 		usleep_range(500, 1000);
 		qcom_snps_hsphy_write_mask(hsphy->base,
 					   USB2_PHY_USB_PHY_HS_PHY_CTRL2,
-					   0, USB2_AUTO_RESUME);
+					   USB2_AUTO_RESUME, 0);
 	}
 
 	return 0;
@@ -426,7 +426,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1,
 					PLLBTUNE, PLLBTUNE);
 	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_REFCLK_CTRL,
-					REFCLK_SEL_DEFAULT, REFCLK_SEL_MASK);
+					REFCLK_SEL_MASK, REFCLK_SEL_DEFAULT);
 	qcom_snps_hsphy_write_mask(hsphy->base,
 					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1,
 					VBUSVLDEXTSEL0, VBUSVLDEXTSEL0);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
