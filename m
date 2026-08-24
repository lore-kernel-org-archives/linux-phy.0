Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83610C5DF81
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 11:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BHWrTTI8yctASj8Ci9kzZ9zi5REWlvXX7iwHLFX4cnE=; b=1nopmsFU04HjjX
	yGz70ITt7YlcVEhHH8ZSHLPNgQyMOzO21LeUQvPodfmHZZbKpx63VFADmLEzjVlPo4vzhPEfkbUAK
	v1z56gIC+C0Yg0SF+4UX2Bo8JLXmESrbJO3RpynaRqH80PLa/ezJGOGhJr5RUKdevObZngO62O10F
	QOWrX8T2UzRFpOBs6pKsKqfNJ8WfxXAzzeCXRG2bSt05vW99B1s72xCf0/ZmlYVuwuXzNq/N/qkYe
	CG3h5e6KcOlcpaKWcPO69qprtdomNkcEBBnFSgvZRHThrfT1S7y98yvK/tf3/nfRrJDSjgOfq34pv
	Zl2A5vN6laohoWYi/yeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wySrG-0000000GViJ-3gd7;
	Mon, 24 Aug 2026 11:28:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wySrC-0000000GVhk-2ZU4
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 11:28:51 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67OBMgVT2864707
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 11:28:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Z4joxmXfur7eXOiFFe3oqnFTTbEYcCWRQbkIKaQk2W4=; b=YUUmRSM3CJDubSmL
	OtcYcHNkHDipg3dVuaMDEehgY+hHE64+B9o82A1Ixo06Fc/kQQfRLkg1Jw6hX17s
	xm0SlJudYbEb1KNd0nMkMOO3/S7HHj+jN2H6RjYGIH9oOA81dHLP1iwqTAzPtuGq
	yEW9F/wlV1gOgkwjcmBjU5n7Ch5Ss5tuqmRQRlAE/X2YP5HEitRothDJVJZd0FvD
	Y9YmMPcoT9EIPyqSmfd6EcXKEUV4eRtrV9EvvIPBCcE+u9xNY7IUYrzl4rKHcJ0A
	pSFyB6NhMPFcspzfJUIGJONShsMNIiJpPfzPKNq5D0j8eu+4Lwj+8iqhiqJoU8bM
	tsz/jg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8bdr26uf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 11:28:49 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-38e22137fb3so5289054a91.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 04:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787570929; x=1788175729; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Z4joxmXfur7eXOiFFe3oqnFTTbEYcCWRQbkIKaQk2W4=;
        b=CrKbWzAUyVITkti/8yV7tSHTO9u4xPLsdvJe1d/0lz6MygQXFTRZv4AMBydSXziNbS
         sL/dwTPIbtiI00Fiu3LkV6HCiJCRf/0zdm3U/UGXaeY3rQDw2+PUts5eY+f4nGAfGhhS
         G3pfOuXXmwctEly+uOm09MNt7PAx5dDWHrSFO1iJ5rQaRw3mT+Cnj1OsGYFPXXI+D98A
         Y4nEk9cyCPb7CZmJxWvntWdodD8vB8bNOMXynDg9D282d4JAdDwmiv0/1G8GovBz+bjH
         Hrx4AnfB35MXTR7rbTB7WBsGqsJZGhCvndQrBly3qV0Z7/1BK1CF/RnoGo29AMGyo6cW
         0lrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787570929; x=1788175729;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Z4joxmXfur7eXOiFFe3oqnFTTbEYcCWRQbkIKaQk2W4=;
        b=gLvgQHgKrsQ/yV34LX7Kqji1F14lO+OnM/lFY6bgCwwu2PsEfdfEtOzkzLY6DGnmU4
         xHKXk0HxhF+3MJwgIqPGKQax9X/TirZA5Ev1DseIWpC9Nx4C83zaF0SJ6/MVrOM4EIZW
         k2SjUE0CNKoED5E1M+iYZu2myJrTjYt8xXz/FptBfNVB9U3XRgn/BweghccU0bsuqecG
         oRtHWiw9c0lFcCV7MTvmCaFl+QG37hsIcjU6/nfaXlwptDoXeP3dSatpNErJbP8AD1R+
         G3EarhMgxqQcHuv6Cl99ddt6sE3C0eMEBAy/hDtWq0szv1KJB93yxBhUsGu7DvYg+dPt
         A5EA==
X-Forwarded-Encrypted: i=1; AHgh+RoxYKpR6cuVLiR2wzJa95O8TV9q9m2yDCx9aBfXkLiMQwIdhEBMvzHWkzLqhUaypPW5fxmkDkY+ND0=@lists.infradead.org
X-Gm-Message-State: AFuF++lVXOksqAm9P1Ay2SvxyCnVW6zynstqflxDfPYLqpNw0qIfsdRw
	1t2Nz6mJfNfSZATrI2qia6AJ9G4k92LKSVNRxiQTQmGcWkYHv+SbiUwXBytltGz5wz+BZuAvoD9
	jt1P4fnKme3OuzLmdSkeY2R7BfeQ42V/bwC9egqyvKV+b9RcBw0uJBXYx5P4GITfeVvR0
X-Gm-Gg: AR+sD11CwlzOOMMedAHgjm3CjTthJz/sm4oDi2qbzadVMv9lIEic6svrqltnh4lKDQj
	7wORUQRNykMjhtQtaA0XDrCQ+V08SKvNM8GVrjkjuUeYc9OECH93i6/J8hspK8s72JbhDeEtdu7
	BdLRO8yl5kz1A1xDBQi4Fnf3+0kxsHyi0Pahcg8Gx+A6NlDgCQ+P0HAACjJEUb7/1PHDFMULQl/
	4U4Fd4jddUrV5jedyCyw5C3jlXVMEZ6MscqptK5/cr8PL1HHXkkxYBBdR63+P4GKqvc/bp/jc6j
	WU/Yq+9G+obUTlkiT6KQ5PXfpm8gi7BDikunb6QIVpbPdAj0JAp/YTDvbBhzWo/YO7LxrG+c2UR
	t02iz277aeFfNgxgH
