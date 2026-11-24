Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F908606A338
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 20:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jJs9Y2oY;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=WxgJ7pYe;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=OoJ3q5Nr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nZLI07xZZyk7qP6et07VQukYNCSMKUjY0FR4PBUCc0w=; b=jJs9Y2oYMIMFCpRDM7+j1RqOSf
	V248fr6UDEbWSoi3x/jO5YBm7NwKH+8qHlH0RBEv4UJhfOH1LNPiiAPGJ7auS/77gv3HEdzCor31v
	KG17RPq5EEYtjjLyHvfJUkTrnkZYJiUFYKEITDn9aEd628Bq8RLYFGuRDzGSYGF7mrzJpkwAa5Pkt
	1OepouTrVY4Fzlp+5NYTnoc2wzpBcIGsUzecQ1ovppWtSVR/E1S3J2DkSVzBKm2rYBRP6iMb8xPYg
	pvwt9BYrRWO8e7ifi3ON3HYGK2Do8MHJ8DEb3aHOY4HxbiSbHlqp+mWbTdEhK9okqFxIskRIW8wXU
	N19AhO/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiH-00000007h2Z-3xqo;
	Tue, 24 Nov 2026 20:02:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiF-00000007h1w-3dxf
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 20:02:00 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AOIXM032306276
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:01:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WQz9M5ZF3W3F/I+cxRQF9tuKAsAAUPgvm5b9dNy50Mk=; b=WxgJ7pYe7a1NhCBD
	3RPzR2OHdYUWIS5BRV3ASd9SBJtUla9otD3oKx8Rfv7ZmXMWn5wMrWC+hzhMqeHN
	rDL3LST8DUaiCMJMLwHyw9wBgMJzLdgjCRaPd+8FZZVO6WF2zSwPh+PltM38iAbc
	cRVdPpj9Qvtocc7imwvdK7kXy47+nYBFgMSbiNZUeLuaq2qV4ZVDyGu0h+BMG34b
	djSFX6vFJaJHFZpNRAOqBeO4y/XLli4Xo3kNK0NUcaEgGRhJ5OAKLbzyf81x6XGe
	0Skyzl3FVkdBBRd4lN/Kj7lZwho+eyTE59HIU/bXUHeEEctJ9bHyPPHemd+65bBp
	y436Yw==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5cxk9atk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:01:59 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-7cc2c798d76so154005137.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 12:01:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795550518; x=1796155318; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WQz9M5ZF3W3F/I+cxRQF9tuKAsAAUPgvm5b9dNy50Mk=;
        b=OoJ3q5NrDwEj+LHRNE19NCl6suspy2oWSIILtRJnpXCBWzebQa2DAIHcpjOLAdRBwc
         2bNS4l1VES734tsZwdyeIp5fxK3/oeAj6HLyfS3/Gm5/BIBg7IjUu592QBaT7aLXFUA1
         Hbbux7ATigeoY1jBIaP2Iq7Ou0jQzAFGXNz5vdDRtDJLpE2Eexop9PzixTaN727qAAN8
         1NUyspV6nCFr8wFF8by+Quk4yBj0Iposx0xheXuKrz5F9mzSRqgICONoQiVnJyC0PVtD
         s7ilRvwG2ZHAJadHDLSE/AhApDSU6f7p7VNDqlnemAvdExdDz55XtnDI9iuVlLl5Za/y
         0n/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795550518; x=1796155318;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WQz9M5ZF3W3F/I+cxRQF9tuKAsAAUPgvm5b9dNy50Mk=;
        b=ybgZLd4OgpVZs6sxVUErv+Cv83ncSuV5tLCrcutlvgHkLGGnLSRIha5HvRrQJIvAvW
         cQiYDO/S8x1oNvI/MpQL/U6R29ym8E+8wpSzL50z0J3aDj7+z4AifzU2Mvk2d7jIZoIE
         0yUWYFUDyAEp5175eCcakI/ctqDU4ofycvKnOQtplMcspmBPx8LscULYJb6FoaHPtvD8
         ggojEM2gwpubjxhdCBYcncXGyPwkI6P/1vWnXJ7cVTba3+605I5K0QhfRsrfV+AY07ow
         4FSBu4TlmJ1uEp+2YjgMu66dcswTyNMQSLd4O2RBeNM7ZupEYo6V+apbA8d2bOzxiJkW
         Guqg==
