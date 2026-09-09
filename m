Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 845E0C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 11:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OUtAVHybbX+NGmGg2muLV12eUglLZYmW43FCBfEihnE=; b=0VhLUv9eLa2gOl
	l+fHtz/iqay/+MYuFEqaFTZf0LI4x/vHGnOO9Y+OBTiLsaIRN59ntZcxjdvk5Jd5V84echrMF3WOE
	HRq/1n8h/kKDg3QQTIjY6IRsCD2tBq+g9bT9A5n2CpATW4Rxo5gCaoCYTifLNueKw/PXIS8miOJKf
	/OzWrrM2wPCVMVRwr8lbeL70MbLR2VJFKH4Eui/zsBvgvYs9GHY085eC7ZH9pdgD3nKxlrV75h7Te
	SaRMU4xlHeom1ox3sPqffupR5i5MEe2MuOrAQzbMSU7P1lUWVkUieA4YfEMalDrPi0DxwbL/bmZLt
	vfdQNzA0rwO9Gcqmh4sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GnW-0000000BciA-0gvC;
	Wed, 09 Sep 2026 11:49:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GnU-0000000BchK-0Bmw
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 11:49:01 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 689BUCcQ1307942
	for <linux-phy@lists.infradead.org>; Wed, 9 Sep 2026 11:48:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A/3VVWUKnpeQjJ26Tv6oH3K+LWGjuzJb0mcJX9AvYgM=; b=TfWBj5jvj0Qwr/Tn
	06XeQL0ZgA9U1hmaimTSwbVoFJxKj4rYGGc5oE1wC9ik7cGCOim/sQInVFMhqTAb
	60anR8mIRlN7rIPKtJ3y0k4K7g9WId8vrC8jVK8Oal8gZpTbsyE4AujmKFsCeCXP
	8dkspiIPJiheaGhfPuhwxNN0HyVtK+NuNIodvCIMsADsh+DVBxBQ4AQ8gmInv+RJ
	ZNeiQEyBJXmOTgS8iwEyq69xeISmpLB2Rov3880rZdhJyf2dtjo8OaKFrMWlXr/3
	HTakuuwVmiS3dQxa2CAq0xHjHb3Beqq8Q3BxGosYA88YtdblnE9QC6qwOTB983Nh
	idgj/Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjstub1v7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 11:48:59 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8627258ef12so4767384b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 04:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788954539; x=1789559339; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=A/3VVWUKnpeQjJ26Tv6oH3K+LWGjuzJb0mcJX9AvYgM=;
        b=eFP344oDgiXIvLk3KoLs08jozGuBh5uOUNDZhJ6kIdPeTRS9WpI9wsUlwImCn/fahZ
         1q8qvzVIvx4y4Uhrid1oX2NbBVMLiu4Q+i34bj9q7rLJRgMMiU47ze8Ddrgkcz9LHxHl
         hy3qj5tjb85H4cbMu28GCAGukhvJCovxbysS/VGI9p3jAXFnT7gYwZrv7wKwkrsz9BV2
         82a+U5H6PFPzCvtaSjIcCVBkvJRCaqik+55wkItJyC2St+EV8DpbDyy0nZubfi9QMX5p
         UgwGJs0mngP+FG50AhGcY/Qfa1PuSErBrpKdq4hxm77iisZ4RoSnJfKTBSVuYDtlWwdM
         zs8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788954539; x=1789559339;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=A/3VVWUKnpeQjJ26Tv6oH3K+LWGjuzJb0mcJX9AvYgM=;
        b=QspSD/9/ris3emXBZp2lv06s9lBIO3prZpQ+vnp79tCP42mNzTm/9fNA6U4SWPtqeD
         r9Ncs85VL6+Gvuabi9rTTjjxD3UAqQF0Yd1v4mW4q2Ej2cdJgFh0Vo/TSB7okf7PtMQG
         LNaLk3fomP638q1uk44BDVzo8HvhJE3NhutbVfBB8drud4bfy6Qx8vO8iL2YRkaKPAJX
         mcExc9XSw7mDpXPBMZ3zXJxUfEclH/Fg1qYFWsrLtLXQ/Ne3v81dnLfBpiEKrxkjvYBM
         UO+/EhORzPcFqWKkoCdCTtjE3q5jDJlz7mfXYZxyJErn9SC0zumdeIRA0nT2MmyH8Naa
         /0oA==
