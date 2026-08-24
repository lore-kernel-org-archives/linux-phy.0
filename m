Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0EB1C5DF94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 11:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2kGboqShXfJnkeTyOkjYaZJjheAdrXlQHV+Su9xMuBE=; b=tg2RgJS45OgMMD
	5kjkxnGVBEwPcnxPa3PFjNd5tHIB4bqoOP2S7JIIMlQbftPJBREjRZcEGaI5odO4Nz+riXdXiq8FF
	K6C/kEwdRxhdZ0Flsc93Jb4vHOt81ZH+sOnPj2+VwOmoZNbS/WCCDzfptGATAjBCbcm5HQsZ2YMUD
	Cc0qYh5h3aWUDVJLMSemTzWlWbo+fC0YSXCU0qlMQDOVFqTVGCyA+hneCR6CQ1GpW2+MYRc8y9Du7
	9JcLhu5QKSa4do41llpNGE1mlDL4+JTkLKBSfEApKaHGdtxPy7FkjUX1eQAVgsDe/lImCjya4leA2
	QhFNJjAZSfneO/xDLsbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wySqv-0000000GVeC-3wtI;
	Mon, 24 Aug 2026 11:28:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wySqt-0000000GVdn-3owQ
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 11:28:33 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67OBMgGY2864728
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 11:28:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=4CmRFowfZ47tSun/jApPDw
	h5aVgBOZwiAhT8GUQqJg0=; b=nkKc7P5TvknCYmEAa3ItX+YViPnb5DiIP2+Dv5
	7ewcO+RSndW1Sv4UCY8izU/UKR/JLcmyubaxXjXmFkp6QAhdoplhK3B8+oEunzoi
	tii5rqdRiLOd9EGE7EqFEzC+kapCYQ/o7I8XfQjiCRU6zGOmticuC4maxK8S0Mah
	5HGWlLB7sMy/ut3BPBSYvw4I8xo1gCwPa/rPhEbatWq/QqDBhcyMuVHT8DvUf0Az
	UvCTGOuzwS0dit+e9/r5MPLVTK4fr4H2WHK7eCSVHz46RR99auXfHuudaopxmySO
	N4PJ8SjhiAmnmhME9dQltJHJ4KVYuuAFgyEmdTvCTJBnza/w==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8bdr26s7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 11:28:29 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-381250979d5so3560146a91.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 04:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787570909; x=1788175709; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=4CmRFowfZ47tSun/jApPDwh5aVgBOZwiAhT8GUQqJg0=;
        b=enegzLNum2JVmUACaJdMfFrXbxYCVA7IofNGuKnWtDpPYR+BJFMLA/ZjhXvOh+WPax
         6J1+84FZ/jeMXikvbKtCOA7fljmEqKbvRgjxRSOxasPWG9FaLDgC2qrMBnDWVEiXa7tU
         fEsnXyfX+Vk+F1l1D7fNnRHIOAVq4n8+Xks4t7op5h0zaowtRyTSXp4x8IoTW8pvXpaW
         E+FUIhC6NWtUzNffz7Ku3vzANJMa4YxWGrfkCw7hQQtR2656MprlsPYM8qXFCZcrExta
         7HF4GIzxI7fvA4W6mRPdmvl3TVttjq2lmgkNW/F4xgs4bYGOhJpYdx4lI+bw7NKY80sr
         SAMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787570909; x=1788175709;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=4CmRFowfZ47tSun/jApPDwh5aVgBOZwiAhT8GUQqJg0=;
        b=oubyMZw38HCdskbiQxLiGNcy41ae64wLJy5vLvqDoEbYmbr5dyLw/4EfzDotP/86uK
         aTKqKIm7IeNk0nvGr95pC52KEMCyA+TiE3pzwbB5FOoe8mGdSfVOJ4ZDCIUIUDhV1GVu
         oK9anTidFMsUwj3qmVuU+WB/3/Ah3anSe0SnmJdyIJYVu/lawVraW6vXE0hwd47JZSvy
         v0OtRDkDyBi6reOwIT2Z3yDB8KUYGRhUxFuM62HWVWNdr/l9hEdcZqV60TLLeDAh9rW4
         h+UCHsUXCE8/qNbeD0yNTrFD5QaDWm2ez59Zf3IGSO0QlRc31lg5Pw7RbeOchlpW//pk
         VuDg==