X-Received: by 2002:a17:90b:3d8a:b0:38e:6d4c:14e6 with SMTP id 98e67ed59e1d1-395c33daf0fmr49022324a91.3.1787570928743;
        Mon, 24 Aug 2026 04:28:48 -0700 (PDT)
X-Received: by 2002:a17:90b:3d8a:b0:38e:6d4c:14e6 with SMTP id 98e67ed59e1d1-395c33daf0fmr49022262a91.3.1787570928363;
        Mon, 24 Aug 2026 04:28:48 -0700 (PDT)
Received: from [10.213.109.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-395e4af750esm9825643a91.11.2026.08.24.04.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 04:28:47 -0700 (PDT)
From: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 16:58:06 +0530
Subject: [PATCH 3/4] drm/msm/dp: skip LTTPR init when no LTTPRs are present
MIME-Version: 1.0
Message-Id: <20260824-qcom-dp-typec-reconnect-fixes-v1-3-2825e5bf8a96@oss.qualcomm.com>
References: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
In-Reply-To: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <quic_riteshk@quicinc.com>,
        Vishnuvardhan Prodduturi <quic_vproddut@quicinc.com>,
        Mani Chandana Kuntumalla <quic_mkuntuma@quicinc.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Saurabh Anand <saurabh.anand@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787570901; l=1187;
 i=saurabh.anand@oss.qualcomm.com; s=20260824; h=from:subject:message-id;
 bh=IbcoGzqn73EF/bO8GfdSrufbJAGc5IIrFGhyjXEiifk=;
 b=4Hj0CTrR6JsyaJTEBY/gXkQi3xfkAI2GTUD0DlJ+E7juBslV44zaJGm+H2nQxgdmzkFSp/rVI
 Iqbl/NaJexwBTQS0lsnfQTAnRMS/qgOSiunA+H5lWE4hyqry+bFIz2G
X-Developer-Key: i=saurabh.anand@oss.qualcomm.com; a=ed25519;
 pk=AzGwbGUPO11yi5XTeGyJKOJWLfzXp5Dru4z+PCg/uXs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA5NiBTYWx0ZWRfXxQiOBu/1CFgw
 TGqH3U0ymgL71QS1M5kEwSIPnWtZn5jdYlMcPeHLnn+G4EglGXM/1L0wtbHuhxgo81G6hsqdhI4
 NhjVDg25LUm1SVZUXas8uYFVWQ/TiIm2AEeYTIUmxAnWjaEi8JRSWAPrQu0JIa24G0u3w66f2sS
 2Bu4879VLQWqhmPbHrJr0s86gaRLQWYvRgdqZNZoiJSCvPIP5U0o16uiB4N+eoV1GPW4CRdPQyL
 A3bLItpyVbtynv2upZX1dbSH2Mb8CY8IAzaNXPDPmu43mxXj2LraJud+Pnku+Rt/szhwp5h1lyd
 mY+dHWVi/Da+F0jwUC7Z6RrLGp/0+0lkX6UE6pqUkRot67+bTxjPXCUFiab7a9mXdn8+qFsSIZJ
 Ko5W7eVffnOufEWfGgNqtPYoLxEXqfS1sVVJ0zAfpOKBQ5TIJkI/kqOhnO87quyQuN5VPUxZJQQ
 Gyn5whZv8tuyoDgA1Mw==
X-Proofpoint-GUID: jC489AzWUyHsd25HHMpynNttIwooUzyg
X-Proofpoint-ORIG-GUID: jC489AzWUyHsd25HHMpynNttIwooUzyg
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA5NiBTYWx0ZWRfXzTQDJEtSW6Gd
 M6wGKQ3kvH2dZu2fMi0NuzPYmsEVvXU101/5OK7g91yUL8BNI/nTY3Vp/IzQF2n+9xUx7rUfr4Z
 v30u7KwvT8fZ+qlEYvWSs0nx8mhY90Y=
X-Authority-Analysis: v=2.4 cv=W8cIkxWk c=1 sm=1 tr=0 ts=6a8c2af1 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=1b-Prb_CKxP05DS9zwcA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_03,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 clxscore=1011 bulkscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608240096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_042850_778088_9C963E92 
X-CRM114-Status: GOOD (  13.79  )
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

drm_dp_lttpr_count() returns 0 when no LTTPRs are detected and a
negative value on error. The previous code passed the result directly
to drm_dp_lttpr_init() without checking, which would call into the
LTTPR transparency-mode setup with a zero or negative repeater count.

Add an early return for lttpr_count <= 0 to skip the init entirely
when there are no repeaters in the link, matching the expected usage
of drm_dp_lttpr_init().

Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index 40e19d506a45..1f60c78a463d 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -253,6 +253,10 @@ static int msm_dp_display_lttpr_init(struct msm_dp_display_private *dp, u8 *dpcd
 		return 0;
 
 	lttpr_count = drm_dp_lttpr_count(dp->link->lttpr_common_caps);
+
+	if (lttpr_count <= 0)
+		return 0;
+
 	rc = drm_dp_lttpr_init(dp->aux, lttpr_count);
 	if (rc) {
 		DRM_ERROR("failed to set LTTPRs transparency mode, rc=%d\n", rc);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
