Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 052F3CA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrUNfuM4Ft/Dp0amrvdIqPngzAiVlVNkUj9xwZ+msXI=; b=trtBU88hjnkTnn
	eUYks2qzRsalrTEPEoKYA/6YQGSpujy00HR8rtCU6ZiDB21Gz3sLbQYp/UVhzgj3KFgsKAM8UVngk
	b7IZ0P3Tt9sYhtOjml0RnJpVtgaxhrNmNrNG9U3nt95OJYjPwx0FquuqhXRQYinB3j94yw1KGi28h
	yEoWil8GA9b/OjRiig7ue0oSPLvaQDFyRPRO4llYcrMnBwGRfN1qlr43nwMVtII5Swb90PM7nDCtl
	zqaZ81mOCmZRQvnNiXoZtyjK7nsvmyOMb48yKFdqoiSe5q8/m7fU0oFPLzqVKccztJhOwcNQ5oNcO
	xjXMkoo+bJeD4MQjZ5Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG9e-0000000Aadr-2tqJ;
	Mon, 12 Oct 2026 13:33:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG9c-0000000Aacj-3Y8i
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:33:26 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CC0FpI1236347
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:33:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eiucA+wtjzHIfQz9RvwaXxBQzP8Dhf3ByqiqoY+aurM=; b=iZvxhZ/2MXPWUIP5
	MtEdc6lZPHqkI/pQ2Tj6ef3weoMZbdUF4TJiw3SA3uvS6XtgzgIhV+ToKI1TL01L
	5AIOtTnxMqVRPolIBO8oHAI9sO/vJNlNxsZoT1J4TASQ+D6ckh7qdPD2Od+rdsf6
	GrVgU2xqv38fnzahVjuN9+UvVC2i5PdvHakUQRY66oiypMFQAgOf4P5FuDrwPHC/
	XpVGDptOM+dno7M/QuvPeLWN7Xgq3/QvM5BbgNIY9bRj46sH47bx27ldJndG3tLu
	rcl9L0CqrW0ImOFy//XeM+TGHXgvcJ9Gqq4N9uFQf5IBhKgKZf80xC3FphB8nwg8
	uvEI7Q==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8j6dk6br-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:33:23 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-35a4d2e39acso3919792eec.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791812003; x=1792416803; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eiucA+wtjzHIfQz9RvwaXxBQzP8Dhf3ByqiqoY+aurM=;
        b=C5FX7msQ9MbvvjAWdvkBJG/zgxWi+WajWyGRt9cKo5LDz9lsKhOfJrPhek/U19HH0I
         vY5nPlODXtFccalQKk+ICpK0ZaKJyfi64NgIf5ZOnnPolBkJbjYBFzVzovJJWwFxsFU+
         2+dUoU/GrMI6ngvfURGbi7vS/oYzv95wPsisKH8XNc6H3ee3UOplcby5k3ffEXnIWRqL
         dX8pw0V/rDnnpoa46hOHivaPsqWjjfx7mOkgFvTRAeEzwssHInD12DvZdJneE+npeXsM
         r0xGKy0+k5InJKTJr6n7wOe6f5mad+WiVJ1aDESeCzADJOe6Ow8WNE9K0V0KURJMIMX9
         O63A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791812003; x=1792416803;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eiucA+wtjzHIfQz9RvwaXxBQzP8Dhf3ByqiqoY+aurM=;
        b=WKktZBcZfLcYSMVnzEPr0S6vF5Atl/OxUA2sYbGBUkO4UMukO0TXXdXjt6uy1u6T3C
         SYgqRQoqxSASou4Eies44hyEldmlltJAQremWAzFCsBFA3eCUqr8sZIp/pCOyV6fAXV/
         OB/iGHh7lkkK/Q/O1h88LuxI9hzpz6kCfdrHfp2oEzVBrFwfuPcoIxT1A/AJoQH/Tn3B
         05+7efrwKwMTg9ZjOYXuD6R70OH5pR6q6n+1nmebxgN4MTnyuSUP1iisa92YKxAu1slo
         J2lyKgKiVa3DxjvhDk3WFB/TUqpWkP8EilMYwqjAYkX45XlYuJjUre0Foy+K6DFATyQb
         wgVQ==
X-Forwarded-Encrypted: i=1; AKwUvBxP+IETu2z4nJtv27jRWvxRdLt+K0y21K2yoZ3+JsU5yBEDJD8+BlVqeg7dhKb1Bw2R8Ej9NH/xuwY=@lists.infradead.org
X-Gm-Message-State: AFq9FYLlF8qwWALpmt+9Q+VLevOLKOV+16IavVPEsZbw8RH7Hqjzm1TG
	9P1BIn6mrejCrtSlsjQB706Gc7A46hPiZG85aK5f4qpy7x1QfTVAFYp/dRlN5ag4S+Klxk1M0H+
	QPeI6JC4Bq5KbU+6ujhMVhC/sBrQuQEkjnAuRoGNlikM3TDOe/4a1Tx3/8sfcU7em9M+Z
