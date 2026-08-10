Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E163CC5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 15:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pKEgdJWStRlxRNMDV1IbigmnLPPVSugbxt0AIO5l6sA=; b=ZnQY9NyKE+zOEd
	m+IJuNwAgYQlI1gsbvKfwTYzHl40vUM8/p08qZzdYUHTiOls+cY7Cvh2XVoCTuljdze1Q3G1G7+ZE
	i3yhuTt2Anf2LaedMIo8AxxETRTPiuQARqYiEyYu74Y6uKzGd+mh05FDpD2BMSWJFTIEtkZ805zAJ
	csUwQlv0Uo78lT+NYMii76dWs/DpqLAoRmgWycEYRfnhbAETIFJOwt5UrzCeTvrjhaMLeoh6zhnOc
	0Yxy5wv4ZgBxlJdpYFWiQePMHTlSu1SUIdS6z2TdpegvI2CRTjIfsHKRRBYC3MTNAjrhXKpiGpLcd
	TV2TgNYP2eKJoOfg2Ibg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS8u-0000000CIW6-2dXF;
	Mon, 10 Aug 2026 15:42:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS8r-0000000CIUn-0nTw
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 15:42:23 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67AFWNFL789093
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Wb7qvpUp/pGm2ninxxAE+oyyMl7XsWm9X5sYC8bZaf8=; b=ZcV9Mp7SANLg3D5T
	PWLMytl00vS/dew4AbD067kvdt36FpqHJ6AjCy7ZFwOHr9kt137MO3GgFXgScuoW
	nM3pAZXnEDUjIaql7nTSuDyMD7/PjTIx2pOpxGUcMl4NEU8sOqWls+XAEr65C7Y8
	XaQJpLZpa+y35XROU+5SZCpYp/mEx9h415znrRBtb3YGcnixmxYVnlKoDf7Hvo1v
	GsXXJ8+sqkS2oE+CYGn8J916dKe0t3XNL3mPJ8WxOhG4CTJFc9H13jIL4qiJhGA0
	lv/LSw1yCmWc/n5gEODXbb7NEUvjXCDJhtqXZ71Ur1F3xXNnKBI/CSBOvmjQUuMP
	eG3k2Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fycgese2n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:20 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-52d33c89a29so19151041cf.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 08:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786376539; x=1786981339; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Wb7qvpUp/pGm2ninxxAE+oyyMl7XsWm9X5sYC8bZaf8=;
        b=hXcyjUlRGPLH/qC/UjnzodktINi2XY+DEJkb/vzJhNLcEKB1eL4C6uht4HM8jrhUSU
         LgYaNdLNcXR/wEfv36CUptjwvSuDMMMRbJ6QHa527Ei3slMFYeqnARdRkRGCaKlY8Y3I
         p67dbqGs0vhNRp3/mYcURDpKw5vteh8I8fuaczqPtoFPfW3g1QQDBAp1Jd9ZsSyU0Dby
         umrKIX1ytu0/f7IlYmfupUonoisVwxn2j84QPUctvVVNt0lupvMXArBNtGW/kAn64YXx
         5MhVcM1JJoM4EydzHFQDzQZDPoHK3beLy0uu2Gfr/NXYUxYSVVvNwZlH62qV/dB7wAMq
         MESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786376539; x=1786981339;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Wb7qvpUp/pGm2ninxxAE+oyyMl7XsWm9X5sYC8bZaf8=;
        b=XjUHCBKRAqIIOWn2I9uCmSpdh9SFpgBaJIx29BpX4iZ5yEcIPdjzix2CGqVYMImRVb
         AaYws+KcGb2M2V6bH1LGbexmR3aIPbJZ9p1+4f0/hzZAAkkRLrkrWtQ+whDYEj57XfXY
         d5VO0GucOv+RBoK44tPjXB4mpkjQBxW/HWIelFThzMNFsyFLgrdUjpHmerx8wOMZfSMi
         GAz1XifRpO2xrOnVas6/sPa5n4M0TuRiRSsRrjZPxc3CO+vaUnO2SteZmQKPp5Q/f637
         A6k5YZI73zobWauii6jdPea5BWhkApXfgF9rxQOUmT/vVIyqT+vLML8OB3oV2p3xBKfi
         lKPA==
