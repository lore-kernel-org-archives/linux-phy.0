Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 061A8C88E77
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 06:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pvHjgym6X0iv1QWBePiEvXJoxm+Rzb18Y8mzQ4YYqY=; b=DHG8IAh7HCG6Gj
	dbppsiBO6GYtyMJNX+ZrG2TtNUrwwB3klbr9tin73S9Oh3JhXEFtqwUp7Fklgh4JqXk+beZkc8ySS
	WS+VxmJVO/UN0fkQDQFlQCUA2kSWyAds4uE5WUYFok54S+ZapypMuMo+yl/fZ/yQfyXq6AmRzKfcA
	UxnWiFPYwa4aws4pcY/cKk/upqhqoXp/t/CANXN6/sKIyBGQqb4WYLQJFUQjLcydhl3t/5rsZcJqq
	WRSTLiRJfEtUu93BB1aYqmnF9UilLWSTMcj3yJU065f3dnhLHsiRvkvNhHqlFQNqxo2dNdCCP0olj
	bqSoWMqjn3psgK0PPpSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6il6-00000008RpG-0Hoj;
	Wed, 16 Sep 2026 06:04:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6il4-00000008RnJ-1F33
	for linux-phy@bombadil.infradead.org;
	Wed, 16 Sep 2026 06:04:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=XfbGlQT9eaiKTQLPtuKNLi+lu4tUcZ5VPRgj41htzTA=; b=M6o3sJN/QNg/YHHlFB7kX9f4Rx
	m7fROtg9gjQB+EQmFEIJr90g1kFIElUU+DiDUeJpbs87+oeAobJSZMH3Owy4ONwQydaCRBiG+wDjA
	6xdCcck7JdPUlryWMUy4CMrvC/bRBapaeT3nHaclvVH2I+ZZWZMxQFu4Lcx+Ro3KogHEM1nORNzV/
	IH/BXm4Q4UjTk6XYqAX3h2A0WZgqCOsbUTNattQ2VJmODbJ13h3DrcAkflp9juVmAzcLhFNBFp+LE
	2ARzc+sU7kTDKegWv9PqIUTvIz9Z3/8jHLAPp5snmzJwYjlkAPse44U+8ayKlg6XRKceYYLRS5Wus
	ysXS1DIA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6il0-00000007WMo-2qvw
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 06:04:37 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68FNZLpG1408771
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 06:04:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XfbGlQT9eaiKTQLPtuKNLi+lu4tUcZ5VPRgj41htzTA=; b=m3tiGrxKsHb38Blr
	xLt9JJnSf+SfZ6kF3b//NnfYaA2OP08d+oX1ULyXmYY503TXEZY3/Oi7v4W69x8i
	EtMqPITU/wiWw2I/wsn2tR7shpCpuUCfoQqY4U9Rfaq3kGJziadnkfxu7AFjIgoS
	dDBTx1qOVoUj59xqzK1UCJ+EmF3quRxCC5WVsAXE9IvokU7br+bucoXu6UVwY7D9
	/Ek0PKPnR7GvOnh6ELZ6mw85NfxV8KIvXK+JfwHVp0D8kufJK5b80XPz3Fm+fPkw
	ZNYatbb3/0qKW5Jhm9TEyAa95GfExkEpr/jaxSUENXRBRR0YQmY8uUf32rWy5xbe
	jsMVyw==
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqftuh713-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 06:04:31 +0000 (GMT)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-6c34cd4bffbso2917222eaf.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 23:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789538670; x=1790143470; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XfbGlQT9eaiKTQLPtuKNLi+lu4tUcZ5VPRgj41htzTA=;
        b=RrwJPpFl5OQElSAW3f49WgQqIkk0loyxwbK5xcmiA3E62sR5OzU2CwjvyeTX38shLG
         i0xAwTnRVIUho1eoThmmrb/S5q7HeIj8aQbfpI5T4zmvABymeGJ0eflOLsu1Du+Y8bk8
         U562wWfCmwGbH3xBx3i8zg9PiRNH2mULz/alx7FJwBk0lh96RgOwMqfuVtGCHKFTgHQt
         iMafr0EYo0phsKvvWWd4D6bs1HFzLyCEMAvoxQZ85R5TIMcTfl28+CilO5fvkq6sLrpA
         K+T386FtsyUCfkUwDhaPEHNbiL9OwdVVlQdwRT6ZA+CKAH2057TlPS5ODEQPDj6s4vE8
         C7zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789538670; x=1790143470;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XfbGlQT9eaiKTQLPtuKNLi+lu4tUcZ5VPRgj41htzTA=;
        b=LIOUE0ZRP+mW3lVXmbRzKtRsWs+/COVC8f6nqyMT5ls1d7a4I024ZZIFVZk/XPvejt
         EEFSi4iWhKVOHfv7X8xy2REINl2faAHxWMAokwB9Inotg+g2JthsEfeknjMuf5jopr2Y
         PPUdhP69xwCcwVtty9M3PeBcMfqxcYKHeVSl5uIA8P56Mq+KvA7/AvBCGsJev1EN0qmV
         uEMvRsDpj1P3EbNSuJ9/SMRxB4Xl00JVvZdRXqpK6bB0Pfqj0Ord4czqGY2oVu1VpisM
         zLEuuxjbYdH9iTotB+yF3Jzg+1l/CCDHYrpF6ZuOuYn1wHnqZutP1g05XhfQa3l7uG+0
         dwzw==
