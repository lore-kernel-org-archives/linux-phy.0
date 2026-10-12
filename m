Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DA4ECA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLKBv2XPsLxZeCTxx+wdmltm1QrmHhYwhxA2Isk/Q60=; b=pASRzg5p4jU69G
	Z9YLhNgURPJwnH9Aa1gwYpK8K2myIavvI3kv/z9EeQvp9S8Ry1jJNh+v6uf8KrTdO5Tx4L5awetZa
	jUn/kG1RtDrYeGCzszjf/fo3ziREMj+wJRKmbT3iPB7RB+4F5a4l7fVz64LDvPUU4FDx8NB0pzIOm
	164J5LfzLRmF0+fJHMyUua7r154k4EwTikynjuLo84BePtaWYQ3HTktaKuU44J/GjTZGRerj1/sEe
	JaqjMgZEnzq0tOfo6tlRwDISn6B3JDr+yM9Ld9kF/X+hYTWBXN9Q9v3835/1fZo3mdm7WZZzB8dQ+
	NyO01uNQVFNRKvqgd8Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG9n-0000000Aaf6-3DXv;
	Mon, 12 Oct 2026 13:33:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG9l-0000000Aaeh-0RIe
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:33:34 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CC079l3292270
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:33:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1BgydbxL5gnFgTs/5vZY3z8HM12JSjWAliFP2DRtg+4=; b=B1g/JLZmBYih41fz
	Fo5K7Q2TMnwJFApQt6m5QvfjJVScozrcilJYbcHVCkhIisfwOi4w+di2folhzcYh
	Ov7FMiXD6g28n5tRQ4+wtlbA2e72nP83oYW0fL3r/vAx0LjspyeuIT1Uk7OkNoJd
	JoGpGZW3/BX0oVzJSFJDHBLMDiDHpZdyeaHHHjpL38JVGBOsEx7nSjuvymgqE1/2
	E6qVBbYaHYOrcqR7MB1h1Zq5yIlXt2uqcQQO1ZQKkbA3sqIs5QX1TXj0063E3sr2
	2/P/qNTUnxp83fxpyFPel/Uk523pBuI63rE2BZg7ZRr6BZ8OAKhye3CrG52pIBLH
	YE6irg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8uh3hhps-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:33:32 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-35a0c25def6so2281622eec.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791812012; x=1792416812; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1BgydbxL5gnFgTs/5vZY3z8HM12JSjWAliFP2DRtg+4=;
        b=K/o2rYmus9FfU6ULq6/FV2ygiD2vbAEgPwMKAYBwY2EcbyMScJdkxYEHIwwbsESEEi
         E6o5Qc1FmWcC3itVBPmHMCziZGFMSmnLhst75c1akWr6jMj+Z3FXcDCJ4U2gP6sqvJhN
         5rEwP91ZsXqpaxixLwV2sDYsRXCYnmSCodCy/TCVqh+fySVbgM+HGUGrLMFBwRuxahu+
         5EtxGqB1N3YUtRqZoHQC+2d6o9PvM1W7wdnn2YvU30zm30HR2DoAAP1HbMMTPkkjK1k+
         pX/k7MmuVp9DFAyVWxHboHLxLxdAuEf3qBnfPazEp1NnVcFM1DRNNJ4oZOWSD4HzTUql
         eUug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791812012; x=1792416812;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1BgydbxL5gnFgTs/5vZY3z8HM12JSjWAliFP2DRtg+4=;
        b=nafKH8/y0e+L1o5BLHItesQAjktIDG+6bfGyoIIv65ApLpXb2lsdUO1UsaT2y7AKE4
         qo9pmO5TryXlEFJg7akg4qNko15ZlQvi41nF/ozvxbtpBW+KCjG1pRywiS1cZ4wI9yBc
         fgpPus1OQndb/nyg5rdZgjSVQMUnXqOX5OURmU88VrkD/aX/eQsRju+arlwqBq0rF0O5
         FWA4/TbR0Z2r28+etyJjhEYWTkqMs4tjpmVgv9Kn7Dk+D5l3rrBR1Hg9DsP9p+7Vv7NN
         9/uIh9ek57tTF4RO6Dv6+FoswtP28ei9rBiLUyacDsL15ojYUjSy+JmZhRWycAYFhMyd
         YARg==
X-Forwarded-Encrypted: i=1; AKwUvBxZ/o1SyeFCBRDw41J1hMujIpgPykwyvSSO/33dIvnrefhZnrRQI18J1NURCigaLjzhaxYdJizgvik=@lists.infradead.org
X-Gm-Message-State: AFq9FYIT712Wxj1K5hfF7qQPZu5G0OduF+2IAzH0NleB3PVX0MB+NAPp
	I+M/bjdPVeG3PGC7TxtqBHsy4eQQCl8a+nUFX7tlu+3GDDwZRtIHexl7BZYtq3182w1k3tThHvJ
	oGsRQdQRKf74HeGfkkgDpp2pSLj+madTeuJv2tCtnN+B5RBuj6EJH/5T81laUydudLEiF
