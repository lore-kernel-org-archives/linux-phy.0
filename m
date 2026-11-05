Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3D74606EE92
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 23:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cEfKIQbm;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=UkMr84MR;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=a3ga47aA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gPsRbyDNPrF26S52Ss0241A2uY+dA9MEGYmRHOMiY9Q=; b=cEfKIQbm1z4Nc7lO0JNRMHsfvi
	VBeLpjbZEqZvJLK0nNfYHu1QqcXj0tQ5hRml1uVD1I2qzuDTCcUJAGGSan7x2nJKFaeAqSSdX9xPI
	NmrUOjnlJGZ7LQZ0V7MjBt3JuAQqvrVczAdBiqoOeJvxQDqS+6pEg8N8gkZx3/b7udc8G7kvQ3KJj
	5ab9Xmfl7OMB6a2dKNmR/nQbLcv44PODpyPysS0Ny+pn393z3VKfQXMeGRe9yetFj7CnIPK0vys/a
	dSHNz8am8sxIX6xrNmgOCS6NBI5ijgzY14DZ46drQUs74FLzWgmzH/TEJqv4HjOhPE2Sa6aoeuL1B
	dP/t0HBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP7FC-0000000AtSS-1Vyc;
	Thu, 05 Nov 2026 23:51:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP7FA-0000000AtQR-14Nh
	for linux-phy@lists.infradead.org;
	Thu, 05 Nov 2026 23:51:45 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A5NeVGl2261408
	for <linux-phy@lists.infradead.org>; Thu, 5 Nov 2026 23:51:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ZPLdkk8872+
	3hTdrWeH9X039pnhcr7CAG7eCMOqHgoo=; b=UkMr84MRhG2lwl6GRudk0/V1aKS
	k6KLoW94KwpoB0/8NXIq8PN2pxR0aylngS8LJuzs+1ioj8sPRmPgOiuJuZq61DMf
	Nb78RcqMZoNje9ftXFatgSbVwuvSUsZwZ4Bz1zDzk8Lvy4atOm/D70c0D7pr6SH+
	/uUE4vmoAGYVIaBcznb9huBgRNsta7bZJtxMd3YSpxWgyFTfc+lVbsLtVHreYEm/
	2hBdudXpsOqHnLFHEhy5V0Cq0rsba5oIrS2KBwzOh8LX3NClFBfk2brdXvhB1/dx
	RkTlGEJ+C3EcNoR5cNO0dqSXB7DWUxTiGbJ2LgZ7RaRrbX2kTBUzsKMEG5w==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hs3pa0198-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 23:51:42 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-147be78cd56so466876c88.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 15:51:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793922702; x=1794527502; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZPLdkk8872+3hTdrWeH9X039pnhcr7CAG7eCMOqHgoo=;
        b=a3ga47aAfb8VmJQeflAIbKGHV4L7VlkTaR4Y1QV1h8gAFzULp9rNgED5UkMTLUkg5/
         aMKZscox+85lauOEVabusVvGoCUP8AmXlOqXvz4vNQ4j3J+Ud5uxihRYvbevX+KnHiSj
         EIT3LMKd+eIhfbETF7GLrbsGfzMKCq/8NwmFh+nB83X2xrMaxhS/ZU+2OVNINJ+uiI/U
         AxffVOLRums/GgXYMu0UyFq8mVjb3qN4h/+rr9wIaPLMZ017zOtouzYcRMwY4IviMRD5
         4yk1iVw/MfTnaA8TC6y87Z14hES2ALQBotQgx3HOmm9H2K1rC0cPgd3qQNttk2dBpqTV
         qOhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793922702; x=1794527502;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZPLdkk8872+3hTdrWeH9X039pnhcr7CAG7eCMOqHgoo=;
        b=EB1VUFWF/L4TW6efP0/sNjGDRIO8IRRmD2p/NP6FcKagihu1CDljxdf/sFo6qYVm6R
         Ta67hnuojJsH7zFl0HwC6N5XWND6cr0x/MMta0vaL2Rhdz2oSkEqu/tIpiBBQi/KGf1T
         5m+RJcVaISnDxKu3ypGiGRuJxh+IZ4LAmJgOuNuVZy5HtCExe7KGhMoQV5sPSKD/oXUS
         s4PtG6JIiYYe3IXzUa76vP27I09zLXkg6fR59SYkijYBIokkWeA57NwqXSqEBuQUSrG8
         lTB7EsRd4CKYOdCXH2amcMawGoYlbR0b8MwhUxLWqW7cE/zupYyhqpNrwcj4a+noO1Fo
         aIsA==
