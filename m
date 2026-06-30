Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C979C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 19:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2e1U/p2XawGDUrR2RMLKHDU4RG+cYnNz8DmJ47xVGQk=; b=beiwLjTd7n+UwE
	MXPcKUQh4qKIg2KD3gsadhbpglLRu0bQWCIYR85Z9agoAMsfISBmbscYxICtMJDoJ6DMFlSs5JXry
	tL/mmNiCTx0G29UiuCsjLTr1c5rdHAmtMI2s3pRbGnmZoX1TdmBhic6DUTTXl2WKGR1wx37BVlL5Q
	nxKHIh1jg6U67MoB3wZCdNUNbkt2PVCHUAUT2+t2+1kV4R9yTNPEy56cNzE5e2Rab8ToLUNCzUE0y
	0qFLZcq0PZ0ECZrITjxZvAH/XFNWU+i7pvc+L4zkIvXbF3mrLB82DhWw0sqy2nkn2kQjnFZps0Gg8
	/Sj9FZR8lqtHjmkNmo4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedkQ-000000005HA-0hNi;
	Tue, 30 Jun 2026 19:03:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedkO-000000005Gn-0BFJ
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 19:03:53 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UHlUHL2735539
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:03:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oHuJUjEsLPE8+q1YHV5zzKgadJG0CI5d9no3OMB8tgI=; b=DGTg82i4kwkz9Z2i
	i0dKZ2W5DizOcMxQq07RwhEMSkzS+eQZ2a2lMQz9leo6Rlb7Bv/3qqdP2pgLwc59
	gV5yArcplxVTnOs89rFgBw77fnnD2UpYk7JmbbRK28SNPEMZ7AS0SKQz65cNUL5D
	4D2aNOxEhGjhtBbpa/BUwWdBi9rU0tXkTDL4GjkTRJViCelTGqUgDjK615AS7O6F
	coIgnuw6rLqtVupywP5lszLueu6u/wxiggsEIrjiWb58iiUIkYadRoXsaH1ciNpa
	+sy6oQqLr2RGl+qUqSKaKbG0rjAN0Loc2mhm03Nisjd6D4enl0K6bCvL8saw2+0M
	69PT2A==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4h0ary33-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:03:50 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30e773699d6so3605635eec.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 12:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782846230; x=1783451030; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oHuJUjEsLPE8+q1YHV5zzKgadJG0CI5d9no3OMB8tgI=;
        b=NGj55ARXOwu1LT1HZuHE7vezqSv5fYeRUWderASm8kXOCsTkDg8izOAOx3Ha2U0eNQ
         p9SLtMOp7kiernkKHgq/p09h0F0fli0UAeDyTe/PbcBm/4Sj8MPcMSyR69Jd+Ks/Op9W
         kRga1I6HFgAb3GeW7mGe10N0/39QXwcasSNw6LAdJRJernBg2n7uNaHyxu4m1+1tqsBA
         ktK85XZWEYDK3OewMM+MIX2QrUJiS7AYfzJlrlXRhTjauaco0xd3O6TN8XOIBpsK5UAE
         bFMttqmVgDPGAq9mhg7gexD9QWHBDPQMby87JHolha0j0M+XTkkQif+2dD93HCWrsO2Q
         vI9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782846230; x=1783451030;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oHuJUjEsLPE8+q1YHV5zzKgadJG0CI5d9no3OMB8tgI=;
        b=fTQ4Nuefqeijex8jV6u4g9T9KfNqs5WYUtQXzTj+6holQoqVrpHtKb9+qA/8/G82z6
         DL7YZfTLwD3YLWCOh4SH24iykTcW1guPiAYZJZDiwk2LAJod/21/seY7Q5Wk/w/R08kL
         olats/q5OkbbDbiKBzQnSB6TPq2EPq/Fv6HiXiW3WnQvgS5aoCc4GX2PIF6QZTsf61Tb
         lfk2nMaM514QSuzF/Ed4kHzNVxQHbi2sNWfUjr8jCJjBWJNqebb9LMy3pV890pICVYHB
         xQrElMQPMXUOFN+CwX8DrdN0mGaaF+b/ZFfoYiOkyNdFf87A/r6YgQzlVwx2DwAxwnmc
         jprQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp5ivSjvaWAHaXsoaUIimS0zBu4np9zdVyvyotiPUxEePnwRc1zFs183BFwE7XaqA82eesh2e4IKVk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwRZpG55jF45+RndVlexeaE73ByzLgZIqBVOLuU/9h+Zc5n9MpL
	f8vYjw6k58HnnF5si8Py05ijiwI5a4bYKizTgF2bypkI5e9FbKLfB0EBAXbgmtItvA7Yfz+cJGD
	0n+uJivsiEgYLNNb1nRwvpvsj7usQnBkc0ad0aedmlik9YnB2EzVehSAGv9Unp6gLVFbL
