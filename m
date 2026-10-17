Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D3EACCF2CA
	for <linux-phy@archiver.kernel.org>; Sat, 17 Oct 2026 17:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dFp1af30vnDRXQEX2ec4XjC6mG+blXgNQLf3N4xApk=; b=TdgcVSVl+prTJI
	xWfOHiMMB5sVbnDGSJVbSLMURuf/28Oo5YMdAmHCgwXJ1JbiMe80wokIqaCzZZF3MzfSzZ6vRK8nZ
	vnSEGqdSOqcQ1pWW4KPEho1wZSc4oVIOTNrL4rwBgq4C0sbmjDeahXiSo24jrHkIPb0vIclNSCluQ
	vsChfk5wQDeFxFZZYPJDYffcp8OvkKaVsZV+I/N4ykihG4o4v6pdCNQhGaTlzZa+PVocBQY1l3hfo
	xWQC5fjsa0qWBVStTCfrTqp3avFTH9pkoEFv9giSs5fazGu8ssJWCI1K6CGhBXaXlMC7qRGVKVCYW
	Uwrl6zD0oa7d4A+xb7gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7yU-00000004yxi-35lz;
	Sat, 17 Oct 2026 17:13:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7yS-00000004yxA-0bJU
	for linux-phy@lists.infradead.org;
	Sat, 17 Oct 2026 17:13:37 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69HGA3eC019873
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:13:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2Z3ZvBV6x0VOlnroXPGGo486t6fpn5GiWYT9/m40b3A=; b=R4zYrXE83RY9Fix9
	fA73EVqgzUDxLBIHWC/orHTIPnAchkCm8Nl100i5RfR8arMYr6+oIR0GDD/o68it
	WgQlQGcyIXYs6J549pYHl8QVDDG0FtlOP+FdHvzE8LE9GVfgPVXvopEGHyf56l19
	y8DQHapbkD616934dHj4LHkmx8rTSDZGj4LlioA03BWJe2/uTRlytEZSp5MvcmPk
	FZ9M8c+OFCgK5tVndXWRYeze9OaP2H8Q6l5BAXrI+c+nWem1Zs8SUgdWImNm1d1R
	nAwM04ye5HHzTp43BnBzZ9Uv94WvSXM/ltOouGXiIc5XzC5BlqRjHlDiA1JA6bEx
	51miBw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hc26k199u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:13:35 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-33c35f5ca6cso1755153eec.1
        for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 10:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792257215; x=1792862015; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2Z3ZvBV6x0VOlnroXPGGo486t6fpn5GiWYT9/m40b3A=;
        b=S7QS1pFy185w1Z9hvGLnX1uN/Zt2Kant6MziGuW0qAv+wxdF1PXRoMnmVdzdIslQ6H
         1lSLNlcmHTXP+Hn0VPA32nYIBKFrxvbB/HMsrdj1crZ4CLinV3d2ZKDniHwjOqOxCtcE
         HqeYCXf9xfSFlTdqQNdkAJ46Hrjk1iozmp7Gku/KFc5xBgfRy2ptMg3HAcpWb6Zk1CbY
         oH6quM0fRN2ANQmGnq2i6C2t9kh9iPSYo9ZMazxAMHGnnu8NGmUNyfpcLB7LX7tKD/DT
         AFnk4btoFYn+pmJwNPR/JtFUueBeP25tFipBj5IaDVmJAav4MxNKwhZ7Xyjc4GAbkHWO
         wNog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792257215; x=1792862015;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2Z3ZvBV6x0VOlnroXPGGo486t6fpn5GiWYT9/m40b3A=;
        b=fE3ORKdYlQjW+JA+UA7TpubDnnO8BvCscZ//QP49/03VvnmCw9pjFy3SZJHA+pro3c
         al5c4uoYEQRJjx1gtXOJz1iQqyjHUdZGdD+SM9FiJ8s86rACgmUSo1qfWhN6tWv0TYGb
         mr8AM3lyc+PtaE1VpkA0Efvzc6aN9Vz3CkraDh15EBeaqqMLlxcF5L/hrFCfrigZ+shL
         eQl61udwkX5JHs8C+qSiroo3pHIFGKVJ7UkGoU63Ajch+0YbWl6PWSvz7EmDv7krr05W
         O5+RNxp2jRoaZSIsi9Ao+zfYRBe8o5t5WKfCPvVV8TYMTDq/uOO4x3GyeJbzvtonwf/y
         KUUg==