X-Forwarded-Encrypted: i=1; AKwUvByj+RSKceZVJrkLsiLgyPfDoIH8TDA8XeJHpCvfi+Cxknz27xkjsGGfAycOKOIDTOcXi5I5CZFGQic=@lists.infradead.org
X-Gm-Message-State: APuU4Z+VCYBTIjE3rW7FSIEOwdS4Yrkp50rgoDx9h6a2MxesZ0+alwtT
	UmcVGMABK/ookdA7Jtw7IJrVgC/mJx91ajC6+Tc7q/pilNjcXeG/+ZO9nHgBP3+zis/dX73GTCM
	VBlfoXhzGfaF+vkMgfOaJKXDoxmn1aoeeDAvW/H9JzIrjlqej+AJErwP1JM2/VoZneIwX
X-Gm-Gg: AYBFou2siVqfr/xFlVDC53uaJQUeoh4HvV3h+YYpvLOgPWdApo9/bVthY6XRVLOExTk
	gt4MLuPw99NqJ7pvmMZqt1U4NIePr63jo0sZDZO1IWo/ng4kw6gLcJlQOXV9tv+MppvTZMe2k4M
	vY9CnMpXbv67gaZ3fr+u7h7U+F2DuirVlZ+FPYwIkG1NeAF7W07WWOv0oT8B9Kc8/vcahPV6r5H
	dWrbOQjsVMN3cZW2QMSQje6EotPm6+jX5JdIXzSMvgFLok7ykav6h1XJjtE7zEnO1cNuVC9eidV
	UXV4QLQDD86q/idgAzipMxmbP/ddYnrWgITIlTozEMkZi6PNvxbmW8VHvk/InKR3OThanidnySZ
	M12ap1bznK4QMhV0PwcnNkl0sEKLvvuYDQlnPMA6H8C8k/T13sjtviL1LHoCLHx+bfaxpHgAcnc
	LPc1a2IzjtOaLMHaJYFXJVjoYnYF8=
X-Received: by 2002:a05:701b:280c:b0:192:e5a8:6bae with SMTP id a92af1059eb24-1b25d368d72mr666748c88.40.1793922701656;
        Thu, 05 Nov 2026 15:51:41 -0800 (PST)
X-Received: by 2002:a05:701b:280c:b0:192:e5a8:6bae with SMTP id a92af1059eb24-1b25d368d72mr666717c88.40.1793922701154;
        Thu, 05 Nov 2026 15:51:41 -0800 (PST)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b25e4a63f6sm389041c88.9.2026.11.05.15.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 15:51:40 -0800 (PST)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v3 2/4] phy: qcom-mipi-csi2: Make OPP table optional
Date: Thu,  5 Nov 2026 15:51:35 -0800
Message-Id: <20261105235137.2635442-3-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261105235137.2635442-1-anusha.nandi@oss.qualcomm.com>
References: <20261105235137.2635442-1-anusha.nandi@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-GUID: vC8bkGCRLcRprR-01Wa8PZsaaeLA3ljU
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA1MDA5NSBTYWx0ZWRfX4vpVrkaxJyXP
 Hts64d8Zh9nDirnW6G9xUUgMtTEKj+XpxXpCZXu0NF6UED2VVx6Z2LsJ89Y6M08YUgxqpwfknH7
 2A8iwENpJ428dYdRJ+UZlhWSP18KVgQ=