X-Gm-Gg: AfdE7cneD4Y0zk9dTpZHLoXZYylG4ygf1bg8w2QhVVw2nQ5unE5AYHLGLg91EwUvZd2
	fE0PlDzUpX9cTB/bjSPhI4t2nlyNRhw/2D++n/S+gmJlV4wrKtVsF0SHn5Sgt5EF+qvJ31Iy9PD
	FORcLrTRC2a9kHzEw/C9OmnkLa2ESARbqg8gyRwAlY3QQT0jrTWPC+KNjZOZM4QqeRODqiNBEjs
	uXWanWplaPGAwLwNzwfVW3rxSJRpGIgbkUl96ZwRS6ZIPNAKHnldBTIt1QHDMpv/3Zlpbj9ohOZ
	JaQUzEP+H7MfRk5S9Pj/Ui2GJOq21lFceRsWQpojJfdfMBYvsI+GsVNa5EsCP5hQcp6K4MER6Lo
	P1nw/pTEROGithmMl3guIrbcebuchoSEQcACZnjRUzu1f6cA=
X-Received: by 2002:a05:693c:3b09:b0:30a:e531:3153 with SMTP id 5a478bee46e88-30ee1364aa7mr3098953eec.14.1782846229952;
        Tue, 30 Jun 2026 12:03:49 -0700 (PDT)
X-Received: by 2002:a05:693c:3b09:b0:30a:e531:3153 with SMTP id 5a478bee46e88-30ee1364aa7mr3098927eec.14.1782846229412;
        Tue, 30 Jun 2026 12:03:49 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee317095dsm14963815eec.15.2026.06.30.12.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 12:03:49 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Wed, 01 Jul 2026 00:32:47 +0530
Subject: [PATCH 5/9] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for
 Shikra
MIME-Version: 1.0
Message-Id: <20260701-shikra-upstream-v1-5-e1a721eb8943@oss.qualcomm.com>
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
In-Reply-To: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782846191; l=4605;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=aTj5KtOb2vKiTmwN7SGIUjWosWnCNz+9xpIGl5k0Q6c=;
 b=ER7t5GpY8BCdpCJ5MWHClaDuV0E+hdJ/MSN/uvgkbK96tWDinblCHwJUS1wdTjtMfsTTnJaf6
 UydD3evw4f7DPopz5l5nKvZyaMOWwnzLerA4xCDfFwGdp2jHWv5xZVS
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Authority-Analysis: v=2.4 cv=OuF/DS/t c=1 sm=1 tr=0 ts=6a441317 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=iLgwJ6eFgLmkID89yw0A:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: LRBRWw1cOWhf-pIRdzt2N5W-SwOZhg_7
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfX7bwpJUEvSZFX
 U5KujFf7Ujd3vexjIhxcbTAi1LtEhNUwFazI1EZlYSROWTfzSgpJ1wsCF2cYmIhU9Hc4wvS2wzj
 ofd6C+qaO2aNaO796YM6zxvYyZ168Ek=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfX3taCA751N4D6
 TmafMlMPU3qja1Kfk6/YvqrOIMP412aCmuMyVHr3CbkjRDOukcOAym8ifIIX5M30LJhvvlBeVPG
 pfwgrlfCLPJdpw6UwV9wATn2FhitZ5kwuTkENAeDDeTJKlUjYC/0cNRblK8so+2ITZyF2OObZmI
 gzKpmhpgdDbYDBatfg1yeOH0WDjVBBsah2/GsXdGKUMuCgWuD+KB6tEO/VOXuUHERGDWoTJkkze
 H3cCp7TRr3+AZIoPK0wiQ48rzZ5M5lw2pOCRBWY7YlbFir2x1Fm8yjn0vXkdoCLC66Ewpq7VuAi
 z52mTfmSgjkQSWh0W+31vs1nePuwzJymzfn9mLr4yfffTjONUmoG+lopxrvOAAZX9fMZ5lNJT5/
 Ad3jkPdGtq3vgfXvZS8uDjA3/x52Zd73pjjGpD4beS6Jr2PYd4KqLRUfhXVRt4N6Y+CMWLciAB7
 Qp676t34wvSCK4WP9AQ==
