Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B17D7606AD45
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 05:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VJ70O6BC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=nWAqQbDl;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=RWKAt9h/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=45RakgU8oqP97jhp/CYQLHjXXbwJBRnLuNq6UpqWClA=; b=VJ70O6BCTr/lErVtKlf2KWcIVn
	MHfgBaJqYv3XrsJ2BESmiyRqJoRBm9hZp1XD0wwM1PuqJphmnlGFBmo5UxO5xp7jmwvI8WlAXn2BD
	84z+myjVOVkjd+yEArjjO3k5HSgWBhWvF7E6rHiWBRkItbuDcxZNeK208FHHtEfDwnBZ2v5AKHBYq
	N8CQEz+X8tMBkyBVoRadFsNQkvhxEjMAINAdwMkvrzylH4X1Ktzsm8XkS6TebmHqfR1wWmLhRkrdZ
	sOV3yZHe/U94udDFDWNwtC+6DnFbKS1uUP8zRDMQpbC4CkcMh51FqFoEmetgeUiRFGNVUmt9h643s
	YJT85d1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvU-0000000BhOJ-1pbh;
	Fri, 13 Nov 2026 05:34:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvP-0000000BhMh-1euC
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 05:34:13 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD5762T1631347
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	42bCCNU/m7FK0fMb6qz7TXZO/W0QFWHC4JebWD14a9U=; b=nWAqQbDlmo+bpHw6
	6kKcxDeVelCwg8ZXGH7dq94SA6ysbO+KK1D24ljg7OtxvreSEUyzhLSeGoK1/njT
	Ihss6za9pwI/QexkKmpQdygMOKEcAd94EleyuSEQNNoBrJR9bn62Kl/GNpQLYWDX
	e+vekL6GV5CHvwiedvNhDCg0wYqoEGQMsqv6IPog35lAvC0VUUd02PEzUMMUSM9+
	iseLgm37WeB00kG+j4iqJSnoOongYwWW4aBCvOOE/jhQs8nT3LvVCyT0juIz8Rjb
	wc4XGUXwodUF1PWN0KSzJbSpi4THjxKd+GZzeVlG0edxIX+V8GRWQZqab82xClzZ
	HIcjqw==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hw9e1c8hf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:10 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-7026e2e80f0so800107eaf.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 21:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794548050; x=1795152850; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=42bCCNU/m7FK0fMb6qz7TXZO/W0QFWHC4JebWD14a9U=;
        b=RWKAt9h/fGCk2dCzaDiBxiHujq22P9i6HK77d5NXMr2I4Gu0GBoecqVWHHRogEfjhy
         I8h6BPEHQYqzcLSBzlh1CSoqTBKyqGxUbeipZI6uKqpU3MzL8SFrzx9LFQrtXhsREX0u
         N9dfaD0emWmaRMlgccW7rTnMJikp066ja/W8REaRxNdjcCLYcx+hg8ukMrb351PJ25ep
         kiGlcyYdLVgHN0DP2LaPJGhwMlo2+o7SmzeQRdxnQrXqr/4+yOkIuUTvwzKArVbrk602
         IxVEtOF/3aH2BxEOS9aANM0vkrFU4hpNCERw/5Uo7b7bXO94WUXeJZKMzn/SHkvupas+
         klLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794548050; x=1795152850;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=42bCCNU/m7FK0fMb6qz7TXZO/W0QFWHC4JebWD14a9U=;
        b=pvM0SFsREAsU7BxwF6ebNy5HxVBPcNDznM+N8Xn/wzLKMyY8reYlp9L2RrpHZP0GHc
         dSaU0wOhzNmlJepRV1SpbYYlUeSb68vsxafQIjiY6nB7XjtTMXJxVNxTikU7MU6+ga1D
         ZFqFi/U5snsiwU9AysCEgGp5FhzlEzUYWUkCpPSrg78WNADJ6rNJYanWr2XPZr/O/4V6
         tvGs5dyca2p0kqu9Y9mCqH/I5YY3EQoEsCBbjij0ACedCEG1NgzqTdwYRdmAkESuckOE
         4fRR+1UvbCDMGYGEZFpv4QSC4Aevl24vh+564Eqyms4PBEa995awMPPYTds4hBMbJANz
         CQVQ==
