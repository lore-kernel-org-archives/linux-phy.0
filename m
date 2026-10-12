Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06CEECA9EDB
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 06:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpB3WF3yyAcIbWX0YMS2M21P6q6VmPu/c9bXPFPyIUA=; b=AAzwQ5xaTHE1dG
	oHzekzgVidvbiZQdAhoocZDYDLn16QUGUsXozw86sU9RvtNw6kdie/PbC+0xnOESiJLZPRLDkDTgt
	yC8KfLGAesqd1gWH1Da79/THRM8yFLwpRVz4DhPGLdnw2zx7pZ6MbDv6Umtj/RpGRe91McAKjgYn1
	ilgGZOkheugx0kx0R+V5MQZ4doLMOorf32mvT74mcAdCe2AUg3CZ6EfyaU6Q3VKfU7air54LquRNA
	tMfNUxE4Pw71bDNxxQzdth+wZUKTYv6led3TZ2xss1ncpYlKIQtUkm9AdrsjdDJUmYI75IsiLJ9oa
	f/fCB3dpyBH7knRqdjEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9mw-00000009lcY-2npd;
	Mon, 12 Oct 2026 06:45:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9ms-00000009lZM-0gdn
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 06:45:32 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69C55hs62355049
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PGMq8T8n/fmFChQTImLI0/8YOyadttJOmYpYwXVmHL0=; b=WMXDbcIc8KpFBudV
	ryIZVcX5CaPbs3/Ujav+lrEs6biDXJ98H7FzUqBjZClC+6VHx9EehFjrBjw4oY+F
	FUyFo8WaOYe4+OiAAQv7+In3i6KZrWWokbcZFvwgO31d9XC/YJ7zFUP2h9HhF7Au
	x2hsa2HNjDHemOcRUVkoa21XJkncZF5vh+QC75HHBJ/Wska1yLOcCy+xtEL1l9VG
	uGZ62w3hmlFsxiC+f4XausKhqmN/KZi6VRpQH2NBKVCrJIxaChuy/VuCVrJrbsbv
	uNqPQnNB82vRfXuJD0aXMMi/bLMvhczTwyeNmA8j4CKAAZ4KroZwYFdTLwKygp5q
	0rZDbQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7casdc8q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:29 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-86fa6b15ed3so2456715b3a.1
        for <linux-phy@lists.infradead.org>; Sun, 11 Oct 2026 23:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791787529; x=1792392329; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PGMq8T8n/fmFChQTImLI0/8YOyadttJOmYpYwXVmHL0=;
        b=c9zhriAgAFB31hWGhhjgVcbDDwaxJPeu9ohW8ingNMAJmfkdec8fJoyiPYDLHIgP/S
         jdbqvv+8uiB0tEtCAMpisBCLzZooVNDOrtgWDr9I5XjJEjk/5ec2GYfkisfMiz9REzQi
         X82R7nyNMOFv84QS57vKT+29sDv2TvSkLxDqyENf1oMaLVKSQqjfzVRxUVf0Ioxtt8MB
         Ul1eEByJkez7uSdAu2RvZQi9C1pe+Etm6vJ7CEzBUAhugrXIvwGxehUcDnm1pVpSnmw/
         UPD/9IK6JJH4LdOhflwK7BJfc86u8go9VbLTkDEJl5AqkISYyGroPG/cEfvmNpNSIjNf
         YVBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791787529; x=1792392329;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PGMq8T8n/fmFChQTImLI0/8YOyadttJOmYpYwXVmHL0=;
        b=1DlUzbPZ56sOfoBsqzAZjSgGpaakSjc3WXGYWFrmchULQpSe00qYmiD7xGeUnR8CTo
         mK+zkp4tTrNrhT5Dam8J5zAVcLJsFg7NLONmHxak6fmrnukrC2FqgW5X87r0cbLhsD7Q
         Py0HzDRAymB7IFOjCISpmieX/5mbH5GJjXEMemsejNi7CcgVQTRLFIxlBW0TAf/aX+PY
         4ApUWkJJ/FGpZZI3dyO24yTjBhG8vxEMxRpr7deC6Ey+QwnyFCQKOOB2j4B+TQwxqhRG
         agd0RfwH5jEF4SaPAV7jW34lRn/ziNqp5SOeNC0WkJe2l6Gpe6yPJJsfZbJJj0QWqp1E
         qddg==
X-Gm-Message-State: AFq9FYKsF4pOpEQRioNjuZANggS3UjGWn7XZ2hqmqk7DeSJ8Q6efHdFj
	skHvIX+DMndMBlsRL3YSNoVG/KUM2e8KhK1MBvy1O8sBImo6hndeNsMpyjP65GcxTDC+mYLKcsN
	bgR5PfIKmzQy9fyUArmSw33oSbBoANm1n6p0S8JPDwQjfavGLuN/mV6Gi75mbTw1PFuM5
