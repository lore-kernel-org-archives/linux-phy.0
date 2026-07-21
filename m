Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F232C4451C
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 13:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1FSoeJ5NUcqTpN9AiRrOyN1gGzQNFuKtgZ1Dv5Yluw=; b=f4SWqMYsjyWegK
	wlIZgRINARubyepk70ZTLQylVlNAkQW4ExJkWdMOza10iQ5ZZ1C29oK3YU1JiUxY/Sjn6i38Px3F7
	n6iThSlSKAG5R5UV02xdxvumM8JtCgekulM3+B3WMv9EjmEeLFz3Er+Yrv7ljbsSpl3oAEp6FZuae
	ef16C857hXbmOMxp/x2xcYx6kq6t/RwWZNbPQKhXfaWhBFJdtDx1eRCHdmNYBpgRr9sDwN5cbhCGQ
	eion4DugSua5c9/FVyer2c/rn4rNrlhZ+ctBswIY8bOTw64iKD5uGDucEW2xhAScZo/30mKGFOqtz
	7uIePrQ2gJS/38SlEw+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAAc-00000009U6c-30Ra;
	Tue, 21 Jul 2026 13:06:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAAa-00000009U5u-18N1
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 13:06:01 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LARBRS1134588
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 13:06:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+31G3iNyhTEkeua3PfRYEfavCmIUVylJgJKWF0Z+7JU=; b=ZTjFUZZA0SBpYMNR
	HFOBjb8j4jgjl38hdsS+/YUwxVvgoYksr3E4Q1QHd5TUuhIeEEaCt8u/HI28bJzp
	kDVKZfbRmzkQdGSdX6+xKtibdVgenuNfWGW720Ewsfkgv86KH6STmPVPe5Zr7RR8
	lno5SWG6Nb8wGZoHFWrVjGIAmyKDkgIM3R8ozYifxgW/JeNHo2kTPRnHeXoHNDsj
	NtKXc9hPiLgJEHs61RFXeF9bBvDMNQxz6CR5jpp7etYUUM7FmtkerN+q5h6S/G58
	b06fbuoKFmjqpAUQVIKoZ3g12CXi9YzewDw2/H4wPojZJLdME6a/ZfaVpQIJgvEs
	Xqxf7Q==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fj0as2v29-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 13:05:59 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-744c204396cso8602924137.2
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 06:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784639159; x=1785243959; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+31G3iNyhTEkeua3PfRYEfavCmIUVylJgJKWF0Z+7JU=;
        b=kT+m2URImVEVQjKF6Tybi0txiQJSISPbS7uKEayTsNccQ75b6cd8FYXJBhMzPr3eFA
         Ljb1r2UDilF2b7QgbttQaxzMR5DEc0ClUgWjNQ+5aJvl6ssuPaUu4o0osah/uxZdQbBz
         oh2fqK+pJXgpl/MHCUR+PPTI+FNrIW8etyn8Z0uGiKJv1bp9Jn8Ky6ZagC49GU4MYdLF
         ssGQxK6atusy0F4Grw5fN6k3VqwTolWK3m3fOmQHhJvjocN6KrTdxULBIOAFuAp94gEn
         w30R02oICkMRjsuE6mkTJrzHycdMZF8vDpQL13id2otg9zDGllYQUvK145SfmD7f8/Zo
         B81w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784639159; x=1785243959;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+31G3iNyhTEkeua3PfRYEfavCmIUVylJgJKWF0Z+7JU=;
        b=Z1i4pbwPVsIAC7gx8pj4l+0YeCSxWGxu9DyXqnCHaoGYaf9JQVhLZ17Fz+jgh1lQUB
         RGk7qHwSOfZiWMORal1xSayxlVpyqlNNt44qcYzmAYTNCWufpXEEYl8dOyU3rWY+N5Fo
         JXbZZ+sLZKXofZp1YXsfg/LjWkThDUOXt5v/kgVQbGry/ODugOetq6e9+XvtJQXfE2yl
         2+rihqGzcJFEl335I57hNuwQGGNZB8qcR1rxZL1O40n5+ld1CiqSvBG9aYOAKnkWzGwA
         LwteVlfg4sz3+OqbJtpQrLK0ceNUQBWyZh43u6AKgqo47q2ms7VxQanvhIbtqTwEo0pc
         pgLw==
X-Forwarded-Encrypted: i=1; AHgh+Ro02g7mOjGsSCd88g+CfBLFjZpHOMglODPPKSKSNf2FQrlFBpVXgnkd44TFzF/FWDqSZf1xsZca9aU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfVvyeagzlaq5zMHHVQHujSrN01+L3AKTyN4PlZOYPg68ctFEC
	56MHWzYaqmEfp9tIrOVikng0Wxf5DwBzpq+nghVxybODggpvTRV4q+qTH121n5lDT170ogLxMzt
	ks641Y49WYbyrIFkFr/Y++wtxUz8uzx17tk5CB2wstQzB6/oAQmGZzaQoif+JP0EYygKw
