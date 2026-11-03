Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3427606A331
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 21:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tSGnsyaX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=f3UbJzwY;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=J64gnc4o
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AvXJmqt8UAn6KlJgCeK1G3SU5o3ueMBcRKK/NHPX8CA=; b=tSGnsyaX+XssLTP8xlXtamXhSc
	PdwjBfVN0rcZqFuGKT3xsBhmTsY8ufaTfYbj7JYyaSrxXIYJ6sL/eRz4MbsmhKKcKBnMfFii0OvfC
	XSkt+iKS9k3u2ybyE0nxbKlWEEP+x5VLUHMc4F79U77ESDr5UD8fVwcQY6GVPJbEZEmS4CyHQ6T2P
	hbNd6HgOPodx4TcAq/bfCSabMQLMIXlVLjv6fcc5CAuIqLLg7mMOtVBixKhbE1QcczOcHFI3vRRYu
	XWQVG/RlvnG0yaQNrMKZQMwJX5tp44PpHwa7XBHm1SGHJPzeq5mgc4eHdDSoxeaOeSWK7NrhTdv1R
	RBlksdSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMG0-00000003khR-1dZn;
	Tue, 03 Nov 2026 21:41:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMFp-00000003kaT-0gc4
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 21:41:25 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A3LL0Nj445706
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 21:41:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=mWF4Em/s+/j
	7aCjLGWQL65SgDN+9hBOaJk8SJTBvAJo=; b=f3UbJzwYsZb59Z5cK8xXeu3TMXJ
	7qaeeZGm0cuCdqGGn6Spdu6UEw0IiqLMZ6n1lQkXit13pIEol/9A6dyawmJMmzN6
	bd7aayDEYF31v5AvAfKHRXfq33qR8coZ8HSClQVR7mZkXseXdiI3Vpr2I7EdDz32
	RMWPdNbHFO7jqmJQkCTmG83D/rMiJ+BBRmyc/IiG26iK6MakxWmfW4iGDoadVumV
	fwn9RWVCXJkJgVEw54vKaTRyLco6eImGqzRbDHmjreCCU9qttw+4atEZCPsp2KO6
	ruNF0YUAFhHM3oQpMnrmpSkdHifvTi02DTDLKGxj8XEyDSeaMhE6Hkp4cPg==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hqn8mrjy4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 21:41:16 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-1b0d864826cso247841c88.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 13:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793742075; x=1794346875; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mWF4Em/s+/j7aCjLGWQL65SgDN+9hBOaJk8SJTBvAJo=;
        b=J64gnc4ooGtBLgMzdLhJLgUTFWRcVOSn8jVvWe1xO61F4uPBSKtSczybbLL2Jd0/PQ
         0RpjzxYmmo952bpBuSOiWQYlJALK2G4IK8ryFLAAW0WABzmMiEAEVuE007h3+23CV3Fd
         KaBTLhcIRfhJKj9NzS26CEd8h5PoSSHmaD6BCTWyoN1Iq8x4qyLKh62fTfIk+YCxjHzB
         PzRay2Wd8h6AZBa0Lq6cEDL63jAbcfmBFVI/Q0FlXfNyWj9zhduNDWf3ypj8IbNbVuHu
         jacvk4nJpW/H6k0nKk8YDUg+nVq0EUF81swuOUCQIMh9ENrMoUYMsTftADzcYbAYeJVF
         F5ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793742075; x=1794346875;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=mWF4Em/s+/j7aCjLGWQL65SgDN+9hBOaJk8SJTBvAJo=;
        b=tinTJ+gEPxjlBJrYu6pyYZgLQi0OhV2otlx/SN/xVppKHV3b+hMXM2FtVVBfKJvFkJ
         UIQBkyPEec+lgNm5u8TU4S17KpY7VLAqLrfm6c36z3YToDbrM+law3qLJNCVWhy/keY0
         cpR5QG1qkH2Z9HKARKIwZyxsqjviE9kAv0LsZie1twwS6hi1rG73LEJu3qgkk9sk1ot1
         N3EgkAYE+vNzSzdnhVOG/kBUBSmiy7+i44op62cylSg3cJ50+1rlOBe6tGYIG8LLatR4
         XswULSAJvGnBvnWlHDabiHHP9XJz3hFzgFWgWQ3TPoZfehw8dvsrKV0V6IqjgsKka0hM
         3vQA==
X-Forwarded-Encrypted: i=1; AKwUvBxGnJdQqqL6duZzPjl0P4JTDc4dzysWBcHg8p/3jgYy/KuhJpyfrEK5LzgYIQEGa38lxE4EsNADroA=@lists.infradead.org
X-Gm-Message-State: APuU4Z+4gbrgCp3jogsmUREFPLo9hahkFFEOygXNBpp2H3+aiilesKqf
	MMrxYjQ7zSDeJ0GM6rlIIYi7KQURBQ9Cr5k94YHVpMjXoDt+ugZAhi9lnRBQmAsHeRw5XMBe5h5
	0CXor5sby9LL/OEurkjG9oZNLEZUCEo8OMcQX8bpDlax/+7JQkMQGy43nLV7Ht4vAjKeG
