Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDDC1C44532
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 13:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vmIr2t01YJVxlMz0iGgWlZ1ZeUWE4wfEvl3+dq1ysc=; b=eXgy6FJFYkBfK7
	Zvhb0G7I6tmJNEbDsNofXLeiTBiGKsHTj21L23kmRc04DnFj1OqC6/gAlvZlBcX/pTar7JVw2cyeK
	lIeBZ0SaSb5q7R4lWzwWxZF0R1lKhuoRY00m5R5sAfw1STdHuKLqtXzc6ajnJBx3xfqhpIQSKuXi1
	RdD5bkvWkz6Dl0n31pEvY3wi06HfQknMI6WpxKa4U73D6BooY0kRWIukjtEUs9irGumItOwE54bFx
	KaoAROzlG8W11A7xuZtAMoPMAm1MteMRrVngU4VUoL0NtKZwgxGP+BcJeXIaYZ0/3vgbaB9YPSzUI
	xfWHHR8GEkFVgTkSM6cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAAW-00000009U4P-2o2O;
	Tue, 21 Jul 2026 13:05:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAAT-00000009U3J-3tYq
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 13:05:55 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LAQtbZ2502675
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 13:05:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ArevCzpRzOB06CCKd2tNeB4LMRjUeXNscgEPzgFVN68=; b=l1XXiear32KiBO9v
	W5xcP4duKlk8YwkOsrlPlAoxk+q7W+pb0WPtYMA7fUhbuAZDJqsD78JRbotZff8C
	8PFmT9i8WJncUA1YqWNnGWhI416GtsYShPYE1nz/E4GT4sG7+MJoL/OOj/waQ9Hj
	49nqarxfQgvozVnY6JmYesqp86NhpUcychte8HxlwNAQYSiBLGEf/bMIn0OhX6Js
	FMfBLKlWFeXs2qCVtsc3y6ebLtuq+X7/TbrsmbIgl1cGLJFSl7EVW5gn/N/f9vNR
	gY+fYYEwrQhW0BrEb0UUCR2wP5OOzFR5IfsWRH0WAOPwUx+6b2HR/o3OpVIWsPE+
	9o9brg==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fj6nsrvb8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 13:05:53 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-9694e84752eso6686569241.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 06:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784639152; x=1785243952; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ArevCzpRzOB06CCKd2tNeB4LMRjUeXNscgEPzgFVN68=;
        b=Vha7zdEvVF1KxjtEqldFrO75an+o3VybdndaVUvHE/3ktTp9yrBak7eQWH35QH5o5Q
         kT7GNdPheTxzkuPXmODTkHRBAVvcHdPW3unfZ6hYNRVcvv1VZ7R4TzlEhvb1U60GSDJT
         UWsWHH3+yJKDkdHOFiGzQIDynKyfG692jtXOugqv9D3s/DpuPUZGFxjrE3Qd4AWawrPX
         N2pVpVsOtFiPljiFUTckB/TzO6j/WyY6Yuicabke+OI/uA0Sdt1be6ttOFCwmzvevcqF
         0re1I/UMbqNQ9Dw7aMcfui0fUijSYtLiHiV1up2OUZDD9A+PQ1qr84zyMuT8eB3MiUh3
         DGsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784639152; x=1785243952;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ArevCzpRzOB06CCKd2tNeB4LMRjUeXNscgEPzgFVN68=;
        b=MFsfdBpUVspF+8/0ZNDLIY9i4x1hT0PqxgVuNDEzaZHkNme+EKe21TPkFbU81cDOZ7
         V+4RiONzQgMLH1hLLgp92fZU+xAmiABfpy4PFfB2B2QgZssGUfWrJxh8+u98hPUKta06
         UP+wj0IOyk3B2lnIKnQ4M526rVK9kemjBWGS9kOq8n6VaWgNukmjLF9d0etEkmHHQfWa
         IVHHrFIVSpyjn6nvqTu2F7JGz53apU/o2472pVrSRWoLhC/B+AQi6qnt3HeZzHLDyzRU
         fciUr76uFYkkXhNXVZK7meHPBsoHdE3EHqrkey8QCpQ9n8zVTG59CwlUMKaLdKF2mb9p
         nSVQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp8Kx697CKKeDi6jf9lRZMhwPiIeWBXj0XPd4kSeZ4H75IJBvywgCJ2EsX8ZW/J6+ArGAdQJBogTBc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx36eQOE7icBRyijOOR1U6SIQRhAW+2ihZyAnHUZ9h5algPp6rK
	WrhGx0xlwnR6HrHGlgpMwc1dOjYc9pvL9HM3pPhSFSbSAiXA8WTpbcH8RSRszm7HMu34Cti5qWa
	TioDF7o00NIFWaVCKdhrbTbc1MIzOw2fQI0lLpoubp/w4V/9KkMqUpXI9YYOuv2LJMnG9