X-Forwarded-Encrypted: i=1; AKwUvBy00mO4b/GTClzKvmjlYTFq4FQ4hWHg0P9QbVmFtDuHDYTPz7CHFZkmD8z0xCib2C6vlgmdJlXcfOw=@lists.infradead.org
X-Gm-Message-State: AFuF++lYCgPRjMtwS9HBn0CONjRh7mBAgdXrRMpaqGA65bnnLxO5w+9d
	6yP7cHsoyVqTTxEmZtgkW5cSoJ8/wr/1F050x0VutlTq0C0jWwQIPV8UtBiux7ERvHsnLYJJRDm
	+UvRSKE5Fq5/L5yqFA/A3Aw6n2ESB2Bs2f3xdP1O4TcV7jzoKnjRECv0+ofKaeMpk92cZ
X-Gm-Gg: AYBFou2ryzEEjROqhX0DmRnKhkvDagn3gq3GdTTsDMPbGsf64R3eHQ0GxqL8B0ZpgAK
	Wf63a4+AjeYQeD+SfQRUtdmsh+ucqcLfqIDxucKFbB2zjIg3p/al4PQwGZK9HBd2OgWLWfDnyU0
	8Wo70MKsHDjX0YRphh8IThpkSUNSb/Pzo175D0tX6odv96o4NPS5GZbxYmTSKEvQ1Z9IHWDJw1R
	TgF+kWjuMAvFibKaVNCO6fGJd+6v8CEEyrumZputw+epF7/c0z/HKlvrECVJqB0x2tly3zOWAAx
	LMtdefHniVM8Fz0tOLhemw8EOwt/wCFa/2cHPtwh6xAB51UnYM7M60hOTz1rUmysAtey8qn2m0o
	rOXToWoXqhkS4GGO+18RGg7h9vu4eLVXEOvhbTOJNqpYkous=
X-Received: by 2002:a05:6820:2007:b0:6b7:8396:f3c3 with SMTP id 006d021491bc7-6c7d36fca95mr1492347eaf.37.1789538670267;
        Tue, 15 Sep 2026 23:04:30 -0700 (PDT)
X-Received: by 2002:a05:6820:2007:b0:6b7:8396:f3c3 with SMTP id 006d021491bc7-6c7d36fca95mr1492324eaf.37.1789538669757;
        Tue, 15 Sep 2026 23:04:29 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33bfb19f8cesm4740083eec.2.2026.09.15.23.04.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 23:04:29 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Tue, 15 Sep 2026 23:04:24 -0700
Subject: [PATCH 4/4] phy: qcom-qmp-pcie: Split phy_ops into
 init/exit/reset/power_on