X-Forwarded-Encrypted: i=1; AL+hErF9Hm25tQ/mKwA1DU6Zm+ILbXBl6+XtMB5q/sUn7f0oqFysXj/6aQI89Y653oVExJJp0XqlljUfkjc=@lists.infradead.org
X-Gm-Message-State: APuU4Z80xOvLl3xZuREzZ8YcXjHF1KKJLzt2qQ0mJWVzN4yV5rWUCPRz
	ZZAx3h9h7NJeqHbv/ddol/wbWqxabLDrNoxbpFNUa7YL7YbPtc3kW00aQLz2aFXc9ol6ePIs8fx
	pTv6YRt5kRDwAEIP5IvgPxgJO43dm7JXzJwTuiO959yklTDzbwrcdUouf5kR/H+s5XU0Q
X-Gm-Gg: AZFdTZe2hJrJuoVtEvETPO6T1uUU3bkL5ixcOSWl9xY2mfvxd1piaM3wsOrGRzbLNEE
	5549shr+jZox1lR3BX7O9zrBrNhklbL4TkMq5LPqn0AuygACn6KwpHQqcBq9pWQm0xjwzs84EEE
	4joQc2l8Jcduvf3rkWGLQoJ+8WAnN/rtcFvKrmmMi7c/oKsV40yUOj+NO1hqzqMBsHCUySiM3tm
	++6SglQ1XOj/dngtrbxH4j8YQjWLJC/sqPLwCSdOioBrURF11XOhb6KAZSvOZFrPUqiW4PkF6/u
	hfDuyADqTmAh4IMUJqlL5HSs1tCFJ4K/yEiVqsUuXXIdGrhtRSGxe6JVpqNCGfnQcXVHPZ2Ayd5
	RsdYXi9IGgsX85xCChiGnvN3FiqB1VV34qaeTpCIqnu9sy/TPTO3eqfD7WWIm7ZrQZEyQbJSCEA
	Xdgr6nDA8=
X-Received: by 2002:a05:6122:264d:b0:5e6:589b:eeec with SMTP id 71dfb90a1353d-5ee8af4a6c4mr9353584e0c.5.1795550518287;
        Tue, 24 Nov 2026 12:01:58 -0800 (PST)
X-Received: by 2002:a05:6122:264d:b0:5e6:589b:eeec with SMTP id 71dfb90a1353d-5ee8af4a6c4mr9353247e0c.5.1795550515061;
        Tue, 24 Nov 2026 12:01:55 -0800 (PST)
