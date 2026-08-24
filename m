Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AE6CC5DF94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 11:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bf02taJJJbeIHRA3b9MzGF2u/10ycOd0v3s4POyb56g=; b=fJbBbFKod3/4nV
	1FLdQlckawK5J9yYmCRoQ5Q+eVZDfr4WHmjfqZPJ7JPtZzK9DPN5K5V0M1Yk26CjHYNKUzKPTxsQh
	E5xXKTDhMlwvuezDFzJX+8OIy2s4pj1zeY/ZSNMYh81KY+OfNrfdHA9DBbHM5zGs1pxEkf1xT8Tuw
	gciVRZpgQIBqv0G5zl6TgJTBLSao/LiBAGY2N/mfFlPnwoscdIFioXjQlYsBgvZrVmULLfHN8+XDW
	yD23J1f1MrFlxMC4RuBEdf1XQG5JXbtEawbzQZPfi2Icr6e+YDv8SiXo3dYGByeTNKLbmPEGAd9Fv
	Uc6iemecR+0LrR9Ni+7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wySrN-0000000GVjQ-18TM;
	Mon, 24 Aug 2026 11:29:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wySrJ-0000000GVib-1xqC
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 11:29:00 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67OBMdZp2648133
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 11:28:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kHNvx8/yUX7DH2/W13exwyYo7xL3jhjIg5S8O7VsuNE=; b=OCW5fEbGmsu+L/sP
	MLAkFdgWm4+qipjmp28jZfMrN6N3FmHAU4cgdL2mIm9875YIRkRcmwDgdp7xrCg8
	COAntFPPV93h2hoqw9x2U2aXwCa8sarkw2HShjtVcFJ/GMaEmbwRL9Ew2ny/yct3
	pFsKwfmYmRnRQ6jt4rAZgRvivCLeGj9pe+B0lR3AOLoPZPImE1rUtUvG0AIIVzqk
	HX7HNmWMB0wujF0qXPxc0922ayPgutW1p2K10nRX/12+id622KQzbq5/9TiyPDr1
	0rSQA5wwrtU70CzWhTPIYd0kOvvuy31lPEwPCJv2MBI1gb7R+xuNGDJ1aYGMIOfj
	ZQtR4Q==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8gqn97k7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 11:28:55 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cc15155cde2so3134314a12.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 04:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787570935; x=1788175735; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kHNvx8/yUX7DH2/W13exwyYo7xL3jhjIg5S8O7VsuNE=;
        b=FUFYheGZPd6Xhsefj1njPUKm4InxOS2hUX2GSncJBvXs4gCvDr8zQWyeX8lu1QbxNU
         76iNYUzXOFfaBt8mjm6gATTy9KauVrpedaG7uibSoKFno6mmGPro9Dr3/OPBeX1rGC69
         fJMlTJhX/lwOyuQdG9QsacjTLlXlJTXch61CJGbd56GJ3tnkk+vslhopbaMqBDcwdV+m
         4EbkoLvYXGV+DCABJd2+iRHFxyzUTyn/pAqJGe5GG/jR2s1WEWUVtxtP/Yzi3/ib4pJ0
         mYT980JVenNnK3inWa4+RNI7Wwi2xOdl1H47BW35HfZGNtQ00Dz6jrpyW5S7Wow9FZ01
         caag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787570935; x=1788175735;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kHNvx8/yUX7DH2/W13exwyYo7xL3jhjIg5S8O7VsuNE=;
        b=K//pfbwOU5HTICf9Dy70Z1/mI7IoTaYRcnl2UyEjOoa22E/LSFx2KfcCTsd1bGHZff
         YPa18yKfSnSfjRv4l+YOCyPqYENa2VwADEAUKR0b7Jk3UmhKojD1+rH5ertfHb9QPD7u
         4I+iGBqgvMwOm2J8aRNmXivZ1xEACoPjrlmX8DEymmzysmYc+ryoPi6QSD+4OQ4WOJyW
         PBR3vAB6DR0B0T1k0RBhKVArE9qi8P80MBol101shco32lEeC5+Jb+kB/If+W71R77i4
         LC5+esuycmQasMpFPoXc/j63dcBbUSxNp20VN+HfFpGJRerq1GdEaXKleLDKiKpvHGTr
         ZPLQ==
