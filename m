Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44071C61DD3
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JiA6PBOyC72iJq+bM+ZEGc0j+OzO9QGjn+PEwQFPBMk=; b=hgdXSk7wf7zHL6
	FH+I2h9C6lgUm5I5MVnZwZ9LxJ+bRngqTaTf5kGvPjwXkLiDUcB+u1A9CKZRM1RkPEyI8sGcJNyBS
	dypwM5kcumH9Q48UVY0b7Fp936GxFEl0Zw4XowyNZPdfD6rko9VGurdwlKdaq86pD9Nedl1KBaJJO
	xBbSFe/dsYC4tUUbGtacIljC+2Sf8eAKZTBT+B8z9fUW83fDZZjFpI9Ao+vO7bibsQLivBKYaECSm
	0RerRtHx7Yuu/xql3nsPtGxsmklODaqj9asXl4AVyTq8GKUQsCwWHLlNglVeywTHthSSyUzqNg3Vt
	AedpJqBQWu21X1Lfp+5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxDR-00000005wZR-43fq;
	Fri, 28 Aug 2026 14:05:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxDP-00000005wYl-3gzz
	for linux-phy@bombadil.infradead.org;
	Fri, 28 Aug 2026 14:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=jdhrzVC+BSUYhhqWL5aZLvycJ6pbOt/WUM7DdLQllPo=; b=jDWiMIZ5/IlE3Ttcs79uHBsOVo
	UckCVRkvHPF7Pe+P+b6IOskFVh6hadj+Q8J3ha78jT3KkQoJoMY8EtMSDRseXQY++/rzqdVCYbNYE
	k8jphJlY1NpwEUktJvciHbYdNzpUSthbvVpi2chKvSXr3PZ/t0KLbkJc2VIPus90z3sLLrVnI7Qyt
	Nye2jZHBhT/EDANsiELVt49XBFCnUe8nAJJ5UzFyPgMBQZq8f6PVNPcgphsxXz+1e9082o8bYT9qw
	cHei4QXPcRmwM/j/eBFHMSr9yIEXdoYX/jtD3mkKjfxO1tdJ9klIwlDV1lezg14HOsI4Df5bd1Iee
	H99KS2dw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wzxDM-00000008Its-2i7X
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:05:54 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SDkikV2647251
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jdhrzVC+BSUYhhqWL5aZLvycJ6pbOt/WUM7DdLQllPo=; b=C6zd4Q2VGmRd2gHZ
	enKHhB574O0Vx22uspUq2ny/Ba1GhjzRrqvYWqOmyIokUhuMWmHlrn6b2qIfZ6nL
	cqu50hSBeBwVAOGUiTkH64A0sMIMuS6lpY1tVBY3HrUS2a0rxnkTZe9PidxaF34o
	DIzjtdma4N0Uvd0U3zPB39LPO6UEtiCWxDGmt/TohINZC6vKbVS+MQnKiopKfDBM
	2/zV8GnWWtLGSSeSjXkqqntxR3YVpf+NK0IBDw9IBftNpBckOO610/SdOg5Ig2It
	LU6pHUEKtkKEwH5qMCtkeBiUVfMuSOnaVDityolZYCXTHgMtB07cO8QaSoUw+m2C
	JpqcqA==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb6h01acc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:50 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-97c49f740acso81650241.0
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 07:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787925950; x=1788530750; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jdhrzVC+BSUYhhqWL5aZLvycJ6pbOt/WUM7DdLQllPo=;
        b=kUDEXclX9OxKojrXqlxEwtOS7uG+3RVEP9hm7or3lxhOO1lZry1JFuOeHlp/JDoWzM
         5rGd+sM/m02KBGZ0iX/Fx/dEG24VpdjKgmarRVtcwk2rAbtdX0FEiMqAsvXxuqktoBbc
         RUiJTEygSLaxhT7XdYZ0V2woWjyhBAJXN0NcoxHm5/DOXCBWnnunnQJeKZak+5GLEpap
         rz5PCzxY17jwa3rVQgIEN4lyjXwb7regVbwfWuhfLHnXJu/jtSyi/CYgD0O5tWFF/ml6
         MF+aVM1karIaB2rq+45sRPC998C17wXPDCvV4xEGHXtwRNvMsS11ZAoBukmYAAIX70Jr
         o0XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787925950; x=1788530750;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jdhrzVC+BSUYhhqWL5aZLvycJ6pbOt/WUM7DdLQllPo=;
        b=nklEya5MUa1RaCslUlHhGEMfCauyMvI3w0l4DCZyec+OLtPSj5CILFMDnUKg4GMvke
         p9tbyPF9jMAHyqARiJtvz7Rod5J0a7sw7a6dMADWcKMGcXj/SiCU4PQWQ+khasT++aiq
         sSb9RaympIuHVx51RPrB6YCx8Cp2o+D7UgAKOQTsw/QMgYpGNwBilkfutmKD3kZV9FDF
         gv6pTRBT6+Qg1dozmjvCbiPTPPRXGH/m2oQvZtnFwBscA4SUQ8U0TfJ8pCeeD4XsC2Fu
         bqvqrNa2chwPBhUx0EVkY79r/9KXnDmzlw0rQvSnlVkdbAIIu2+Rnx1AosEG1OI0ZAP8
         3B7w==
