Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60D2ED262B5
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 14:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAuPU4bcf+8cHV/+b5ytzNzCr2G3eJ7YROdoAFLgBRI=; b=iZlhArYnqfXIgp
	odNTVoCF6DogNosHaLqnzMAQ48VybN2fox10Igfe9rPxK01vz9qs037DsoDgf8XkECMCB3m2GkofX
	mMju0TYUn0jYX+A9hktyb3SrifVHLrXiOAqK58OPdxUxnjArylomJm/jVs0D5ORGhL+QGINwYeflG
	SewM/YWyVZlRKOLIkKjbEVWGKEWQO/Ene3KuRCH62Rvz+AxrRxMdYOc7tfTIFZGqfIGxrW4DygWFc
	FQruXb+iJYOOMMv7H+m/I81ofkQ2mqdDYMbvonT8bex74efYpauk0dYI/JEJCGlDcG+ZXuX4+N2eI
	1t1oxR6ezDLETOmDtlTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZCW-00000005be5-0OEv;
	Wed, 21 Jan 2026 14:28:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZCS-00000005bar-2tkK
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 14:28:50 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9enOU3991440
	for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:28:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Gn04+KMozYi
	tSvw6r/mjK+emebzFiPF0P7Y1beA9hK0=; b=Zwp9SkXA6/ebpK5Sae41O7hDQVF
	oBO4gaNtyWvZyocs1TgijQ7ysiq+Q2FZZeIaT9heVw45aEvk+8pOHhpCbXKAdEGD
	VFecwnWW3RUqSsnkedO7sJaWI0baPu4LIgQHJS2IoYXHPRQ6AMCVH/w2oL8F+PLf
	g+ACpjPQmjR6J8TE8fDo+7JpJP+2cQmiqcawZv8YwSC3ZqDoqjk0jW722P26ZqX7
	JxuBG3Es6KoLD85giRg4ks6kFmG2It/sWRenYge1zh7MDJuFvE6WH/4pW2ySf1Wo
	DyYlTrMCBttHNfDGtiogQnvM+e00KSiAjcEZEZmYDz6fBSsw5y0f2FkDUDw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btpm42guu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:28:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a289856eso312106485a.0
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 06:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769005727; x=1769610527; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gn04+KMozYitSvw6r/mjK+emebzFiPF0P7Y1beA9hK0=;
        b=KTF/wvYoCzwNrmNg88VrCVA8tljpLZfgXBPYd777kdOVvmoymTIJJz8ygNdSP6Nua9
         RhwQGuqHOG8Ylmssb9xIUu/LOaIB9BNRQjG7lVQiQCEpSVSwYj5ABouHJZeV1mr8REka
         8JXtFn1FriI5mLlsLukhl2Z1qSDpCSqIO9ZAuC2Z4QZvC8yv2+xyUXzqCMCZvcr5oZ7q
         12MP4Y5xy/Gh1IOIdsYWkyFRI5LWw+eADgXBvftlA+c5dULOAuHvwu/IJzWNd6c1Oy+G
         IHwMXf97LFA/ds9iD5qinHk8u6IdvVCDK3jS9CP/xj/4tcOSUsi9v2SfFoRTAGNxQfSc
         Mhhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769005727; x=1769610527;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Gn04+KMozYitSvw6r/mjK+emebzFiPF0P7Y1beA9hK0=;
        b=Kd/MSYpYeg1elKaHuv46rDItDw9xI8t06O8ipcw+nogDnrVZ4vSa6wvx2prUwJ7GRQ
         gl1zrQLDCmoBGgNX2jFLQnCEI5QbZC3I8A3jeAHhQzXqtEso7K61wCpu7SONErs48cDj
         D4YD1N/NHXCRCrog70PdqkrRfKWVyjtQhK8UESicCbwVnMtj6PU5CoorCJtN3So1aL/F
         GqLZ/Kl1BUWLq1+A4WY7sQy/Nf+DKY+VidcxRdiP1dauRcQW8Gi5DDtAXRN716du48gk
         rFJEkTgesiTXMLOcARukwmQ/XbZiX05tBTOTs8yyNFBEyQ58ptFKl4fk3xX8NsBuuH2x
         OCKA==
X-Forwarded-Encrypted: i=1; AJvYcCUoDDWdZJxCFeBzei3UOYTgxOLro/K24hlFvfDoLIZMbyKDujo9Qg/t45AQR3nF+0NHb32Oz+MHyDc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yypzcyss959qT/XubxIFXAL04Oc/cc9DleBV4GDBijzOonWGNV7
	Ki3ot8HvUcrWJGPa0bkcpWt4lrE0kdE0Fp5tjkejwiJ1cQFI+s2vNSbyCKKBQguArxxpFU67Fjc
	Asp7YLaxLffIQZOClNQtJ9i6jF6n6RwfLizhFGlv/fiM0qDFpICemFbGJj+hsgCJXwc9N
