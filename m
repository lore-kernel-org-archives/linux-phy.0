Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51844C88E5C
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 06:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XXu/nxq5jq95AlSe5koYOvZ2wu04nnvnta5t9N1D2E=; b=KEcUNBX1Y0J6sF
	gBwUU1B0OkoD9V9wZFSIOg9DOqHvVxn/1NzRDmsFCYwvc1mt+lGYguU7Nd3ratrHqp4E5VRL1w/d8
	SnPPhZAX3VTUymB/KBLzY1ORoO1wczazOG6zYS3FIqTHCOKlGgULmjPnSeILE43QYXjK5AxQsz1nY
	1zyqj4KfuJHzasHj/NSHZCVWYJIybXbXK86UAsdlRLnakUKZJanythpnu8XD/KNX/yfkW75bPVhTH
	Pz42R7kvtaZrz69kgfawCbgTHrnZOjSXPpM8+58gSS+C4IcEpsebMbF9QBIHvFakEEojfucZil35o
	rMO/0CVVx+aZ4J6rsdDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6il8-00000008Rqg-3xzm;
	Wed, 16 Sep 2026 06:04:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6il4-00000008RnK-1Pg8
	for linux-phy@bombadil.infradead.org;
	Wed, 16 Sep 2026 06:04:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=XY3M+7fTuLzqhreoJ5hF4hQOsJbMa/cuVlDQ6WwZkes=; b=DRex9Sd9+arBXb68abyuH1+ApD
	1VStvacQaUc7ziKq+mERJvo/5/sNpaCNM/dI48B8BIl97j+2NqDgzh6ZOXJI7iTf64ZwKR6GLpvxJ
	b+FPCQuWWgp5lwJNbawpU7c+9ysd/IqJ1+0N/6s+X6NFtFCDRATm6ShS5yRrWMjZovgiX7O9uFiPK
	PS5it8Q/qKgHRmwRl7rXdSq9tLBLDEEIZFOYTER1fb/xbQj5S6tqc8zaHOdL+ISpc08ENvz2i4gPL
	vTRNFoDLEGAlx0y+fQB6Gv1Kob/sfRAMLDqfRNC4/EaqOsyO6mkvZCcLR7jC+jK7R8e5QQ/XioAJp
	ANAqsW/Q==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6il0-00000007WMn-2GcB
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 06:04:37 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68G5j8Gl721180
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 06:04:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XY3M+7fTuLzqhreoJ5hF4hQOsJbMa/cuVlDQ6WwZkes=; b=IVayCzhLMExSvfNh
	pM/pSfl/wEDi5qmwQiqJnkZx8JkmdwNUNxPxhKHufnW4YMGfYK4rjQVJUUkAzZp0
	NRZPT/5gFs+EcNzFH5bfEMAxhga+4/2VdJHDGs0CpfHil+xKtS1h5qqgzb4+0R8B
	YSd+AygujZ9P3Jiy4mUfo9PNkba/608cIiLY/K929c1lgQRXp6QezHwZYlpzvioC
	zkgqOuPGqflL69xGzeC0Ki+umq5RMEwl8uD74cnG9l21E9zyEUe3EJ71UDGpDU0j
	ccDlE5nYaGa24S5D2w2uxPsbRKc1sr/FKdjSjlol8pSKa6Xy7/lKZ4o/Vi2zkuI9
	jVEbSg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqah9tma7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 06:04:30 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-39deda201bcso4319406a91.2
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 23:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789538669; x=1790143469; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XY3M+7fTuLzqhreoJ5hF4hQOsJbMa/cuVlDQ6WwZkes=;
        b=gmKK/+YCNYShbTkF2ULEslrpUjH4A+dRaQgLJPvWwEpZVuksk+la5CySp5QAQGX6Vj
         fW0Syw7t66uiR9Rl7uJbc30ocVY5wKyh0kg16VWl5fHlMQI9t3rWWBLOxUpc8/3ihcdp
         +y6HXoAM1yY/xC4LUU1rvU5LpA5douJUNiwbqVJ0+RO97fefZe6ksIfEAaA1uwLoWwT+
         kPsKzm2Bt/3VaBgpmn1+o+1H3sI5JH2ZiBk2af2HhaW63y7bZukX8xT+wB9kHDIf3AYv
         QJFGNABt+pbooS7WJrW/esu3rMNweCyZ7bJGArlNhiG1WeGQiXQ3ByJ4DmiwPeBMUww7
         VLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789538669; x=1790143469;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XY3M+7fTuLzqhreoJ5hF4hQOsJbMa/cuVlDQ6WwZkes=;
        b=Iy2FOy5bvH06UMwfxCgb/qwEklIUHZukGXfxb4rDlNQxj4IVp7sZ7UMT8mv6fEFs8R
         0autwrUaEG7vJSJ1zGFzaDE5llOGmcgquSTSX7GIdMqax/uIbaliBWA+ykC4F/UjepW0
         Hzd/cR+AmPCtiZeQrL+Kk4eGOAWzhFpXhQQFbcRI0GPNMC6a70Tq3IieVZ80Ucuyh7R3
         p8yYva8e8DyouxNi7UoN7M0sURr0l+ZI50Ym5Y1QVVj/nlSB1/uwlVMEfm1KgnR6yAzU
         Shz4ss88zC/PBpKQL0LZfNyQqLoc1FuDkzkG4HbEH0qvj0ABM6UkeLqP9QJdCpf+45Ss
         lI5Q==
