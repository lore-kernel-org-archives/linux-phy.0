Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B632C61DCB
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ebdcg99rPUu93SBYU7KUjOhrdgJJHzbKpDmgDSf6P4=; b=l+p+HDMabKRWqO
	YhPhqClP+h+pVH165wCHLS8dkkdqf9ndwucpqtNnl+T464gW8hP+I0A7BF0RuBLYuIf3v/s0FWVnR
	vPrC18Pa6nBcL+kF3/ctM/D/h6sJxfRZv7fzEOstyz7+vZS7u/QYPaE0+gexxldLijAVwyawbuIUu
	xh1vU4d2KVS5DCEfQmib14j74NDttIJPML3fH+BttLa7526Rk1a44/EOglX2hEgIucTTt/72wFbwO
	i5SmlB1hI4eTmhbxXdLe0TgT55vKvkQBqPsZY8VILUecBr4+DX+tjZozvajrWq+jKW00C7d6+pC04
	JIdXxq1dzeGRIcqsS0Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxD8-00000005wQ6-19jI;
	Fri, 28 Aug 2026 14:05:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxD6-00000005wP3-26Xp
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:05:37 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SDkdx62538464
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KTDS+bbOanujBaA6LavrEivitiq85Hyu7Sk6HDc/4Hs=; b=lEykGVwzCrMDFdeb
	9e+QDLAcIZ2XB7THfDrgjzLic1KuB4Lz6y2gR+ZXQ4RPwS0x6qbaNYL5rZTIfYMz
	j10wOar/678L1YAwliMD2yDQmxixLCvu/4SsB8tifv3MszctofHUVMQcYb1twJNc
	Eun6mwsep4wEJvzvFZH9r7DruoazC2p4161cRML5mSHW1o4uzF8vsRVmBfUppO6z
	1zToiG2xEpn3SZtegZBG3mvoGEN/uXCizrqgQcQzDhV211VHui2YBioaRC/oHGSf
	01TsOUHj0lWEOJd6G0eQhz1OWzqNrqbZDCDOqxHdsFC8ReESkkGjsKYs0b6L4kbS
	gRibDw==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb3mua144-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:36 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-97cb32961e3so680470241.2
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 07:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787925935; x=1788530735; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KTDS+bbOanujBaA6LavrEivitiq85Hyu7Sk6HDc/4Hs=;
        b=Rf59x+zukI5YU4eBi2j4bhYOMcazd7jxZ8tpI0huTS1B6YGJGyyo/V+T5kQynCJ3AI
         eVXpMdT12mgc7TPvRmFKvun43ctDtJkDCsBWcOBgwRCr/1L10hBnUXJWSznOvULt85pz
         SSANU6s5nJEYGiVXRrZRlfTw7bFZpdEta9s/0Q+iLVoa7kWI97SOiAa63KbUE4M8HEiQ
         bMqlMiI1tK3wYDYRjD0sBEofCzSqUgveFMHrIUkpTLZAIcyAYQ+oJcr8kTQmjYSkHBQw
         RW7S+gByCVtsJGGRBFAnEJRTBrAbsvANAbqHuj63uu6DouN/0y1dvQBRoHSXHbAUlni9
         Xi1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787925935; x=1788530735;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KTDS+bbOanujBaA6LavrEivitiq85Hyu7Sk6HDc/4Hs=;
        b=eDkePB06cOTIWf55bMI+UlidfevCg0GPyUUB6byd/1fGF7QkQ8Y0NMKgGgKTzgWnZS
         XtQWJeiNIWfh++SQTK9QZMqndPOgdxrP7nG4Egs3gS6izD4eWzuu/pxlNKps1ZjqztvI
         MepQymzYGXlBIf7gug5TNO6REaA8MxV1w/I6r+vHzylS0+ia/CtrAlqYh1tF8FKYwuoS
         eWw2wRSXzsmSzvmPZcizKz6cJBfXemPP9p7gO7IzbwiwuNAp919fnaCWdT5vUrGK7BWI
         mP1oapM/TFmU/bsgjEwnZ/zcsdsCHxNjmlHheAILAmgHeC2ttAr9drgcGs0eqjc4QrCA
         CWcQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp0Eo49rZi8QMVhV81lNmq61ScjlTDUG4uquv6XSGfFZLW7DjqGRcdn2wHFaWQ+DDDDAkqPVwAwGB8=@lists.infradead.org
X-Gm-Message-State: AFuF++llPpxXrlqbnRAf4zMhy5Cya7ObGJs9hMpnhlzemDi4OZFYlCVI
	kY2/sCXeGML9Wsyy/QVc94zSfO4mcTA1NF8Nmm04AKb+6qVya8LVElg1ILkJNSu8TBBpQpMqKZ+
	VzVtr2rm1iGBZJYevua8DPjS81/A48q8TWw3mqTx5Y39up+uuvhQH4MKVQstxB4lFC0iaoR7V2T
	y9
X-Gm-Gg: AR+sD123VTxZl4cuR6Bb2qNMtgyRPY2Y2IdOtGW2fvZbFSknWuK86G+oSpw64CGGMco
	UNgAA9hBusO3wEoDjmhfqnCBuA6WoGdiELatIasP+pjH13hklDTfNyt9x/qvvx5KPeqaf3n8Zyo
	VU1kvVNvLn4QyxBu8dN7HVY1BFu/SHwmKxl0vl5wqquzyS6Mb1P9uXOr2TFa2ddwpA1RFLKPx+R
	P244XkwpLE4FJ5qnzaMRNY4jeJ8QghEses9ur6hxYRtGqN2RuZkQIdgr0CGsnmHcfrvDrg3fGrT
	wupPkKv9DK/p701nPuo22JHZQkruVC0ZV2OfvLJ/kgNbnc9S22SiHR7PV59Ne784UHk0JM3k1dD
	Tg7CYlIyYDwE1xTqDKkuJ0WU=