X-Gm-Gg: AR+sD13a6xfKenW03864xGhSVaYrWVkoYf8ys87A82MCWYEz9M32Q44zlNxQhDU23Nz
	6F+lU/INFvCMjNtPxlLCpbqirTmcKEUr8paMzt9Pv9BxOc2KkuL6s7PeL4r6P0qqSCRMfN0Kfjn
	sas8lum7KUpva8PVlEgFXXU72qXtIvPCkOtD1TYeM4CLoMYE7tzTF7H+6QLVIO8j59RaI7hNpDN
	3fMAajXlCv6/mFtRWf7vnsjEZO+TQlm0sbRHhtEy48/OCvjqGw6PfD/FyPaU2bqaMqkb+BgBQbv
	UUBljmQiI1LteSoGwi4nYhtynEqFblTNIRO4uT93O8KriK3lLIetOhca0l4x8g8LYqAnIWIi4cY
	dGSzLSx1H/oGx1dgAcgKhl2qP+elaP7H4Edo7D0JdkRUQiP/Wr7QuEdScvCl+W8AX0N4EAJTZRM
	XH2RS1589ApdWm8vMZUQd5wv6QkdlUEWh+Yiv1hQlPcB7YjhkzZB8=
X-Received: by 2002:a05:6102:1612:b0:6e7:5c89:3fc0 with SMTP id ada2fe7eead31-7475374957emr6867663137.25.1784639158768;
        Tue, 21 Jul 2026 06:05:58 -0700 (PDT)
X-Received: by 2002:a05:6102:1612:b0:6e7:5c89:3fc0 with SMTP id ada2fe7eead31-7475374957emr6867500137.25.1784639155104;
        Tue, 21 Jul 2026 06:05:55 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:751c:d61c:c91:60dd])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c17009ae04bsm591898066b.8.2026.07.21.06.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 06:05:54 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 21 Jul 2026 15:05:48 +0200
Subject: [PATCH v5 4/5] phy: qcom: qmp-usb-legacy: Prevent unnecessary PM
 runtime suspend at boot
MIME-Version: 1.0
Message-Id: <20260721-qcom-usb-phy-fix-null-v5-4-a181e2adbd2d@oss.qualcomm.com>
References: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
In-Reply-To: <20260721-qcom-usb-phy-fix-null-v5-0-a181e2adbd2d@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDEzOCBTYWx0ZWRfX86NvcVQTtF6c
 xq7l5AvbndKwjc3oJ9cIc3hOBCXLeHfMtDL6GEWzF9/dG8DoQRrcCcYYncniXPNDuOajU800USV
 luirb/AyViVqMD6idUDklGG1dZBmY4wwACF1DX6Y664KTLbjFwDkInuVybm0btZER/QP3BwLx7y
 KBkmQHgygE73R5FN7qviw2pm9R1f+45adZOIL2++smNwRAZas/jO2Wb8BFZm7hPlRigN9OLLdgK
 y3IxcFwMwXPenYq3boEF83E9mphgd4P8KyQeaH/J4BX6LRPXGXuQwuLlLUll43H4VvAD97fNKnV
 FQHm72nJAup1JTJyi1v+EISOOR3phGBn8e89L1vmBOzs/4JA0jOLI0CcnoFtVz55/AGC3gUhqoc
 c0bM6beIR2m5qzZt+s17jbYQeUItf5M4cCrwql+QZ6lyVNE2iCEZUYKGvATIrcsIqarwwCqi3JO
 ntoXVILVXzS1vSPO9ag==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDEzOCBTYWx0ZWRfX1SHuPIOEN/4u
 hOQwIY77cMrNBXNKlXhgXoMQxFDMp/os6ikl5uh4PMH7EOBgXgJ9TIfPnB/hOF7UQ5308DuTnxp
 S7BZvUyJozMpxTG2leri9Yc00dKCK6o=
X-Authority-Analysis: v=2.4 cv=DoFmPm/+ c=1 sm=1 tr=0 ts=6a5f6eb7 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=PcYcMbZi39MCwOMHHM8A:9 a=QEXdDO2ut3YA:10 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-GUID: 8GuC6euEa5dXoqOESzDdY_CgWPZ0tMXp
X-Proofpoint-ORIG-GUID: 8GuC6euEa5dXoqOESzDdY_CgWPZ0tMXp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_01,2026-07-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 suspectscore=0 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607210138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_060600_323569_9E69AEC5 
X-CRM114-Status: GOOD (  17.27  )
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
this parent device. This opens a small window where the device can be
runtime suspended after pm_runtime_enable() and before the later
pm_runtime_forbid(), causing an unnecessary suspend/resume cycle while
the PHY is not yet registered.

Take a runtime PM usage reference with pm_runtime_get_noresume() before
enabling runtime PM and release it once the PHY has been created to
prevent the device from being runtime suspended during that window.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index fc490589c8e4888770807a60170905a1c7610421..eb1826fb26f0868f7758245b0cbe1a0590fea9a3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -1285,10 +1285,16 @@ static int qmp_usb_legacy_probe(struct platform_device *pdev)
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
@@ -1297,23 +1303,27 @@ static int qmp_usb_legacy_probe(struct platform_device *pdev)
 
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
