Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B2A1C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5RWNFAaNne9e7GYcJMgHKTfEgW/ot16szi6wU/huKg=; b=S1PuPlU/+0kvu8
	Iw8mSv+ugPJuO+zJkEqtNZW3RuZZlFCNxaM5qxqeH/lgaQymrkX+Lq8ncf1Kq5j1wl8QgE8NGEtIF
	NKYzfwPi3LbNcZbR3FDHv747HmCux6NEn9NnaBAEMbQhnagW3bBD7Lqfro3vSOSsLimtMBad8uIMc
	jYYCkf+yV6pw7J3pQwHj3+JSxzkGexq4ssAJX/7Ynsp7r3E/Ko69enPHh4OXXdo9wRsvsQekfDySM
	l5vjbFO/zJijYydx4QXstxutXOdYLQj2d2Co2Wh/GMFsdzFJfdne+Ktc8JgQlwgIicPqXuPAUyKf9
	xphsXTiW+KrK7PE+mCvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpNI-000000072a5-0Hg0;
	Mon, 20 Jul 2026 14:53:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlpNG-000000072ZD-0qQX
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:53:43 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDqNrf2498347
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:53:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L0DjVqpTkuQJo94lpey+cOup2FTxJcwHBbDODt+Htk0=; b=hkqBA2iwVJV91ZFM
	ht0X7DIXqERCapwkg40bDZ+vs0XyK7uXEWnCfvImyCehkDi/m9fyAIJXTvEqav07
	dcOLD9vvVL7VqcqNpwrlKY1ifyynSvWyh1D5ofYrdhKvY2wp/fz7x4rfpFpluDPJ
	E5hZ8Dku2bhA2PtkqdyDBuSiT2zBjDbPS7B4AFp2YOzI+9FMbRzDQ18GPlQvZf/m
	kh+NjjBRtL6wNJarWhDo4mDuVJNhlnQzqJfn/BAHLSWgtTtEvtUqF1ALccxiDD0A
	81UevLP1r2mAeIBMmpzjTk7M0j5eF8Rv0G2KeNDa+pn6n3kITbKAn5w8na9kokpO
	mY2x2g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhh5y1ce8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 14:53:41 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51bfe3fa93bso211307481cf.2
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 07:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784559220; x=1785164020; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=L0DjVqpTkuQJo94lpey+cOup2FTxJcwHBbDODt+Htk0=;
        b=dzF/v1rBVpNCEXI0BCohhCfo8I6wmpfp7MMx0f6d0rZKfP46N6+dBYpHQsRZyw+yod
         UenWX1Jx7FanF6la7qD0uDl28XLITeb8OvJuR1udUONfJok1BSVPVg7ovDePcCIahDIg
         OGKIxVM4j3muzlcgCvL0OFF6gvkDHU0rQryb+LIV0m7SdCLJ1ASyPRr09LVnTgVqRvkm
         X7I2e+EUwDKYGjijOv9AqFeWBGE1Fg8TYcCo0kNjfaAMIeCVgjPaFcb8ulVSVl+aMG01
         eZla/sHh/V2DQHby4KatW/P4nRAjjt0AlsAgORibq8SukkjCRQRjNV9tjG6G2HBQsgvm
         6ghg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784559220; x=1785164020;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=L0DjVqpTkuQJo94lpey+cOup2FTxJcwHBbDODt+Htk0=;
        b=RyVE1raN9Km3rFTcRJLxLnLjn5bc83lAsLAvs4S0uQfcplS9lJhbyUq8vkyR6qAyam
         Qw1i19CH0iHMC+rU1Ij4eOcNZo+fUSCAimu1WqpTg2ppBilKu9W1Nq0oEQcFDiBgVjM/
         3HJrF2lgExAzipHYrh7ZTSe1qe/D6YeB9dj2NNMGqbvP4fJtFfhEXNmdHTpyF4EaW5Ml
         L9jMCWPPeDkpKpAC6IDGYANSaZBqOl8DLTj2rhfqKRE9CPQtkOmlG0mdrLZ+q4lbOdxt
         A2DFocdLwNaGfHxLQqav8DWXwsNNRbX4GpvqVJVbnJTqamyUXMVg4ZabQJ1OeQMsmHEi
         Nyow==
X-Forwarded-Encrypted: i=1; AHgh+RqVP1fM5OMbY59I2JWIeOAZlN/BO/aisx5EEZKMLtX6lnRGNLZDqKcl6kbXVt1+xJX39xIO/363TmE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHWpF6tYw3qVC9qX0gEJ47yTogEsTkxy8ezM8HkFvfFT+zVRN1
	TApG2juc2JLK7Hme9xt8Cu60JiH3Pvwen5LpT20wOoHInTXgUErJE3+L8UU0TwwnTQdJGXnchZZ
	Oz54h+DrXnvmqgccAs7bc7D9zft3UgX8zFea/zyhzpU55bAt5XZoDsvE4HScw+e/hszCs
X-Gm-Gg: AfdE7cljKJ3lbsB0dAmBlBybS2oXGD0wQ1eUp570QZwQ4QAtdfRfQ27WP0P/5xZeF7l
	8B+u81Bz75KsAM/lNRhiMKdY3StiaTipwPBw7KPMM+VZE41TlvD4tANLRNSkFwod1SFxaMqretv
	If6V2xbRSLscjYXL2mhNydBc+E6N+3xYlO2oevhC3MeMLRQ1CO2YU8wIcXeRPmO7yGxG5ZzmyPz
	C+9dLP9HPpmAjtrkwXOZl4dHEDamKhZBypVfpQ0pMuSCjVHd+zL+BHbt5EWxHKERzhMNwL3hSQf
	ox7+nVNFxkF6rWJUp0+G4fAfV8Gv78Lwod5Cm2MPHeqWBruJ5Jy+qX2yc/Rn2/jWxv/xdAmLgvc
	yYbSOhVouAUtLqIdz2dRU3K6iy3/0g8n2sTEi9M8PH1cwfgY6sA0qGEPh4LDYTFIlbgrLvLzjfn
	+RMhKu47dJ2v7K8wtHAVkOtBhm22SvL+2awbMAClN+oKGNBMGwkHQ=
