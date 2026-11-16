Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEEC9606A323
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 13:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lThUnn+a;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=V0tPSJ6P;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=TVSDIs/M
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hrUNfuM4Ft/Dp0amrvdIqPngzAiVlVNkUj9xwZ+msXI=; b=lThUnn+aRxGwOboEHYE9c+Gar2
	Z0+NsIdzp7lNZNXXoplJd6A2k0KzuwDW1Vq61AYltvtsefCa+AWXJ90R4mrApaU1z4hGkYXYhPwwK
	2lK/zChdGYEGcAuwd7NdVNHPRQIrRuj4k7s2N/vxd/ciI7VB4y7F2Gh8UqQzf3iKt5b/TVPpYTp98
	dZ8PZcF1Q7pKfqQHbVOaKBliSGfuoh0H+GEYVeeJpMrrTxU6SlyS/Kpqzh2nTnz76dJuxsp40ujv0
	qN5yGwWrljalFmhEwZfKO+3sKFHwZsEdNbWfYEHKx+8Oj62IIC7x2bAaYSvsYfy1xGYDlvwm6qySA
	8LLibKxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwbJ-00000002aBO-2ry8;
	Mon, 16 Nov 2026 13:18:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwbE-00000002aAf-2T2l
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 13:18:23 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AGC10wp4069506
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:18:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eiucA+wtjzHIfQz9RvwaXxBQzP8Dhf3ByqiqoY+aurM=; b=V0tPSJ6PVwrpjHtZ
	Zi3tJ/BSazgFYTmvRqQdk9TSdWokZLmDiLT90OIxED+9p57GGOD3U08rHm/qmUbq
	utNEDf4rSsqp7PuU/t0Z2ichhhuQ2ipjAzQm2ht05MTwZ/tz6S9za4Yi3cCYj7rR
	r6rsEEy7S33hlrbO1axgP235Un0U52/PvBNAQS192Q5iMD47cm4c8n1gFdnN8uAc
	RgKpRgJsGzr88ApI1peasgiYfrdoHK5LLsTB+7A6Lpvopf2/YHMJdQxmberQ9tKW
	uZ5o4INsXMDSszEtSW7tBRTlperwt+Q+uVguZfP1uvIWHu1JXH7HBUJaFEKOAB69
	b+yGIg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhmcehts-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:18:19 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93f1f2fafeaso459637085a.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 05:18:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794835099; x=1795439899; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eiucA+wtjzHIfQz9RvwaXxBQzP8Dhf3ByqiqoY+aurM=;
        b=TVSDIs/MEGmBQxkeroBUOrOQunkaiQooSqq2egUcfgzCA33aCt1kXoD2HmFeomHPXf
         SVGJHvyS706zU6InnE7ftT/JAcUzlDNc5tjHNhRiH1b8zrtWwKfkZp2ZUwkClRVvgTtp
         +HzFBUXppb9JHj8D0UtvSPGqwJSWdnlpcj1nxy4hAVqTNJusJ1P+B508V5O8h1Noj3H8
         qKbcGl6oQv9Nispxd5IugS944Mr7ey3GUkl4K/ywIkAUC2sjX7GAXTc3qKeXF0lAC3NJ
         LPxnyQv7IBWgVZ92HAjSmYLTDK/qcUPAcS3e3gJxYhZYmvgeD2IfOyl6qQ3RpcsnFxMS
         Q7aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794835099; x=1795439899;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eiucA+wtjzHIfQz9RvwaXxBQzP8Dhf3ByqiqoY+aurM=;
        b=vUUuAigc6VqgYxEvTIjAqXeUgHhmaE9JhMFR9mzEbbQuhlnXk3kFHKXw0erRho+TJG
         dAGgnkC+qfEogxiObCXWUKkGJmy6QgNsQA1xz3AjFoT/GpmAbUDNv4fHdBBNhNK+pAAC
         hj+WHRY5DH9p+8BhiSLZr4yGABOt7tDypjrV5IuDeNsZOF9tT8Pkk4zJ2/fv7eRfzytt
         OwJK1urYLALAOB527XsYKamf7o8J9o0pgvV+RZBphkt+8P4Net3mLamAIcm5c0f1fi1i
         GFhc700oiVK12QCN9OJzpwjPKYywK5fvv738fY7nYFwU5LlJ3wY6Kaa4GvUbu+PyAySL
         dWCA==
X-Forwarded-Encrypted: i=1; AL+hErEDnFPXqLA3sH7kViaKlB1vdLf2ml+xP9GhD97LmHn2M9M1hmxI3+el/zXEDNkH8UFzvywhExHtgxM=@lists.infradead.org
X-Gm-Message-State: APuU4Z+3qmBfNywEWskCCJhlXlfD/Bld1NrVD/m8H1cyfg1LwNRdMZCW
	laHEEj/6QXNqgun0s1F3QQ6MbvSvQfuqLUyvsZeryxnNCRVZG7hVayY/0llj6qRktewh/Xu4NBQ
	5TGmY/6ErXUJZjYAFYwTJQalWJTRa2bJaAdoQH0/hJFuCZcGQEAv984Is6bU0twLZK92g