MIME-Version: 1.0
Message-Id: <20260915-align_pcie_init_sequence_0916-v1-4-0b2195836f30@oss.qualcomm.com>
References: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
In-Reply-To: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789538665; l=9312;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=/wSopYesC3qMtlVXkRsTFtC77+NTlle5qs5EdeUCzCM=;
 b=rRhym0yddZi4OGKtctf1tWZ7gm/qQ5GFKplmWgjzH0qIek07/cqoS0jaO0sJbmupOR1gXubU3
 NgYdhKo63+MBSE0R6Q1MrMdOWUsRmdxPkJXMqrEon/TQNyymO9e2S/D
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDA3NiBTYWx0ZWRfX30MkmsoR1yMo
 jWoT2t+ojr0PQJHIjY+7ohNV+Ncxnr5gQR6dcztddIZzpYpTA6nXR97GK4NeEaCKrVsiX9rAizu
 mNa4WlpNjCFxYfo0QnUrSxNGSCwbTpXt6RQOmMhYztFVJRQZD5OudC2HKRbwFC+Fgr0hSjxO49v
 0T6x843Yrks8DxuPhI4Nt7bCYBA2w5hUvq/zpr3PSCV4ajwlXFD23Alz0XXDziBqGY/P8G7N17b
 WDXKCo/2+pbzwuJY4LSoIKvx/P1axNBqxtishU0FLfPIGX3IufVIBtHpzwzRS927TVuEFZfzUez
 OWNqJFYXWAugXpfSI8XsvzhypayOb6JP0aAJGgv+4WzlGpmoIZeSbNJq5J3eSI5bk9+B//jlTkS
 DFMv3egVpq/2zkxTDXe4/FzKNJeb4+Uy/DMv/zVwpoEzESDsN1G9wZ2MrpWJQMO0c9e0PQzo8cb
 wa/FmUbgEA3mxvFB4dQ==
X-Authority-Analysis: v=2.4 cv=a5ulZkSF c=1 sm=1 tr=0 ts=6aaa316f cx=c_pps
 a=wURt19dY5n+H4uQbQt9s7g==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=6OVxYtpLaVGWezP7JUUA:9 a=QEXdDO2ut3YA:10
 a=-UhsvdU3ccFDOXFxFb4l:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDA3NiBTYWx0ZWRfXzZxDDRggT3U9
 A/cTwnEFyci5eWTyBrx5rQkfllaEmg8KpMns/rU3KO3g8wFOHWbfq3Fx/wewccdDmzvhFnRTuF0
 Ul2AXiH0LRcsAt49EjETcplezI/Yigk=
X-Proofpoint-GUID: WUzXnTyBwA4__CXxZ7DXfS3uPMvBuX0o
X-Proofpoint-ORIG-GUID: WUzXnTyBwA4__CXxZ7DXfS3uPMvBuX0o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_05,2026-09-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_070435_155899_0D7219A3 
X-CRM114-Status: GOOD (  20.14  )
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

The controller now calls phy_init() from
qcom_pcie_host_init()/qcom_pcie_enable_resources() and phy_reset()
from inside its own core reset assert/deassert, so the PHY's reset
toggles alongside the controller's core reset as HPG requires.
Making that actually happen here needs phy_ops::init and
phy_ops::reset implemented, and phy_ops::power_on adjusted to match.
Split the combined phy_ops::power_on/power_off into
phy_ops::init/exit/reset/power_on to do that.

phy_ops::init enables regulators and all clocks (pipe clock first)
and determines skip_init/skip_reset. phy_ops::reset toggles the
reset that skip_init picked. Register-table programming used to run
while the no-CSR reset was still asserted; now it runs afterwards,
in phy_ops::power_on.

