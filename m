Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC45606A332
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 09:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0NGI55k6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=YFyTauFd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=DTaw+LTF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=u18myGR0Ocy9Cf8DrYAj3+otqPmYJm9P9Vmxo/gXPUY=; b=0NGI55k6o7xcPfYDl7HtanmW00
	xxlzdRaYMc029G2UszGSoLa6PRLptAG0SH4R85jx9/4o9GYb6gU7Di+GGqtih5VoQRvxGHmXT5JVZ
	IF+BSSw63zeropdvEhlG7MUtEmjHDZ23eK+K++cS7Rv0CI+sFwZImSNTFpR4IDlLIygpAJiyKbdoZ
	a6nedCednRwPQ1o4R3n+xLOQC1T5nxCVF/s+sxz9um+6o0vthbTkzx71qWi3qj1CVpG3Yo4ZruUle
	eHi2qMhaeWklha65gR+lO+0OxhRVk0JNEGA96YdLcC0iCP/ugzED8DTO9mSGHzboSEH7T1zN3NvLL
	mX98P7Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHD4-000000026Ir-1DbQ;
	Mon, 26 Oct 2026 09:41:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHD1-000000026Hm-3mu4
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 09:41:41 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69Q4b99H718228
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 09:41:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=e2IQWvxSbHd
	xQeKMF7CoJ3yfRIfqtVUDIDK0AXYWAAM=; b=YFyTauFd4ci9DIvG3363HI0HwA5
	/DpqNlEEYi8+/dx3biWAyre8NFPOyW5XMhGlvvseTMQi6VMCXNS/EXNXkYXFdAJ1
	wxMRFuzOY/D088d5vYvlNr7NNn1XT3CvXky2/erZGNtIyWotS/7HcyRR/COGbxiT
	FrGWNVkrUOIr1J/vk/y1Yc0+aNr91Xjs8GZUHEqO++UVoJAf6Nvg1kb/BLIVk+Ek
	iCKXX+R22zp3B4HmSXwBNoC1nI0nJIRUimcGdcru9VSe7ChMWhQ5uzEV83AhjdBH
	T0W2ZuA4P11UlR1tMo2DGwEJ9aGrynZSWoNUNsAgYezm1lnVnEsZol4TLtQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hhsgsstv2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 09:41:39 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3adad90c894so3116204a91.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 02:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793007698; x=1793612498; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=e2IQWvxSbHdxQeKMF7CoJ3yfRIfqtVUDIDK0AXYWAAM=;
        b=DTaw+LTF1epCSWH4RTDB9aE2Y3IkQkvBOw/bozJfui3MdDg0Jyd3RL6C860GQw8aL9
         Au7mywmmiItPYHnBPRKnYJMePNUlOrguKpnsIkgn/NG9QpxdEme6stOkZjTN5aSVhmzt
         sgO/WqrdXshArKNwYPu/J3OIGidPkQ1uxt1yeyJ5powlhDwUyuRXlKKu3o4MCUG+vq3a
         ecWw+xJJHFls77TmaA+ZFNHX4nlJFyj3ekS6BzCLZlSQY2hGOAWMCM0XOhQ9RbJz3N9v
         vqjFkrQt0Sgs32t+O68bbpWWlMazcVGuxKQ/BKHyhlDhNpNNeKkxJusmUv6CfQsYNFq8
         xBBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793007698; x=1793612498;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=e2IQWvxSbHdxQeKMF7CoJ3yfRIfqtVUDIDK0AXYWAAM=;
        b=kOrxkZvdnIqk7SEKDHSP23FArpx0glddlNjX/YHUj07Jdl6N+xIlxlzQBraWLQ1ni6
         lgSyLr70k7uhB8E3kgZLN6Mc8jDnZkEnASmqBWZkKS5nvVOvojvPoDBMtVwOmxC/xem0
         HRTQ7Sa9vK1d9R5phFe1A7mAnABhVNoyBnUaO5KJlL3xRz8YneAa4U0Ezll/k4PMCHn0
         5ZBo/PVRCH22rfcZ4Nqo4kk6t1gAiDekv5JJkA+bZ9fiSpWjLLA8tjGle5jUCSNsCNH5
         3IW3YvveJO6zmATlKu/jqEsqSTn04iFYf6PM3GeQdAfcaiQS+FoHalYuUVIvGlVgdDd5
         G4PQ==