X-Forwarded-Encrypted: i=1; AKwUvBwlWyzLeN0HXtF1SV1sn7YZhU1b4sL5IGxabbRG5+eaNrUYZdxX6EQBHlVG+8Lj2y8RkTdccGQQmi0=@lists.infradead.org
X-Gm-Message-State: AFuF++k2tThr92MmK6OnJyk8Q2zZ9EhtX/3boKWwzFPrI4eLz86bSw16
	vy1/3Dcdyeag6qYu63T2OgkaDH07V5hGASGZrcNY2MTIr1kunuhD2aMo9gOjlIYaJAvTJ1o60FZ
	1b1Z2483iXwn9Tt20nDxpQO92ZNTfcPeYuydd+hq3ti4IiD5xknBYQAyszqUwlCMtqzCc
X-Gm-Gg: AYBFou2/iGPsUSI4EBFdRB306aJ9E+9Ji8ttiRnmQ2CxVT4tFSxQc7C1PVzYE7kH8p5
	JyFnX8gQhYMLZcbR+c561K7ChmNlDx9NVm2WlISEbyNdfHdkL3YhHbg73pJAQ9cOQFhIrjmXMhT
	v2+zf6I5MOWpFsV/Gj/N6QHTRlFpz6ddxLI+b3n/9+u2LyNmt1E2/LoWnQl/EAVmUUP3YFL3MKN
	W7RMyHID6jmxgG3i3LZQPyINT6dG9SRM+1sKFsAqjASFJXhO4vKNKGeIL5/szSGwMpIeK3X9qsz
	44f7TPl7RqjIKhWUu7YxFPq3AaFUSbX47MQvG4gqRuj5WR8TxNDlB909freS1PiqC0PdiUWGWgG
	o1ONDL7rssgzC2mjcHpLVCxl/oZrGbWqo3iGVnDAMdsJSYqk=
X-Received: by 2002:a17:90b:5386:b0:39b:3510:49e7 with SMTP id 98e67ed59e1d1-39e1df52290mr3822848a91.0.1789538669405;
        Tue, 15 Sep 2026 23:04:29 -0700 (PDT)
X-Received: by 2002:a17:90b:5386:b0:39b:3510:49e7 with SMTP id 98e67ed59e1d1-39e1df52290mr3822765a91.0.1789538668901;
        Tue, 15 Sep 2026 23:04:28 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33bfb19f8cesm4740083eec.2.2026.09.15.23.04.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 23:04:28 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Tue, 15 Sep 2026 23:04:23 -0700
Subject: [PATCH 3/4] phy: qcom-qmp-pcie-multiphy: Split phy_ops into
 init/exit/reset/power_on