X-Forwarded-Encrypted: i=1; AHgh+RqO71HO+k2zT+ZGCbckkHDReA+YFtAb1Xiz49WEmg5dbEWplJtcqgGLBb91fv8eKCCtsLpvTXPzBUw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxGTg526ddlfwpCXwh6PKjjD49Agd1o7KclNwrCEVHr8rWvqddm
	iPKaDaFueAsnohRKo5JvkeZeodQt9vDvcwmnqb+SO8tDMYdltxkJc+1WUlBaXxSc9E9+CfiSzPF
	9b9fmhwCu6c4hY0QNjOff6JiX5yQSsakjEEjAOCbAs73ca9GJA2z5znKrHSpo1LOR3CMc
X-Gm-Gg: AR+sD13rEyshU41PiZQQ7lfpLuezjHCHCAslEW0bHe1blKtS7AvWrsT3aOUW2TIPSl7
	ctIn9NlCJVN3V1P9HBsJ3ZKv+OwK2Q9NiRRyH4t79t2ad/pnanLCF6tdXw3eRXr0unjx0SGmzuD
	duITD4BcLA6K05sXOPaAqTVXR+6BZGELW451pOurBMKFEYiOpD6mh9z+v+cWZvYeBOqU6Kq26P9
	07jB5tIgqVUSPrKemtIJavZmZ+HxZtFmNKyQDcEjQJDJaGHf+/F6KF1rto0KUQVtPusVF4y/n0i
	zf7SS9WzI3CuyuuqUBS/lDYGKxe+OmvToC5aAhncozWaX8l8UnCvaOb+02x6p0Wdq9OoysakVJ0
	lgCI7iOPpNIJXgvUxDxKHO0L+c5nVe+lApSTveQe1bf9HCkQkh0RPUTL++RnRoSvJz5kVMQQW0t
	4hYq95x0runtzAXA==
X-Received: by 2002:a05:622a:c8c:b0:51c:19af:6341 with SMTP id d75a77b69052e-52ce61d2d25mr497523521cf.36.1786376539164;
        Mon, 10 Aug 2026 08:42:19 -0700 (PDT)
X-Received: by 2002:a05:622a:c8c:b0:51c:19af:6341 with SMTP id d75a77b69052e-52ce61d2d25mr497521651cf.36.1786376538133;
        Mon, 10 Aug 2026 08:42:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b3056f1bbdsm2071673e87.82.2026.08.10.08.42.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 08:42:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 18:42:07 +0300
Subject: [PATCH 03/10] phy: qcom-usb-hsic: do not run the sleep calibration
 clock
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb-hsic-v1-3-e5f93ea76ffa@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3001;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=0CI3mvu26e7yA8lXB+SGW6FHaZ290+w5/6/G0cJEMAA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqefFQE6VzvzxQPylH9ol+I79Tpmlw5MGkv8b25
 1iWSPmFw6CJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCannxUAAKCRCLPIo+Aiko
 1XrJB/4k7QGxbIKLgD8fuU+VZfJP2y/wpC+a0n4C6NJVVqJBicGgCy3AQ8RQPMNajILbjcTmnxs
 42Um3fhKY+5SXieGB3CFYJEOjlA79/KNfLs3M9M8Tqy/OVFOG3m1xDW7BCK7urRoWIVBu7kSbYn
 4QlCcu4hYZ4rVVDHGgBhXtsV3Ke4vXH0fpEWTn3rvqTf7hU5BbwX4Wu7MMhp5R70vbXirrZcjXv
 nI3gVSk18M6Zo27KaVZOf8A19KNnRvRSq++A9OuCeo6MhNWEK7/46RwMvafaMZdu1utqdf24XCk
 XI0jmDgzo5lFr620llmYyMLV77/QUORAmmowPAq9SCJ394y0
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: WHGIB8DIFApLqlb70GR2iAlbSZZkHTEo
X-Authority-Analysis: v=2.4 cv=R4cz39RX c=1 sm=1 tr=0 ts=6a79f15c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=h5QO6Q66eTtlMCYmI04A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: WHGIB8DIFApLqlb70GR2iAlbSZZkHTEo
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX1vFG29ZrrS+H
 P0mopeFJjPsmWEGoAyftfiOsB0ar23u4sw6ayXiiRgB90zbRrQp5SlgwGJWDlg7q+7YBq3FWZV/
 +El59AJ9gwxCQtefrBLF6yPuhitsvig=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX28Dwv3fixgVi
 xBMwvmR74ln6raYFLBHUrPSIAHDdxgo3DPUf0yjCKL6bHpETJNVi2fQIbwmsxC1upSe0ngPOxjQ
 9zOiJq3xzNe2qvFR/cAj6+63M6rGtHJUTND66gfJoYvqSriSYEWfFy7o6yxAi0dCVk5EgzkE1o6
 zo7XdbF0ptr6fE9n1dEhystImbZyuxp/rUSm08XYNkqh1OlXwoCsda6xiEM5UkyOIkYJc5JaIUU
 U1dm5yOI7uxPNBknoWDE3jpLjNtQrtniXSB5fWdvYFi+FbEEQzC00guDxXbsWaRLBtNyyPuqnoW
 DM1kjngPiPzH4wxbz6u1XgqoHaHo0ARMsnAWRuSqljLTMMs3Y6B83Ct0MiOTQ6xMD7LaF1CtvvR
 kzYJi1jp8tTSKvYKRWi2OGA631WVLvKnYpwjgMgpUP8XSg7JIDOopwN89lS72RLFFeRwQppbVyA
 JGWksHUOLbq3NH8GrVg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_03,2026-08-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_084221_350615_575A5E5C 
