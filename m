Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A68D606A324
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 21:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=M3Y2srXL;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=WCGvaw9B;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=cMM9An32
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=v4/FO4SZf0u/eYBkWeqCEy/jtdlwE9CdRpAdZEl+NO0=; b=M3Y2srXLpWWC2gNZXNsaqmrKLV
	+lZoneVw/+2zhC0Ev77eDImmZ5EZMLluCIf0zkatBYcH8AeKmLD8fWY54t2H64C+iy+149y6FG5RT
	nzVW+72TL36r0/z5igyclsJwTlb6lyI/8ddUoQQMoDtgF/5miH/DbL1DCDoeFVDzBb6bvN5HgIWsf
	qbpx/69y/eA0HSLllsVO/ijvJq70H+i/n85Ugkl6DkDgiu5/mA/1PDq3XOCQJnbQC/VJuYF0Ruf/H
	BOYWn0o0KZ3AzUa0cYGvHA9vXQiOlzY2RyboVkhQLH42oV4UTPiPHPSzpl8sXTzArFD/9JAN06mQl
	4LSkfKBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMFx-00000003ket-3cej;
	Tue, 03 Nov 2026 21:41:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMFj-00000003kWH-0ZwG
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 21:41:23 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A3LKpPs4033514
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 21:41:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=poSSODbWEox
	TyPL5Lk4+LMqs3YK0EF3Oc0Nf3TL++Y8=; b=WCGvaw9BNgg+n8BWam4+pgrlVpT
	Q3WPDyP3w+uLyxXN3t0QKyVAFgkVixJ9TYP6BD1FhVOtJqG5J37MkRHB/QQf4ih1
	qZJCJnyGUIkz+OnyNv1Hpy/g4bHKxylkfGCmd3G0UCIoC7dnHf4H5cY1v8LoFinx
	E6ADBCbX9egBYrS1EUAMlk3oxLEianPOt3I8F5awkco5UUEvncXSjujyzyVSXmqq
	/NG+Q3kyOAESg+TcW2Og6lbAt5RV0KlHmO0A3D6QopdkmQSAaU7QusvdCzaR+2Qt
	px9/8hoh+obNyigvI6bYsPjcy4PkfDvDcgYP8QduLAEgVBS5snZAuW5/heQ==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hqhyphr26-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 21:41:10 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-14373747468so174434c88.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 13:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793742069; x=1794346869; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=poSSODbWEoxTyPL5Lk4+LMqs3YK0EF3Oc0Nf3TL++Y8=;
        b=cMM9An32GV9Wm5cOtWu9WrWka/DP/kHczAingyw8sCpE8HzeNFF2/N8UlmzmJYOAmy
         IjO+GVSw+O9+/dVQE648Kzq4LXc/CsQma/NRQKl6ZmUe0OBhnkdt4W7rMwATA4VEdHdN
         E/ljOExU9u/XXjPbfd+Higs4QO/4yEKpnoWWOL+8bbBz0F4CRkSD2Pa1qM1VQUlxw7gt
         eVSIxMi2DQpvz6lY5n56loEUFjyxrJYMCWrX6y0rnf5fqNoPXxRV62IWcaNzSgpCsSug
         1A9gXHdhH347sen1io/D15jfTlwLBQ+doBFkbBBcP0gT1pEkbNM1l7fxQ8WzvX5tEuX1
         vLpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793742069; x=1794346869;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=poSSODbWEoxTyPL5Lk4+LMqs3YK0EF3Oc0Nf3TL++Y8=;
        b=EN1yIDCqP+BUBAoY9P+mQZKqezcm9ezVegmiKUgW9ZRvjTwMeityprVDArXqw2cppF
         sJntu3w3ehRCdw0JNR+ic0Q4ksble15DXmcmEdl8MUph0AAoGUVUv5r6gMXErPOLRMGR
         fDD4XoIvUXinKMANYpF61d+JGqqWudS6i3irq9cmW7Fm8zFv0PD+d3i1hia7g61FKQy2
         IcVMos1sk1qwjeka2KmXDJLivvokvvtZNhdq06sDHi2me3huMcwKWlaE04kpoljTsKpG
         fmQug1kQWh5IHnm8TFHGCXXprNTudp91JjULaWOB9FL4qNxKqE5l0Dn681TncyNtxvtz
         jdQw==
