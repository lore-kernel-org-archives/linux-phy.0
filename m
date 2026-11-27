Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B02606A32A
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 07:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QBqfZJln;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Uxgz6/6p;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=SGeA0gTG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=T6P17+FIKNq2q6K1ge9F+yBDvB5sNTBvYCIq0O+fzuE=; b=QBqfZJlnfguIgHpB6MyFosJxYu
	EO77lD0zI/e+Yj3vPAlZKy/5K7jKWF3ZYgNRP8x7R5gAE8hj6ARMF1O4Ysx21QmuPeZKibR5Waicd
	8QnGATSRGTxqgB/8zYdpBkHgqsNi4CX6zCe/CML1T3sNu0w8JVpbFW+kU2Ty+iII43UABY1JyK1Xl
	zHjKNioBLEW5ca9OIzsTEH3Nnsa1w/PFX/n/BuVGZgcoAK4B+gukQ0nubuY+ICi8qKrm+yfp/KhDY
	w8GXHFg/QNQkYhrANDZVa4rBjb1MA5JM9dC3+tJeHmZVeZTTd2MXBPBUZbMJrlWLcx+3OEdZjqrg2
	644icgWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqGc-0000000F6Yg-0la6;
	Fri, 27 Nov 2026 07:21:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqGZ-0000000F6YJ-1oaP
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 07:21:08 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AR7GY5d1197409
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 07:21:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=N3VLZRTg7atUql7jaIGh5aZOxd3g/n+lT3J
	7hkQbOcA=; b=Uxgz6/6pnNeKE67TDKi364JDz/B+3zojGUUYDXMGM2XQxJXf6IU
	CMa/C3fHW4w5Qs6peXQMgZP/CbNKI85e1jnpBwx94OCnOGNigvfs/Cqs+2YRlSgH
	e5KPlbXfI/Qaoohu8nygcMOftwiocECvRhc/Fj9DN1Qz0XBz/CvqPiNLliyRUzDd
	wYKlBSj87DMD0M6Z8biq/f0oXISh/n+T+bTpaP91GyGxvJEv7lwKlwkWln8JNEjl
	YDRJx+8SL1FEEdhotWQOcHMOc40TN3xknZlab0mmPGgU3rRIDRtk+bH+pIqyy0T0
	M3ZDQmxrxaEs2rSqVEa54tkBQUDNzTq5ymw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j756k81ky-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 07:21:06 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8a0592d4539so8612951b3a.3
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 23:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795764065; x=1796368865; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=N3VLZRTg7atUql7jaIGh5aZOxd3g/n+lT3J7hkQbOcA=;
        b=SGeA0gTG9iu+7Uto9bpKLDCIOr47tzywfJMg/Hm6ZO0t+qJv5TrSxgW5c1vFWHYxXh
         yOtIZ4wE9JhVqOmqNugaeeQ72I3CVNiht1UtKYmZZhc7QTri8+4XpgbmMnnbk9xB2IiH
         fFWBx4HkElI7pT1aoxy3DUuv2rM6BiQawFPrGrQlNYm8e1CqUOLVCLBhZF3MRFpu2UG7
         UThBZTqLOnA6OxOjx5E3boDAw55EMABIkOLuRfuqshyKC9O1X77BR0cAciWicxIz/eHR
         0+3jW0ZGIjjiVUBYXAz7omtr9GUh9v1I+0VK79NohlAKEOmPhy6WDGA0n/+ud9EYpenN
         +xsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795764065; x=1796368865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=N3VLZRTg7atUql7jaIGh5aZOxd3g/n+lT3J7hkQbOcA=;
        b=gwTU+HoMej2GwQUxJIBh1iSFfG+K+CXngdG+4mDuFZ0ITn1o2T7JLRo9OHC+zyH3si
         JsbuyC2nq6GFOlJ3zZhflQn0EJhMrefC0S0yO3DWameOiP/kPHN6RUxHa0jCxwH50qx8
         Za7AmVbuzBJqcTWPfFVFfZ2d5Wd1QnBBMi7hFZg6h44hy+7eb5FTDPbQdkPPgnV2sdQT
         Bfs6mXOO8QMICwykWT4xKVF3+79Jx0o5JeYO6FLL8g3xDvAPWGHGn2XmJaLMAH+Hium7
         HKndIBodLRPzCmSbLSiM8QPsA9WXLeXI2t0LfaAurCpZHN9b6RR1TlrRk6hNIBhAyRYS
         c7JQ==
X-Forwarded-Encrypted: i=1; AL+hErGPEWcbvEHcSGEuuDYtBFCDIUrE17HwhWVi2sUgDwNBOATYACqFQf3/Eph8YOF/IWP1LGgth8bG+wk=@lists.infradead.org
X-Gm-Message-State: APuU4Z9oXJxENMuv0ocIp6RlgwDvOzFoRDjPC84diMyrHNfe8TDauloR
	zByqtMioCBJaWl6QfOp++h5g6vMUt+rHTKL9AoFZ48p9ZCL8O/ylR5//1Y5jNqGYM+gzKeHsA5v
	suP9LICF67Bw3YZGKQpf27yS8ftPAa1y5WCRsiG65FXEjLADhMHwc0+MO3ZTE2yN1MQ7nhOVGlI
	SF
