Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60D7606A339
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 19:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nk5gnuVm;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Jw0solnT;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=MChTsF4D
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lAU+c9TaVCv6SuIQ2e7xgpDecYQUHchWPt8qnsG5NmM=; b=nk5gnuVm10xsIY7s4wc2Ueh/St
	b+ubYQOlEIhR5JODm3S3FzEGenXeBve+xeo1XHKO7lmGXUNCU++YWY8QBXn9WjTtFEgMiYh16uNZR
	ncvT/Kg9BPriqgbc2PgQBNW/w5kRzr+EYFwWLZUBWPBNzqrJxX05U5pLHntoTmBWCjTtNxEEP6czh
	IaPGcWaYxGeyjBzMkeaZUJuwA+xMAIL+a5ya0kceufco5f121z7jVGTShEDHWfA2nyNfS3sjhhqd4
	JUjxnz/edvzABBxfGdcxU31lZSXhyyZL0lqsvN8gKFI/HtikPG+XAEaYWwQ4l0p1XFDKc/W+9Apqp
	bl6LCV9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWehw-0000000EDIT-2DSF;
	Thu, 26 Nov 2026 19:00:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWehs-0000000EDHg-2dYu
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 19:00:35 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQH3JP23470978
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 19:00:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hvrwhli92ejef29utqXfTUqutjxeG4jEb3yA0cFFYgg=; b=Jw0solnT9tHTJG48
	ebAXfqFbT21zSh21dXuPa6qRGXWuVgCQtUvHbEoY36XHk7PzdwzB2lAWD26Tol/+
	W/YQEwXa/v6TurRAyTh5LQzIVBtOWPw11bfzQLf58HIzH5zwAAtVqbujbsVu/FVv
	1TF8QUQBjkVaiB5bjvyzgBTOrTi6EXPODeFDwvhSWvoM6srvPeDhYuo0TfDD8De6
	+huDY3Dt6ZP/ex5s3sminFpI8/HsGpUxhn08L9kNZTmk35NxzdLYM1OFczCKNH9A
	CttlR/S1Svd6Y2YnejfSdWkm4pDk7cLHjKZJYhI3TBoJt3GfqJGRydQp6iKQAw5y
	YbvhLA==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j6ru3899j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 19:00:31 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-16bc6f3fdb1so4500812c88.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 11:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795719631; x=1796324431; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hvrwhli92ejef29utqXfTUqutjxeG4jEb3yA0cFFYgg=;
        b=MChTsF4Dwde9+/YPlLahKtVMZNCXhni1e2U4Ou9wnYxpusJFf7ChO+M/1WO0H6I19F
         be2UrbXGBVLShmhnUbTYwTW/RQy7F9aHmXpgcVNSdLroTzer2VDhEzcWeiZvSROkCRQY
         5g9x2GAUNxym3kql0UZ6ZWMlktgN3KifT0hSZeoZG9YPGBYIaFVEnRGrY47LbntCpEKY
         zHBfffr2N6Uu2firS+jjaqxcCcoz2daFNLeyYhyWfCg50RUUVoqCAlFB5HYcEQiG3Vrw
         PbXMEz7VjP8zpRrcPvsV2u/qsCGzPxoP8tK9f+80cUzshNVUh6GjGkftxmO05fWrkGah
         P3rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795719631; x=1796324431;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hvrwhli92ejef29utqXfTUqutjxeG4jEb3yA0cFFYgg=;
        b=r7f8Z94fwU0SpC9l2j5QJAvoSR21PvBdiVitRx6moXnZu3nHAt/vlye8PcOd02zbrs
         zggYQgdaVYdsjpMRW7cn/p8DNlQ/cnU0KPKvtTjO0r/PAo89bx5BP3BFymngGy2VTRju
         3SbUAKRNLb8csv7ZETmUA6OgXhQ/YKcA/TmHTMQcHgl9KxIB8zRTal59OQNSzUNz8OB1
         c7ej1jYTc8lKNwST26dLjeComzcRF+sEjEVmKy2DaasF2eMx2kloIr2Z9sre2VNd6rWk
         46O0i/VowWt4XyoR8fq3hQEmItmnBIlqHMZ18qwBiwaOsGlbxKB7fmZERiC6GoplqtlF
         9Cpw==
X-Forwarded-Encrypted: i=1; AL+hErG4V3kiZjXcHQ90AJyAUHL1w+LGUkNcMZ+tW9hzvTMxewKcKY0cCZpdoAsHcaE40W5oWACdJhyLOuM=@lists.infradead.org
X-Gm-Message-State: APuU4Z9qsfUj/Wwpbd/eTKK89/jQdj/j/7H7x+Eal8IX0BoW8L2tKCNE
	7VR83xMnip0D/tS6pehmHtX4DGqCfkKw8utnOssAwnWxPc+rBktwJ58A73JeY+usulpci9kVD5z
	3Wn/ypX/Ous1oEoLL0JJfSfaV9Kd1LNA3wVRMWQqjYjDNK4rJujErvdVT7rdZ3v9pTJwd
X-Gm-Gg: AZFdTZcyxR3c0CDDrk3tVX/ulJ2vr7NCk8mSsYYWvjM09D8da5rbllciFgRgjr8RqSl
	apQhDv74GL8vJ2vH5vv+CDT4B/VwZebhfxjpR+iSm5DHKLzpIqlw4epSyNRB2QpYXJvmTzkQ4sY
	k0ikwpExPOKJZGP47Zvv/tyd6xPch+WwonUD6kRKZ1XLjyHhLLXgL3vndRCHC4kNmmj1UCiI14/
	1D+Qism+xB5Un4WZJFxhyOf3ZTL1finpQwFQfw5eHk1Qbi6cVgJflfM5MYb9wrkdc0RSzE4kCZf
	mjLqsln5QyMBVqSsE4WT0uMifvdIoDgiHhx3ZlgGWuw7/LB4p5JOLH4FhIJ7asajnwTmiMmHjyl
	03hr1G86XCEYaJm90xkOuOLVTjHsrv3/IcXmTMkM7CAJH+pPT9tqS2hJmVVYsRVZl9g==