X-Received: by 2002:a05:622a:1f91:b0:516:e152:7a59 with SMTP id d75a77b69052e-5213e08256bmr137157361cf.42.1784559220297;
        Mon, 20 Jul 2026 07:53:40 -0700 (PDT)
X-Received: by 2002:a05:622a:1f91:b0:516:e152:7a59 with SMTP id d75a77b69052e-5213e08256bmr137156911cf.42.1784559219566;
        Mon, 20 Jul 2026 07:53:39 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:751c:d61c:c91:60dd])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69e7000c3e2sm4800215a12.30.2026.07.20.07.53.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:53:37 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 20 Jul 2026 16:53:32 +0200
Subject: [PATCH v4 3/4] phy: qcom: qmp-usb-legacy: Fix possible NULL-deref
 on early runtime suspend
MIME-Version: 1.0
Message-Id: <20260720-qcom-usb-phy-fix-null-v4-3-4d2a0f06d53a@oss.qualcomm.com>
References: <20260720-qcom-usb-phy-fix-null-v4-0-4d2a0f06d53a@oss.qualcomm.com>
In-Reply-To: <20260720-qcom-usb-phy-fix-null-v4-0-4d2a0f06d53a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE2NSBTYWx0ZWRfXz45cjmDtZRT3
 md6xPp+gFqEhDVD2bLbsFl5U0G5f2GTZVreusAFPCUWmrP/Onl6a07VYO3ffjbq702K4vkM7Qa9
 pPTYFSDj4cNv8ZLQcVzl0Q6zgIpbVyA=
X-Proofpoint-GUID: 33oClbeTHC9o4pubaPHxXZHqemOAi7lX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE2NSBTYWx0ZWRfX1AI+oUho8MV5
 OwlFyI28A91v41bB9+7eBM8A2lMOKbAnbIuaSXY8ZTol7Zy205wnaS2p1Z6r7VCxEaab7UAc6Uk
 I4kG5pCckTfR/CKHelc3zYoJXC60rHZoXsWcGQV+gE8Ebjv0XdU05fOCxmHUCdw2TpH7ZCSkItG
 DARpJdG9J1elKSqioTDqcPPGL8nalHaZzw0rDgCG0RlhSXXZDERCri3FeL0KcBhcxVnjbMfXads
 Kh441XCb8UePYxpi2ZW957QEzVK4++ZYcO7O9HnsrmyunyLVbqo0bbQCoBS5/6FQaXbN1iqdihC
 4l6CygDJfIPcSGuPImDHwPl8toRd+cdwPYxZ51IfdgzxVWmqezrARa6MwSGOyCwF6Z0K/fhwdbe
 ytgRIeZ41WK5PFMvS19DCa5ZkDz5n5zllSCfOYniCHoLvZAGw15wy0OHbcJ3lmAnoDrYoM0ExsY
 RP22smEwoKmFEFpp53g==
X-Proofpoint-ORIG-GUID: 33oClbeTHC9o4pubaPHxXZHqemOAi7lX
X-Authority-Analysis: v=2.4 cv=f/x4wuyM c=1 sm=1 tr=0 ts=6a5e3675 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=PcYcMbZi39MCwOMHHM8A:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_075342_256853_7C96FC23 
X-CRM114-Status: GOOD (  16.77  )
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

Runtime PM has to be enabled before creating the PHY, since phy_create()
only enables runtime PM on the PHY device if it is already enabled on
this parent device. However, the runtime suspend/resume callbacks
dereference the qmp->phy pointer, which is only assigned by
devm_phy_create(), later in probe:
        `if (!qmp->phy->init_count) {`

There is thus a small window where the callback may run after
pm_runtime_enable() but before qmp->phy is set, dereferencing a NULL
pointer. This can also happen if user re-enables runtime-pm via the
sysfs attribute before qmp phy is initialized.

Take a runtime PM usage reference with pm_runtime_get_noresume() before
enabling runtime PM and release it once qmp->phy has been created, so
that no runtime suspend can run while the phy pointer is still
uninitialized.

Fixes: e464a3180a43 ("phy: qcom-qmp-usb: split off the legacy USB+dp_com support")
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index 8bf951b0490cfd811635df8940de1b789e21b46c..8b91eec0b5eee0c76b64e2c2b7a15f0169ce4b09 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -1277,10 +1277,16 @@ static int qmp_usb_legacy_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	/*
+	 * Enable runtime PM before creating the PHY, phy_create() only enables
+	 * it on the PHY device if already enabled on the parent. Hold a usage
+	 * reference so callbacks cannot run before qmp->phy is assigned.
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
@@ -1289,23 +1295,27 @@ static int qmp_usb_legacy_probe(struct platform_device *pdev)
 
 	ret = phy_pipe_clk_register(qmp, np);
 	if (ret)
-		goto err_node_put;
+		goto err_pm_put;
 
 	qmp->phy = devm_phy_create(dev, np, &qmp_usb_legacy_phy_ops);
 	if (IS_ERR(qmp->phy)) {
 		ret = PTR_ERR(qmp->phy);
 		dev_err(dev, "failed to create PHY: %d\n", ret);
-		goto err_node_put;
+		goto err_pm_put;
 	}
 
 	phy_set_drvdata(qmp->phy, qmp);
 
+	pm_runtime_put(dev);
+
 	of_node_put(np);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 
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