X-Gm-Gg: AYBFou3j/WbeCYjt55Y+Hc4g5HHsrX0PfvoB+1VWlmwZJ7c0ag+V6CAtJVdDIfgHBUQ
	6ktrLlYpICFVn224a/R++Z5F3xRgoG7A0x/1bqzAwo4NNBApfqnJyqmDgiu4EWXOY3b0PKneJZm
	cZNZbWg9VUDu7amBvwWHo86N47gO1TrGZitBgo2HV+zQYYderfT3focEImHurARRtW8n3IU4K4h
	K4HmGctQV5F+wqMbjm9GhPYFDWFY5DtAchTxrqyv3Kvx5THLcXmBgsWiUHJ3U9TJttsgmYvC/cE
	Bgcbkxy+uRrJZ9cM2CCmfGz5p/ZkjQwEzIUx9PZZxowBIYJwCm4rQmyxzcq1ldqhdVgU5/GUmEr
	5Ui1ohofTp+4XHjj2bWsF0IZ8xJj8uQQVx5D+RtV2f072DfmD0bkH8cR3KLdRLgYj+Qq4fJ620N
	UI
X-Received: by 2002:a05:620a:2709:b0:944:d79:c02 with SMTP id af79cd13be357-9494ba55576mr1456186085a.10.1794835098947;
        Mon, 16 Nov 2026 05:18:18 -0800 (PST)
X-Received: by 2002:a05:620a:2709:b0:944:d79:c02 with SMTP id af79cd13be357-9494ba55576mr1456179385a.10.1794835098475;
        Mon, 16 Nov 2026 05:18:18 -0800 (PST)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9494c8e1c94sm843927285a.39.2026.11.16.05.18.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 05:18:18 -0800 (PST)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 16 Nov 2026 18:46:46 +0530
Subject: [PATCH v3 07/11] drm/msm: mdss: Add support for MDSS on Nord
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-nord-drv-dt-v3-7-e3d3bf0e2c49@oss.qualcomm.com>
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
In-Reply-To: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
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
Cc: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794835013; l=978;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=cUv9ygkqVGKsKi0AqbVOUesQJiSTwCdwgeTcXPt+zc0=;
 b=feVgYY8v1OmtMYZhR56xObEddH4ZfXk+7alnHhbbpkFAvGzUXeze73NFNgFXi7LWeLUnEunZb
 K9td4X7BvYFCOuLLmWeFhM3EL6B86ftpqGoAb+5luNQDk3Pj6p2k7jJ
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfX2fRSCMnrygzP
 hl0YC5Islw/Jn/n/L2qSUwIPWovjPzYY8S7yjbXadk+pemxxNjCoRSITgATDutNWitJ6FlGZrxZ
 5NmWg9zmvQxV4ZbExZm+oOA86geGoic=
X-Proofpoint-ORIG-GUID: m96ZrVKzRiBkcVjhyQx-RZOjQLsCeR_Z
X-Proofpoint-GUID: m96ZrVKzRiBkcVjhyQx-RZOjQLsCeR_Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfXy9AWAaLzkT0Q
 3H1yYdolP5ncyS1qfGpx8v2ZfyGKYHomNWM4lEmZsUSFg8N8KupD8btEj5CLAJG3RcEoF18zvkR
 X4Gc+iBfqB8Q3UCXo0cZJBMH4/ogVRTlIJMMc1iy2XpHuNyDzcmHZvpOCUkiV1Jm+QAUpE+Te0z
 NYJRpDT3ORgZprHoaVTG2lILg9Y17EOlK/5e7Q7koVJSz7z4M+BU26u8BwbGh1PKn8WYaXsal7M
 Tfhybwp89ZwcyMLrxFPABIr8b0DD+j17o6CZA59bwFMzTMxpr8dib0mKnhLZNr1gCuiQtepb1o5
 Na8GddyteNbIqXg4hiOcHMtAOJjFAW/FuVBrbM0EW9u/5fshIKHCcSR4Bh4fagpLZvfbPEQhyEK
 dXehF4iPaeDAyOyzf/A6iCQEf9WLm8J7qQnNn45UncXm5MFN3Q7F+aT1VnuKD5YXa2E5z4WbCQ4
 YRmbi5/sxYt9RwDKiBw==
X-Authority-Analysis: v=2.4 cv=Vpy2kO2n c=1 sm=1 tr=0 ts=6afb029c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=ikCT10dxFQO67KJDykEA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-16_04,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 malwarescore=0
 phishscore=0 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611160052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_051820_636535_CE512D12 
X-CRM114-Status: GOOD (  12.61  )
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