X-Forwarded-Encrypted: i=1; AKwUvBxKolGWScUXdr+r93Q9t6rMATLENAZs5wNqbsKajoJN/HeG4J2AMINru4zDG88/8/WUZWDbnA3vSi4=@lists.infradead.org
X-Gm-Message-State: APuU4Z9bgzK+9wS/Bet42TG6S/D6wUIQunMMEpoSk5in+2W+atbgJvVp
	jes/gc08KaVaHkK3yKqEh/bSDf1qM+j2W/53ot9VoOuL2XXNnmWNRW3sdzpDjaoin3JxhAzhNYl
	trLXi8AtfK6epn5gFra6c9hAeG6FgGnXmTKe9MiEw+hrvKpZz5N5t99InpRuZtqt1VGaT
X-Gm-Gg: AYBFou0d4Fs9KM6s0HeIpG2uQxuohxpFeVqfCCN7pJ5NEUXn8DD8gEIxmCFnMa+KdIm
	ib0UuerRfAjnDJHNijj5XWbiJGzb2QeZ7NEEmj0GcPP8V02hO+Dqqu/JK7BXYpbYDtW2N4or0vB
	lo7SYv39ZjKJDn8cA0C0/oNI2ZY8WYmD7pRa1Z5iWFTzuH/zBu4Hayah6oaoRY8ng91QhaK/aLb
	L+zRoxt39/EkiqCX7OU+0LVk3d3bOs9nQBxA3W05BzCTPGjxkO+N3ArY5bAMoyWloUdLRo99WTG
	D5tXv0CbVKsYVJ8EUxrBTii1w60xc3eghuCGTkCBZbm6V+7B/HMHpw+UiXNys31pOnhuavU2FGT
	3ATbvhKKymmM0/kpwIFDbxlrvlSv4d/InBMta8emcfC9QnNVYxYUdSmuVmLx9y9Dj+K06kKqL7H
	qstWcZNegaZ1YboXaW3G9/JGjPqGE=
X-Received: by 2002:a05:701b:4186:10b0:137:5b9d:cf87 with SMTP id a92af1059eb24-1ac4f91ee96mr22118953c88.0.1793742069135;
        Tue, 03 Nov 2026 13:41:09 -0800 (PST)
X-Received: by 2002:a05:701b:4186:10b0:137:5b9d:cf87 with SMTP id a92af1059eb24-1ac4f91ee96mr22118916c88.0.1793742068608;
        Tue, 03 Nov 2026 13:41:08 -0800 (PST)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b245c1c272sm1537440c88.8.2026.11.03.13.41.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 13:41:08 -0800 (PST)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/5] phy: qcom-mipi-csi2: Make timer and OPP clock names configurable
Date: Tue,  3 Nov 2026 13:41:02 -0800
Message-Id: <20261103214105.3605181-3-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261103214105.3605181-1-anusha.nandi@oss.qualcomm.com>
References: <20261103214105.3605181-1-anusha.nandi@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDA4NiBTYWx0ZWRfXwUAybLcO50uZ
 CHWeweY4HTBtDiO+hJ4hjpf4QDH5bRUkt2rmOvA6i8pbyjH5XkaF25qc7b+STez/hFBH9+1NqD+
 uEeUzCuOjmO1xzQi0xOgKmA9b6fQuj0=
