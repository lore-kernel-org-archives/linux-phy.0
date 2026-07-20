Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 638F3C4452A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZiZVtj0+7H/H3Eue3CkHbTKajc98ZvVQzbsKwyQaYk=; b=EIPXq7kmD4iyqc
	IfnrRZ3/PoRr1XjPOQyiEQay1VEbgYyN8KKtaHz0ZCoSDt2K9ZEZGR1YlkRLf8qtBTR283mLdaywU
	QoXA7qxw/f+4QlHLlohveRNAB13ZnbDti/xXV/iP1dSrz8T0J8W9ZTMfaD6AHjVs7RuSPWW4jkcqY
	evaa05fnA4pvD4sVgmJ6ZeRZOLHHQ2Sn18p7L26g6mYsszh8sYDU1ebGrosGrZdhYEEtKAv4GZHKr
	h+i1/41OFqqxxEUFlwcAa1n3TYhM/L/i7uqEH1CK3tdWRbOWs0rcZkAP1wvTh8pcWE1T+9wEWL0Sx
	pUT4rH4qEl8UYEV/dMag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpNO-000000072by-0Ss9;
	Mon, 20 Jul 2026 14:53:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpNM-000000072bQ-0VA1
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:53:49 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDqXB82962857
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:53:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GXJHlTlWI9rdZAlQlDTbUDpfcsl4EJSlpJT6KPqMdqk=; b=jDkujJ+qSnwsUxBm
	1EcSaMqdPQnJdXRSjJ71Vk3+7L4RhU343dllQrDcrJLOLenLM9zvKKfJUwSw6RD+
	/jqQo7fJBzIOa/doGt7vuNlKeu6Q/H/LY0VisR0vHWQdpzcowTAPpolv9zjLUZs2
	PfJycizd0PLli6LiQjrtsEFGe2LrA+x3qo+QBFTf4bv4R09WmFfvTeEJf3xLZdti
	dLWtCVWDE3bDG2hmdCckaEeih8xRpLocG1XoCX6FcxvkF+kc/lwQ5h666UeCrvhi
	bHgAHauRpOe5gxHfJNzn0u7dn+qLMHj+AaiJj9WPiMuPIkhtEUrxOjily4VOihdQ
	5dYpOg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhfdchwd6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:53:47 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c1d137a68so273119501cf.3
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 07:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784559226; x=1785164026; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GXJHlTlWI9rdZAlQlDTbUDpfcsl4EJSlpJT6KPqMdqk=;
        b=bufwOsd96JOuZ4lSSEvdNd7CNgv7PvL7fcRbGaLyN5Y6hT1zIVruzgFaYyrNEaxG9J
         y7LbVeJ0C+ucejh7UG9jRvI4hGec18szSM7PCk6G9TnjM+PttxZYkgpDok400lYX7XnE
         68V0YQvhIH5vRQGEhhyENnhsQjGj8Q+BbaBVt7ZSXxHBoDzlr8gDd/dmcr/WPezVac0t
         dvW6W3fF3BJTsmE5KsWheB4n6qQgn6NRR7wiyJKAMlMs3qAYAS4o/As2ADTmeGBpj+LG
         9xgJ0K9Rm1y6ucnRCpGy118i20pohoQvb1sieT3TOlihxbVO7WQDWu98u+ppTqtGMi6u
         Ldvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784559226; x=1785164026;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GXJHlTlWI9rdZAlQlDTbUDpfcsl4EJSlpJT6KPqMdqk=;
        b=Nvob/PlzSCywjBWJFFAOc/T29Tjj1/VxVYPZE8u7uLVJ64V71pZY1yRlGFNm41PMpe
         Z+PbY0nLnUxapABRRpap4be6ZEgWa0oBF+HjQYYXgtVDIf0xS2lVqoFibWW9Un3P6gJD
         XI7RsJREZDth4van2OICG4WguEUYMRCA34147xt2CE22SGIXdORXTvpG5pilZFTuZaoU
         jY8PS0LG1JoG/YYLnY3EshRT2M6l5qY9mcSLucvHQ7ReIjXMs07xWUwCTLJTqvufsGcC
         aLqBNnctXzt7VrxGOXn5POwgvys+sH0AKh1fDKBnveqU1wMFlBTsiYNWclYl+ov+pN8a
         0DlA==
X-Forwarded-Encrypted: i=1; AHgh+RqUVyJnS8Ds0ZngdcxXGwHsnnKZRB1Fvq1diUBNb8grY5jsKTyWqOLjUXYceo5MEaluI/5KqNcfDrk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyFmXCLnIEleEkkoFYtDsptsOntMf65r4CuBhZxt7oSG8CG+SXB
	zDkH+Hh78rNkzdXXNW74thhZcg8uDDHudqbKSixyBIJqj2IdJRTpzr2WQQ6W6s9azoEcT13lTJW
	gkB5ojbLV+MdjIyawvsLQNbaB7BMOj4XYSAgxlg4rA382YMElod2vCUKTuz+1w2M+HWT9
X-Gm-Gg: AfdE7cmpnAqAAZKfYXzGdsKqnTpn145SsIM23Xt7DEsKvH/l3a8fAs7Wuf4u8ZrS2c1
	vihWXkhh/S5nRLGiOVFaHT7FA6SBIc3JGWnu1sR7R4s4KpnpaeNcit8TLYbOcV6FJFDS4sjWu6J
	HqwzpNUvFCP7KfKzDqf4jKMzSehNKYxDS8Z+5J6jFhpCUtVE2lZd1oYP9RUILFCCQmQfrDPylKx
	VwxLbOU3vnR6jK9YgRdgsHgV3RmurwzDBCRODllm3js+jGei8BOCVVzCZV5yo32/kilEyk2jDVR
	mDUx7yMrS2I+EkZ/LwfCu/gNJCFz0tT86kjWSr8DHSN87lrB3jLDE/3NiIdeF4RRRlDihopt/il
	G3m43AAZ9ezpbFWasGaYvldmkUQt7u3BeK6XpSYykWgNkO/uMgYmqeQbbIOcE/UP7ykrjuEEUCb
	KD7TI+eQZPuwzNDNnFklzkN5NqdxGUxmZY23/NJzA90EgzRASCN9M=