X-Authority-Analysis: v=2.4 cv=e7WT2qp/ c=1 sm=1 tr=0 ts=6aed168e cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=xhLwaI6HiHkcQTGlYsAA:9 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA1MDA5NSBTYWx0ZWRfX2Pfh3WpbxtOp
 uzJ9VJVy4sPanPAH6unUGkkscZFW5yVUieKQs+lSDaz7+CFNeZ+AxZ+kGCEkCNdnIHXk0vggEFZ
 gfTcaSxKTJ5nargF7g3TzWk7aTJ6DcmRuKaXP+jdB9PlQ6aHZ3Wf+tPPsszYTZbk2CvZJT4ejyS
 yk0pFxIfgwD2dYlYih1HvPh+DSvMsePMRxuEyRnPuztxKksOC5J7Q3ONYQN2jSnHlQ2Tp8jEwV6
 JgIjpMzGVyojcbNdY0nPrJPUpN9Uz/7R96CANGVAzTQp4+4t4e3xWipne+fecCI/phVdPW9I7jq
 Pw5uNj1aGWvxFLUKEchJ1/dQbukg6iX5lR6Z9UE1/q3ChiJqC0akDNp+NDJiu3dt+CmNTZ6Azww
 KaXMu9zERMuaSXho9P66cofESHu38vqaj4q+HOf+4t8FdV2RNpXCpMkt9t9o27ZzmLdveo0o+X3
 +TwSwdfddX3CXPbd62Q==
X-Proofpoint-ORIG-GUID: vC8bkGCRLcRprR-01Wa8PZsaaeLA3ljU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-05_06,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 adultscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611050095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_155144_424072_D1335EB9 
X-CRM114-Status: GOOD (  18.61  )
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

Not every SoC the generic MIPI CSI2 PHY driver supports needs an OPP
table: a CSIPHY with only a single, unscaled power-domain has no
performance state to vote on, so running its "core" clock through
the OPP framework buys nothing over a plain clk_set_rate(). Add a
no_opp flag to struct mipi_csi2phy_soc_cfg and skip
devm_pm_opp_set_clkname()/devm_pm_opp_of_add_table() in probe() and
the OPP/performance-state handling in
phy_qcom_mipi_csi2_set_clock_rates() when it's set, falling back to
clk_round_rate()/clk_set_rate() on the timer clock only.