X-Forwarded-Encrypted: i=1; AHgh+RrRB8tq4RLVKlSFpAFf/uJJvBdnoUFEW1TPkNFPgtkYUO2iYMwG6p1notDl6qPokkcIJymae77VGi0=@lists.infradead.org
X-Gm-Message-State: AFuF++lKfA4rrPIAtlpaGdAVUSX6+gCrgQb4mnHyQP9GsaCfDeNUCmyQ
	qmY5B2+WY8g4ZSepoajonPtYVa5gVGi8XQ7N7VqN4QceM0v5t7eB3EiiHupyzTDvUY+xKAo3Kxc
	5YyK8f/zueYZImclc3SWsGM0+dx2r1Em9w5GFO0vTjtfvFqb2sFq4t/pYEHafDtGttTPW
X-Gm-Gg: AR+sD13ztZ0UBGwk2hNhMoqC36rnWfoPHrQ0yJKbkHmwNo06nnKOGbpZMpkTvvaFX3/
	c+HbNHwNi9qwrpznUbM8jrm4e/rSNBFp8JEOLVC8vsEqAlRjC8EjpwCS2tWgWmOyfLz8v/Fd2vm
	D3O+SSvOX1IlSoEwuZG4A4bTlWUcgKemg5ij1SQVhu7hzNFpwBQ+jbkHOKiYaSykXqwzDg/5uXo
	Zmye481K1LOd9vYSmuLbJBMvG/icMS0l/386imofkelzTYa7V8xplEQ09o+i0qXLqLIV9g0JjoR
	PJ3WQFYXxD2LlsLOStbu0md+9a/9zBlqSW0uf6xJt/AwKxq117AOF/vTwcKa6KARVVXxbwWCCqy
	wwgcrFPFuMFloW5qn
X-Received: by 2002:a17:90b:3883:b0:380:540:d499 with SMTP id 98e67ed59e1d1-395def03e79mr30789689a91.6.1787570935017;
        Mon, 24 Aug 2026 04:28:55 -0700 (PDT)
X-Received: by 2002:a17:90b:3883:b0:380:540:d499 with SMTP id 98e67ed59e1d1-395def03e79mr30789587a91.6.1787570934583;
        Mon, 24 Aug 2026 04:28:54 -0700 (PDT)