X-Gm-Gg: AZuq6aJ0hdgXArIE5cGolAU40kaWAZpUqpv7cY+JYqzBdSC5rn1lWSiIFWUtH2QfvG+
	lSNgS3uBYXt/6NVEWZP48pyqzQg9KoS63DJ8oI3CddltUXpQiSBZxaagwt85oZMCINxq8M6+AZ9
	0A29vg2S1Ip41NQwaoFrEkU7KWg/xC9isVETzu1oSsMptcYGs0oajT6dpTNpeB+PQsWFBO/1MQa
	Lkle67FPEX03hMYu3TFPwuaMBU+F33BEpszSXCRjzHBBHA7msyGlO5H7ZYiUqKYSWMMGBlWzBQ/
	kzFiMBSgOUtZDQdcOHU/LwwntS5/GGSSYS/GIZxjqztFDWVWPNio6YVBaiQK/SU5aCHsqy9DHzq
	YsQYEci0pNGIl/3JliCNfcxFFLtakHNXufqpOejIOoqx41aQrsOOLtnw0BuyU1PkPHOsML6d+3m
	EXe1v0
X-Received: by 2002:a05:620a:4606:b0:8a3:a42e:6e14 with SMTP id af79cd13be357-8c589b9706emr2839654285a.10.1769005726808;
        Wed, 21 Jan 2026 06:28:46 -0800 (PST)
X-Received: by 2002:a05:620a:4606:b0:8a3:a42e:6e14 with SMTP id af79cd13be357-8c589b9706emr2839650685a.10.1769005726294;
        Wed, 21 Jan 2026 06:28:46 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a0d:3344:10b3:c488:b09f:b54c:1120:95f0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435996540cesm6098180f8f.43.2026.01.21.06.28.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 06:28:45 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v2 6/6] phy: qcom: snps-femto-v2: Fix possible NULL-deref on early runtime suspend
Date: Wed, 21 Jan 2026 15:28:27 +0100
Message-Id: <20260121142827.2583-7-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=Jv38bc4C c=1 sm=1 tr=0 ts=6970e29f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=GnikDSHSz1V4xWV9RsQA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: _7oE4I-qow_i8s2LlL_gMOfoUcFOj1q-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDEyMiBTYWx0ZWRfX7p1YiMQYbteG
 PxpTCeJX/LKM07gVEoAondMXYMlx4U6Or4Px4PcUmY1ni+2Hwlz/3O0c0JdEW4julcJPtCOQpuc
 0uAcMmfLDavEy2Tp1Rfk9NO/GPXONEQZMDwsx03AjiCRlbiMlpdW5jwLsnWOg+s1gP7dTsBE4TP
 FUoSw2pS0ls181AIzIZViMgGZs2nZatvN/1gniWwPs/aiqCv6YWksVrFj/p7/ySa+AQEvzeP5L5
 j4kZ1VwyJXdgUE4kFYul6qlxZW3zIm6/kZcpDJJwWph32k1MaQAVlY5sSXIRrQwbGscbSrKoJVK
 Qawb0ASSosf9JtcI2Olgn7BU3+24rHbuDv4N2c5iZegFRljoZ3ECA3wuQerCU3GbYOKQSli6qWt
 OuP8S6UYNf9LqM2Ptzif6vj5Sxo7QkSD+8O6QX81VsYj9GTQZRhjgK0PEYjmm0TMtW3ALXWMaGv
 MjyAJOUZjbD6zvXJRIQ==
X-Proofpoint-ORIG-GUID: _7oE4I-qow_i8s2LlL_gMOfoUcFOj1q-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_062848_834361_3DE1A5A2 
X-CRM114-Status: GOOD (  14.92  )
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

Enabling runtime PM before attaching the hsphy instance as driver data
can lead to a NULL pointer dereference in runtime PM callbacks that
expect valid driver data. There is a small window where the suspend
callback may run after PM runtime enabling and before runtime forbid.

Attach the hsphy instance as driver data before enabling runtime PM to
prevent NULL pointer dereference in runtime PM callbacks.

Reorder pm_runtime_enable() and pm_runtime_forbid() to prevent a
short window where an unnecessary runtime suspend can occur.

Use the devres-managed version to ensure PM runtime is symmetrically
disabled during driver removal for proper cleanup.

Fixes: 0d75f508a9d5 ("phy: qcom-snps: Add runtime suspend and resume handlers")
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index eb0b0f61d98e..d1288a6c202e 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -599,13 +599,17 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, ret,
 				     "failed to get regulator supplies\n");
 
-	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
+	dev_set_drvdata(dev, hsphy);
+
 	/*
-	 * Prevent runtime pm from being ON by default. Users can enable
-	 * it using power/control in sysfs.
+	 * Enable runtime PM support, but forbid it by default.
+	 * Users can allow it again via the power/control attribute in sysfs.
 	 */
+	pm_runtime_set_active(dev);
 	pm_runtime_forbid(dev);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
 
 	generic_phy = devm_phy_create(dev, NULL, &qcom_snps_hsphy_gen_ops);
 	if (IS_ERR(generic_phy)) {
@@ -615,15 +619,12 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 	}
 	hsphy->phy = generic_phy;
 
-	dev_set_drvdata(dev, hsphy);
 	phy_set_drvdata(generic_phy, hsphy);
 	qcom_snps_hsphy_read_override_param_seq(dev);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (!IS_ERR(phy_provider))
 		dev_dbg(dev, "Registered Qcom-SNPS HS phy\n");
-	else
-		pm_runtime_disable(dev);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