Adds skip_reset to struct qmp_pcie so phy_ops::reset and
phy_ops::power_on share the value phy_ops::init determined instead
of re-reading PCS registers.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 184 ++++++++++++++-----------------
 1 file changed, 80 insertions(+), 104 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d30194c6ed17..2b6741a4120c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4058,6 +4058,7 @@ struct qmp_pcie {
 	const struct qmp_phy_cfg *cfg;
 	bool tcsr_4ln_config;
 	bool skip_init;
+	bool skip_reset;
 
 	void __iomem *serdes;
 	void __iomem *pcs;
@@ -5747,9 +5748,22 @@ static int qmp_pcie_init(struct phy *phy)
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs = qmp->pcs;
-	bool skip_reset;
 	int ret;
 
+	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
+	if (ret) {
+		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
+		return ret;
+	}
+
+	ret = clk_bulk_prepare_enable(qmp->num_pipe_clks, qmp->pipe_clks);
+	if (ret)
+		goto err_disable_regulators;
+
+	ret = clk_bulk_prepare_enable(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
+	if (ret)
+		goto err_disable_pipe_clks;
+
 	/*
 	 * We can skip PHY initialization if all of the following conditions
 	 * are met:
@@ -5763,59 +5777,21 @@ static int qmp_pcie_init(struct phy *phy)
 		qphy_checkbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START) &&
 		qphy_checkbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], cfg->pwrdn_ctrl);
 
-	skip_reset = qmp->skip_init && !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
+	qmp->skip_reset = qmp->skip_init && !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
 							    cfg->phy_status);
 
 	if (!qmp->skip_init && !cfg->tbls.serdes_num) {
 		dev_err(qmp->dev, "Init sequence not available\n");
-		return -ENODATA;
-	}
-
-	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
-	if (ret) {
-		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
-		return ret;
-	}
-
-	/*
-	 * Toggle BCR reset for PHY that doesn't support no_csr reset or has not
-	 * been initialized.
-	 */
-	if (!qmp->skip_init) {
-		ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
-		if (ret) {
-			dev_err(qmp->dev, "reset assert failed\n");
-			goto err_disable_regulators;
-		}
-	}
-
-	if (!skip_reset) {
-		ret = reset_control_assert(qmp->nocsr_reset);
-		if (ret) {
-			dev_err(qmp->dev, "no-csr reset assert failed\n");
-			goto err_assert_reset;
-		}
-
-		usleep_range(200, 300);
-	}
-
-	if (!qmp->skip_init) {
-		ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
-		if (ret) {
-			dev_err(qmp->dev, "reset deassert failed\n");
-			goto err_assert_reset;
-		}
+		ret = -ENODATA;
+		goto err_disable_clks;
 	}
 
-	ret = clk_bulk_prepare_enable(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
-	if (ret)
-		goto err_assert_reset;
-
 	return 0;
 
-err_assert_reset:
-	if (!qmp->skip_init)
-		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+err_disable_clks:
+	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
+err_disable_pipe_clks:
+	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -5833,12 +5809,62 @@ static int qmp_pcie_exit(struct phy *phy)
 		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
 	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
+	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
 
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
 	return 0;
 }
 
+static int qmp_pcie_reset(struct phy *phy)
+{
+	struct qmp_pcie *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	int ret;
+
+	if (qmp->skip_reset)
+		return 0;
+
+	if (qmp->skip_init) {
+		ret = reset_control_assert(qmp->nocsr_reset);
+		if (ret) {
+			dev_err(qmp->dev, "no-csr reset assert failed\n");
+			return ret;
+		}
+
+		usleep_range(200, 300);
+
+		ret = reset_control_deassert(qmp->nocsr_reset);
+		if (ret) {
+			dev_err(qmp->dev, "no-csr reset deassert failed\n");
+			return ret;
+		}
+
+		return 0;
+	}
+
+	/*
+	 * Toggle BCR reset for PHY that doesn't support no_csr reset or has not
+	 * been initialized.
+	 */
+	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+	if (ret) {
+		dev_err(qmp->dev, "reset assert failed\n");
+		return ret;
+	}
+
+	usleep_range(200, 300);
+
+	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
+	if (ret) {
+		dev_err(qmp->dev, "reset deassert failed\n");
+		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+		return ret;
+	}
+
+	return 0;
+}
+
 static int qmp_pcie_power_on(struct phy *phy)
 {
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
@@ -5847,17 +5873,14 @@ static int qmp_pcie_power_on(struct phy *phy)
 	void __iomem *pcs = qmp->pcs;
 	void __iomem *status;
 	unsigned int mask, val;
-	bool skip_reset;
 	int ret;
 
-	skip_reset = qmp->skip_init && !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
-							    cfg->phy_status);
 	/*
 	 * Write CSR register for PHY that doesn't support no_csr reset or has not
 	 * been initialized.
 	 */
 	if (qmp->skip_init)
-		goto skip_tbls_init;
+		goto skip_serdes_start;
 
 	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			cfg->pwrdn_ctrl);
@@ -5870,22 +5893,6 @@ static int qmp_pcie_power_on(struct phy *phy)
 	qmp_pcie_init_registers(qmp, &cfg->tbls);
 	qmp_pcie_init_registers(qmp, mode_tbls);
 
-skip_tbls_init:
-	ret = clk_bulk_prepare_enable(qmp->num_pipe_clks, qmp->pipe_clks);
-	if (ret)
-		return ret;
-
-	if (!skip_reset) {
-		ret = reset_control_deassert(qmp->nocsr_reset);
-		if (ret) {
-			dev_err(qmp->dev, "no-csr reset deassert failed\n");
-			goto err_disable_pipe_clk;
-		}
-	}
-
-	if (qmp->skip_init)
-		goto skip_serdes_start;
-
 	/* Pull PHY out of reset state */
 	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
@@ -5902,15 +5909,10 @@ static int qmp_pcie_power_on(struct phy *phy)
 				 PHY_INIT_COMPLETE_TIMEOUT);
 	if (ret) {
 		dev_err(qmp->dev, "phy initialization timed-out\n");
-		goto err_disable_pipe_clk;
+		return ret;
 	}
 
 	return 0;