Received: from [10.213.109.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-395e4af750esm9825643a91.11.2026.08.24.04.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 04:28:54 -0700 (PDT)
From: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 16:58:07 +0530
Subject: [PATCH 4/4] drm/msm/dp: continue link training downgrade when
 cable is still plugged
MIME-Version: 1.0
Message-Id: <20260824-qcom-dp-typec-reconnect-fixes-v1-4-2825e5bf8a96@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787570901; l=2888;
 i=saurabh.anand@oss.qualcomm.com; s=20260824; h=from:subject:message-id;
 bh=IfIz+h7lQZygsMdbtFUdSpKAhh+9x4RQKe/zH5OKDOc=;
 b=70s+9NlE/x16oDLy3h3yl/e0qgXl8cliK6Ap3cvHqBav7G3wt3ikUBcZo/oLqVYiI0KPj32BW
 gb5Bfb6yrglCOkGTi5sK9oNebP+RwX+OI0MuE9RzHEYSyImEo1FBfaW
X-Developer-Key: i=saurabh.anand@oss.qualcomm.com; a=ed25519;
 pk=AzGwbGUPO11yi5XTeGyJKOJWLfzXp5Dru4z+PCg/uXs=
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA5NiBTYWx0ZWRfX4XErGuCEHUUk
 mWmqEEtadoDV0D6vxzPfW/dbTP8IfA6fuNioht1QIERLCjiUUbaTw+7evDESueqWHQY/eDY7xSk
 VHM5OdJCdmfN8pvju0kMRNkCm5BW3bo=
X-Proofpoint-GUID: aUJ6tRK_YPd0BYTZmFXJSF-DUltRA3UJ
X-Authority-Analysis: v=2.4 cv=fqXsol4f c=1 sm=1 tr=0 ts=6a8c2af7 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=mNJOpbDVpywo_FzgO_AA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA5NiBTYWx0ZWRfX0kaiMM8zi7Tf
 EER/L4DqvYkZYq8kSryfJd8THRfUzwIFZnCn65Pv4qmLb62saT8yPs4Q6mkaB/5jcHXpxUrR5SK
 XohsouAO06XRp4O2JWUkNGo4oaZEd46C9nQl1gRLqiB8VI7VMacM3kmfVESEgScREXv7hseJEA6
 TRrnbrBP56drdsUQMJQfKBrS0SwqIug3Q7tb+O9CGUMdJyJaj1s6sEYpDhZ6nFJuQoLI28jXXDV
 KPnFfLkZRaqQMMgz0wiggmrTH5QIawk9hLbIL6Wfpx7+anfTzhWlcOZuElY0W6UukSuTozLulYO
 KTkaAWy7kB9TKUfy3EIXHM2Sg5etEWGuX/wZhXeQxqa1XzTKF031TCgWpgsbgbHr5SZssNs9x68
 6M5NDv4+uHxWrinaNEVO+G68l3Zfg8Pz0DpX31OrwHJV9xLzMPJwQ3Ap9mcsmMwEqF56xMu0a46
 iIWfn24rhV3IdOVv7sA==
X-Proofpoint-ORIG-GUID: aUJ6tRK_YPd0BYTZmFXJSF-DUltRA3UJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_03,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 spamscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608240096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_042858_162940_B90429CA 
X-CRM114-Status: GOOD (  17.69  )
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

During a Type-C reconnect the AUX channel may report link-disconnected
transiently while the physical cable is still present. The link training
retry loop in msm_dp_ctrl_on_link() was aborting immediately on any
msm_dp_aux_is_link_connected() failure, preventing the rate/lane downgrade
path from running.

When the display is known to be plugged (msm_dp_ctrl->plugged), an AUX
link-disconnected status is likely a transient glitch rather than a true
unplug. Allow the downgrade loop to continue in that case by requiring both
conditions before breaking out of the retry loop: AUX reports disconnected
and the display is not plugged.

The plugged state is snapshotted from dp_display into msm_dp_ctrl just
before msm_dp_ctrl_on_link() is called, so the retry loop has an accurate
view of cable presence at the time link training started.

Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_ctrl.c    | 4 ++--
 drivers/gpu/drm/msm/dp/dp_ctrl.h    | 1 +
 drivers/gpu/drm/msm/dp/dp_display.c | 1 +
 3 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
index 59070f399e2d..e8fd8f4c75fe 100644
--- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
+++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
@@ -2379,7 +2379,7 @@ int msm_dp_ctrl_on_link(struct msm_dp_ctrl *msm_dp_ctrl,
 			break;
 		} else if (training_step == DP_TRAINING_1) {
 			/* link train_1 failed */
-			if (!msm_dp_aux_is_link_connected(ctrl->aux))
+			if (!msm_dp_aux_is_link_connected(ctrl->aux) && !msm_dp_ctrl->plugged)
 				break;
 
 			drm_dp_dpcd_read_link_status(ctrl->aux, link_status);
@@ -2404,7 +2404,7 @@ int msm_dp_ctrl_on_link(struct msm_dp_ctrl *msm_dp_ctrl,
 			}
 		} else if (training_step == DP_TRAINING_2) {
 			/* link train_2 failed */
-			if (!msm_dp_aux_is_link_connected(ctrl->aux))
+			if (!msm_dp_aux_is_link_connected(ctrl->aux) && !msm_dp_ctrl->plugged)
 				break;
 
 			drm_dp_dpcd_read_link_status(ctrl->aux, link_status);
diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.h b/drivers/gpu/drm/msm/dp/dp_ctrl.h
index 5902cf7e746a..95533b0b6297 100644
--- a/drivers/gpu/drm/msm/dp/dp_ctrl.h
+++ b/drivers/gpu/drm/msm/dp/dp_ctrl.h
@@ -12,6 +12,7 @@
 
 struct msm_dp_ctrl {
 	bool wide_bus_en;
+	bool plugged;
 };
 
 struct phy;
diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index 1f60c78a463d..93a37a44273f 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -644,6 +644,7 @@ static int msm_dp_display_prepare_link(struct msm_dp_display_private *dp)
 	if (!msm_dp_display->power_on) {
 		msm_dp_display_host_phy_init(dp);
 		force_link_train = true;
+		dp->ctrl->plugged = dp->plugged;
 	}
 
 	rc = msm_dp_ctrl_on_link(dp->ctrl, dp->panel);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