X-Received: by 2002:a05:6102:2acf:b0:778:f972:32eb with SMTP id ada2fe7eead31-7859996dba0mr2598000137.12.1787925935059;
        Fri, 28 Aug 2026 07:05:35 -0700 (PDT)
X-Received: by 2002:a05:6102:2acf:b0:778:f972:32eb with SMTP id ada2fe7eead31-7859996dba0mr2597945137.12.1787925934482;
        Fri, 28 Aug 2026 07:05:34 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482fbb20122sm3908633f8f.20.2026.08.28.07.05.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 07:05:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 16:05:01 +0200
Subject: [PATCH RFC/DO NOT MERGE 03/12] drm/msm/dsi: Fix indentation of if
 block in dsi_mgr_bridge_mode_valid()
MIME-Version: 1.0
Message-Id: <20260828-drm-msm-hdmi-eliza-v1-3-67843277de17@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=798;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=tW0/V98WOWAWLqVlgzVwKvZe5FLR97Vr/8EkD1Pe00U=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqkZWaCzqQTDLhYUd+TYlb9MS+fCMLIHN5sEpaO
 KPln5AS7zCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCapGVmgAKCRDBN2bmhouD
 16g9D/96CCnowO5YVeDTuX8794l+rCeRdeqVNKtfJ7zwdrh5WdJ1dnaBPBMQSnm/x/fVpcxwCYu
 arC0rbwF5A7wOmGm7T67qpA8GmNSqNulzSXmCVkSor9+y83n6waSu80HeiJy+iOntdvUy5hLmbO
 mjarJYL+eEfSYcMiZhIWtpuhYjg0diCrLSbHgFm1UQWm73y1MkDp/S5DsGL7C3ktzxnuZQYO2Z8
 R4tRxhdMzWCwB7HwMlV9tT6kM/Db+SG9OIj1ArPRfVso5lfCZ2sZ0ZsN8TVqxb7w4X2E2P/fBo6
 4aRTdoh22A0wJ8AxWOspRf9PxjJUiARGPpbZwUNK+T4VP0elnJpLhFtaNYdN3rbGVHA1YtLujYt
 0oAeXdDz2BNXUcoot5nAnzMSAFYgqWrXS8Hq/CyCx/hqugWNkaeSUC0epfc3iODek6SsXRzVCI7
 4cxwygFxa/SACEtV+HF+3HeeY7StL0m1q226kw/Nyzn+Ff1iYSsoH0+IORPJPH55JXT6wrHPle6
 +vxcw7ZqLXBglLtY4iBj7vKRtmfgnzmehfxap7F5BFLHv5/EO9s2pGT4faG16ueVDYg5Vi1RvZj
 SGKY58PDV4XrKY1s/2y0e8+1Dtb9hyNA+QGRx+e9DmbOKA7c3OZvRX4v8bjJPdQo5TVQvX+dAfF
 pNB23JQaNvDBvLA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=ZbMt8MVA c=1 sm=1 tr=0 ts=6a9195b0 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=mamL7KDpJlut8y4y1IgA:9 a=QEXdDO2ut3YA:10
 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-ORIG-GUID: 1VKU6EloJfXQs929cVIGCqtj7vQlxVPG
X-Proofpoint-GUID: 1VKU6EloJfXQs929cVIGCqtj7vQlxVPG
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX/j8PUaIvKb8e
 y8CeGmEoaSauHppVmBj1dvWVHH/uNbWLdYbArLU7pCO1K2jV+VzCxMMIkKGQSxcgiyaFdYq0WCr
 XeF/oS53y8cSAtFcAuHdhEz8v5SgKno=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX3MyyG5YA5tbO
 gVojUnyD4mSALTt7lPr6jutJZZwVNJi6ppYTStDi+UCvKd01JX6HCa4sfwmcYUHNOpMDC0gEAbO
 FljXFB5KLhmNciY2Q7yl23XnKFai9HHVY/bM5lDvrpAXcnfVX2zPTWhqDVeYQkPDVc2NC8zCvUy
 dG2rc/XuQyAAw/9RQZ+lmNkERFZ3xlQJi2zGxd25GAhU1i9+OZevLnR6LUwFay7LAm2bVJxfemD
 apG1k8i03LEHUb41Id1tsyeLHLe+Hvfon3cp/wZpHLrQJzX+fDsAB3EKviyz6B8JlGMvaPjITkv
 +ijGYNSaGbq1JVUodUGBI0We6TGcriCUIDSm7KixxahET95Zm/5NVrOd7LxleqK7wDsiq6UvqPC
 TOszHP83FtvzYsNgq1ieHeu7YZS82l/D2ZCT3LjlAgtq+9GR7IocmYcc1R/masQPk3jMXLvBJeF
 Gr3chzr7NdoPXbYnwEg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_04,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 malwarescore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608280122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_070536_548906_C66ABA94 
X-CRM114-Status: GOOD (  12.66  )
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

Correct confusing indentation within else {} block in
dsi_mgr_bridge_mode_valid().

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dsi/dsi_manager.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_manager.c b/drivers/gpu/drm/msm/dsi/dsi_manager.c
index 959daa88b1d0..531d4ff78f56 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
@@ -429,7 +429,7 @@ static enum drm_mode_status dsi_mgr_bridge_mode_valid(struct drm_bridge *bridge,
 		if (dev_pm_opp_get_opp_count(&pdev->dev) != 0)
 			return MODE_CLOCK_RANGE;
 	} else {
-			return MODE_ERROR;
+		return MODE_ERROR;
 	}
 
 	return msm_dsi_host_check_dsc(host, mode);

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