X-Forwarded-Encrypted: i=1; AKwUvBzF3Mt0u0UuczjqYXcGRr+NneuLXIjf5ROyjMP0I8msR+8UXyWrW9/VimuphQpblTPQEKVBOOxcVQc=@lists.infradead.org
X-Gm-Message-State: AFuF++k4PghTPU04IPqGr4NC5Syc5xYIoQQTNP9cuDNEBjtdwyZ4MEDP
	SfukrEYhXog/y5BnYRPgpFMxROHb8o1BuNP0wP78VqlAhy3tKd7pRD9DjRGYW4oY89sKGIWYrH+
	o34gsO4dtvwdBU9feVEiMMBEDhMncc+sEFn7AEWGa18ReOjV7XlSEKQG5LIShjAon5xAH
X-Gm-Gg: AYBFou1K8oKtCbQtwkim31b+JSxZ+ofu+yYtmgp/DcC/kMg5mUJeFvkcFMH9g7zPoZi
	LCmQK9jlhGiyUbLyVNyZWEcrF+qFuKpG+TIDwP0+VDm1k8kAJ/SyYZ7lBr01XDesyaXKg7WmMlv
	d3ukP+J6JsMvLHgSiV4oSstS2xB+5ix9LxVLIsZth8QTjudn38FZhdnFm7lWVFencZ0UPMCGQPx
	NV1enxHZqZMKPRS4oA5YY6yDG3/SFXNVvf3VkWcKrurSDYLBm/B1OD3iwsBiea9NrklkSwhH6QB
	mypforfw+/pifwe6o906SILVL4XeCZHS+FrCdyskkFUSixWOBTi46ly+vzr2tk6tki1JHt+P7lC
	dgajNALAMf3EaWKoQAjlUvMQ/Jc5+zUhPf/k=
X-Received: by 2002:a05:6a21:114c:b0:3d1:e510:9052 with SMTP id adf61e73a8af0-3da39ee2689mr54213276637.7.1788954538779;
        Wed, 09 Sep 2026 04:48:58 -0700 (PDT)
X-Received: by 2002:a05:6a21:114c:b0:3d1:e510:9052 with SMTP id adf61e73a8af0-3da39ee2689mr54213212637.7.1788954538370;
        Wed, 09 Sep 2026 04:48:58 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339b608409sm50156857eec.21.2026.09.09.04.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 04:48:58 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Wed, 09 Sep 2026 17:18:19 +0530
Subject: [PATCH v3 4/5] phy: qcom: qmp: Move qphy_setbits/clrbits/checkbits
 to common header
MIME-Version: 1.0
Message-Id: <20260909-nord-v3-4-b0a82721c547@oss.qualcomm.com>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
In-Reply-To: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, shengchao.guo@oss.qualcomm.com,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788954507; l=8340;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=H4r2oOc7WRDvMW1NBsIUmNGfOhTuI7q4i8EH+5tNZ+c=;
 b=NhxNSLF9k2rlgECW4dULXyO0W9RUiPHMohCnyBQUR+D45MiUbAakhih5m89UeX4tiGZmDYvRV
 Q/ghc9vkeSqAeOTa8K+RgzBYaadmovnxIWRfsfM81tnEmWuTtvmaqJi
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=ItAutr/g c=1 sm=1 tr=0 ts=6aa147ab cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=NwoWoW-BFzdagI8Imy4A:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA5MDEzMSBTYWx0ZWRfX4A1jwBJ2i8wD
 R36DUd099845F8/xTl06Vodq9Oqp+hJa4N6czEJlclKDesZp/RR0VPWxdvpdZg89OQT8sImKDRV
 RZ5kgJgDjveqI84Sum8v809JUgLrtxs=