x1e80100 doesn't set no_opp, so this is a no-op for it. The "core"/
"timer" clock-name strings themselves stay hardcoded literals: every
SoC this driver supports uses the same two names, so there's nothing
to make configurable there.

Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-mipi-csi2-core.c    | 72 ++++++++++---------
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h     |  3 +
 2 files changed, 42 insertions(+), 33 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index 269232499fca..8bebc943a771 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -32,40 +32,43 @@ phy_qcom_mipi_csi2_set_clock_rates(struct mipi_csi2phy_device *csi2phy,
 	unsigned long opp_rate = link_freq / 4;
 	struct dev_pm_opp *opp;
 	long timer_rate;
-	int i, pstate;
+	int i = 0, pstate;
 	int ret;
 
-	opp = dev_pm_opp_find_freq_ceil(dev, &opp_rate);
-	if (IS_ERR(opp)) {
-		dev_err(csi2phy->dev, "Couldn't find ceiling for %lld Hz\n",
-			link_freq);
-		return PTR_ERR(opp);
-	}
+	if (!csi2phy->soc_cfg->no_opp) {
+		opp = dev_pm_opp_find_freq_ceil(dev, &opp_rate);
+		if (IS_ERR(opp)) {
+			dev_err(csi2phy->dev, "Couldn't find ceiling for %lld Hz\n",
+				link_freq);
+			return PTR_ERR(opp);
+		}
 
-	pstate = 0;
-	for (i = 0; csi2phy->pd_list && i < csi2phy->pd_list->num_pds; i++) {
-		unsigned int perf;
+		pstate = 0;
+		for (i = 0; csi2phy->pd_list && i < csi2phy->pd_list->num_pds; i++) {
+			unsigned int perf;
 
-		if (!csi2phy->soc_cfg->genpds[i].scaled)
-			continue;
+			if (!csi2phy->soc_cfg->genpds[i].scaled)
+				continue;
 
-		perf = dev_pm_opp_get_required_pstate(opp, pstate);
-		pstate += 1;
+			perf = dev_pm_opp_get_required_pstate(opp, pstate);
+			pstate += 1;
 
-		ret = dev_pm_genpd_set_performance_state(csi2phy->pd_list->pd_devs[i], perf);
-		if (ret) {
-			dev_err(csi2phy->dev, "Couldn't set perf state %u\n",
-				perf);
-			dev_pm_opp_put(opp);
-			goto unset_pstate;
+			ret = dev_pm_genpd_set_performance_state(csi2phy->pd_list->pd_devs[i],
+								 perf);
+			if (ret) {
+				dev_err(csi2phy->dev, "Couldn't set perf state %u\n",
+					perf);
+				dev_pm_opp_put(opp);
+				goto unset_pstate;
+			}
 		}
-	}
-	dev_pm_opp_put(opp);
+		dev_pm_opp_put(opp);
 
-	ret = dev_pm_opp_set_rate(dev, opp_rate);
-	if (ret) {
-		dev_err(csi2phy->dev, "dev_pm_opp_set_rate() fail\n");
-		goto unset_opp_rate;
+		ret = dev_pm_opp_set_rate(dev, opp_rate);
+		if (ret) {
+			dev_err(csi2phy->dev, "dev_pm_opp_set_rate() fail\n");
+			goto unset_opp_rate;
+		}
 	}
 
 	timer_rate = clk_round_rate(csi2phy->timer_clk, link_freq / 4);
@@ -83,7 +86,8 @@ phy_qcom_mipi_csi2_set_clock_rates(struct mipi_csi2phy_device *csi2phy,
 	return 0;
 
 unset_opp_rate:
-	dev_pm_opp_set_rate(dev, 0);
+	if (!csi2phy->soc_cfg->no_opp)
+		dev_pm_opp_set_rate(dev, 0);
 
 unset_pstate:
 	while (i--) {
@@ -405,13 +409,15 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 	if (!csi2phy->timer_clk)
 		return dev_err_probe(dev, -ENODEV, "no timer clock\n");
 
-	ret = devm_pm_opp_set_clkname(dev, "core");
-	if (ret)
-		return dev_err_probe(dev, ret, "Failed to set opp clkname\n");
+	if (!csi2phy->soc_cfg->no_opp) {
+		ret = devm_pm_opp_set_clkname(dev, "core");
+		if (ret)
+			return dev_err_probe(dev, ret, "Failed to set opp clkname\n");
 
-	ret = devm_pm_opp_of_add_table(dev);
-	if (ret)
-		return dev_err_probe(dev, ret, "invalid OPP table in device tree\n");
+		ret = devm_pm_opp_of_add_table(dev);
+		if (ret)
+			return dev_err_probe(dev, ret, "invalid OPP table in device tree\n");
+	}
 
 	num_supplies = csi2phy->soc_cfg->num_supplies;
 	csi2phy->supplies = devm_kzalloc(dev, sizeof(*csi2phy->supplies) * num_supplies,
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index 7e55ae007370..6cf9e5b956f7 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -68,6 +68,9 @@ struct mipi_csi2phy_soc_cfg {
 	const char ** const clk_names;
 	const unsigned int num_clk;
 
+	/* Skip OPP-based clock/pstate scaling. */
+	const bool no_opp;
+
 	const struct mipi_csi2_genpd *genpds;
 	const unsigned int num_genpds;
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