X-Proofpoint-GUID: LRBRWw1cOWhf-pIRdzt2N5W-SwOZhg_7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_120352_232367_E754DCAE 
X-CRM114-Status: GOOD (  11.92  )
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

Add QMP PCIe PHY Gen2x1 support.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 73 ++++++++++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d3effad7a074..e0995e4d5f2d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2172,6 +2172,50 @@ static const struct qmp_phy_init_tbl sdx65_qmp_pcie_pcs_lane1_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
 };
 
+static const struct qmp_phy_init_tbl shikra_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BIAS_EN_CLKBUFLR_EN, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CLK_ENABLE1, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BG_TRIM, 0xf),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_LOCK_CMP_EN, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_VCO_TUNE_MAP, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_VCO_TUNE_TIMER1, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_VCO_TUNE_TIMER2, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CMN_CONFIG, 0x6),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_PLL_IVCO, 0xf),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_HSCLK_SEL, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SVS_MODE_CLK_SEL, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CORE_CLK_EN, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CORECLK_DIV, 0xa),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_RESETSM_CNTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BG_TIMER, 0x9),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SYSCLK_EN_SEL, 0xa),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_DIV_FRAC_START3_MODE0, 0x3),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_DIV_FRAC_START2_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_DIV_FRAC_START1_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_LOCK_CMP3_MODE0, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_LOCK_CMP2_MODE0, 0xd),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_LOCK_CMP1_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CLK_SELECT, 0x35),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SYS_CLK_CTRL, 0x2),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SYSCLK_BUF_ENABLE, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CP_CTRL_MODE0, 0x4),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_PLL_CCTRL_MODE0, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_INTEGLOOP_GAIN1_MODE0, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_INTEGLOOP_GAIN0_MODE0, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BIAS_EN_CTRL_BY_PSM, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BG_TIMER, 0xa),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SSC_EN_CENTER, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SSC_PER1, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SSC_PER2, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SSC_ADJ_PER1, 0x2),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SSC_ADJ_PER2, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SSC_STEP_SIZE1, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SSC_STEP_SIZE2, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CLK_EP_DIV, 0x19),
+};
+
 static const struct qmp_phy_init_tbl sm8450_qmp_gen3_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0x08),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_SELECT, 0x34),
@@ -3911,6 +3955,32 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 	.phy_status		= PHYSTATUS,
 };
 
+static const struct qmp_phy_cfg shikra_pciephy_cfg = {
+	.lanes			= 1,
+
+	.offsets		= &qmp_pcie_offsets_v2,
+
+	.tbls = {
+		.serdes		= shikra_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(shikra_pcie_serdes_tbl),
+		.tx		= qcs615_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(qcs615_pcie_tx_tbl),
+		.rx		= qcs615_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(qcs615_pcie_rx_tbl),
+		.pcs		= qcs615_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(qcs615_pcie_pcs_tbl),
+	},
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v2_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+};
+
+
 static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -5603,6 +5673,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sdx65-qmp-gen4x2-pcie-phy",
 		.data = &sdx65_qmp_pciephy_cfg,
+	}, {
+		.compatible = "qcom,shikra-qmp-gen2x1-pcie-phy",
+		.data = &shikra_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sm8150-qmp-gen3x1-pcie-phy",
 		.data = &sm8250_qmp_gen3x1_pciephy_cfg,

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