X-Gm-Gg: AYBFou0C9GAvgEMvWEZiVjTA8ORq7ETy3HItgvMOTgiC9xbBo6KWwFHe2+D9ou9JIoh
	cC3048abzzfV379RPXRK5ROj6FxnyiiEb76V6MHr7ej9nPYm7tfWJfhWZkfGMfSjgEN1iG0Uxvc
	KQeQtizK1IgyrAvjPTZ6e02H8qaKEQTBP6gjB1zAOMXWM4bSqHFgILY1orZ5s9AYp6dxK5FeVVi
	lcoC7U3S7w/kt5tDnkPSKeR41uHHQJatWNIr0uei0PUz75zQYwsvJyPS7MGqMIZN2TXq6WUiXqX
	MoExoN0GpK6a3ReVLc0UArBc9EG9owDS2H7kuYAt/qp/5c7JR7jxLFzAy802jple5dFuBcV9Zk4
	4r75U33/CgSCAgYjlYqWJhpTLP9k=
X-Received: by 2002:a05:7300:cf8a:b0:351:1ec9:aa4a with SMTP id 5a478bee46e88-3537e063a23mr11970379eec.26.1791812011481;
        Mon, 12 Oct 2026 06:33:31 -0700 (PDT)
X-Received: by 2002:a05:7300:cf8a:b0:351:1ec9:aa4a with SMTP id 5a478bee46e88-3537e063a23mr11970325eec.26.1791812010749;
        Mon, 12 Oct 2026 06:33:30 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537ca1b556sm44740397eec.9.2026.10.12.06.33.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 06:33:30 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 19:02:16 +0530
Subject: [PATCH v2 06/13] drm/msm/dp: Add support for DP controllers on
 Nord
MIME-Version: 1.0
Message-Id: <20261012-nord-drv-dt-v2-6-a2ab9af954d2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791811948; l=1767;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=66JtXzji1QajcVRTK89pE3DM5ER0MuHJ654ycwA6qSI=;
 b=kB21rf3weXGt0FrypFIMvBPneNYZUAMZ7x1MMLTq7YnZY9HA3x+wh0ohqJGZrdtL8m2dfzOT3
 pR3PyqDrrXrDffe2ucAKIJJQcpIRWRlC82ciCDP7B4PXBDbbPK1pL8K
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfXyqvu/1WnMnY6
 Ih88NdVAy/MAfcR8ch7vJ6NWHhD5XUx56hA6831MB0Ajgk/7ixwVfnh1LrkwcPRnYnYCQfXjbwy
 CcNl3QOdYDLxijYxAlI3gGA5ethdKhFgojpgS1KVvPQI5UyHe7mkULbZEeCLGO4rDWrPZXqJJHq
 cwAn74HvLQ87BZEoxZZMsn8D5bVPt/lEsCSy+KAtsBs6xmwYF2veUlu/Hb4vZ++mF/25Yh5zV+3
 JBNtMFDJGHWDVuq+WL73IGvmpdWhfUKUxSGReAwl7rbmRGvQWHzxNNbF1EVzji1iwp9EvigOoxp
 oyTw5uE/PSGJ21QfJjTSxUZYkDwYwWv9Pz48xjcxBUAtoHKi9BJnm3gPp8eFq9lgCrRPpYUGbJk
 3T1jA9V8DJgdPb1fLp7P7MM3CjWRICrrpgqMnmwQsA0/yuRcKD1wp6PbTaEktd7dZqt6hxN93nI
 OFZDrRjWEAfK4PzmdEQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX+bm4d9jVY9tv
 mBeJx73VVqd+Au34yWJ7z9Vq+u3dwi5Yb7hgvQETf1saXBtzGFK4T1Fo2LAF5cFCj9MLOiPNByI
 Xl3HeyLPJUU48N7qJrZ8IaddF0hb/RQ=
X-Authority-Analysis: v=2.4 cv=QO391QLL c=1 sm=1 tr=0 ts=6acce1ac cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=U3LaRFsynPqcHeHyg24A:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: 7oaZ8tVtci4t_wEmQZhAg4jCRYfY2cfy
X-Proofpoint-GUID: 7oaZ8tVtci4t_wEmQZhAg4jCRYfY2cfy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_063333_432185_0FF7BFF3 
X-CRM114-Status: GOOD (  12.48  )
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

Add the Nord DP desc and compatible. Nord is supporting the
four DP cotnrollers, two per MDSS instance.

Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index bc646d172abe..7d233da396fa 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -103,6 +103,14 @@ static const struct msm_dp_desc msm_dp_desc_glymur[] = {
 	{}
 };
 
+static const struct msm_dp_desc msm_dp_desc_nord[] = {
+	{ .io_start = 0x0af54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
+	{ .io_start = 0x0af5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
+	{ .io_start = 0x08d54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
+	{ .io_start = 0x08d5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
+	{}
+};
+
 static const struct msm_dp_desc msm_dp_desc_sa8775p[] = {
 	{ .io_start = 0x0af54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
 	{ .io_start = 0x0af5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
@@ -161,6 +169,7 @@ static const struct msm_dp_desc msm_dp_desc_x1e80100[] = {
 
 static const struct of_device_id msm_dp_dt_match[] = {
 	{ .compatible = "qcom,glymur-dp", .data = &msm_dp_desc_glymur },
+	{ .compatible = "qcom,nord-dp", .data = &msm_dp_desc_nord },
 	{ .compatible = "qcom,sa8775p-dp", .data = &msm_dp_desc_sa8775p },
 	{ .compatible = "qcom,sc7180-dp", .data = &msm_dp_desc_sc7180 },
 	{ .compatible = "qcom,sc7280-dp", .data = &msm_dp_desc_sc7280 },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
