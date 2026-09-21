Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37572C982DE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 05:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aD/DjmeFBWreVGcGOf9/r8NYedeSohnfOYbK9lfELmc=; b=pM9AHh5NYOczpV
	LMr0hRCzgy+dyfmwaPwQEHj8PEY68+EYPiEdC9RLO/8txFfqOmQwxsQCZmZZ4kmzj45UV4tjQjmyr
	viL1RVIUVCGF7utMRzJ5pADNRD3dCwiu5a/KveQkxNHUvaW5CYNNIfwYdaZ87BqFfPIHK2jrYeuvu
	AVeKzg/Ev8pHlZVDhMUBMPuNMddwJM1VI7vN4bWFhBG0/EA9Ur6DvEJotCS1eyyaTXT4xUedsk7av
	MlGHUIbWJhQpGbFj9wTcw2QUTy4aSWwK/okOGeVYPvda3E97TLMjFe2DKVy7nmnhEnOAFLtXBnRLv
	YO1mUL9KnCIeCWAnetzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Wis-00000000wPf-3bI0;
	Mon, 21 Sep 2026 05:37:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Wiq-00000000wOx-2eTd
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 05:37:49 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68L3ZUSQ007152
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 05:37:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WBcOxYwQ0Dfv588IqbZmpmvVHvpvwD3Y7+aa5k+MiV8=; b=pvGD0wPrdaLOj9DH
	SfB/evfCqStIV1oiC8xkQllyhwOP1N35oe9TYUtqHP0iwmhl+ZyxfD7oCSIJCs33
	bstIMAKvz12L9uf7/+JxWDIvJoSWVV0e8PXDfxM+4JvEGjJXTtMpFHquDR6Ic/UD
	JzXgqI/7soXAj/IYQgD4uIK+pu2VECVkcydkR/D8zWy5mW1EEnT8E1v1A+cKH3eV
	3lg3XVItBoMxwcb8MFCX/2Xbur3WtOsrjgxqfpdQ2PhpKHyx58bbiZKolOhPacpX
	oEVX50hDNUeYqYQzEnceFhuIkyRpMfbgY9KNX0eg/1SWNFcOcFjhsCJEmIO6Tc+b
	LYG/RQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtq8b91k8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 05:37:47 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-38f283baf1fso3207535a91.3
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 22:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789969067; x=1790573867; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WBcOxYwQ0Dfv588IqbZmpmvVHvpvwD3Y7+aa5k+MiV8=;
        b=dbzXmINU+ZMbdCKSDIjh8rxfYbNLsqimFndpO4kse7L+jXRmXD3vtU7TO5JKWW9bW/
         vHb4i9HFSzqPQXPjwJQvtkBdYJ15Ypp6nN4v/AxSdzqnjcs8B84gxHQGS85aC82vpNcz
         rGH8rH0fKzLkiYkqbHwO4Cj6s6olbS3mqVUV3tTNqd+VSrddFx08uFHD5giISTKRIfoy
         oQeZhj96Ya/2EzCk0Ei98FiAQvQMyzrizQeeuspmNh5ohI744/UMGcJwrOhnHx4DGIs7
         iOUhjB/kzTk7UPJyqHaUkKvdVl1xv1y51Dkuc0ceQ37OQh4DxTCAoiL5ch4puCnPCfnB
         xDWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789969067; x=1790573867;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WBcOxYwQ0Dfv588IqbZmpmvVHvpvwD3Y7+aa5k+MiV8=;
        b=xM1KlHTlyHTLqCQWc+HQGYnyAihU01+nIf87KnpLjqBB3YpzHF60M90OPiaKI8rErU
         uz/H1M9snrQa2Ux/Zq0faOzIIWZxsvryiFtXmhkqsHt2Mt+ntVdlT7T2BegjScIO1vT7
         Koa//uTkmTx4+5t2JBfEHPw5z90yU0/ZRI4+Tz0caatAlVINimpKlTXaoRkO6gGdHx02
         WeCgf7a1y+Yon4IgtAT3mX9KK3HbAbm6cw10tHjjEXKvIkS7np2cv3QtEMlLQm1UDp+g
         8zJvDFoMYOi9S0mlRtcl8G8mBNfJ0pZtQ0W6czoSt7ri7QUNXG9TGFR5Bli2J9yZ4uD8
         SyDA==
X-Forwarded-Encrypted: i=1; AKwUvBz3zUhMSQNkuRtq8HUDFoybqelNEEPlpIkoWLJRmDObHXXrGyeD6fHbqp9/A4nq/mPFb12P3kcNlb0=@lists.infradead.org
X-Gm-Message-State: AFuF++nKPzQbFC+cqJylTeEFNDRUZOntrsWD2ly61VPNa3RBSe67gioL
	rCiMQsfr41ZFTyDEmOPbakeJUMOnaNtflPqKj5/Yy6qNiJib9li7ZQRZpoAsgaLzILlQDvcucf5
	RvwQiQENu8nVGtARaOOchkeXouPh1v2Fu970pDUTD/GOLb0g38W17nYUDNOrg0EbzGxm7