X-Gm-Message-State: APuU4Z++MvGnDJi0R75s7y7rHTwED4bamYH92PeDWAgRvMnehYVMCYrG
	DS+en7JwQPrWnx9ruEGyzyAnFe6uMQTnGiOMdaacP3vR2NiLWlgJl1UQLNu4Avqvzyl2EmN2WVs
	GI85X17/zMVx/pe1nZz6vcaghqgBgECLtRIYvVjitNvuxXccor+ddzxqij3pWLg2shLkQsyzuyi
	hwtHw=
X-Gm-Gg: AYBFou0TF2ODjlAvKCXrV6Gc8wgJISytXWr0Xm+pV6fs0FjMTtH4CJAzUSHtjDioJjn
	fzgxuPWDofzP8D13JwL/v4NTcJZkhSQg6FcJ3riraaiSPRR+CJwak5Hi+riTdSKu0NV54z7JtfM
	0Kpp30YLNJArLMdI/X+hrofMmhcPq2pD7gY1W/aDhiyW3Ul2nnfFly8G843A/gDTfXhCsasLBni
	AuhkvwZ6rPAnkDtwPzKfTTjd8KKb5T8H8CVlaAl9mqGI/Thc72avtPJF90ReciU1kF/5C4I9xEZ
	PjNd9o8f7pdr4AqqPG7YTNfLUT+rctkG6E/AdqO6/jIzokIt2nk94/fCWlSOd8zNsF+LtxGN5WJ
	3SvCwOdXXJD2eM08idqpvpvGTQ/UXZO+9lFP7hhoSmo1GoyfutgtEXzyNUltGah8+3/YZsl8N/m
	B98SEqOMVF7+HPqQHnDanY6R//RKMDaMXXHgPVVtx+tIlfXTzWY9axurFOAwzv
X-Received: by 2002:a05:6820:1692:b0:6f8:2346:cd78 with SMTP id 006d021491bc7-71ab4cd949emr1026862eaf.5.1794548049754;
        Thu, 12 Nov 2026 21:34:09 -0800 (PST)
X-Received: by 2002:a05:6820:1692:b0:6f8:2346:cd78 with SMTP id 006d021491bc7-71ab4cd949emr1026840eaf.5.1794548049260;
        Thu, 12 Nov 2026 21:34:09 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4afe22576bfsm803252fac.7.2026.11.12.21.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 21:34:08 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 21:33:40 -0800
Subject: [PATCH v25 08/15] media: qcom: camss: Allow CSI2 PHY devices
 without CSIPHY resources
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-kaanapali-camss-v25-8-1d709f57f370@oss.qualcomm.com>
References: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
In-Reply-To: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Vladimir Zapolskiy <vz@kernel.org>, Frank Li <Frank.Li@nxp.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX1C/tm6X+YbiR
 DHgRJU280aM6VziwiUIyaMt15OyI6EJ76fw+OqBhWLvbtLw1KP3lTr65TBmmW2wHGKKqnJthhQ4
 lBbju1+9pkgze0nRxk3HZbxe3XmtwhWrx00oFLvL4Ns+a83U4mLDWFJqQ0qWw36KqUpFhN3yZoS
 nWmQmUtRRjz3CLDOrpvb2iUPVfKJatPquN/lXwNvZndyorr7Yb8Jh3ZE5yBb4XZdVkpqNWidzFF
 PMUAP53Wzj+MaeBVlm6Vn0Navj1x/x7SFXySYQq/SDfuWCwEprMcyFvAYJxNMtoJhG9Dzep8pdt
 l4dvOh26FhWi+wB1xiKH9176EeTE/OuvbeW6jxDWjrl5G6o5zi8r7NQ9xhGyrkvDaQFPeO4iplD
 Ynj2sdzGjIxH8N1ZSH2CMf8Vkk8BBEOda0K4ciArLqa5RAdpqyumGK8j72rZxIATh/6JpWlMu8L
 FfE9Yrh5xDDp3sWcA/w==