X-Received: by 2002:ac8:5e49:0:b0:51c:7b11:419c with SMTP id d75a77b69052e-5213f36e3bemr143370351cf.73.1784559226583;
        Mon, 20 Jul 2026 07:53:46 -0700 (PDT)
X-Received: by 2002:ac8:5e49:0:b0:51c:7b11:419c with SMTP id d75a77b69052e-5213f36e3bemr143366741cf.73.1784559221716;
        Mon, 20 Jul 2026 07:53:41 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:751c:d61c:c91:60dd])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69e7000c3e2sm4800215a12.30.2026.07.20.07.53.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:53:40 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 20 Jul 2026 16:53:33 +0200
Subject: [PATCH v4 4/4] phy: qcom: snps-femto-v2: Fix possible NULL-deref
 on early runtime suspend
MIME-Version: 1.0
Message-Id: <20260720-qcom-usb-phy-fix-null-v4-4-4d2a0f06d53a@oss.qualcomm.com>
References: <20260720-qcom-usb-phy-fix-null-v4-0-4d2a0f06d53a@oss.qualcomm.com>
In-Reply-To: <20260720-qcom-usb-phy-fix-null-v4-0-4d2a0f06d53a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: I6EaQk8oKM2VfpBtBHVA7eH2eHrreOga
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE2NSBTYWx0ZWRfX+d3OcklHXyE6
 JMjZex1ptdSRHdzI734x0tR2cctHGe6dcgsXotdKltaNZocdZzKqBvRxU7DSFtVqccqIOzm4pdu
 Q9lQX89Psn2FDHL/mTsgrMBmLjRUaBXkceN2Q5M41dJVx2kA0itkKXJ8GFXUVoNhQK1fHA97Lj4
 n9beIDawZWyiRSYt4zt+nhTCdN3pJeK7VNz25e0asuD1GjKGE3gLOo7bpurKLUaYDHZddRVomSu
 PHDh+lozCOu8D2JSvHVF1NGy67dVpa9z875SKDP93sJvzjXViLjc5PladE23XsKADHMAMjRF24p
 KlXQmZ827KUV5WbUgleOI4RalvD/dbX8QZKNqWP5/WOW8QYJJqyhtcENJSHRUkSBziapm+cme63
 cwbKIDRCmRMtslbNOj1IHVMZGhuogJACwILqnnwfQ5RIlbAV3is45t+WWiuHJNBof3yOLsNxheH
 OjqxPy2WDU4F5XW7mAA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE2NSBTYWx0ZWRfXxbjbV8XaRs8g
 D39Lrqz36wEI1hkQ6cwbw1LCTSSgcrebMSwUugT85DyQvTz3JLujLbuHSAGYeVEA697p0pokue7
 LsemaKXMdKMW2+Xx56nu3g9Zwo3dM3c=
X-Proofpoint-GUID: I6EaQk8oKM2VfpBtBHVA7eH2eHrreOga
X-Authority-Analysis: v=2.4 cv=bv58wkai c=1 sm=1 tr=0 ts=6a5e367b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=PcYcMbZi39MCwOMHHM8A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_075348_170122_62E0F750 
X-CRM114-Status: GOOD (  16.97  )
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

Runtime PM must be enabled before creating the PHY, since phy_create()
only enables runtime PM on the PHY device if it is already enabled on
this parent device. However, the runtime PM callbacks dereference the
hsphy instance, which is not yet ready, leaving a window where a suspend
callback may trigger a NULL pointer dereference.

Take a runtime PM usage reference with pm_runtime_get_noresume() before
enabling runtime PM and release it once the PHY has been created, so that
no runtime suspend can run before the PHY is ready. This also prevents a
short window where an unnecessary runtime suspend can occur.

Use the devres-managed version to ensure PM runtime is symmetrically
disabled during driver removal for proper cleanup.

Fixes: 0d75f508a9d5 ("phy: qcom-snps: Add runtime suspend and resume handlers")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index eb0b0f61d98e03963bf92e5c822334f52636abe7..b1a85518fed0a7a35516d16da3ebf69afe760e40 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -599,8 +599,18 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, ret,
 				     "failed to get regulator supplies\n");
 
+	/*
+	 * Enable runtime PM before creating the PHY, phy_create() only enables
+	 * it on the PHY device if already enabled on the parent. Hold a usage
+	 * reference so callbacks cannot run before the PHY is ready.
+	 */
+	pm_runtime_get_noresume(dev);
 	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret) {
+		pm_runtime_put_noidle(dev);
+		return ret;
+	}
 	/*
 	 * Prevent runtime pm from being ON by default. Users can enable
 	 * it using power/control in sysfs.
@@ -611,6 +621,7 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
 		dev_err(dev, "failed to create phy, %d\n", ret);
+		pm_runtime_put_noidle(dev);
 		return ret;
 	}
 	hsphy->phy = generic_phy;
@@ -622,8 +633,8 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (!IS_ERR(phy_provider))
 		dev_dbg(dev, "Registered Qcom-SNPS HS phy\n");
-	else
-		pm_runtime_disable(dev);
+
+	pm_runtime_put(dev);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 }

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
