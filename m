Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039BB606A32D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 10:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=V53AscfY;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=MV+hzpEf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Ht4ut9/np8jK02LoOf4hSpXqwBKMZm3Np7qLcXRdFTw=; b=V53AscfYm72NNdutBY9p3T+svp
	3SskftA4255Cl+/fxS7X2fWRWUgcm4kG/ICYycb3U+cjaCvffVC6MJQ9sQ4xv60+jw9S3aWheeFBL
	qA9oPmymKi337PasartPuYZmNM27yJ1K48BGLpaHkGEyH2blj4FRs2xLfyWuvWeYPtp83W0P54BU+
	n6McBNs8Xap5KfK7VPO6ea5W44S5wxOeCmhHFMrlxKvOJNZqula9OI9PPqlS7aUCA7EzAmG9t9Dtt
	L6EOG32vtYcz0cT8L2QgUQTtIeLqTlk9DsS30GFZHq9JPWFUI3EjehSr5rKIUdlS/tyNI5GkCo+2s
	6Bu541WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR5pD-00000006Nje-34XE;
	Wed, 11 Nov 2026 10:45:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR5p9-00000006Nhc-0Rfo
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 10:45:05 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AB5KgXd300708;
	Wed, 11 Nov 2026 10:44:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=9xckWntLtPBXChvC8KkNXf4ZIxz17Bx8i1y
	3aPLu/wA=; b=MV+hzpEf+VWq5wpBEVP6pFFm0EPqmGoMrj45E31psfy9B5zxIMp
	OGMqBXkRxGoe/WYcKIoM3H8zWDEcQRaRdGEVpCRXDXVG8bKIGK/nPdWbaBqkYSt1
	wHFlOvQg1e14dwMCPXXhyOU3l8semkaMMY2iyI+qZ4+erflvJ/VeZ4Bs1+X28z6g
	XBMc36yE/f5PWTdEnTZYlz23jgXvQvcpuE26EfBXLg5nqATWDaHSx3c6h8JTSJZf
	UvxDr8assee0ndWNX/Qdp9lFCbLSc/iSXzNDl3h/ylC2XLqh2VUDli3l8iR7gZ3t
	WptyniDX7kR+aApzPJasxDC7MU5G9qlnRAg==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hv7c5kva6-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 11 Nov 2026 10:44:51 +0000 (GMT)
Received: from pps.filterd (apblrppmta01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.11/8.18.1.11) with ESMTP id 6ABAilvo010139;
	Wed, 11 Nov 2026 10:44:47 GMT
Received: from hu-devc-hyd-u24-a.qualcomm.com (hu-vnama-hyd.qualcomm.com [10.147.248.182])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 6ABAilh2010118
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 11 Nov 2026 10:44:47 +0000 (GMT)
Received: by hu-devc-hyd-u24-a.qualcomm.com (Postfix, from userid 4857718)
	id 46A6B21BD5; Wed, 11 Nov 2026 16:14:46 +0530 (+0530)
From: naidu nama <naidu.nama@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, mani@kernel.org,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        abhinav.kumar@linux.dev, jesszhan0024@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, irlied@gmail.com, simona@ffwll.ch
Cc: naidu nama <naidu.nama@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, quic_riteshk@quicinc.com,
        quic_vproddut@quicinc.com, quic_mkuntuma@quicinc.com,
        mahadevan.p@oss.qualcomm.com, saurabh.anand@oss.qualcomm.com
Subject: [PATCH v2 0/3] drm/msm/dp, phy: qcom: improve DP Type-C reconnect handli
Date: Wed, 11 Nov 2026 16:13:52 +0530
Message-ID: <20261111104434.2222182-1-naidu.nama@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Reinject: loops=2 maxloops=12
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTExMDA0MiBTYWx0ZWRfXz5LsY1xb2smF
 j2anW7XsSauJYRZybrsZEu/nMlKE6OwOI4qInJ1J7aCQvCyk/QRCwxkum9hjBR7Oo8H+tcrP6mI
 KwUB6yMTRZxxUEY73KO3Cs1zry+5fOauu9Am97BZVI1yg7qYqu1hOsmKzuNIbco/r0JPhkm2EeB
 Nn9iokn0it/mWh0dMLxHvuEFnLpKCACNdF87vC14Z1EhkQLlxg1yAmI3etvGg7LRsWDUhvP7g4b
 G/gVTjQysmX2D6PBBa8Ggk37GYio/Dt0gDeDesq38J/OmT0QRhPgqD+rQ+qlxMMz7vnlc8rckeu
 yjw9fOlXmzNiIQt84ymmKnapoKYyVsq7CBvH32AmNPF1XEeOi5/sw3zh8RkmWngnXABfOYoHaSe
 SQ+w/FUe9UwYpPhdBQ2s/OiePdWU5DNE4zVCg0ecepkQAbEf5Lbi/nipNXsLizvMRxP3+PfF9Yu
 zeK8ikA9W1C+O+bKGrg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTExMDA0MiBTYWx0ZWRfX4euQOkRxa8d3
 xnX515gWhyNARtO3Qo9vmaerpjBBzUnizbcux2X8HOm51vaJIDNDtbrtL0gAHrcdF567eidpQrd
 7D+dYzYPI7Rvfzn/x1tCL87Tu1F9MBE=
X-Proofpoint-ORIG-GUID: NjKxz3PNQvW7dVwhiBCMDDZ3StqvjKQO
X-Authority-Analysis: v=2.4 cv=eq9KXYpX c=1 sm=1 tr=0 ts=6af44723 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=zJRp6_cAMcgA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yx91gb_oNiZeI1HMLzn7:22 a=85QYPmTt-SYTKnqdTZEA:9
X-Proofpoint-GUID: NjKxz3PNQvW7dVwhiBCMDDZ3StqvjKQO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-11_02,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 clxscore=1011
 malwarescore=0 spamscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611110042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_024503_267788_809B0F4F 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.7 (--)
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


This series improves the Qualcomm DP Type-C bring-up and reconnect paths
by handling PHY initialization races and link-training corner cases more
consistently.

The fixes cover races and link-training corner cases in the Qualcomm DP
Type-C path. They prevent Type-C mux switching while the DP PHY is still
initializing, avoid unnecessary retraining after a successful link train,
and keep the downgrade retry path running across transient AUX disconnects 
when the cable is still plugged.

Together these changes make DP reconnect and orientation-switch
handling more robust.

---

[v2]

- Updated the commit message [Konrad, Dmitry]
- Handled the force_link_train varibale usage [Konrad]
- Handled the plugged field from struct msm_dp_ctrl,
  by passing  the current dp->plugged value as a function argument [Dmitry]
- Dropped the drm/msm/dp: skip LTTPR init when no LTTPRs are present[Konrad, Dmitry]

---

Saurabh Anand (3):
  phy: qcom: qmp-combo: delay Type-C mux switch while DP PHY is
    initializing
  drm/msm/dp: Remove redundant force_link_train flag
  drm/msm/dp: continue link training downgrade when cable is still
    plugged

 drivers/gpu/drm/msm/dp/dp_ctrl.c          | 20 ++++++++++----------
 drivers/gpu/drm/msm/dp/dp_ctrl.h          |  7 +++----
 drivers/gpu/drm/msm/dp/dp_display.c       | 11 ++++-------
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c |  3 ++-
 4 files changed, 19 insertions(+), 22 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