X-Forwarded-Encrypted: i=1; AKwUvBwq9DRAXPVc4E0SRl+XqMJEFKljwrSQwfJpP1JjuU4p27Mipk9qpEsRirQ3mgdfLTf/Vfd8DhBUwRg=@lists.infradead.org
X-Gm-Message-State: AFq9FYIatuog4U7k30W2G9LP1auKTBFkJ2YOO6EOJpxJYEdAGg5KrDHB
	G4n3/Nl8BSL9NUjTosZN/8GNemSR2KRL+aQcJziNgbwKX6Tke0zQuATCwI/A2EvsPUCtGpn9xF3
	BrG5J/nJPc1yX5qzSrl+pwzZpVuFETiI9XGxFZq6KOiUVBfNhXZaCZuunPHdtkpM3Xkz7
X-Gm-Gg: AYBFou0xSJDUBWFa7bxgapY0HtZgTLIi4og+Umq7P4ui3UQdBbl02VG+pwDoeEfm+kN
	wy4cE4ihJFjr/MWcn/BbWJkln3O2SErlsCWMkznOTIMRyLJvHy7S+QuSA9ym/4yAGqv14V8LpSG
	UElw8B5JZU2scfF+9VQTIqZhueeZAGFUEgB9CZA7vu2tSBiUbbVzdDXm8k8PpHGDTRgz1vILZoO
	z5cSPbNmASWDYvVSw0b5BhaDEt4ac+P2mxo83SVtEWDmy7GFWeyuo2MCDjorBkrzN44/2xPT+pF
	/I/KuB2+zvSbObJdaAvLyN5Lg+X879Dq2BLbpMzSKPLGNER/9NfWwEyhUrECc5jKryZIJXUlKiR
	zmWsu3bGsMPHLmeHaevdaPZqVgUWKTA==
X-Received: by 2002:a05:693c:4152:20b0:34e:c001:1486 with SMTP id 5a478bee46e88-361a0b97ba9mr4942448eec.8.1792257214694;
        Sat, 17 Oct 2026 10:13:34 -0700 (PDT)
X-Received: by 2002:a05:693c:4152:20b0:34e:c001:1486 with SMTP id 5a478bee46e88-361a0b97ba9mr4942403eec.8.1792257214089;
        Sat, 17 Oct 2026 10:13:34 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-360813b6e33sm17893966eec.7.2026.10.17.10.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 10:13:33 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Sat, 17 Oct 2026 22:43:09 +0530
Subject: [PATCH RFC 2/6] media: qcom: camss: Add C-PHY timing fields and
 get config from sensor