X-Received: by 2002:a05:701b:4553:10b0:169:9f67:a91b with SMTP id a92af1059eb24-1b5568650aamr20546601c88.12.1795719631179;
        Thu, 26 Nov 2026 11:00:31 -0800 (PST)
X-Received: by 2002:a05:701b:4553:10b0:169:9f67:a91b with SMTP id a92af1059eb24-1b5568650aamr20546547c88.12.1795719630593;
        Thu, 26 Nov 2026 11:00:30 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5567ffa8csm60868190c88.7.2026.11.26.11.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 11:00:30 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 00:27:15 +0530
Subject: [PATCH 7/8] phy: qcom: usb: Keep the PHY GDSC ON during host bus
 suspend
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-usb-pcie-gdsc-suspend-v1-7-485a08ffdc6f@oss.qualcomm.com>
References: <20261127-usb-pcie-gdsc-suspend-v1-0-485a08ffdc6f@oss.qualcomm.com>
In-Reply-To: <20261127-usb-pcie-gdsc-suspend-v1-0-485a08ffdc6f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
        Jerome Brunet <jbrunet+clk@baylibre.com>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-pci@vger.kernel.org,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Prashanth K <prashanth.k@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=cOF1IVeN c=1 sm=1 tr=0 ts=6b0881cf cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=-5rFW9DF29b7OOe1maEA:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-GUID: qRcmzEp2rwwPPNL3USb66Sr9Tx9VIL6l
X-Proofpoint-ORIG-GUID: qRcmzEp2rwwPPNL3USb66Sr9Tx9VIL6l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX2VloaYGkMmh8
 0c+pQ2h5Al+faC6k5H8FK3Kp+mHu8YvHefpoT1+iTFji+IPf8h5KGKHsarterf0fLODkqiR4IGv
 kmUtB7EpgK09oZiLu1mT4IEJ9TDsiD7bsc+h5rlT68MFCgUAhjJCbMWUS4RBVZDpZ60tV/2M6FK
 /VcsfFz/goXrTa9WB52E1hnLJl924TMXy6Hc3UctnE8Jz/Zoys/fmQV6rmVLz+7AKcYd6XZZkox
 AVClLQc0tytaHlDWrnKF8W+3p7eWArELO6NTfz+ps/tbVhpbQO4ati4FL+EctrFUvPqyLnB+FYv
 SZmEO/799xCcU9S83KkaEKbMZaXcJgpBFkaRZ4jo0rOMXd0/+g3uifdYTiVi/IjyNOrxdADjmXP
 RDg3NdszXyUxlLHGioQFqqnV2zgB//8gXsulkmCq7EtVqroZFZhQ5WvMjSLgu9TUgXHWPS/+gpF
 93ZO3Urtc3OKEuO1ItA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX/GV0dzvsmfIU
 hPKNDaLqip7ThrAPHvg0yf/HGe7nuvK+43ZuVPzulkK4hFEhepIhknMjwIFZ8O52GAsxYtK0hwo
 yR33ZLs3ezz6D7oebySWfF6CZzFGY8k=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_04,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0
 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_110034_184055_AE252D27 
X-CRM114-Status: GOOD (  16.24  )
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

From: Prashanth K <prashanth.k@oss.qualcomm.com>

Keep the PHY GDSC ON while the PHY is runtime suspended in host mode,
so that PHY can resume without losing PHY state.  Allow it to turn off
when init_count is zero, or when set_hwmode_dev() isn't supported.
This allows PHY to consume lesser power when nothing is connected.

Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index cd1ebe707bbe4ce790f964956391c561d2d1e223..20f64ffe4d3bdb283ce6185c94dbe021f4ec3d3c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -15,6 +15,7 @@
 #include <linux/of_address.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
@@ -1506,6 +1507,9 @@ struct qmp_phy_cfg {
 
 	/* Offset from PCS to PCS_USB region */
 	unsigned int pcs_usb_offset;
+
+	/* true, if GDSC must stay enabled while this PHY is in use across suspend */
+	bool toggle_gdsc;
 };
 
 struct qmp_usb {
@@ -1956,6 +1960,7 @@ static const struct qmp_phy_cfg glymur_usb3_uniphy_cfg = {
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v7_usb3phy_regs_layout,
+	.toggle_gdsc		= true,
 };
 
 static int qmp_usb_serdes_init(struct qmp_usb *qmp)
@@ -2197,14 +2202,24 @@ static void qmp_usb_disable_autonomous_mode(struct qmp_usb *qmp)
 static int __maybe_unused qmp_usb_runtime_suspend(struct device *dev)
 {
 	struct qmp_usb *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
+	dev_pm_genpd_set_hwmode(dev, false);
+
 	if (!qmp->phy_initialized) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
 
+	/*
+	 * Keep the PHY GDSC ON during suspend, so that phy can resume
+	 * without losing its state after host mode bus suspend.
+	 */
+	if (cfg->toggle_gdsc)
+		dev_pm_genpd_set_hwmode(dev, true);
+
 	qmp_usb_enable_autonomous_mode(qmp);
 
 	clk_disable_unprepare(qmp->pipe_clk);

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
