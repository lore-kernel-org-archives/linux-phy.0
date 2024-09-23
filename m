Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18037CF9C6E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Sep 2024 11:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2sJ/vKj0l5MQsCfRxmnYxmSqGaXpGdR6kZhzTPun2x4=; b=lk9S+QFszMd6sR
	6/4L5z6bUHuy+j/Xjoz0KYOAqCM2khBcEYDp0GfgbMkfl0S34DhPT3MyUOLKYIjBVt7ticIpWaaVt
	vDA7zqxIIvJFS+2Hhbmm/7dXqVnPAg81/T0Rs3hj8ao34LqQM8USwH9d+/A9Bg25DDuhsiqg/ZBsg
	LsZPHnZ4z38B7LjX0asHzs7PMuUq8w8cCroXrFkYVRH+po2hp7rt+2lPXmaGadUJ6DEQE8x4Db4aA
	nniiNJ4+Z/UamXi0pQkCKBCSfhg88YbJT5t01TGQTjFpSv/UeX8bNK0ggxo1M010Up0salLsfKuNE
	eiiWXO97CzcRq62IoUWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sshIX-0000000H4oA-3Gro;
	Mon, 23 Sep 2024 11:32:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sshIT-0000000H4ln-33yp
	for linux-phy@lists.infradead.org;
	Mon, 23 Sep 2024 11:32:08 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48NAeBvx032019;
	Mon, 23 Sep 2024 11:31:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:date:from:in-reply-to:message-id:references:subject:to; s=
	qcppdkim1; bh=edL4kj+IIfPayS0gSR4CifL0/4nry9js71xAxy7RmWA=; b=VC
	WMvZCuc5/MVvlb03vbfTMOQulvjl47doMrP49JmRjxWxPLjBqH8Ktk1Sqx+PVgJO
	PiRKrC//72Kk4FSau7nP6K+lZKm5yOjb0exxqpZvuj9knJ6AIcOF1njS+2z5BUiI
	c0QHpEaA7Q8wNkKw4pMX3Szh5hnUYk2fyH7FFukXjt04GDxbPV93RxThNQM8VFKf
	n7Lxh9RtvxN7tp+8oj0EvrJ0zHm1ZyRxz8IaeT+dHa2NUcFcrmND475sFXEOCzN3
	KGgt36VDmclCEfiaSoV5v7mFcLP1MLwcCxdgi+d41VsX0pS8YSZxjT9srDw+fviA
	0dmNzJjpxB7JU862B2Ow==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41sn3s4g0g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Sep 2024 11:31:58 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 48NBVs3L028952;
	Mon, 23 Sep 2024 11:31:54 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 41sq7kstdv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 23 Sep 2024 11:31:54 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 48NBVsf8028947;
	Mon, 23 Sep 2024 11:31:54 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-mukhopad-hyd.qualcomm.com [10.147.244.250])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 48NBVr2q028943;
	Mon, 23 Sep 2024 11:31:54 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 3978529)
	id 9D6C35009E2; Mon, 23 Sep 2024 17:01:51 +0530 (+0530)
From: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, simona@ffwll.ch, dmitry.baryshkov@linaro.org,
        abel.vesa@linaro.org, robdclark@gmail.com, quic_abhinavk@quicinc.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_khsieh@quicinc.com, konrad.dybcio@linaro.org,
        quic_parellan@quicinc.com, quic_bjorande@quicinc.com
Cc: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        quic_riteshk@quicinc.com, quic_vproddut@quicinc.com
Subject: [PATCH v3 5/5] drm/msm/dp: Add DisplayPort controller for SA8775P
Date: Mon, 23 Sep 2024 17:01:50 +0530
Message-Id: <20240923113150.24711-6-quic_mukhopad@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240923113150.24711-1-quic_mukhopad@quicinc.com>
References: <20240923113150.24711-1-quic_mukhopad@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: kXKGx-0dPFfaIC7xCVsqhsNoOXpGogAp
X-Proofpoint-ORIG-GUID: kXKGx-0dPFfaIC7xCVsqhsNoOXpGogAp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 mlxscore=0 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 mlxlogscore=999 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409230085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_043205_797720_FA71EFF3 
X-CRM114-Status: GOOD (  12.03  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The Qualcomm SA8775P platform comes with 2 DisplayPort controllers
for each mdss, having different base offsets than the previous
SoCs. The support for all 4 DPTX have been added here, and
validation of MDSS0 DPTX0 and DPTX1 have been conducted.

Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
---
v2: No change

v3: Fixed review comments from Konrad and Bjorn
	-Added all the necessary DPTX controllers for this platform.

---
 drivers/gpu/drm/msm/dp/dp_display.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index e1228fb093ee..2195779584dc 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -118,6 +118,14 @@ struct msm_dp_desc {
 	bool wide_bus_supported;
 };
 
+static const struct msm_dp_desc sa8775p_dp_descs[] = {
+	{ .io_start = 0xaf54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
+	{ .io_start = 0xaf5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
+	{ .io_start = 0x22154000, .id = MSM_DP_CONTROLLER_2, .wide_bus_supported = true },
+	{ .io_start = 0x2215c000, .id = MSM_DP_CONTROLLER_3, .wide_bus_supported = true },
+	{}
+};
+
 static const struct msm_dp_desc sc7180_dp_descs[] = {
 	{ .io_start = 0x0ae90000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
 	{}
@@ -162,6 +170,7 @@ static const struct msm_dp_desc x1e80100_dp_descs[] = {
 };
 
 static const struct of_device_id dp_dt_match[] = {
+	{ .compatible = "qcom,sa8775p-dp", .data = &sa8775p_dp_descs },
 	{ .compatible = "qcom,sc7180-dp", .data = &sc7180_dp_descs },
 	{ .compatible = "qcom,sc7280-dp", .data = &sc7280_dp_descs },
 	{ .compatible = "qcom,sc7280-edp", .data = &sc7280_dp_descs },
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