MIME-Version: 1.0
Message-Id: <20261017-cphy_support-v1-2-8b0e1237ce95@oss.qualcomm.com>
References: <20261017-cphy_support-v1-0-8b0e1237ce95@oss.qualcomm.com>
In-Reply-To: <20261017-cphy_support-v1-0-8b0e1237ce95@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792257199; l=7527;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=mrZCKxlte38Z4rcqmMXHQzBjM3D3yZZPZyfosetq8XQ=;
 b=6NvCfR2a9ykAq97/zA6GxRlSk5qkrwG6FIm1ek8W4OHQN0FdcoevVBk4dlCDYuhJESINgJ2R2
 QdFFTCo+CKDCmVAmYTdjWR4M/Zye/jXNCEEvZiDqywaWX4LaA1jn5z4
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDA2OCBTYWx0ZWRfX2Po2ayGsyvWr
 JmDjLyulV0e11MC+mxTLjP65Ir5NpBu2mB/tyIQZDl6F70zn3Cl0PsRVcLBQ0Izli+Y1bo9JYGb
 T8KAvk4r3HqUhEg6ICiDt5+x4aWt8dx/raWIzfckoEadb+4r8upa29RkfHn+ca/6/aS4NmvUiL5
 52McBqIJWjjTXmomaDmH5sri+K8sQEC/DGtRukREDaApcd+1ZpyehkXiEe735dnadU9hKuU1dbS
 tshoWfHjzc64ZYjL4fYjbTM+vKqflG1BCf044mYf0vYVL0tJho4Vs+Hz6q/MfRNAcD53FfwkDt1
 4fxnLmSfv207ojMGEPqDsgHhQDMlYGBRis6YPSl4vff7KUYnAMUOlTUKwpdLhSgJWVN0J1J/FDz
 MmnoVnHK+xA2a0AJHbvBX9OLr0NKv5IQ96kbf1ouaSQOeAlNfW5tdhA0qMu0MDDpJIk6Y1ZCkFi
 zp9XnWPhrwnCX8eHQbg==
X-Proofpoint-GUID: fB7SeBrfR3f9RIEkE4UIzP7_Nev1D3Dz
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDA2OCBTYWx0ZWRfX+XJq3eM2SRUj
 K/ZivNAkaTvwtPYzcV1dqQHHdlJ4MU0GK3ftxbh2qHuWXtYBs55pP1yXFDuntsK7Itd8EKPXB9/
 4ASwSYq38+ON0qwYvJUg9f6U9HaBlJw=
X-Proofpoint-ORIG-GUID: fB7SeBrfR3f9RIEkE4UIzP7_Nev1D3Dz
X-Authority-Analysis: v=2.4 cv=Cowq4X4D c=1 sm=1 tr=0 ts=6ad3acbf cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=uwparDF5YPYKf_HLZKMA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_05,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610170068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_101336_198316_913A17CB 
X-CRM114-Status: GOOD (  21.98  )
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

C-PHY settle count is derived from the T_PREPARE and T_PREAMBLE link
timing parameters reported by the transmitter. Add C-PHY prepare and
preamble timing fields to the CSI-2 media bus configuration.

The endpoint bus type already describes whether the connected CSI-2 link
uses D-PHY or C-PHY.

Accept C-PHY endpoints, store the parsed CSI-2 PHY type and query the
remote sensor media bus configuration for C-PHY links. Pass the reported
link frequency and timing to the generic PHY while keeping the existing
D-PHY fallback path.

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss-csiphy.c | 90 +++++++++++++++++++-----
 drivers/media/platform/qcom/camss/camss-csiphy.h |  2 +
 drivers/media/platform/qcom/camss/camss.c        |  8 +--
 include/media/v4l2-mediabus.h                    |  2 +
 4 files changed, 79 insertions(+), 23 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
index f99eea2ef2289cbee404808348c06968350dc4ac..ed2318d76987d6a9ae7e185d00e258d49d0c79a4 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
@@ -313,6 +313,29 @@ static void csiphy_stream_off_legacy(struct csiphy_device *csiphy)
 	csiphy->res->hw_ops->lanes_disable(csiphy, &csiphy->cfg);
 }
 