X-Gm-Gg: AR+sD13BCLoJromF0MQhK4UrflTIQ9ACsQtgWHg78bbaH7/Haz0Azcy+eD9cR6tbm0x
	kAremoIVoD5/CACNtgd8h5eRF6YcdZiJLjnJfsKm3lPgmhTNk2SxQC0sOuLrlHBcmEm6R04o6Wy
	evjgm6m5Pa4M/OR+nV8OXkY93LeQS+jHbezfwtClWzVAmcBzTFu99vRvAk4R+fbtw3KpitAIk3+
	Fd8RadrRoD4Kuul3/kxpriYWuyVrlkEzT6Gl8xkYQn23zDn9JTcxg3J97vIqECzFdrpcAXga4L0
	ll23KJyEXXE4IrXshZ1FoGlfGaunA83acH7NcBV7Xn9SomFFK0lJNgB7M1/lFBXlOw1C8FTLUxg
	VSaAh5EOKZZCfpAAJUht0oa7OIF+xJzN5eXLS3BjlsSwf/tPkt07I5FreFBX04z34qqczPu7xpI
	gD6uFHCyu7vOu29FbiGPR9WvzR5IRdohLKzaZJ7WvN2/2Nir7TBMw=
X-Received: by 2002:a05:6102:1487:b0:729:affa:70fd with SMTP id ada2fe7eead31-747534bf4b0mr5780652137.8.1784639152417;
        Tue, 21 Jul 2026 06:05:52 -0700 (PDT)
X-Received: by 2002:a05:6102:1487:b0:729:affa:70fd with SMTP id ada2fe7eead31-747534bf4b0mr5780628137.8.1784639151990;
        Tue, 21 Jul 2026 06:05:51 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:751c:d61c:c91:60dd])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c17009ae04bsm591898066b.8.2026.07.21.06.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 06:05:51 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 21 Jul 2026 15:05:46 +0200
Subject: [PATCH v5 2/5] phy: qcom: qmp-usbc: Prevent unnecessary PM runtime
 suspend at boot
MIME-Version: 1.0
Message-Id: <20260721-qcom-usb-phy-fix-null-v5-2-a181e2adbd2d@oss.qualcomm.com>
References: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
In-Reply-To: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: ZfwBQyodirkfhiTxx4ewbGrN_mHyeOZe
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDEzOCBTYWx0ZWRfXz+NnWyOfspkG
 8rpQfqdHIoWoeAfphJGOu/B77OfKG4HX3Dw3XM6qPQy8msOkBEYHIEUfmO79yrTWX1xa4qZyb7z
 J3z1PXRDFGZDZPuQ1mKgDZsAOsRImPA=