X-Forwarded-Encrypted: i=1; AHgh+RoL/1f6bYnDz/EgZAcy1IuPgMlwngLQIhPsY1Lyxr8+fBaQ/w7+r/U4GNqXnsC96sFJNIgr6kgT34o=@lists.infradead.org
X-Gm-Message-State: AFuF++k+xKaD51351CyzjnUqLGkw5ajAeVdCr51zpQ9UETdfM+7+yKBb
	jFbocvu5MmPOMeHsNnVt5fAZtfYCLtkGBv5P6m4ziUHC2rLJZ20Z0BVYgOc/RRdHJPwxnfSLtCk
	pIGP45Q8cDsemCFYODow9nhmSdqhWkF8EL9gx0g9eVUAlf9lR2rMygAYc+5mjPndYZyeWqCV9y0
	ki
X-Gm-Gg: AR+sD12fDEHQTYazbVw57juVxdDx22zCrQvzf9bEyFV/wx67kKGmIfqm0RJadFNYw9X
	hrKF7C94TyJvPnHwS76KikgmEhDwrEALbgdmCPKji1MTYstFRcR5f8guR8G/AJBy83QSPrtNNxW
	mKjHCmswrqf5s5209R8kb/EXlg1T9v7mjSJ6Jycqk4NE9N1FTvxP8kOBTBL3eyZzfLiCsbo0t3h
	a+g0cC2cga6tMljjVTvcncWyNYQEaFc+I0rbHz83q61X9MASWAnjmwWoR9F08VdxNf0nEs+XHdA
	EhpY6HFJQEQm0kHgmEwxTNrsZM33gY70HcIHWKiIK9y1dCd7vQgedJhL/zoR54Y8aTdWDvZE6wc
	srweQ0kBYBfFzzxbtCUbAhPg=
X-Received: by 2002:a05:6102:2c82:b0:785:76cd:ce88 with SMTP id ada2fe7eead31-785962b3bbbmr2102318137.3.1787925949701;
        Fri, 28 Aug 2026 07:05:49 -0700 (PDT)
X-Received: by 2002:a05:6102:2c82:b0:785:76cd:ce88 with SMTP id ada2fe7eead31-785962b3bbbmr2102270137.3.1787925949159;
        Fri, 28 Aug 2026 07:05:49 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482fbb20122sm3908633f8f.20.2026.08.28.07.05.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 07:05:48 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 16:05:06 +0200
Subject: [PATCH RFC/DO NOT MERGE 08/12] drm/msm/hdmi: Add support for PM
 OPP table
MIME-Version: 1.0
Message-Id: <20260828-drm-msm-hdmi-eliza-v1-8-67843277de17@oss.qualcomm.com>
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2291;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=s+Nis8MuGrrRzdnf1zzhw5BzoyVlhTkXBQ6LijklpUU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqkZWftyhgGPop86RTp5yjaMiBi6zJ84Nk6QwQP
 L25IU3YncqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCapGVnwAKCRDBN2bmhouD
 13HSD/9qtzLXgsXADGdJyZNDKxtY3kCVyItZ5LdngLcsz3tRqh3VkBw/ZQbR2In99azFCMsr74n
 xIApgxejd7thH2CINMUr4PST/uzWZmXHU1YdngZy0A/UUnR4j761zGMUZUlwIGNUyKsF/onb0Y+
 Zf3/t1kmXoJhaIerSpgt0eAJVXr/hTckHwKuVKB4FrqEzrZQeHyUzzhxU7/Mm0ppNIoFiaBK7A/
 40nwyWl/GUkQSdJAMSgudUoXEkOB2FKMIKTexFQAsBaLFhUtpS9BiD1lyLsUgj/WNQmdzgMWm2b
 M0EFEvvl/CtKQ5k1z6+SVojT3vrQVYPbLzHvwHIloQ/u+zsJFIElMAadz6/+FkWhmjNNopn2W6M
 LpGuyXp4qWq0Ma72dlrw0wNU1bdvuyTxcspqD5TJzkw+C4uB2qWszQcCsz7217xRX5Fq+1zU0un
 UHv/lg3ZbaPkJhgWy3/37x+KJgW6UvzL62vejiFkRq2h3PfWvsmORvG7trzL8OcByQNi9holWjc
 BqSdYkMj4XnJ3FEKpJE5kX/kIy8xrdC7j3mtK0n85JrdE6T44gksOAgE9t3nGve6836VVQTS3N4
 kDXA3IMfBTkZQ+U+YmtGaEIasfEoDkIeXPpJytAzFyWuqSDD5g7qZKGOEc4a+k8gRJ3l8JcHw7c
 t9/3G/x/K4As8TQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: bbl3Q3OjhAayaYTDxjNbOzK0lX31z9Mz
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX0I/xe8OiUXxT
 ZkXJ+tEJ2WOeEPNzIV33AZ8ZZ7yHQGQxzPDc03Bbt6rW5p/4fO0uC3iBdTh/e9xoxbq61rjonTq
 YAdsWvp0rUZK5VHFoMRgNELahdL6KAw=