X-CRM114-Status: GOOD (  16.54  )
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

With the cal_sleep (32 kHz IO calibration sleep) clock running, the
HSIC PHY engages its sleep calibration: the strobe/data pad
calibration converges to different values than with the active
calibration alone, HSIC_CFG reports the sleep calibration state, and
the port no longer detects a device connect - an onboard HSIC hub
signalling its attach after reset is never seen (observed on the
APQ8074 Dragonboard against its USB4604 hub, by comparing the ULPI
register state against the vendor kernel, which never enables this
clock: with cal_sleep enabled ULPI HSIC_CFG reads 0xab and the pad
registers 0x0f/0x0d, without it 0xa9 and 0x10/0x10, matching the
working vendor configuration).

Stop requesting and enabling the cal_sleep clock.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-usb-hsic.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-usb-hsic.c b/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
index 20f6dd37c7c1..b670ec364a2d 100644
--- a/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
+++ b/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
@@ -20,7 +20,6 @@ struct qcom_usb_hsic_phy {
 	struct pinctrl *pctl;
 	struct clk *phy_clk;
 	struct clk *cal_clk;
-	struct clk *cal_sleep_clk;
 };
 
 static int qcom_usb_hsic_phy_power_on(struct phy *phy)
@@ -38,9 +37,13 @@ static int qcom_usb_hsic_phy_power_on(struct phy *phy)
 	if (ret)
 		goto err_cal;
 
-	ret = clk_prepare_enable(uphy->cal_sleep_clk);
-	if (ret)
-		goto err_sleep;
+	/*
+	 * The sleep calibration clock must not run: with it enabled the PHY
+	 * engages sleep calibration (the strobe/data pad calibration
+	 * converges to different values and HSIC_CFG reports the sleep
+	 * calibration state), and the port does not detect a device connect.
+	 * The vendor driver never enables this clock.
+	 */
 
 	/* Set periodic calibration interval to ~2.048sec in HSIC_IO_CAL_REG */
 	ret = ulpi_write(ulpi, ULPI_HSIC_IO_CAL, 0xff);
@@ -76,8 +79,6 @@ static int qcom_usb_hsic_phy_power_on(struct phy *phy)
 
 	return ret;
 err_ulpi:
-	clk_disable_unprepare(uphy->cal_sleep_clk);
-err_sleep:
 	clk_disable_unprepare(uphy->cal_clk);
 err_cal:
 	clk_disable_unprepare(uphy->phy_clk);
@@ -88,7 +89,6 @@ static int qcom_usb_hsic_phy_power_off(struct phy *phy)
 {
 	struct qcom_usb_hsic_phy *uphy = phy_get_drvdata(phy);
 
-	clk_disable_unprepare(uphy->cal_sleep_clk);
 	clk_disable_unprepare(uphy->cal_clk);
 	clk_disable_unprepare(uphy->phy_clk);
 
@@ -125,10 +125,6 @@ static int qcom_usb_hsic_phy_probe(struct ulpi *ulpi)
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
-	uphy->cal_sleep_clk = clk = devm_clk_get(&ulpi->dev, "cal_sleep");
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
 	uphy->phy = devm_phy_create(&ulpi->dev, ulpi->dev.of_node,
 				    &qcom_usb_hsic_phy_ops);
 	if (IS_ERR(uphy->phy))

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