X-Proofpoint-GUID: 8XFXxdLFxZXoYc84hSLvJTZiIMmt2OF1
X-Proofpoint-ORIG-GUID: 8XFXxdLFxZXoYc84hSLvJTZiIMmt2OF1
X-Authority-Analysis: v=2.4 cv=F6fC5ahN c=1 sm=1 tr=0 ts=6af6a152 cx=c_pps
 a=lkkFf9KBb43tY3aOjL++dA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=8AirrxEcAAAA:8 a=2_0--xn6cTixhlPqFr8A:9
 a=QEXdDO2ut3YA:10 a=k4UEASGLJojhI9HsvVT1:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX2QAij48XLYix
 s9VYPlOWQRIhTq6umHAGBu+r/fx/8/avMm12i3Z7RU0DbGs6htn23wXKOmDjEScYSi2t+jD9r1j
 KHNHFlUCHazf7v3L/Dqhfoc446S8wVY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015
 bulkscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_213412_424550_D89C560E 
X-CRM114-Status: GOOD (  16.57  )
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

From: Vladimir Zapolskiy <vz@kernel.org>

If CAMSS CSIPHYs are supported by the stand-alone CSI2 PHY driver only,
there is no need to provide description of legacy CSIPHY resources in
the CAMSS driver, therefore if CSIPHY resources are not given for some
supported platform, use CAMSS CSIPHY port numbers as CSIPHY identifiers.

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss-csiphy.c | 16 +++++++++++++---
 drivers/media/platform/qcom/camss/camss.c        |  8 ++++++--
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
index cdb803843792..4db68aa2a7a7 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
@@ -793,6 +793,11 @@ int msm_csiphy_subdev_init_legacy(struct camss *camss,
 	return ret;
 }
 
+/* Fallback to generic SDM845 compatible formats for non-legacy CSIPHYs */
+static const struct csiphy_subdev_resources csiphy_res_phy = {
+	.formats = &csiphy_formats_sdm845,
+};
+
 /*
  * msm_csiphy_subdev_init - Initialize CSIPHY device structure and resources
  * @camss: CAMSS structure
@@ -802,7 +807,7 @@ int msm_csiphy_subdev_init_legacy(struct camss *camss,
  */
 int msm_csiphy_subdev_init(struct camss *camss, u8 port)
 {
-	const struct camss_subdev_resources *res = &camss->res->csiphy_res[port];
+	const struct camss_subdev_resources *res = camss->res->csiphy_res;
 	struct csiphy_device *csiphy = &camss->csiphy[port];
 	struct device *dev = camss->dev;
 	struct device_node *ep, *remote;
@@ -830,8 +835,13 @@ int msm_csiphy_subdev_init(struct camss *camss, u8 port)
 	}
 
 	csiphy->camss = camss;
-	csiphy->id = res->csiphy.id;
-	csiphy->res = &res->csiphy;
+	if (res) {
+		csiphy->id = res[port].csiphy.id;
+		csiphy->res = &res[port].csiphy;
+	} else {
+		csiphy->id = port;
+		csiphy->res = &csiphy_res_phy;
+	}
 
 	snprintf(csiphy->name, ARRAY_SIZE(csiphy->name), "csi%d", csiphy->id);
 
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index f7b9c71cf263..508fcecadb79 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -4808,7 +4808,10 @@ static void camss_detect_legacy_phy(struct camss *camss)
 	struct device_node *remote;
 	struct device_node *ep;
 
-	camss->legacy_phy = true;
+	/* Legacy CSIPHY description implies the provided CSIPHY resources */
+	camss->legacy_phy = !!camss->res->csiphy_res;
+	if (!camss->legacy_phy)
+		goto done;
 
 	/* Find first remote-endpoint and determine if its a PHY */
 	for_each_endpoint_of_node(camss->dev->of_node, ep) {
@@ -4822,6 +4825,7 @@ static void camss_detect_legacy_phy(struct camss *camss)
 		break;
 	}
 
+done:
 	dev_dbg(camss->dev, "legacy phy mode %s\n",
 		camss->legacy_phy ? "true" : "false");
 }
@@ -4853,7 +4857,7 @@ static int camss_init_subdevices(struct camss *camss)
 
 		if (ret < 0) {
 			dev_err(camss->dev, "csiphy %d init fail\n",
-				res->csiphy_res[i].csiphy.id);
+				res->csiphy_res ? res->csiphy_res[i].csiphy.id : i);
 			return ret;
 		}
 	}

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