X-Gm-Gg: AYBFou2EP8Z0HKQ85G4Gb22FLx8+kLo6obxNiufLX5JFAEoTj2tEr+1ejyfHu1GxVPC
	QnR3QKzn7xmOtqqJjQW+I50geCQH+5Mn8fsClJVPtFFtVpGyzODGgv1BzH5pa1zv4HckOA3mYM9
	5OymVRw1R9ADWNKzu2xwz28V8Ctm4CfMyagrpwgzC+rdPUDV3dG+Aiy8bBPaNS3r+112knPE77I
	oeixvuXTmYJ9Hizg7EmkJ21gLnxXjQUBjb3w7fxX7sklKH8sybPCMazFXkeB4zyAYLta32nfHvN
	N6mMwvF0dLTdE758WhluXP09dgFXtOcGGKn7JKujyyFfATaXKK/wYdU+jNYvneWNyUZI8N6VuK7
	Qsf0Fr2/RrVfCXeQi5pQ2OWze/CEm2yOnWXZSgH5rb3xcWuPFzt18TEyRCu7iCifKpKsZQLKmhV
	bADcZvTrQ+fFN+ZrWfMYQhEfFc9Ds=
X-Received: by 2002:a05:701b:4188:10b0:166:b307:5855 with SMTP id a92af1059eb24-1ac4f91fceemr22434981c88.0.1793742070218;
        Tue, 03 Nov 2026 13:41:10 -0800 (PST)
X-Received: by 2002:a05:701b:4188:10b0:166:b307:5855 with SMTP id a92af1059eb24-1ac4f91fceemr22434945c88.0.1793742069598;
        Tue, 03 Nov 2026 13:41:09 -0800 (PST)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b245c1c272sm1537440c88.8.2026.11.03.13.41.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 13:41:09 -0800 (PST)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/5] phy: qcom-mipi-csi2: Make OPP table optional
Date: Tue,  3 Nov 2026 13:41:03 -0800
Message-Id: <20261103214105.3605181-4-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261103214105.3605181-1-anusha.nandi@oss.qualcomm.com>
References: <20261103214105.3605181-1-anusha.nandi@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-GUID: KoKeuHzMczmPcjq6iu6ekRhsdun4tjei
X-Proofpoint-ORIG-GUID: KoKeuHzMczmPcjq6iu6ekRhsdun4tjei
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDA4NiBTYWx0ZWRfX5wzSSgGphpbJ
 rlGLd1Rgj0R5MsmTvOUUMhtCM24WViPTJX2RqXMRWXow+aXvfVxjkf9BUfBwpu6LZpwtqKhFgQv
 iL1GkM20WQKrYxFrRq05fMQ3mYm4Q+vbg/Rksha2qgF/2I6l18O3VgepsZpW6lQM2I8WuaUu1nR
 UbCGqbLhIo35J5Te46UhOEhXhECwmAYamEuOBQex7sPBPbjvIgxBwfSCl6Nylw6D5FcuZy5xZia
 1pNnLIdrt0dWmKcmXlwsw+7LeepXYtdOlg+ZXA/aDrpjzfzy1ikdI0wliE1zYP7WizkXllOvtKr
 tN9NTqr6ihY9XCZ4jkSA7uFVg9PnGIFUGoMPK2J7abcM/MaQXozYhlwd3yCK8tD3Vo95EfBpIE0
 5hrs0wnwJxZXhxxlifCe2JfQmoqgDEKx17YAlGqE90wOsfXbk4hk9EZABelPWm+dOWANqGI3vuR
 G0XXtgysqoq0NqpGVGA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDA4NiBTYWx0ZWRfX6Dn7IXSE4K/U
 isIANdqCUiRF4jZkzZmtbhd5WFd0ShZmVrte1FYNrff4s+fzm9kCpcmhrA8wJ/HAfwRwCL/YBcI
 s8YQYljWE99ladEj50k5ai8Njp60D9U=
X-Authority-Analysis: v=2.4 cv=HbWB3SE8 c=1 sm=1 tr=0 ts=6aea54fc cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=xhLwaI6HiHkcQTGlYsAA:9 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_05,2026-11-03_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611030086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_134117_331200_9F419D35 
X-CRM114-Status: GOOD (  16.33  )
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
the OPP framework buys nothing over a plain clk_set_rate(). Skip
devm_pm_opp_set_clkname()/devm_pm_opp_of_add_table() in probe() and
the OPP/performance-state handling in
phy_qcom_mipi_csi2_set_clock_rates() when soc_cfg->opp_clk_name is
unset, falling back to clk_round_rate()/clk_set_rate() on the timer
clock only.

x1e80100 still sets opp_clk_name, so this is a no-op for it.

Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-mipi-csi2-core.c    | 72 ++++++++++---------
 1 file changed, 39 insertions(+), 33 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index 3de25728ed28..181813caf282 100644
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
+	if (csi2phy->soc_cfg->opp_clk_name) {
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
+	if (csi2phy->soc_cfg->opp_clk_name)
+		dev_pm_opp_set_rate(dev, 0);
 
 unset_pstate:
 	while (i--) {
@@ -405,13 +409,15 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 	if (!csi2phy->timer_clk)
 		return dev_err_probe(dev, -ENODEV, "no timer clock\n");
 
-	ret = devm_pm_opp_set_clkname(dev, csi2phy->soc_cfg->opp_clk_name);
-	if (ret)
-		return dev_err_probe(dev, ret, "Failed to set opp clkname\n");
+	if (csi2phy->soc_cfg->opp_clk_name) {
+		ret = devm_pm_opp_set_clkname(dev, csi2phy->soc_cfg->opp_clk_name);
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
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