X-Proofpoint-ORIG-GUID: JfvBAHI2rzTnamw8nxO314yQuJnrio4H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA5MDEzMSBTYWx0ZWRfX0InjTEW8XBak
 vvlxU6WvkFqPF0kd2k6WKoksJ9vg/lRLHA7+bGRWhhicVMlbY+f2xRdde6RYR8zp4J7s9EPfRf1
 KGNC+8KKBeXDEEVKiKVdxwyhv9vtFsRcoVWXrzb0ebBMSxVQ4l7uMEmcb1FKWltfEjhgrpJAGC2
 GpeB4mLy1nghRkzJgHsHnGEpoRJkqKxLbiQ+GQ7UGrDRA2QQLJ8nrWbg8PHE37dwWobkjpOOQ6a
 WpHhwsZ+nnYIzk6URkYE5IHZE4fdLHC7cc3Z7HLsPcGswvrOPICXs5kPEsb6SioZVeDFYy6L993
 5bQU0+s7JCeQD9DMJscNNftfMFUvhx97sF8Y3QUxYxIWy2NvOezfOhRZe2yIL5Tq2fjBkxfCmFi
 Mtu528lGyU4Z0h5AszPuGLYq1Z8sVQ0ffiVZFRf2ukyQyTu3xtx9OxV3OvbHVkP+kbg8gX+xroX
 FbZXqn6FF1tIcJMLQiA==
X-Proofpoint-GUID: JfvBAHI2rzTnamw8nxO314yQuJnrio4H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_03,2026-09-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 phishscore=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609090131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_044900_113637_9A71AB73 
X-CRM114-Status: GOOD (  15.08  )
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

qphy_setbits(), qphy_clrbits() and qphy_checkbits() were duplicated
verbatim across phy-qcom-qmp-pcie.c, phy-qcom-qmp-pcie-msm8996.c,
phy-qcom-qmp-ufs.c, phy-qcom-qmp-usb.c, phy-qcom-qmp-usbc.c and
phy-qcom-qmp-combo.c. Move them to the shared phy-qcom-qmp-common.h,
which all of these drivers already include, and drop the local copies.

This also makes the helpers available to phy-qcom-qmp-pcie-multiphy.c
without introducing yet another copy.

Suggested-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 24 ------------------
 drivers/phy/qualcomm/phy-qcom-qmp-common.h       | 32 ++++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 24 ------------------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 32 ------------------------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 24 ------------------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 24 ------------------
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c         | 24 ------------------
 7 files changed, 32 insertions(+), 152 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c39ced168d03..052d2f7cf671 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2622,30 +2622,6 @@ static void qmp_v8_dp_aux_init(struct qmp_combo *qmp);
 static int qmp_v8_configure_dp_clocks(struct qmp_combo *qmp);
 static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp);
 