Received: from KDYBCIO.eu.qualcomm.com ([2a02:2a40:15fe:b200:7192:a019:58a4:eb4f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb85399e2esm517678195e9.7.2026.11.24.12.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:01:54 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Tue, 24 Nov 2026 21:01:34 +0100
Subject: [PATCH RFC DNM 05/15] clk: qcom: gcc-glymur: Don't poll the status
 bit of some USB4 clocks
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-topic-next-20261116-fsm-mvp-v1-5-a9b45c69cd38@oss.qualcomm.com>
References: <20261124-topic-next-20261116-fsm-mvp-v1-0-a9b45c69cd38@oss.qualcomm.com>
In-Reply-To: <20261124-topic-next-20261116-fsm-mvp-v1-0-a9b45c69cd38@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Brian Masney <bmasney+clk@redhat.com>,
        Jerome Brunet <jbrunet+clk@baylibre.com>,
        Andreas Noever <andreas.noever@gmail.com>,
        Mika Westerberg <westeri@kernel.org>,
        Yehezkel Bernat <YehezkelShB@gmail.com>,
        Mario Limonciello <mario.limonciello@amd.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        usb4-upstream@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795550497; l=2300;
 i=konrad.dybcio@oss.qualcomm.com; s=20260604; h=from:subject:message-id;
 bh=GmuoZNziZvPu1UlsqsifvQlY7SuM/U4EVYwsYPf4EdM=;
 b=GTjcW3B9vr7Iepca856fdLsOvmCpCMBNJCU1xy7eO8dKAHF60Cf3bzFsN4Z3SQoTNDUIH315P
 skO0DtYej3eAgai19OVL5aamY9nYLh2MmYMMnuwrsr1b1hs1Qu2gIJe
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=SGRRMmlLTuP/lGKdQ0f4KPvxn8VVsXtXaTpdGc8i82c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfX4gFKlwS0fS+B
 8j9P+Vp+qTfRFBF25JstA9YI/zZNxSqQMQMdbFtqAC0GnWFVapfslkauLQKEkR/HgycD9jpsHHD
 wD+nIMgrOPEjpmRw5xuUsMLT+qbi94OrTNNayjvTySyYwL9p6SRBrBcRMZNnUyQKPx2eD3mpitO
 F8pt7rDNXpm5ykMZad6x6WmfJfK2VgayjQwg9rKc9bNbp0aF97J+Rr/v1YckNm8I3AOg0cN25bt
 xcjLNl17MH+M8jhnCQH0z20mfMl9BbJNm8alwlpt0FHXzX1Tzyzki5DDJpO1jW0cOHnVq+CzL3G
 EoUWBKYRjnpm2cPClyc3L6HuXPW4LN8mQOBXD73yNbsFYKmaaMe9oKLRNMj6TYnyScTxc7XneRD
 3ky7vpduPxff9CfYzEiSc2bN0d68etIX9eW0tdlYB0kU7qKVv8QFJy1KuWzkNIhUwHih3xx1vwS
 jwzf24dYpMpRkdBy6Ig==
X-Proofpoint-GUID: 8BcSAks1yHR38aKvRWcJ8YOyyykzAtAy
X-Proofpoint-ORIG-GUID: 8BcSAks1yHR38aKvRWcJ8YOyyykzAtAy
X-Authority-Analysis: v=2.4 cv=TLbQ2Fla c=1 sm=1 tr=0 ts=6b05ed37 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=zk98c5D4pPYhsamE--UA:9 a=QEXdDO2ut3YA:10 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfX5GJrysEd0EKL
 dG31v/t9mFIpYPYMa2bxcI0GeJz/qtBjyLrl2wVmlpEC22jN4zh/MPpGJxhb6hNHGESp9cAghvl
 tqswWyVrIAOOo/tPF/rL+v2I9GiT28U=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-24_05,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611240078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_120159_924352_6B4F722D 
X-CRM114-Status: GOOD (  12.29  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

These clocks are PHY-sourced and their halt bits seem not to update
reliably. Ignore it to prevent spurious warnings.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/clk/qcom/gcc-glymur.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/qcom/gcc-glymur.c b/drivers/clk/qcom/gcc-glymur.c
index 186c779e30846fef5fbcf66d114d58389d72efa7..3323792929d9292db0fb28b116723dd054d6deec 100644
--- a/drivers/clk/qcom/gcc-glymur.c
+++ b/drivers/clk/qcom/gcc-glymur.c
@@ -6833,7 +6833,7 @@ static struct clk_branch gcc_usb4_0_phy_pcie_pipe_clk = {
 
 static struct clk_branch gcc_usb4_0_phy_rx0_clk = {
 	.halt_reg = 0x2b0c4,
-	.halt_check = BRANCH_HALT,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0x2b0c4,
 		.enable_mask = BIT(0),
@@ -6851,7 +6851,7 @@ static struct clk_branch gcc_usb4_0_phy_rx0_clk = {
 
 static struct clk_branch gcc_usb4_0_phy_rx1_clk = {
 	.halt_reg = 0x2b0d8,
-	.halt_check = BRANCH_HALT,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0x2b0d8,
 		.enable_mask = BIT(0),
@@ -7068,7 +7068,7 @@ static struct clk_branch gcc_usb4_1_phy_pcie_pipe_clk = {
 
 static struct clk_branch gcc_usb4_1_phy_rx0_clk = {
 	.halt_reg = 0x2d0e8,
-	.halt_check = BRANCH_HALT,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0x2d0e8,
 		.enable_mask = BIT(0),
@@ -7086,7 +7086,7 @@ static struct clk_branch gcc_usb4_1_phy_rx0_clk = {
 
 static struct clk_branch gcc_usb4_1_phy_rx1_clk = {
 	.halt_reg = 0x2d0fc,
-	.halt_check = BRANCH_HALT,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0x2d0fc,
 		.enable_mask = BIT(0),
@@ -7303,7 +7303,7 @@ static struct clk_branch gcc_usb4_2_phy_pcie_pipe_clk = {
 
 static struct clk_branch gcc_usb4_2_phy_rx0_clk = {
 	.halt_reg = 0xe00c8,
-	.halt_check = BRANCH_HALT,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0xe00c8,
 		.enable_mask = BIT(0),
@@ -7321,7 +7321,7 @@ static struct clk_branch gcc_usb4_2_phy_rx0_clk = {
 
 static struct clk_branch gcc_usb4_2_phy_rx1_clk = {
 	.halt_reg = 0xe00dc,
-	.halt_check = BRANCH_HALT,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0xe00dc,
 		.enable_mask = BIT(0),

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