X-Gm-Gg: AYBFou3ddoPzo5LwsUbZj97LkkpTzJkjHzfcLTxEB3PJqP3Fe4s5Mr+0lkreihPruYT
	go8mm15DtxlKdVDGaxp4WOiw7OKb5PrTsmRtkiQo6TYzLWywStpV5d5DtDAFwTzR46n+Z21dnc/
	tW55+b3H/cO6KPX7qZYSJ6VsNDCi0d7qnlNS6M14DaVu3/Vlw+6dHWp6h5v5ey4n/ylDuMfTUtH
	bKIRm4UI6Dn3llYT5Va7k5BQWBdK9S9OOZI62FbLjiHzE4d+4kxrsi2FzKEUqROY0/sQCHBPjP+
	XIJ7D4klicKyEminZuci44uSXTBPmnfpMTARWcyDsDmeXJMrSyRKO9CoT2/D/Ym//QV2XrbPZJR
	1JlmotO5Ispa2m/W07SZ8GVkjSpEXPHZFwGGYcZW2FCSMF7+qBONs/2BetzThDeZC7Vx60V7zbD
	3fdRPZy4rjIQ==
X-Received: by 2002:a05:6a00:18aa:b0:888:119d:efae with SMTP id d2e1a72fcca58-897c8b899cfmr8312968b3a.53.1791787528987;
        Sun, 11 Oct 2026 23:45:28 -0700 (PDT)
X-Received: by 2002:a05:6a00:18aa:b0:888:119d:efae with SMTP id d2e1a72fcca58-897c8b899cfmr8312949b3a.53.1791787528518;
        Sun, 11 Oct 2026 23:45:28 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-896c3dc6c93sm3534420b3a.33.2026.10.11.23.45.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2026 23:45:28 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sun, 11 Oct 2026 23:45:06 -0700
Subject: [PATCH v21 04/14] media: qcom: camss: Issue stream-on REG_UPDATE
 from CSID
MIME-Version: 1.0
Message-Id: <20261011-kaanapali-camss-v21-4-04fd28d815c6@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
In-Reply-To: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX5Uegu0OlTm5E
 fH/KjLxpOKCi+BqyokI6NihkVHMitQgk6aMfvK4KOR4ddLOkdEeNHP8m+SGqsK0/H+jLmBUilNw
 0c0646/0KUZGrH8lTeJXPKC6ioVlr1A=
X-Proofpoint-ORIG-GUID: Ufr2Si9WNOcU6I6YYycKbN-T5KjBYGGp
X-Proofpoint-GUID: Ufr2Si9WNOcU6I6YYycKbN-T5KjBYGGp
X-Authority-Analysis: v=2.4 cv=eMWGH3p1 c=1 sm=1 tr=0 ts=6acc8209 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=PawOzgAtrr2O3SqsEfcA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX/pRyrhhcgTq9
 EHKFtsWRCx4HoIujNB04nrI7sKzVmBeKStDxP8F1gYJu21h9Wg56l8y3jkt9eSdsGj6jsHjFYJz
 W6xfZCbzZZ22eO16Y45/OBakQi6uJyg8UtZp2L35SErZEnqosrra0jXp8A6QM/d/IcWvXklXrk5
 qaJIQ70wHLYek7Xlk6hnDHw4hOOwOhiBdk6KcJcIRzTrKVcLCdhqw3J36AW+JYfO8ja46c5Da0q
 LSdIDmkchnFM1AKxpZpYtjSNXaDnTyw/4Pmd9GI7ueRSb0cyX7USZJJ1Wl+EJ5heF3TEv8p0c5i
 ChkiHULc0N2p5hcEzgji7TwgUp5TarAMVHUatskXOvH2W4g8Nn9Gq+Q/GqKcU04vj8OpOJ57KK/
 mNOau+QGaT7JXrofVgDotrgLMJhYvp+uMm3ZEqlbmATn+cOIjx3iEQXgacg/gyA7b7fYOBAcoOi
 PInKD8iDELBmRljwSIg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_02,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610120026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_234530_234254_A2A9501F 
X-CRM114-Status: GOOD (  19.55  )
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

On stream-on, CAMSS starts the subdevices upstream from the video node
through their sink pads, so the VFE is started before the CSID.

Starting with CSID 680, the REG_UPDATE is issued through the CSID
rather than the VFE. However, vfe_enable_output_v2() still issues a
REG_UPDATE after queueing each initial buffer, before the CSID has
configured the stream. The VFE then never signals BUF_DONE. Therefore,
the CAMSS now issues the REG_UPDATE from configure_stream() on CSID 680
and CSID Gen3 instead. The operation happens after the RX configuration
and before the RDI path is enabled.

Skip the VFE-side stream-on REG_UPDATE only when the CSID connected to
the VFE sink pad implements the reg_update callback. Platforms whose
CSID does not provide this callback, as well as lines fed by ISPIF,
keep the existing VFE-side REG_UPDATE.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss-csid-680.c |  3 ++
 .../media/platform/qcom/camss/camss-csid-gen3.c    |  3 ++
 drivers/media/platform/qcom/camss/camss-vfe.c      | 37 +++++++++++++++++++++-
 3 files changed, 42 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csid-680.c b/drivers/media/platform/qcom/camss/camss-csid-680.c