-static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
-{
-	u32 reg;
-
-	reg = readl(base + offset);
-	reg |= val;
-	writel(reg, base + offset);
-
-	/* ensure that above write is through */
-	readl(base + offset);
-}
-
-static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
-{
-	u32 reg;
-
-	reg = readl(base + offset);
-	reg &= ~val;
-	writel(reg, base + offset);
-
-	/* ensure that above write is through */
-	readl(base + offset);
-}
-
 /* list of clocks required by phy */
 static const char * const qmp_combo_phy_clk_l[] = {
 	"aux", "cfg_ahb", "ref", "com_aux",
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-common.h b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
index b945fc14cece..3c0e47f4af75 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-common.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
@@ -59,4 +59,36 @@ static inline void qmp_configure(struct device *dev, void __iomem *base,
 	qmp_configure_lane(dev, base, tbl, num, 0xff);
 }
 
+static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
+{
+	u32 reg;
+
+	reg = readl(base + offset);
+	reg |= val;
+	writel(reg, base + offset);
+
+	/* ensure that above write is through */
+	readl(base + offset);
+}
+
+static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
+{
+	u32 reg;
+
+	reg = readl(base + offset);
+	reg &= ~val;
+	writel(reg, base + offset);
+
+	/* ensure that above write is through */
+	readl(base + offset);
+}
+
+static inline bool qphy_checkbits(const void __iomem *base, u32 offset, u32 val)
+{
+	u32 reg;
+
+	reg = readl(base + offset);
+	return (reg & val) == val;
+}
+
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 37e96493b722..ed22b7a256ef 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -218,30 +218,6 @@ struct qcom_qmp {
 	int init_count;
 };
 
-static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
-{
-	u32 reg;
-
-	reg = readl(base + offset);
-	reg |= val;
-	writel(reg, base + offset);
-
-	/* ensure that above write is through */
-	readl(base + offset);
-}
-
-static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
-{
-	u32 reg;
-
-	reg = readl(base + offset);
-	reg &= ~val;
-	writel(reg, base + offset);
-
-	/* ensure that above write is through */
-	readl(base + offset);
-}
-
 /* list of clocks required by phy */
 static const char * const msm8996_phy_clk_l[] = {
 	"aux", "cfg_ahb", "ref",
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index da83358c97ea..7fa9bb2b094a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4044,38 +4044,6 @@ struct qmp_pcie {
 	struct clk_fixed_rate aux_clk_fixed;
 };
 
-static bool qphy_checkbits(const void __iomem *base, u32 offset, u32 val)
-{
-	u32 reg;
-
-	reg = readl(base + offset);
-	return (reg & val) == val;
-}
-
-static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
-{
-	u32 reg;
-
-	reg = readl(base + offset);
-	reg |= val;
-	writel(reg, base + offset);
-
-	/* ensure that above write is through */
-	readl(base + offset);
-}
-
-static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
-{
-	u32 reg;
-
-	reg = readl(base + offset);
-	reg &= ~val;
-	writel(reg, base + offset);
-
-	/* ensure that above write is through */
-	readl(base + offset);
-}
-
 /* list of clocks required by phy */
 static const char * const qmp_pciephy_clk_l[] = {
 	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index d4aca22c181e..d15db9ab9a90 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1211,30 +1211,6 @@ struct qmp_ufs {
 	u32 submode;
 };
 
-static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
-{
-	u32 reg;
-
-	reg = readl(base + offset);
-	reg |= val;
-	writel(reg, base + offset);
-
-	/* ensure that above write is through */
-	readl(base + offset);
-}
-
-static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
-{
-	u32 reg;
-
-	reg = readl(base + offset);
-	reg &= ~val;
-	writel(reg, base + offset);
-
-	/* ensure that above write is through */
-	readl(base + offset);
-}
-
 /* Regulator bulk data with load values for specific configurations */
 static const struct regulator_bulk_data milos_ufsphy_vreg_l[] = {
 	{ .supply = "vdda-phy", .init_load_uA = 140120 },
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index b0790bcf0bc8..6a9faa0ce3bb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1441,30 +1441,6 @@ struct qmp_usb {
 	struct clk_fixed_rate pipe_clk_fixed;
 };
 
-static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
-{
-	u32 reg;
-
-	reg = readl(base + offset);
-	reg |= val;
-	writel(reg, base + offset);
-
-	/* ensure that above write is through */
-	readl(base + offset);
-}
-
-static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
-{
-	u32 reg;
-
-	reg = readl(base + offset);
-	reg &= ~val;
-	writel(reg, base + offset);
-
-	/* ensure that above write is through */
-	readl(base + offset);
-}
-
 /* list of clocks required by phy */
 static const char * const qmp_usb_phy_clk_l[] = {
 	"aux", "cfg_ahb", "ref", "com_aux",
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index e3465ab7c80e..548ec97373ac 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -474,30 +474,6 @@ struct qmp_usbc {
 	enum typec_orientation orientation;
 };
 
-static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
-{
-	u32 reg;
-
-	reg = readl(base + offset);
-	reg |= val;
-	writel(reg, base + offset);
-
-	/* ensure that above write is through */
-	readl(base + offset);
-}
-
-static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
-{
-	u32 reg;
-
-	reg = readl(base + offset);
-	reg &= ~val;
-	writel(reg, base + offset);
-
-	/* ensure that above write is through */
-	readl(base + offset);
-}
-
 /* list of clocks required by phy */
 static const char * const qmp_usbc_phy_clk_l[] = {
 	"aux", "cfg_ahb", "ref", "com_aux",

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