+static int csiphy_get_remote_mbus_config(struct csiphy_device *csiphy,
+					 struct v4l2_mbus_config *cfg)
+{
+	struct media_pad *remote;
+	struct v4l2_subdev *remote_sd;
+	int ret;
+
+	remote = media_pad_remote_pad_first(&csiphy->pads[MSM_CSIPHY_PAD_SINK]);
+	if (!remote)
+		return -ENOLINK;
+
+	remote_sd = media_entity_to_v4l2_subdev(remote->entity);
+	if (!remote_sd)
+		return -EINVAL;
+
+	memset(cfg, 0, sizeof(*cfg));
+	ret = v4l2_subdev_call(remote_sd, pad, get_mbus_config,
+			      remote->index, cfg);
+	if (ret == -ENOIOCTLCMD)
+		return -EOPNOTSUPP;
+
+	return ret;
+}
 /*
  * csiphy_stream_on - Enable streaming on CSIPHY module
  * @csiphy: CSIPHY device
@@ -324,43 +347,74 @@ static void csiphy_stream_off_legacy(struct csiphy_device *csiphy)
  */
 static int csiphy_stream_on(struct csiphy_device *csiphy)
 {
+	struct v4l2_mbus_config mbus_cfg = { };
 	u8 bpp = csiphy_get_bpp(csiphy->res->formats->formats, csiphy->res->formats->nformats,
 				csiphy->fmt[MSM_CSIPHY_PAD_SINK].code);
 	struct csiphy_lanes_cfg *lncfg = &csiphy->cfg.csi2->lane_cfg;
-	struct phy_configure_opts_mipi_dphy *dphy_cfg;
-	union phy_configure_opts dphy_opts = { 0 };
+	union phy_configure_opts opts = { 0 };
+	enum phy_mode mode = PHY_MODE_INVALID;
 	struct device *dev = csiphy->camss->dev;
 	u8 num_lanes = lncfg->num_data;
 	s64 link_freq;
 	int ret;
 
-	dphy_cfg = &dphy_opts.mipi_dphy;
-
-	link_freq = camss_get_link_freq(&csiphy->subdev.entity, bpp, num_lanes);
+	ret = csiphy_get_remote_mbus_config(csiphy, &mbus_cfg);
+	if (ret && ret != -EOPNOTSUPP)
+		return ret;
 
-	if (link_freq <= 0) {
-		dev_err(dev,
-			"Cannot get CSI2 transmitter's link frequency\n");
-		return -EINVAL;
+	if (ret == -EOPNOTSUPP && lncfg->phy_type == V4L2_MBUS_CSI2_CPHY) {
+		dev_err(dev, "C-PHY transmitter does not report media bus configuration\n");
+		return ret;
 	}
 
-	ret = phy_mipi_dphy_get_default_config_for_hsclk(link_freq, num_lanes,
-							 dphy_cfg);
-	if (ret < 0) {
-		dev_err(dev, "Invalid config for link frequency %lld\n",
-			link_freq);
-		return ret;
+	if (!ret && mbus_cfg.type == V4L2_MBUS_CSI2_CPHY) {
+		struct phy_configure_opts_mipi_cphy *cphy = &opts.mipi_cphy;
+
+		link_freq = mbus_cfg.link_freq;
+		if (link_freq <= 0) {
+			dev_err(dev,
+				"Cannot get CSI2 transmitter's link frequency\n");
+			return -EINVAL;
+		}
+
+		cphy->symbol_rate = link_freq * 2;
+		cphy->trios = num_lanes;
+		cphy->t_prepare_ns = mbus_cfg.bus.mipi_csi2.t_prepare_ns;
+		cphy->t_preamble_ns = mbus_cfg.bus.mipi_csi2.t_preamble_ns;
+
+		mode = PHY_MODE_MIPI_CPHY;
+	} else if (ret || mbus_cfg.type == V4L2_MBUS_CSI2_DPHY) {
+		struct phy_configure_opts_mipi_dphy *dphy = &opts.mipi_dphy;
+
+		link_freq = camss_get_link_freq(&csiphy->subdev.entity, bpp, num_lanes);
+		if (link_freq <= 0) {
+			dev_err(dev,
+				"Cannot get CSI2 transmitter's link frequency\n");
+			return -EINVAL;
+		}
+
+		ret = phy_mipi_dphy_get_default_config_for_hsclk(link_freq, num_lanes,
+								dphy);
+		if (ret < 0) {
+			dev_err(dev, "Invalid config for link frequency %lld\n",
+				link_freq);
+			return ret;
+		}
+		mode = PHY_MODE_MIPI_DPHY;
+	} else {
+		dev_err(dev, "Unsupported mbus type %u\n", mbus_cfg.type);
+		return -EINVAL;
 	}
 
-	ret = phy_set_mode(csiphy->phy, PHY_MODE_MIPI_DPHY);
+	ret = phy_set_mode(csiphy->phy, mode);
 	if (ret) {
 		dev_err(dev, "Failed to set phy mode\n");
 		return ret;
 	}
 
-	ret = phy_configure(csiphy->phy, &dphy_opts);
+	ret = phy_configure(csiphy->phy, &opts);
 	if (ret) {
-		dev_err(dev, "failed to configure MIPI D-PHY\n");
+		dev_err(dev, "failed to configure MIPI CSI-2 PHY\n");
 		goto error;
 	}
 
diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/media/platform/qcom/camss/camss-csiphy.h
index 8c3319f2ca1cfdef4c0185deed2805854ac81703..a13cfaf3796106d421c8d711308d3fb3fb9259a8 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy.h
+++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
@@ -35,11 +35,13 @@ struct csiphy_lane {
  * @num_data: number of data lanes
  * @data:     data lanes configuration
  * @clk:      clock lane configuration (only for D-PHY)
+ * @phy_type: CSI-2 PHY bus type
  */
 struct csiphy_lanes_cfg {
 	int num_data;
 	struct csiphy_lane *data;
 	struct csiphy_lane clk;
+	enum v4l2_mbus_type phy_type;
 };
 
 struct csiphy_csi2_cfg {
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index c54185c93a8a98fc6a20fdb8e0f9f8e61bc41058..f61a9c242ef46f968ecc22dddd16a2e96465ca65 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -4694,11 +4694,8 @@ static int camss_parse_endpoint_node(struct device *dev,
 	if (ret)
 		return ret;
 
-	/*
-	 * Most SoCs support both D-PHY and C-PHY standards, but currently only
-	 * D-PHY is supported in the driver.
-	 */
-	if (vep.bus_type != V4L2_MBUS_CSI2_DPHY) {
+	if (vep.bus_type != V4L2_MBUS_CSI2_DPHY &&
+	    vep.bus_type != V4L2_MBUS_CSI2_CPHY) {
 		dev_err(dev, "Unsupported bus type %d\n", vep.bus_type);
 		return -EINVAL;
 	}
@@ -4706,6 +4703,7 @@ static int camss_parse_endpoint_node(struct device *dev,
 	csd->interface.csiphy_id = vep.base.port;
 
 	mipi_csi2 = &vep.bus.mipi_csi2;
+	lncfg->phy_type = vep.bus_type;
 	lncfg->clk.pos = mipi_csi2->clock_lane;
 	lncfg->clk.pol = mipi_csi2->lane_polarities[0];
 	lncfg->num_data = mipi_csi2->num_data_lanes;
diff --git a/include/media/v4l2-mediabus.h b/include/media/v4l2-mediabus.h
index 24c738cd78940fa7f6118d78595fe221689a39e7..42543ec98a839567c21485d3e97f875b8a081100 100644
--- a/include/media/v4l2-mediabus.h
+++ b/include/media/v4l2-mediabus.h
@@ -109,6 +109,8 @@ struct v4l2_mbus_config_mipi_csi2 {
 	unsigned char num_data_lanes;
 	bool lane_polarities[1 + V4L2_MBUS_CSI2_MAX_DATA_LANES];
 	enum v4l2_mbus_csi2_cphy_line_orders_type line_orders[V4L2_MBUS_CSI2_MAX_DATA_LANES];
+	u32 t_prepare_ns;
+	u32 t_preamble_ns;
 };
 
 /**

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