X-Forwarded-Encrypted: i=1; AKwUvBzIFsbXODKXBOY7MpnoWUEh1f82/bFqpjD0BoKCFOhWTbXnRs3A6Hm4J/yDw7ny21+Z8szllnb6XtM=@lists.infradead.org
X-Gm-Message-State: AFq9FYKJv94lAhB2sd5fBmih7s7SoY+aBnE3sGVDHZkggdue+UYs7w4E
	KjkMKS+dwICRCQBQ2nt3A8YpPj8dQSH1uXPX+E3GidWKq8qQ4Zm4VvfRO/3QCTtoLIdNZniIMJs
	S1GdlEddtZq63p51wjTcUVGtcZ54Q8eEivCnrn7q1hmg79HV5IgvRmlR3+NoHHAy2yY/v
X-Gm-Gg: AYBFou27XbjT2iUbN9HuzRDztDF4F2iqB+SRlOFQwXgx7LXulG34/1K1Wa0Fr9K92Ps
	6f6GtMWIU6Fe8f0nWlGh/RGHMKMHKSyRCGYVaWJ1Rh0HesXTfqkYFB9ATGvJ2oSHte65iM2nG/P
	NQry+l3BXyxleaAQ3BC/uSCVqa8BLAhKnwKyryezIz04iyJigBjlBLMASoEziwE1OCDM4sEQ6yK
	wielz56+FrZoIEwMvixK41hBHTSN4sbXCzUWAJfiIBAE5WW89NEl/94UwxC3MVMydFq/XUrBSbz
	fQy4OFeMU3tw3C8mUABBWEKh+JeZ0H8LTS6C9HulE/OJkDcEDupXcp8+Ub8Y/oaK51tNpI2spq+
	L+rhJdteDnz/zfQ5YktpSeUebxhY=
X-Received: by 2002:a17:90b:1c0b:b0:39e:6c68:c77a with SMTP id 98e67ed59e1d1-3adeaea1917mr4717668a91.48.1793007698302;
        Mon, 26 Oct 2026 02:41:38 -0700 (PDT)
X-Received: by 2002:a17:90b:1c0b:b0:39e:6c68:c77a with SMTP id 98e67ed59e1d1-3adeaea1917mr4717657a91.48.1793007697799;
        Mon, 26 Oct 2026 02:41:37 -0700 (PDT)
Received: from hu-vhiren-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3adebfa4102sm7847966a91.12.2026.10.26.02.41.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 02:41:37 -0700 (PDT)
From: Hiren Gohel <hiren.gohel@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Hiren Gohel <hiren.gohel@oss.qualcomm.com>
Subject: [PATCH 2/2] phy: snps-eusb2: Add support for SA8797P
Date: Mon, 26 Oct 2026 15:11:18 +0530
Message-Id: <20261026094118.3264112-3-hiren.gohel@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261026094118.3264112-1-hiren.gohel@oss.qualcomm.com>
References: <20261026094118.3264112-1-hiren.gohel@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI2MDAzOCBTYWx0ZWRfX4LilvMMd4bkW
 CjmFXnjQvgwncKOsBzRauOjxX4BNJtJUdvy6Nlq7pOA55QpjQw+hOHaQvQSngyfDSkuO6b2GAsb
 GZELGfXN83PoMY5edr41q0fmmELEGyQ=