X-Forwarded-Encrypted: i=1; AHgh+RrycQ5WlqQRyo1jU0T3x0cCoUv09avhRezDHuimbDSsM2q0USzbSMVvJ0D8908W7AmFzpoChKgKqQw=@lists.infradead.org
X-Gm-Message-State: AFuF++lvYWKaRkFYwQ3erVZbT/b15ZoMLOEk8+TGU+U/fhdZ+gFH/ATI
	nhALF7c+nwvLMPKLqVB68aPJ5zkdnZMXbDSa+afpAxfsxYucZysE/Hq62E1sQqqQ7ZGyJm1D7/z
	1oWDbtNX16UVIPATR23kfXqZWNXnUsRGkaHlmUz3l0LZQwaRPfFsKC/zZfv4ivNGnLyQP
X-Gm-Gg: AR+sD11j5CQIjnsj1q21c7NMzTOOi1byrjqKVn36j96K9avgAqCfRCQRz4+jkAeir5T
	SOZ/WjCUJk220GXyA3OVYc4/M0ScceRIQSTKbq/Naf52OB4Oby5aceW8Nn7IcmwN4z6gMhcGkir
	ndjj48SJ8/fz89FHLSkY4bOni5RyoFsvWDd5A6fq1Nd/9qGyI0v2mcUd5+NEZZxQGo+CO3s5NQZ
	YsVYvh3t5VCqKnY/y+kN2Tn1u5SITfwStsn6X1lkSvyaJEbfFHtJmDxDuG+Sc7IulmvpDStLnlb
	8u7rnbTzKPuXA9Y6Mh46Uo4lpcQ7z46ydXkBoi05gLLGw50jGwVZ1VcNh3KhoYHPhGTZMEcqoja
	iC+Q8D80DSQW/1AMV
X-Received: by 2002:a17:90b:1b42:b0:37f:fd1f:d30f with SMTP id 98e67ed59e1d1-395c3a06ffcmr43323213a91.12.1787570908581;
        Mon, 24 Aug 2026 04:28:28 -0700 (PDT)
X-Received: by 2002:a17:90b:1b42:b0:37f:fd1f:d30f with SMTP id 98e67ed59e1d1-395c3a06ffcmr43323139a91.12.1787570908109;
        Mon, 24 Aug 2026 04:28:28 -0700 (PDT)