X-Gm-Gg: AYBFou3kpMa+sUqF7f3EW3Wb+OwedBhEkAp44MBSvHFxl+4nJtucG5Uk+gC5Sanu6KH
	CB586v0ITBzUnAKTYxGFbSOLHuwy+AGVamsHPLkUCnVmKP7fMJK9mIurVKn53sW2dZcJ2s1i3hw
	V0V9LVv7YBxp4C9DdYthMYFn3z1UbliKn9s47k10xPkxsOflrGngQg9grHCJN8B1e7SyJ9FWezG
	4iPS1j0n3o1VD+X1BadTXG2Cbe53q2mYTf4P/vxPe1xTtYJG8hxDjlHoRofl9kvyot0OrvjrHxj
	O+dZtaYFUrfHGCDhPgvscwN1fv7PA2aSCf7RkoMk6gOBfsvH2ireoOqhG6ekYITl4p1zJxfO8Pz
	T3qn/WrdrQfLF1hW+SW4NTLiJDgY=
X-Received: by 2002:a05:693c:88dc:10b0:35a:60d6:8c09 with SMTP id 5a478bee46e88-35a60d6b499mr4823879eec.1.1791812002580;
        Mon, 12 Oct 2026 06:33:22 -0700 (PDT)
X-Received: by 2002:a05:693c:88dc:10b0:35a:60d6:8c09 with SMTP id 5a478bee46e88-35a60d6b499mr4823825eec.1.1791812001787;
        Mon, 12 Oct 2026 06:33:21 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537ca1b556sm44740397eec.9.2026.10.12.06.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 06:33:21 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 19:02:15 +0530
Subject: [PATCH v2 05/13] drm/msm: mdss: Add support for MDSS on Nord
MIME-Version: 1.0
Message-Id: <20261012-nord-drv-dt-v2-5-a2ab9af954d2@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
In-Reply-To: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791811948; l=978;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=cUv9ygkqVGKsKi0AqbVOUesQJiSTwCdwgeTcXPt+zc0=;
 b=8YJL9G8DTZYEfNm8VXZm1uKJy9LZZzb1+TO8eXus0vwYp4yGL7I4sSgLs9/5Lathnfe2tO+16
 iROM3kvT4CIAuf4ym5oR7OWLL0iGPGYZIJ8+7zujLY74xGAU4ipu3pR
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX9j6e5uw0SQ71
 GcUAnPH+9/e7BspdkqE0tEXhjFwyyAWs7QPIw27PDiRP9UsrGiuhsWJQitGqoE3vZU7qdsgnv1n
 zeqyqBB1kdo321Eaqwz6Nao5U1/m5hO5/FO4g2ltPpeczvTD+L5FbBP1EOXWWxi7L0QE7UtH3jP
 eCmGOHHaUsmAvvaXm5KKoKbeYUQ7FyGXA5SAH0N8u/IcbKD6UsBWuwfV/pBFqqUlPMk0UkwlwZR
 jXSDmMOBCRz2yMcn+9pHOjl5PyD2TuCTXwZ3e+4J0R4t7KXnLiNepGEBbEuUHorIjOPkvRlvGHp
 0D0sTfoid9tVq+0y9OFHu9mKuYv7diEb/popg61EOc1j3whedblxMyVzpqX9yEQme5SB7ApLlFo
 OL1tTSym40VUyRThA3gbmrf78N173YRly40ZTqQWwuDdzTPC71hYAetm09g3RtNxIl72a6UcLjG
 ABq9vLNxj3ViblIMkIw==
X-Authority-Analysis: v=2.4 cv=aK5lOr9m c=1 sm=1 tr=0 ts=6acce1a3 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=ikCT10dxFQO67KJDykEA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: 5b6d9rxKQw__1gOyO4PmKHyhtlrpNIME
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX2mP6bBukSKf7
 /Hb4hF34IUJR7lvo1SoV7PZDJt/xcYZxXM59wng/27/qQmTRO37PnqoJzQPnzrJN4WWmxg9EdBF
 m87pnOIteTvkO5pYEProdCMmsyetlJU=
X-Proofpoint-ORIG-GUID: 5b6d9rxKQw__1gOyO4PmKHyhtlrpNIME
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 impostorscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_063325_011876_B0BAF6B8 
X-CRM114-Status: GOOD (  12.74  )
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

From: Mahadevan P <mahadevan.p@oss.qualcomm.com>

Add Mobile Display Subsystem (MDSS) support for the Nord
platform.

Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/msm_mdss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 9087c4b290db..90bcc8c28dc2 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -531,6 +531,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,kaanapali-mdss", .data = &data_57k },
 	{ .compatible = "qcom,milos-mdss", .data = &data_14k },
 	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },
+	{ .compatible = "qcom,nord-mdss", .data = &data_57k },
 	{ .compatible = "qcom,qcm2290-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,qcs8300-mdss", .data = &data_74k },
 	{ .compatible = "qcom,sa8775p-mdss", .data = &data_74k },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