MIME-Version: 1.0
Message-Id: <20260915-align_pcie_init_sequence_0916-v1-3-0b2195836f30@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789538665; l=4963;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=oM8i478j1OWwIT/sT0R2uSb9t/Wu6UrKojtfSKPkClw=;
 b=K3Ucl9GhBeVKrJwKb/jxQIrJgF99z4xyiY7o08rGAc4Yz7eKFqtMkOhiYOb9hmirl2JCM/Igf
 NZD1Q1ASxp7DTFmXsNE58iajIR88EvSfT7IuYe9ZEEng1DiGOTJsb3U
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=BtkIUoX5 c=1 sm=1 tr=0 ts=6aaa316e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=yU77vfN-gRUBXX0kDPsA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: s4MAU4RjGanhHxENhYkmoN-sdCmg75SG
X-Proofpoint-GUID: s4MAU4RjGanhHxENhYkmoN-sdCmg75SG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDA3NiBTYWx0ZWRfXyvrtoQ67Yiu9
 +4jEx2MfrNXGEFP/P4OBfYAafkBHF8mOA3v3OFD10xley3GRRL/0seAHj9DrfFXbKCmoTl8w8lj
 x8iP/aDU1WWKTnIj8+IxS2laskXIxFQ9/f4HUjBwd8IKr/O6dHtFti40UBC9sEiLGRS9GT/9T8m
 ld1N9Q2reC9WrMIwKt7S1QgM1YJ+G44YZqz/p5EkGHI1WRoHnPe6bZRv0t/92g6idsx9v3qpkZU
 Dj5e6rSJRwAfALEBuprCguZheakbWGMamXiVrrfzc3H2AqXxAfKlc5mdYgW1i5l78L7iQkSbqFA
 Dz9wKK328EoQ+VRqwnoWG1gQ6bdJcNxDZlGcWJuWyhRaQycPfYtwSSWq1YFkyDHbL7gFbD89Fi7
 Zth4eTAIyfzL8hqbgDP2Na2+gZNuagG3MCLDAAQSYW9ox+l+oQUzBsc9tYnyjsMX4sTgnB0DUbD
 YNJP2fVWiU/8D2r9iIA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDA3NiBTYWx0ZWRfX0ngZanDweLz5
 fLz76hpL9pp6j7hrEmCDJ5nX31uhp/VxUpPAlfKl27LN8IIZZTrFdxN4sytVdgwriESVkSPG/GZ
 rx2XlFWRQeAeyuNDKhuC7EOiSh7mPmM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_05,2026-09-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 adultscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_070435_051115_8197534E 
X-CRM114-Status: GOOD (  17.60  )
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

Per HPG, the controller now calls phy_init() from
qcom_pcie_host_init() and phy_reset() from inside its own core reset
assert/deassert. Making that actually happen here needs phy_ops::init
and phy_ops::reset implemented, and phy_ops::power_on adjusted to
match. Split the combined phy_ops::power_on/power_off into
phy_ops::init/exit/reset/power_on to do that.

phy_ops::init enables power domains, regulators, and all PHY clocks
(pipe clock first). phy_ops::reset does the no-CSR reset assert/
delay/deassert/delay. phy_ops::power_on is left with just the PCS
status poll. phy_ops::exit mirrors phy_ops::init in reverse;
phy_ops::power_off is dropped since nothing remains for it to do.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c | 94 +++++++++--------------
 1 file changed, 35 insertions(+), 59 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
index e93cba4369fb..aa7130efca45 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-multiphy.c
@@ -280,20 +280,18 @@ static int qmp_pcie_init(struct phy *phy)
 		goto err_pd_power_off;
 	}
 
-	ret = reset_control_bulk_assert(qmp->cfg->num_nocsr_resets, qmp->nocsr_resets);
-	if (ret) {
-		dev_err(qmp->dev, "no-csr reset assert failed: %d\n", ret);
+	ret = clk_bulk_prepare_enable(qmp->cfg->num_pipe_clks, qmp->pipe_clks);
+	if (ret)
 		goto err_disable_regulators;
-	}
-
-	usleep_range(200, 300);
 
 	ret = clk_bulk_prepare_enable(qmp->cfg->num_clks, qmp->clks);
 	if (ret)