X-Proofpoint-GUID: SkkyHT8FuEDyAnCeEaveCTYr21eY2UJC
X-Authority-Analysis: v=2.4 cv=c+8+0h9l c=1 sm=1 tr=0 ts=6adf2053 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=uL0kp289Aari1hmGrBsA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: SkkyHT8FuEDyAnCeEaveCTYr21eY2UJC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI2MDAzOCBTYWx0ZWRfX2qGHdLTY6ozY
 QFIr8hcFiHWsFkID5vJDfko+s0qPMM5EcCvelW/ll6hlpm4Lu2nnVsnfeugrsRHkT0BarcL0fJy
 QlrS6pEewlL3NTMFmQGKPuEvioI+LKiny4gcJG/yz4MksiZUpWxMksYi5cZRLymzsiFjCXUcngX
 sE5WJz4katC6InragPz/6Hd/7HLG4QMSDfG9e/MgvHmN7DWgWZ5oc5F3ibiBgBfg/Sq7MW7E0J6
 KwdIkC4dHD0zMtRsGlsRQi8qBKOh/RQCAxNNjvCqsBr18/jXqwHKO7zMeTSxKz0zTnWxjBB71LY
 hpIqu+TRtqGfQqNqj+uB+tRi5/VLvlz7e43MtLzuCyMExd2b+j5L40g6EhueX5pfj0zTqlUGJBK
 UXLABuCLRrgTxfhcOxUuLbpN6KUaQjsyjLSQ9m9Jfz18b//ivtOLJREEdSFuavFyokm+nB7yT2U
 5I8rCw4Hwyku+yaRdig==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-26_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1011 priorityscore=1501
 suspectscore=0 adultscore=0 phishscore=0 impostorscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610260038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_024139_952256_CD924097 
X-CRM114-Status: GOOD (  25.39  )
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Qualcomm automotive SA8797p SoC relies on firmware to configure
platform resources, including clocks, interconnects and TLMM.
The driver requests resources operations over SCMI using power protocols.

The SCMI power protocol enables or disables resources like clocks,
interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
such as resume/suspend, to control power on/off.

Power domain "core" controls the GDSC, resets, and TLMM (GPIOs)
whereas power domain "transfer" controls clocks and interconnects.

In this variant, two disjoint sets of resources are modeled against
the power domain suppliers which can be turned on/off to achieve modeled
device states. Two modeled low power states d1 and d3 are supported.

transition: d0 <--> d3  :: both core and transfer suppliers
transition: d0 <--> d1  :: only transfer supplier

Signed-off-by: Hiren Gohel <hiren.gohel@oss.qualcomm.com>
---
 drivers/phy/phy-snps-eusb2.c | 183 +++++++++++++++++++++++++++--------
 1 file changed, 140 insertions(+), 43 deletions(-)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index af4fa17ac6cb..b246ab52b409 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -9,6 +9,7 @@
 #include <linux/iopoll.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
 