X-Proofpoint-ORIG-GUID: 1anJDyCT-jke529azPMB2V5iS_JcYJ45
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDA4NiBTYWx0ZWRfXwnT2XUD8aA10
 coZBORo0SemKefo0FdW2owYgLMh6HhmNTV88R7UxSpwqJsU4O40NSUpZ1HfGXh4vZJbdslCk9V9
 Llm6J7e2lyIjs61/lesxspBxOiA1dVXH1JFvCtEovOI/73Lg1R2anCJ+TdaxYQ7Fi42bWOTDHj+
 QCiBLqBJE+Wl1OWOZhuyuh0DuHglukbQi+JOBG9A/4NuSMA8J7dFetvmay25sUysgwUdcxbasPH
 QGiLPP8Z2caj/NYgASRCTejZPPnXRa36j41Rx57eKTjagBJcqmOQM4tlHBbYGA2e9/Mqt5DusPd
 0hVG4iPH1hZ3VAHaTSYkITWjWXc6YhaRWylRxmThtDaE3MXURIEtyvz3KyevScIAcKEXx7Jf9QH
 SXpWCFMLWKcw/ppBCSpC2YQ4/WDxy5+QEKr4RZb3MLhs5EHHALr/Y7Z84t/xUKbUmXrL0ZzD9uH
 ZIfXAJWrYskaGueB3fA==
X-Proofpoint-GUID: 1anJDyCT-jke529azPMB2V5iS_JcYJ45
X-Authority-Analysis: v=2.4 cv=T94Z3PKQ c=1 sm=1 tr=0 ts=6aea54f6 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=YDrJLkQi9lszU93BSgcA:9 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_05,2026-11-03_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1015
 adultscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611030086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_134111_307838_C28241FE 
X-CRM114-Status: GOOD (  15.00  )
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

The timer-clock lookup in phy_qcom_mipi_csi2_probe() and the OPP
clkname passed to devm_pm_opp_set_clkname() were both hardcoded
string literals sized to x1e80100 ("timer"/"core"). Add
timer_clk_name/opp_clk_name to struct mipi_csi2phy_soc_cfg so each
SoC can declare its own clock-name strings instead.

x1e80100's soc_cfg now declares "timer"/"core" explicitly; no
behaviour change.

Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 2 ++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 4 ++--
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          | 3 +++
 3 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 966d79c98f9b..8f1939e81e13 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -380,6 +380,8 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 	.num_supplies = ARRAY_SIZE(x1e_supplies),
 	.clk_names = (const char **)x1e_clks,
 	.num_clk = ARRAY_SIZE(x1e_clks),
+	.timer_clk_name = "timer",
+	.opp_clk_name = "core",
 	.genpds = x1e_genpds,
 	.num_genpds = ARRAY_SIZE(x1e_genpds),
 };
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index 269232499fca..3de25728ed28 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -397,7 +397,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 		if (!csi2phy->clks[i].id)
 			return dev_err_probe(dev, -EINVAL, "Missing clock-names\n");
 
-		if (!strcmp(csi2phy->clks[i].id, "timer")) {
+		if (!strcmp(csi2phy->clks[i].id, csi2phy->soc_cfg->timer_clk_name)) {
 			csi2phy->timer_clk = csi2phy->clks[i].clk;
 			break;
 		}
@@ -405,7 +405,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 	if (!csi2phy->timer_clk)
 		return dev_err_probe(dev, -ENODEV, "no timer clock\n");
 
-	ret = devm_pm_opp_set_clkname(dev, "core");
+	ret = devm_pm_opp_set_clkname(dev, csi2phy->soc_cfg->opp_clk_name);
 	if (ret)
 		return dev_err_probe(dev, ret, "Failed to set opp clkname\n");
 
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index 7e55ae007370..359b58660db8 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -68,6 +68,9 @@ struct mipi_csi2phy_soc_cfg {
 	const char ** const clk_names;
 	const unsigned int num_clk;
 
+	const char * const timer_clk_name;
+	const char * const opp_clk_name;
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