-		goto err_disable_regulators;
+		goto err_disable_pipe_clks;
 
 	return 0;
 
+err_disable_pipe_clks:
+	clk_bulk_disable_unprepare(qmp->cfg->num_pipe_clks, qmp->pipe_clks);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 err_pd_power_off:
@@ -310,31 +308,47 @@ static int qmp_pcie_exit(struct phy *phy)
 	reset_control_bulk_assert(qmp->cfg->num_nocsr_resets, qmp->nocsr_resets);
 
 	clk_bulk_disable_unprepare(qmp->cfg->num_clks, qmp->clks);
+	clk_bulk_disable_unprepare(qmp->cfg->num_pipe_clks, qmp->pipe_clks);
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 	qmp_pcie_pd_power_off(qmp);
 
 	return 0;
 }
 
-static int qmp_pcie_power_on(struct phy *phy)
+static int qmp_pcie_reset(struct phy *phy)
 {
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	const struct qmp_pcie_offsets *offs = cfg->offsets;
-	void __iomem *status;
-	unsigned int val;
-	int i, ret;
+	int ret;
 
-	ret = clk_bulk_prepare_enable(qmp->cfg->num_pipe_clks, qmp->pipe_clks);
-	if (ret)
+	ret = reset_control_bulk_assert(cfg->num_nocsr_resets, qmp->nocsr_resets);
+	if (ret) {
+		dev_err(qmp->dev, "no-csr reset assert failed: %d\n", ret);
 		return ret;
+	}
 
-	ret = reset_control_bulk_deassert(qmp->cfg->num_nocsr_resets, qmp->nocsr_resets);
+	udelay(5);
+
+	ret = reset_control_bulk_deassert(cfg->num_nocsr_resets, qmp->nocsr_resets);
 	if (ret) {
 		dev_err(qmp->dev, "no-csr reset deassert failed: %d\n", ret);
-		goto err_disable_pipe_clk;
+		return ret;
 	}
 
+	udelay(5);
+
+	return 0;
+}
+
+static int qmp_pcie_power_on(struct phy *phy)
+{
+	struct qmp_pcie *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	const struct qmp_pcie_offsets *offs = cfg->offsets;
+	void __iomem *status;
+	unsigned int val;
+	int i, ret;
+
 	for (i = 0; i < cfg->num_regs; i++) {
 		status = qmp->base[i] + offs->pcs + cfg->regs[QPHY_PCS_STATUS];
 		ret = readl_poll_timeout(status, val, !(val & cfg->phy_status), 200,
@@ -342,56 +356,18 @@ static int qmp_pcie_power_on(struct phy *phy)
 		if (ret) {
 			dev_err(qmp->dev, "PHY power on timed-out (%s): %d\n",
 				cfg->reg_names[i], ret);
-			goto err_disable_pipe_clk;
+			return ret;
 		}
 	}
 
 	return 0;
-
-err_disable_pipe_clk:
-	clk_bulk_disable_unprepare(qmp->cfg->num_pipe_clks, qmp->pipe_clks);
-
-	return ret;
-}
-
-static int qmp_pcie_power_off(struct phy *phy)
-{
-	struct qmp_pcie *qmp = phy_get_drvdata(phy);
-
-	clk_bulk_disable_unprepare(qmp->cfg->num_pipe_clks, qmp->pipe_clks);
-
-	return 0;
-}
-
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
 }
 
 static const struct phy_ops qmp_pcie_phy_ops = {
-	.power_on	= qmp_pcie_enable,
-	.power_off	= qmp_pcie_disable,
+	.init		= qmp_pcie_init,
+	.exit		= qmp_pcie_exit,
+	.power_on	= qmp_pcie_power_on,
+	.reset		= qmp_pcie_reset,
 	.owner		= THIS_MODULE,
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