@@ -157,9 +158,11 @@ struct snps_eusb2_phy_drvdata {
 	int (*phy_init)(struct phy *p);
 	const char * const *clk_names;
 	int num_clks;
+	bool fw_managed;
 };
 
 struct snps_eusb2_hsphy {
+	struct device *dev;
 	struct phy *phy;
 	void __iomem *base;
 
@@ -174,8 +177,62 @@ struct snps_eusb2_hsphy {
 	struct phy *repeater;
 
 	const struct snps_eusb2_phy_drvdata *data;
+	struct dev_pm_domain_list *pd_list;
 };
 
+static void snps_eusb2_hsphy_domain_detach(void *data)
+{
+	struct snps_eusb2_hsphy *phy = data;
+
+	dev_pm_domain_detach_list(phy->pd_list);
+}
+
+static int snps_eusb2_hsphy_domain_attach(struct snps_eusb2_hsphy *phy)
+{
+	struct dev_pm_domain_attach_data pd_data = {
+		.pd_flags = PD_FLAG_NO_DEV_LINK,
+		.pd_names = (const char * const []) { "core", "transfer" },
+		.num_pd_names = 2,
+	};
+	struct device *dev = phy->dev;
+	int ret;
+
+	ret = dev_pm_domain_attach_list(dev, &pd_data, &phy->pd_list);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "domain attach failed\n");
+
+	return 0;
+}
+
+/* d3_to_d0 transition by turning on all the suppliers */
+static int snps_eusb2_hsphy_d3_to_d0(struct snps_eusb2_hsphy *phy)
+{
+	int ret;
+
+	if (!phy->pd_list)
+		return 0;
+
+	ret = pm_runtime_resume_and_get(phy->pd_list->pd_devs[0]);
+	if (ret)
+		return ret;
+
+	ret = pm_runtime_resume_and_get(phy->pd_list->pd_devs[1]);
+	if (ret)
+		pm_runtime_put_sync(phy->pd_list->pd_devs[0]);
+
+	return ret;
+}
+
+/* d0_to_d3 transition by turning off all the suppliers */
+static void snps_eusb2_hsphy_d0_to_d3(struct snps_eusb2_hsphy *phy)
+{
+	if (!phy->pd_list)
+		return;
+
+	pm_runtime_put_sync(phy->pd_list->pd_devs[1]);
+	pm_runtime_put_sync(phy->pd_list->pd_devs[0]);
+}
+
 static int snps_eusb2_hsphy_set_mode(struct phy *p, enum phy_mode mode, int submode)
 {
 	struct snps_eusb2_hsphy *phy = phy_get_drvdata(p);
@@ -282,7 +339,12 @@ static const struct snps_eusb2_ref_clk qcom_eusb2_ref_clk[] = {
 static int qcom_eusb2_ref_clk_init(struct snps_eusb2_hsphy *phy)
 {
 	const struct snps_eusb2_ref_clk *config = NULL;
-	unsigned long ref_clk_freq = clk_get_rate(phy->ref_clk);
+	unsigned long ref_clk_freq;
+
+	if (phy->data->fw_managed)
+		return 0;
+
+	ref_clk_freq = clk_get_rate(phy->ref_clk);
 
 	for (int i = 0; i < ARRAY_SIZE(qcom_eusb2_ref_clk); i++) {
 		if (qcom_eusb2_ref_clk[i].freq == ref_clk_freq) {
@@ -452,19 +514,32 @@ static const struct snps_eusb2_phy_drvdata sm8550_snps_eusb2_phy = {
 	.num_clks       = ARRAY_SIZE(qcom_eusb2_hsphy_clock_names),
 };
 
+static const struct snps_eusb2_phy_drvdata sa8797p_snps_eusb2_phy = {
+	.phy_init	= qcom_snps_eusb2_hsphy_init,
+	.fw_managed	= true,
+};
+
 static int snps_eusb2_hsphy_init(struct phy *p)
 {
 	struct snps_eusb2_hsphy *phy = phy_get_drvdata(p);
 	int ret;
 
-	ret = regulator_bulk_enable(ARRAY_SIZE(phy->vregs), phy->vregs);
-	if (ret)
-		return ret;
+	if (phy->data->fw_managed) {
+		ret = snps_eusb2_hsphy_d3_to_d0(phy);
+		if (ret < 0) {
+			dev_err(phy->dev, "Failed to transition to d0 state\n");
+			return ret;
+		}
+	} else {
+		ret = regulator_bulk_enable(ARRAY_SIZE(phy->vregs), phy->vregs);
+		if (ret)
+			return ret;
+	}
 
 	ret = phy_init(phy->repeater);
 	if (ret) {
 		dev_err(&p->dev, "repeater init failed: %d\n", ret);
-		goto disable_vreg;
+		goto power_off;
 	}
 
 	ret = clk_bulk_prepare_enable(phy->data->num_clks, phy->clks);
@@ -497,8 +572,11 @@ static int snps_eusb2_hsphy_init(struct phy *p)
 	clk_bulk_disable_unprepare(phy->data->num_clks, phy->clks);
 exit_repeater:
 	phy_exit(phy->repeater);
-disable_vreg:
-	regulator_bulk_disable(ARRAY_SIZE(phy->vregs), phy->vregs);
+power_off:
+	if (phy->data->fw_managed)
+		snps_eusb2_hsphy_d0_to_d3(phy);
+	else
+		regulator_bulk_disable(ARRAY_SIZE(phy->vregs), phy->vregs);
 
 	return ret;
 }
@@ -509,10 +587,14 @@ static int snps_eusb2_hsphy_exit(struct phy *p)
 
 	clk_bulk_disable_unprepare(phy->data->num_clks, phy->clks);
 
-	regulator_bulk_disable(ARRAY_SIZE(phy->vregs), phy->vregs);
+	if (!phy->data->fw_managed)
+		regulator_bulk_disable(ARRAY_SIZE(phy->vregs), phy->vregs);
 
 	phy_exit(phy->repeater);
 
+	if (phy->data->fw_managed)
+		snps_eusb2_hsphy_d0_to_d3(phy);
+
 	return 0;
 }
 
@@ -537,6 +619,7 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
 	if (!phy)
 		return -ENOMEM;
 
+	phy->dev = dev;
 	phy->data = device_get_match_data(dev);
 	if (!phy->data)
 		return -EINVAL;
@@ -545,45 +628,56 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
 	if (IS_ERR(phy->base))
 		return PTR_ERR(phy->base);
 
-	phy->phy_reset = devm_reset_control_get_optional_exclusive(dev, NULL);
-	if (IS_ERR(phy->phy_reset))
-		return PTR_ERR(phy->phy_reset);
-
-	phy->clks = devm_kcalloc(dev, phy->data->num_clks, sizeof(*phy->clks),
-				 GFP_KERNEL);
-	if (!phy->clks)
-		return -ENOMEM;
-
-	for (i = 0; i < phy->data->num_clks; ++i)
-		phy->clks[i].id = phy->data->clk_names[i];
-
-	ret = devm_clk_bulk_get(dev, phy->data->num_clks, phy->clks);
-	if (ret)
-		return dev_err_probe(dev, ret,
-				     "failed to get phy clock(s)\n");
-
-	phy->ref_clk = NULL;
-	for (i = 0; i < phy->data->num_clks; ++i) {
-		if (!strcmp(phy->clks[i].id, "ref")) {
-			phy->ref_clk = phy->clks[i].clk;
-			break;
+	if (phy->data->fw_managed) {
+		ret = snps_eusb2_hsphy_domain_attach(phy);
+		if (ret)
+			return ret;
+
+		ret = devm_add_action_or_reset(dev,
+					       snps_eusb2_hsphy_domain_detach,
+					       phy);
+		if (ret)
+			return ret;
+	} else {
+		phy->phy_reset = devm_reset_control_get_optional_exclusive(dev, NULL);
+		if (IS_ERR(phy->phy_reset))
+			return PTR_ERR(phy->phy_reset);
+
+		phy->clks = devm_kcalloc(dev, phy->data->num_clks,
+					 sizeof(*phy->clks), GFP_KERNEL);
+		if (!phy->clks)
+			return -ENOMEM;
+
+		for (i = 0; i < phy->data->num_clks; ++i)
+			phy->clks[i].id = phy->data->clk_names[i];
+
+		ret = devm_clk_bulk_get(dev, phy->data->num_clks, phy->clks);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "failed to get phy clock(s)\n");
+
+		for (i = 0; i < phy->data->num_clks; ++i) {
+			if (!strcmp(phy->clks[i].id, "ref")) {
+				phy->ref_clk = phy->clks[i].clk;
+				break;
+			}
 		}
-	}
 
-	if (IS_ERR_OR_NULL(phy->ref_clk)) {
-		ret = phy->ref_clk ? PTR_ERR(phy->ref_clk) : -ENOENT;
-		return dev_err_probe(dev, ret,
-				     "failed to get ref clk\n");
-	}
+		if (IS_ERR_OR_NULL(phy->ref_clk)) {
+			ret = phy->ref_clk ? PTR_ERR(phy->ref_clk) : -ENOENT;
+			return dev_err_probe(dev, ret,
+					     "failed to get ref clk\n");
+		}
 
-	num = ARRAY_SIZE(phy->vregs);
-	for (i = 0; i < num; i++)
-		phy->vregs[i].supply = eusb2_hsphy_vreg_names[i];
+		num = ARRAY_SIZE(phy->vregs);
+		for (i = 0; i < num; i++)
+			phy->vregs[i].supply = eusb2_hsphy_vreg_names[i];
 
-	ret = devm_regulator_bulk_get(dev, num, phy->vregs);
-	if (ret)
-		return dev_err_probe(dev, ret,
-				     "failed to get regulator supplies\n");
+		ret = devm_regulator_bulk_get(dev, num, phy->vregs);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "failed to get regulator supplies\n");
+	}
 
 	phy->repeater = devm_of_phy_optional_get(dev, np, NULL);
 	if (IS_ERR(phy->repeater))
@@ -608,6 +702,9 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
 
 static const struct of_device_id snps_eusb2_hsphy_of_match_table[] = {
 	{
+		.compatible = "qcom,sa8797p-snps-eusb2-phy",
+		.data = &sa8797p_snps_eusb2_phy,
+	}, {
 		.compatible = "qcom,sm8550-snps-eusb2-phy",
 		.data = &sm8550_snps_eusb2_phy,
 	}, {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