Received: from [10.213.109.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-395e4af750esm9825643a91.11.2026.08.24.04.28.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 04:28:27 -0700 (PDT)
From: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
Subject: [PATCH 0/4] drm/msm/dp, phy: qcom: improve DP Type-C reconnect
 handling
Date: Mon, 24 Aug 2026 16:58:03 +0530
Message-Id: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMMqjGoC/yXM0QrCMAyF4VcZuTZQu9EWX0W80CxqBNvaTFHG3
 n1RL38O55tBuQkr7LoZGr9EpWSL7aYDuh7zhVFGa/DOB5f8gA8qdxwrTp/KhI2p5Mw04VnerOh
 6F0NMIaU+ghm18W8wYn/4tz5PNzt8UViWFcsOSW2BAAAA
X-Change-ID: 20260824-qcom-dp-typec-reconnect-fixes-030767868837
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787570901; l=1578;
 i=saurabh.anand@oss.qualcomm.com; s=20260824; h=from:subject:message-id;
 bh=PswsC0kHCstclWvWwSDNMuzSq86/iBtX2wdJRtaS5ig=;
 b=6hEfZ5576SLS82wemytMrt7rkgq5oL/XkzUgPwLN7shjG/6Cy6MS4tVCkL1DRpF1AySG5dqmq
 tJxt5o1FNx5Cm7QOaCyFHEuWKB8CvWmj0YNHET+IENlHWB+ag7vhu0Y
X-Developer-Key: i=saurabh.anand@oss.qualcomm.com; a=ed25519;
 pk=AzGwbGUPO11yi5XTeGyJKOJWLfzXp5Dru4z+PCg/uXs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA5NiBTYWx0ZWRfX/svUsMArkQWB
 F7k24fvounRHFjYdIZy7//y9o4tQ2dq+JzhWn/I7TOfRthX558h0s6sFkWBexjIHHRB6wGtRoq2
 fjEMmsX+wsGMKQk6LzG9dYjWP2Bv9T+/183HDq6HkvVFyCIx/CLv8C9G+KssYaYLeuSlU75n4s7
 FYvzB24NvHMZNhUCsmjLbOlznVvQiGytyPfgzSKGAW5ZeiFVQjE/AW0ZMhxf1hehUamtaR8rHea
 inN62bp3z4JimjNKTYBeQfyW1bj6x8scIU0GyVWO8zO3XXZ2btVShjqzEsm3LSMJ3R4BZEO8SFE
 f/Wrf8Cx6gNxMyn0mz8jN/5ZvmUz8yGgOf8r88USLzKvxFTLWneZoYacjgDzVI8Kx9NcUZAOn6d
 p2M3tWrfktRf6NdSwUpWdDy52vmmu2IgUgFTNpUVVgr1tUaCzBvGzVrIEFake8OfTROB1ndVaRT
 LggbQYo7pVjnKkpelCQ==
X-Proofpoint-GUID: Lt-dOBx3DQe7-vtgjb9PY49qVF8vbqpS
X-Proofpoint-ORIG-GUID: Lt-dOBx3DQe7-vtgjb9PY49qVF8vbqpS
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA5NiBTYWx0ZWRfX4XYm2l2W7R9X
 2aRWH6o/DdGEjKjPYslDZcF8WCWJcrcDAGyFSC0qhWmKKW2ouadqrBx291CVnbvD0alInFukv60
 tWZFm6vd7uT3ngPFTJeiP8oVQ56JhXU=
X-Authority-Analysis: v=2.4 cv=W8cIkxWk c=1 sm=1 tr=0 ts=6a8c2add cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=_V60umORN3TpBg0EziMA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
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
X-CRM114-CacheID: sfid-20260824_042832_203776_B92D217B 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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

This series improves the Qualcomm DP Type-C bring-up and reconnect paths
by handling PHY initialization races and link-training corner cases more
consistently.

The fixes cover races and link-training corner cases in the Qualcomm DP
Type-C path. They prevent Type-C mux switching while the DP PHY is still
initializing, avoid unnecessary retraining after a successful link train,
skip LTTPR setup when no LTTPRs are present, and keep the downgrade retry
path running across transient AUX disconnects when the cable is still
plugged.

Together these changes make DP reconnect and orientation-switch
handling more robust, especially when AUX link status briefly disagrees
with Type-C cable presence during reconnect.

Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
---
Saurabh Anand (4):
      phy: qcom: qmp-combo: delay Type-C mux switch while DP PHY is initializing
      drm/msm/dp: clear force_link_train flag when link training succeeds
      drm/msm/dp: skip LTTPR init when no LTTPRs are present
      drm/msm/dp: continue link training downgrade when cable is still plugged

 drivers/gpu/drm/msm/dp/dp_ctrl.c          | 4 ++--
 drivers/gpu/drm/msm/dp/dp_ctrl.h          | 1 +
 drivers/gpu/drm/msm/dp/dp_display.c       | 7 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 3 ++-
 4 files changed, 12 insertions(+), 3 deletions(-)
---
base-commit: e6664f2b33db9b6811eb4cec109f06cb2b4f458d
change-id: 20260824-qcom-dp-typec-reconnect-fixes-030767868837

Best regards,
--  
Saurabh Anand <saurabh.anand@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