X-Authority-Analysis: v=2.4 cv=ZJjnX37b c=1 sm=1 tr=0 ts=6a5f6eb1 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=PcYcMbZi39MCwOMHHM8A:9 a=QEXdDO2ut3YA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-ORIG-GUID: ZfwBQyodirkfhiTxx4ewbGrN_mHyeOZe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDEzOCBTYWx0ZWRfX1UvQA6sa6kym
 8kmsRIemH5hOPqZxohpKguXQAODVyoexcBJaW8LAuskV+O8j86Vvx2GQ+LIf44XF/GkzxHqPiN3
 mvYBahE1XiAtinru9hMcOpd3GZojrK8+CEYg5XwrSl3me/gP0P6uGvqniJGmjSwgvKbjMjtwwly
 uuijdi7/rdndp7hoy8REPxXcliB12p4WbVbR6E/UoNa8gMw7WUvGQUqhgDGJHVRxojKA6d/Oykq
 i21GfP3+5RY8h/r1ckg6Sopujej2vEotK9yjfZSluyRjIBYSdyWWZccIDTcr7Cr1RVCbwurHMIq
 EXHNb9PcOamNHhKMeAZbEnhJOVvypOx34PUO6uNJr8coSrUG2x6/iwK6GSj9a4wQuJI6tPF8o/n
 V2obdXlIm0PsdAKhqoLZtCDh1Yzueh6RiymAHwYcQJmv22UgkllCIV7QofCdk1qiqPMtAl0mRIy
 Of1dZNalFw5N+79qBDA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_01,2026-07-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607210138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_060553_994628_AB450FD5 
X-CRM114-Status: GOOD (  16.66  )
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

Runtime PM has to be enabled before creating the PHYs, since phy_create()
only enables runtime PM on the PHY devices if it is already enabled on
this parent device. This opens a small window where the device can be
runtime suspended after pm_runtime_enable() and before the later
pm_runtime_forbid(), causing an unnecessary suspend/resume cycle while
the PHYs are not yet registered.

Take a runtime PM usage reference with pm_runtime_get_noresume() before
enabling runtime PM and release it once the PHYs have been created to
prevent the device from being runtime suspended during that window.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index ab3055bb5b0c198832ae06dfcd04fd34395e271d..4317224070fd8dec98090e9200ac7d0e97265979 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -1959,10 +1959,16 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	/*
+	 * Enable runtime PM before creating the PHYs, phy_create() only enables
+	 * it on the PHY devices if already enabled on the parent. Hold a usage
+	 * reference so callbacks cannot run until the PHY is ready.
+	 */
+	pm_runtime_get_noresume(dev);
 	pm_runtime_set_active(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
-		goto err_node_put;
+		goto err_pm_put;
 	/*
 	 * Prevent runtime pm from being ON by default. Users can enable
 	 * it using power/control in sysfs.
@@ -1971,13 +1977,13 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 
 	ret = qmp_usbc_register_clocks(qmp, np);
 	if (ret)
-		goto err_node_put;
+		goto err_pm_put;
 
 	qmp->usb_phy = devm_phy_create(dev, np, &qmp_usbc_usb_phy_ops);
 	if (IS_ERR(qmp->usb_phy)) {
 		ret = PTR_ERR(qmp->usb_phy);
 		dev_err(dev, "failed to create PHY: %d\n", ret);
-		goto err_node_put;
+		goto err_pm_put;
 	}
 
 	phy_set_drvdata(qmp->usb_phy, qmp);
@@ -1987,17 +1993,21 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 		if (IS_ERR(qmp->dp_phy)) {
 			ret = PTR_ERR(qmp->dp_phy);
 			dev_err(dev, "failed to create PHY: %d\n", ret);
-			goto err_node_put;
+			goto err_pm_put;
 		}
 		phy_set_drvdata(qmp->dp_phy, qmp);
 	}
 
+	pm_runtime_put(dev);
+
 	of_node_put(np);
 
 	phy_provider = devm_of_phy_provider_register(dev, qmp_usbc_phy_xlate);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 
+err_pm_put:
+	pm_runtime_put_noidle(dev);
 err_node_put:
 	of_node_put(np);
 	return ret;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