X-Gm-Gg: AZFdTZeF59/1wcEguNG6iBkiLP1DZ8vA/PZCmjnJOOy2ivEZlmiNmc8fUHSrIgl51Ie
	MfKtv0LSkZUxaqfaXojlHfuuA4e+7Uv2cBI5KONj1G6R+SEU91lWT87SQFPPlRTXCNOMwxeCQA3
	9EldiUeAU0OKHFmPXsAAo+rfXpMnTjJ2hUrw9IC2BvSL/nZ1wxgUnFpWfYwfwOGsHiBqUFJBlR+
	6uOymzm5Usn60y0+I+X9hYO0qC1sKEWLLdIwHTu5weDGucPW0U5TjzL4yPXvlXXK3yKEZcHIJds
	CYsjrGBE6EdDn+7Q1v6PACfWHFTFIKfVcLQhG3R9Gp6r29o44li+576LY/minUkrSLx600ZdhFF
	iVj3eWONkeEim7TFUHiNI9MZSa2/jI7R53rZBl9KywifYsCMiu5e5wHFMefNMdt/ivieLJFJ3ew
	==
X-Received: by 2002:a05:6a00:39a6:b0:89e:f8e9:205f with SMTP id d2e1a72fcca58-8c87c76a3d2mr22911778b3a.32.1795764065179;
        Thu, 26 Nov 2026 23:21:05 -0800 (PST)
X-Received: by 2002:a05:6a00:39a6:b0:89e:f8e9:205f with SMTP id d2e1a72fcca58-8c87c76a3d2mr22911748b3a.32.1795764064687;
        Thu, 26 Nov 2026 23:21:04 -0800 (PST)
Received: from hu-vnama-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c87343f83dsm12028947b3a.39.2026.11.26.23.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 23:21:04 -0800 (PST)
From: naidu nama <naidu.nama@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jesszhan0024@gmail.com, sean@poorly.run, marijn.suijten@somainline.org,
        airlied@gmail.com, simona@ffwll.ch
Cc: naidu nama <naidu.nama@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, quic_riteshk@quicinc.com,
        quic_vproddut@quicinc.com, quic_mkuntuma@quicinc.com,
        mahadevan.p@oss.qualcomm.com, saurabh.anand@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com
Subject: [PATCH] drm/msm/dp: Skip IRQ_HPD handling when PHY is off
Date: Fri, 27 Nov 2026 12:50:52 +0530
Message-ID: <20261127072055.2144407-1-naidu.nama@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI3MDAyOSBTYWx0ZWRfX245SB41rpk+2
 v1hW+LYVl02K1Rcl2K/qWh8t/anFf8pZh40rc9V2E1DbQJ0tm8ll0VzB8QL0N9aEWgmzAmbTxm/
 ohgXrVs4ba+TiZRMWBRTPSJPKZs09okpVia+do4SLTzMjeKU+nXF/CpJoRK96Xl6EPO0euq/m0N
 t+MQAyuF7WYyCxakwVv9IXKlIp6Ft2xYe2+VntGSlhayaBj16YTlfslGz96O3KoNfGVvedI92b7
 ng0nycA+uxVnfJ6liXxf7zlMRDlqGUtiT5woqxH48AwMmZbxpVnopyB32WpMEi568f5odMtHCzL
 Ilrhr7PAOtgTJcjubWvyjysC+/GAX/KoBNpMS/YBcB/2LTXzHpln8jACCex6q6gcT7QQUgcZ00h
 wOoC3Ix5kYxDtNxGtF1u06ZzPWd+8zXwG4sGgb4sjD7hDJPd0wrGWDwsgpdmQKk5X3qsvH4IroW
 /bAf+kPr7wI+a7SCCBg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI3MDAyOSBTYWx0ZWRfX6W3UWA2TZiu5
 GdwCuI12yG2BHrHXKkO5iuRcYw9vfyKLauVSDwyy2A6P8YxOUa/ph6y89x/x2OAabWxul8j7dOP
 yDbEXZCT5peTLg5YdDov0cH0iWUssX4=
X-Authority-Analysis: v=2.4 cv=ebWo7LEH c=1 sm=1 tr=0 ts=6b092f62 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=oFY2QqT7UXJjKgy5amEA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: NA1n5rM8YYll8SLZlHzzCd--q3ZFd261
X-Proofpoint-ORIG-GUID: NA1n5rM8YYll8SLZlHzzCd--q3ZFd261
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-27_01,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611270029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_232107_593134_6AB86DA1 
X-CRM114-Status: GOOD (  10.91  )
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

When DP is plugged, IRQ_HPD is delivered when PHY is in uninitialized
state, In this case avoid runtime-resuming the controller and
attempting AUX access for an already-plugged, while the
PHY is uninitialized state.

Signed-off-by: naidu nama <naidu.nama@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index c0c150e2c575..79169c1f95a5 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -1607,6 +1607,11 @@ void msm_dp_bridge_hpd_notify(struct drm_bridge *bridge,
 	struct msm_dp_display_private *dp = container_of(msm_dp_display, struct msm_dp_display_private, msm_dp_display);
 	u32 hpd_link_status = 0;
 
+	if (dp->plugged && !dp->phy_initialized) {
+		drm_dbg_dp(dp->drm_dev, "skipping IRQ_HPD in an inactive state\n");
+		return;
+	}
+
 	if (pm_runtime_resume_and_get(&msm_dp_display->pdev->dev)) {
 		DRM_ERROR("failed to pm_runtime_resume\n");
 		return;
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