X-Gm-Gg: AYBFou1+LfVQNy6ZpOEx8AyX5ZOQVw4PNK22vWlihRxV1OwE8jbMtSl0E/I4G9Amqay
	sznPcay7aa8nD6sRYhObM9m1qkpdOLvvG4TkrZAaAY+BVrp/PQTPOgY73y5J0amCm2jEpJfOFgI
	2b+3aIJjh6HI1IRrwn2CcLL15ZXa7xXCFseuHQ6pY4Tt6Ta4j18aK7RNJJ3Lt6QMwspKpj600Oz
	r8tq7N44zbz/AUZTBSGPj4W/nUAQjYyo5TK7pawWp1i18+FZBin7VtMUMnf4X+QKcxc97nB3QXe
	3KcqGmMyBZbDqkhVbhD3QNwrYje/eQ17yzQJrJj4sJ7ZznARKEAG0MKI/3H3gcEQPMSQDZijY6Z
	qRE0nbrxSy4mfxTGYrEPhloJbvNGLqTKxaA==
X-Received: by 2002:a17:90b:4e85:b0:39e:21a7:5df5 with SMTP id 98e67ed59e1d1-39e54d5ca4fmr14044678a91.24.1789969066437;
        Sun, 20 Sep 2026 22:37:46 -0700 (PDT)
X-Received: by 2002:a17:90b:4e85:b0:39e:21a7:5df5 with SMTP id 98e67ed59e1d1-39e54d5ca4fmr14044658a91.24.1789969065987;
        Sun, 20 Sep 2026 22:37:45 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144d55d45a6sm15054568c88.9.2026.09.20.22.37.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 22:37:45 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 11:07:12 +0530
Subject: [PATCH v4 4/6] phy: qcom: qmp: Move qphy_setbits/clrbits/checkbits
 to common header
MIME-Version: 1.0
Message-Id: <20260921-nord-v4-4-ed05c6e09240@oss.qualcomm.com>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
In-Reply-To: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
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
        shengchao.guo@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789969033; l=8474;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=JVlVGeKhznT32YmeKi+KOo08Sju82h7c5GfgcSDaseE=;
 b=dCttHvRw3vW02HbuvXqj4foXdaUtiebIdslRGRVKastwD6/pbNoOZEgyYTlLEt5QcZSnnD93z
 GcnKK1rZBY6Db10O4Eo7CgUsz//r28WM1k3xbPF56JMYT/mmoiCi42S
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDA3OCBTYWx0ZWRfXwuWmce4wLA6E
 FpeL7me90dhBWzH0p+CEOYLDoAXa+Zm92bVLd4FMfbUASltEw7BsAxKw1tBu+bsvFmJV2+5mndD
 Yj3+dxEpKzWa7fksSX98VjCfvx1yW7a2DxAQm1HgHG0G8pKxzkKJ6ZTanKe3wyLSQ9XOdyizLqN
 65yDD5j7SW1pZogVx3zAyLeR23TeIiP1IoCU/fQVLKj7LSeR+PqzeAIaNDoVYdCM7FbtgzPdKV3
 UWdkfM7WdmEW4XuM+uusnBegAi7jphQm4T4PvkhBM/0tQJb4YBCDO4sijFu5kMpI/AI27x+/rUB
 zS7IyQxWtpSDBSjg1NmQaG5Nu8wvFy2oEkUHhtqGQXfV8RVhPAJdJZWNDO7WdV1fvMq5rzNRs3j
 gX8UtIUV3BTyaV3CwZonpgmPqe2Cs47FbZ4RikNufg3wgQXi7W2gm1I1pitDw3dFSWaTxyYRI06
 KVOiKCcrNZj1g7Ykb7g==
X-Proofpoint-GUID: _gCiqqAzBERSjHs9yZKyULY9Eyuvvo08
X-Authority-Analysis: v=2.4 cv=T/8Z3PKQ c=1 sm=1 tr=0 ts=6ab0c2ab cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=NwoWoW-BFzdagI8Imy4A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: _gCiqqAzBERSjHs9yZKyULY9Eyuvvo08
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDA3OCBTYWx0ZWRfXyrdO0PyExQ0u
 UCzYh/TLFX2jfC+A4R8BGWmWTUEVTdD9rf+QCrsGtdcP/8FWekoAcG6h3hUVdg/EwjZ5lR7aWvT
 rgcJsGs+BoAIyXCeHlbigAhDtnKO4zM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 spamscore=0 adultscore=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609210078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_223748_796003_B1526D13 
X-CRM114-Status: GOOD (  15.27  )
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
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Reviewed-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
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