X-Authority-Analysis: v=2.4 cv=KPpqylFo c=1 sm=1 tr=0 ts=6a9195be cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=a2cU2-lBnuBmNLb9j5sA:9 a=QEXdDO2ut3YA:10
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-ORIG-GUID: bbl3Q3OjhAayaYTDxjNbOzK0lX31z9Mz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX063d/nKnjoui
 VT3bEtxbSiA3gtuDXUNLgee4ZFxDhfOtpVwyvrfnRqvIX326OrM1EgcHSmEZoj9wAovM7VffcA/
 URNH9c5PAjDFwZW+fD1k+XooP4EAbImb6LAAJVItRAByXQl+Dc7RzkV7v1QQ4h6ibRSj0vpRkIx
 0rKkWIYA50vPvyyjhswMlgpbs8LoFWaACcUjaRlvdTnTAYZRJRoaijIildN1fkPuH5za1D4VxEc
 RhaHXPQBEG59iHAixmhkgv+f63VffsaDeUb4WEbQXIw/3h1jD1EzuRYyOmuJfsKOEwlinhALZBd
 rFkszAAu/aZHGMVTMYGjaZs53bZioxzcMfiLKOg2bA5b2wIeUQp9/d1f/c3gLvJl/MP6S6UbS2A
 /JoH4MIjH7Tg9mmktvEUcbmGuqo9bOhMgibelrITVe9xmN9f1yhBO7GB6Yj+XBu43EO7iUYvsi9
 9YJcqFVVteSzUbtOEaA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_04,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 spamscore=0 adultscore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608280122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_150553_051386_91C672BF 
X-CRM114-Status: GOOD (  15.83  )
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

Allow scaling the domain rails with PM OPP, which uses the pixclock
("extp").  This allows proper votes depending on requested HDMI pixel
rate.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c        |  8 ++++++++
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c | 10 +++++++---
 2 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index 474006084633..c46f30063f14 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -368,6 +368,14 @@ static int msm_hdmi_dev_probe(struct platform_device *pdev)
 		goto err_put_bridge;
 	}
 
+	ret = devm_pm_opp_set_clkname(dev, "extp");
+	if (ret)
+		return ret;
+
+	ret = devm_pm_opp_of_add_table(dev);
+	if (ret && ret != -ENODEV)
+		return dev_err_probe(dev, ret, "invalid OPP table in device tree\n");
+
 	if (!hdmi->hpd_gpiod)
 		DBG("failed to get HPD gpio");
 
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index d0e3b27644fe..621083a97b37 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/delay.h>
+#include <linux/pm_opp.h>
 #include <drm/drm_bridge_connector.h>
 #include <drm/drm_edid.h>
 #include <drm/display/drm_hdmi_helper.h>
@@ -30,9 +31,10 @@ static void msm_hdmi_clk_prepare(struct drm_bridge *bridge)
 
 	if (hdmi->extp_clk) {
 		DBG("pixclock: %lu", hdmi->pixclock);
-		ret = clk_set_rate(hdmi->extp_clk, hdmi->pixclock);
+
+		ret = dev_pm_opp_set_rate(&hdmi->pdev->dev, hdmi->pixclock);
 		if (ret)
-			DRM_DEV_ERROR(dev->dev, "failed to set extp clk rate: %d\n", ret);
+			DRM_DEV_ERROR(dev->dev, "failed to set OPP rate: %d\n", ret);
 
 		ret = clk_prepare_enable(hdmi->extp_clk);
 		if (ret)
@@ -58,8 +60,10 @@ static void msm_hdmi_clk_unprepare(struct drm_bridge *bridge)
 	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
 	struct hdmi *hdmi = hdmi_bridge->hdmi;
 
-	if (hdmi->extp_clk)
+	if (hdmi->extp_clk) {
 		clk_disable_unprepare(hdmi->extp_clk);
+		dev_pm_opp_set_rate(&hdmi->pdev->dev, 0);
+	}
 }
 
 #define AVI_IFRAME_LINE_NUMBER 1

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