-
-err_disable_pipe_clk:
-	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
-
-	return ret;
 }
 
 static int qmp_pcie_power_off(struct phy *phy)
@@ -5918,8 +5920,6 @@ static int qmp_pcie_power_off(struct phy *phy)
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
-
 	/*
 	 * While powering off the PHY, only qmp->nocsr_reset needs to be checked. In
 	 * this way, no matter whether the PHY settings were initially programmed by
@@ -5927,7 +5927,7 @@ static int qmp_pcie_power_off(struct phy *phy)
 	 * next time.
 	 */
 	if (qmp->nocsr_reset)
-		goto skip_phy_deinit;
+		return 0;
 
 	/* PHY reset */
 	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
@@ -5940,36 +5940,9 @@ static int qmp_pcie_power_off(struct phy *phy)
 	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			cfg->pwrdn_ctrl);
 
-skip_phy_deinit:
 	return 0;
 }
 
-static int qmp_pcie_enable(struct phy *phy)
-{
-	int ret;
-
-	ret = qmp_pcie_init(phy);
-	if (ret)
-		return ret;
-
-	ret = qmp_pcie_power_on(phy);
-	if (ret)
-		qmp_pcie_exit(phy);
-
-	return ret;
-}
-
-static int qmp_pcie_disable(struct phy *phy)
-{
-	int ret;
-
-	ret = qmp_pcie_power_off(phy);
-	if (ret)
-		return ret;
-
-	return qmp_pcie_exit(phy);
-}
-
 static int qmp_pcie_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
@@ -5988,8 +5961,11 @@ static int qmp_pcie_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 }
 
 static const struct phy_ops qmp_pcie_phy_ops = {
-	.power_on	= qmp_pcie_enable,
-	.power_off	= qmp_pcie_disable,
+	.init		= qmp_pcie_init,
+	.exit		= qmp_pcie_exit,
+	.power_on	= qmp_pcie_power_on,
+	.power_off	= qmp_pcie_power_off,
+	.reset		= qmp_pcie_reset,
 	.set_mode	= qmp_pcie_set_mode,
 	.owner		= THIS_MODULE,
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