index 345a67c8fb94..556cdfef6207 100644
--- a/drivers/media/platform/qcom/camss/camss-csid-680.c
+++ b/drivers/media/platform/qcom/camss/camss-csid-680.c
@@ -296,6 +296,8 @@ static void __csid_configure_rdi_stream(struct csid_device *csid, u8 enable, u8
 	writel(val, csid->base + CSID_RDI_CFG0(port));
 }
 
+static void csid_subdev_reg_update(struct csid_device *csid, int port_id, bool is_clear);
+
 static void csid_configure_stream(struct csid_device *csid, u8 enable)
 {
 	int i;
@@ -307,6 +309,7 @@ static void csid_configure_stream(struct csid_device *csid, u8 enable)
 		if (csid->phy.en_vc & BIT(i)) {
 			__csid_configure_rdi_stream(csid, enable, i, 0);
 			__csid_configure_rx(csid, &csid->phy, 0);
+			csid_subdev_reg_update(csid, i, false);
 			__csid_ctrl_rdi(csid, enable, i);
 		}
 	}
diff --git a/drivers/media/platform/qcom/camss/camss-csid-gen3.c b/drivers/media/platform/qcom/camss/camss-csid-gen3.c
index 0fdbf75fb27d..830c9c818d3d 100644
--- a/drivers/media/platform/qcom/camss/camss-csid-gen3.c
+++ b/drivers/media/platform/qcom/camss/camss-csid-gen3.c
@@ -219,6 +219,8 @@ static void __csid_configure_rdi_stream(struct csid_device *csid, u8 enable, u8
 	writel(val, csid->base + CSID_RDI_CFG0(port));
 }
 
+static void csid_subdev_reg_update(struct csid_device *csid, int port_id, bool is_clear);
+
 static void csid_configure_stream(struct csid_device *csid, u8 enable)
 {
 	u8 i;
@@ -230,6 +232,7 @@ static void csid_configure_stream(struct csid_device *csid, u8 enable)
 		if (csid->phy.en_vc & BIT(i)) {
 			__csid_configure_rdi_stream(csid, enable, i, 0);
 			__csid_configure_rx(csid, &csid->phy, 0);
+			csid_subdev_reg_update(csid, i, false);
 			__csid_ctrl_rdi(csid, enable, i);
 		}
 }
diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
index 2680a9914765..16a0b5663fe2 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe.c
@@ -502,6 +502,37 @@ void vfe_buf_done(struct vfe_device *vfe, int wm)
 	spin_unlock_irqrestore(&vfe->output_lock, flags);
 }
 
+/*
+ * vfe_upstream_csid_has_reg_update - Check whether the CSID feeding this line
+ * issues its own streamon RUP (i.e. its configure_stream does the RUP).
+ *
+ * The CSID->VFE link is created in camss.c for all CSIDs and VFEs, so the
+ * upstream entity of the sink pad is either a CSID (possibly with RUP) or an
+ * ISPIF (no RUP). Only enabled links are considered.
+ */
+static bool vfe_upstream_csid_has_reg_update(struct vfe_line *line)
+{
+	struct vfe_device *vfe = to_vfe(line);
+	struct camss *camss = vfe->camss;
+	struct media_pad *remote;
+	unsigned int i;
+
+	remote = media_pad_remote_pad_first(&line->pads[MSM_VFE_PAD_SINK]);
+	if (!remote || !is_media_entity_v4l2_subdev(remote->entity))
+		return false;
+
+	for (i = 0; i < camss->res->csid_num; i++) {
+		struct csid_device *csid = &camss->csid[i];
+
+		if (&csid->subdev.entity != remote->entity)
+			continue;
+
+		return !!csid->res->hw_ops->reg_update;
+	}
+
+	return false;
+}
+
 int vfe_enable_output_v2(struct vfe_line *line)
 {
 	struct vfe_device *vfe = to_vfe(line);
@@ -511,6 +542,7 @@ int vfe_enable_output_v2(struct vfe_line *line)
 	unsigned long flags;
 	unsigned int frame_skip = 0;
 	unsigned int i;
+	bool rup_in_csid;
 
 	sensor_pad = camss_find_sensor_pad(&line->subdev.entity);
 	if (sensor_pad) {
@@ -523,6 +555,8 @@ int vfe_enable_output_v2(struct vfe_line *line)
 			frame_skip = VFE_FRAME_DROP_VAL - 1;
 	}
 
+	rup_in_csid = vfe_upstream_csid_has_reg_update(line);
+
 	spin_lock_irqsave(&vfe->output_lock, flags);
 
 	ops->reg_update_clear(vfe, line->id);
@@ -552,7 +586,8 @@ int vfe_enable_output_v2(struct vfe_line *line)
 		output->gen2.active_num++;
 		ops->vfe_wm_update(vfe, output->wm_idx[0],
 				   output->buf[i]->addr[0], line);
-		ops->reg_update(vfe, line->id);
+		if (!rup_in_csid)
+			ops->reg_update(vfe, line->id);
 	}
 
 	spin_unlock_irqrestore(&vfe->output_lock, flags);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
