Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70ECB606A31C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 18:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kB+ET7H8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=EuCqEniA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ZQ6KSzyC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wFPH3MJLdwjso3RPT5AmgQbi8xUSu0957VTfsGbtu/w=; b=kB+ET7H8r2JUPWH0LpyyKExnpC
	kRKzQObL0AH7adW7X1ZOEsmSSTu/HcMLYyEttPjzX2JOXb+U/P7lKT/8lQDAMkrNPx6lpH3220YY2
	Mh1YW1V7r0ncuGS2V4CjAYOhzpIutyfdlpp8pyRMXq2tdy7q+K0Zn6CpWkVlwCVL/i5UIVThTL9y6
	dRlVaYPEGMl+PLlCV/PfX/Ehjzx7uw97sD10ZucZW8P4NN4fRHUTAtiKVvr1Aq5GZz28kDy1FwPGY
	5g9OOo8/uS1W9ArGpYJMutImlHH2eahhL7gdiOV1rwwcSeRVmWcE955CwUufkIYaQl2Mc3vUEUt8L
	veuRFPhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWehK-0000000EDAS-0q2d;
	Thu, 26 Nov 2026 18:59:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWehI-0000000ED9h-2aTe
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 18:59:57 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQFuKaN1848278
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 18:59:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/00NqReDgsN7DpEOL6VOh9ns6kcq/8uBglgUysJara0=; b=EuCqEniAuaycpS+j
	QAyhLkuo95LaWZ1vhIxVcP96OjX57gFDo+foNWMeoJQlj5vjDv/WKuOlh7xvDlVD
	3Iy2f4BnNeIOnXjudnz1p+CmNnTuT2tKhQQN/H7ORm6kgASgScdB2f/eHJTmTDaT
	5tGBhEqmfaow4nB9bd7Mi1GkGOeEj11gv4+Ga8v1u7qSwku337TrNk/m/YMXaZtE
	OY1xY8Thz67zyEtZsF6jj9B1GKlrT0kn+m8tLhvgTSSZzsiFhMS2/11XgexFWiVw
	mTAJJ0rHOFQeSqQHM54PkN1bKCqMcPDIKxD1S/eB2NfTX16C0RylWND3gdSbPJ/K
	UxMdMQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j6fw7tgm0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 18:59:55 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-386b8624cf7so5052170eec.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 10:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795719594; x=1796324394; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/00NqReDgsN7DpEOL6VOh9ns6kcq/8uBglgUysJara0=;
        b=ZQ6KSzyCMjzJcqtREmio+xFka1pNLFks/sX0U06uecYKm7tlCyrE/oLGaGyUXLc1RN
         LM6owxTmfYgr02zPZxQLL72ZD0bwxzQPcQEcsCPw6K66ZMyVaKuKQiVB2o9UqP6nCPEN
         tPqyh/hWwnf/MbZomFHMCWo2adiYY45Jge5kUw+O7MFjcd20w9dt5TPWLTpHpV2uRyoI
         T4PSXFiewQzloV8PRaK+0nUfOCZrprFWCJupT2BYcIV9UIEDDSGr8FPp3Cw5TOW9Mq8O
         f0WZGRaHWVWJnV4AvPCoyEBobh5XsXjiTwKxiRLjxQTvWNGAm7qf1GRaNK7UW2IuNNOZ
         Ggyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795719594; x=1796324394;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/00NqReDgsN7DpEOL6VOh9ns6kcq/8uBglgUysJara0=;
        b=nQy7f8L3rkKvYYZDfr9QP8rSDuBzJlTPSJqs9VktnkzDxzuoHa5SjFDMu7S8K6LvLv
         EUIemi6I3RCGojz+OO8LJvyXJtMrbkiQTY4LWcim3vejCArMJtm/PvxWRl4jHfFMk/ZZ
         ouC5qlW3OZmIUCbqQqivh4a85hUfrcUlBN6t7EeQZxsnNjRJiKkRwsUEEUeL47NsB+3Q
         9WgnCXUJlVVkY7EAhrHR/mFmtHOsSIftPRvJwSvjkyWn+eBnY39Al8NadlVT2ln5XVzI
         3ngtu8Xj0y7FA0CPya89EEa+qrxSYXGf8p0v0mqlNte0/7LK10VVOuWvTMdfg1Q9U6I8
         iO0Q==
X-Forwarded-Encrypted: i=1; AL+hErErpibN1orbBbTp8oBPs0mR3B9QXtKim2oDfWr2RP7LOc3OIujYCcoQUgmTtvQomQowNbZUyQoblsM=@lists.infradead.org
X-Gm-Message-State: APuU4Z88aKN3oxkmfS9sOTKY+qHfHaM7NphtTfgmy5uTjW/FeZKx3B2r
	eIcuJremlkF0jYcl7vFWrCv4xQFcpKdBkjulzm1IVt7D31iTU7I9p2joFI8W1DD071KcqMrZVDz
	3Jq5UIWddJpOKgfSJ48yVer1RSi6CHPqFbanbJYDMLY880OcfvJjEJnwlaje2JGbnyI98ry+1Ru
	f5
X-Gm-Gg: AZFdTZdzYWs3wk1Xj46o+uC5wAi9g57/a/xlH00t/22c0oTX5L9REBjWyNvFrqcZvJQ
	srMm7pwWkkW4dnExKcT+yDTiXuVcwmaUj605OwtL1q5pwn9fykCN2lAz6sUjM+rjeDr9YtP942D
	bUaieAPvzJ+imrjASbb84+Hd2Lry5Js2HoayqGQmg5D6VSVxcpk+qOSV+/nBUq5SM1nsV0XSzdW
	9Cv8Gj6jh2KpTENQ4MVWtSwCEvlGF8MFOc9fOCXJlyX+KepyBGRgjWxWbOcuJwz+ZDEx4ausZdt
	YISBXctqeL2BiEWyatGRo/b0zxONb3pNSlOG8ePrt6Z0B+9i7qdAQ93JI9m6vfokY2ZGCRgOKb7
	14vHGPUTkYXCT1BzamYurmPNp2O1wj4sXhTaP2+DMcMlkCkZDYNcN0SWb3scuZjlyGRhbc/O1Sc
	mLAC7M
X-Received: by 2002:a05:7022:1583:b0:1b3:a9c6:b293 with SMTP id a92af1059eb24-1b5568c0198mr23679988c88.25.1795719594263;
        Thu, 26 Nov 2026 10:59:54 -0800 (PST)
X-Received: by 2002:a05:7022:1583:b0:1b3:a9c6:b293 with SMTP id a92af1059eb24-1b5568c0198mr23679971c88.25.1795719593789;
        Thu, 26 Nov 2026 10:59:53 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5567ffa8csm60868190c88.7.2026.11.26.10.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 10:59:53 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 00:27:10 +0530
Subject: [PATCH 2/8] clk: qcom: gcc-glymur: Register set_hwmode_dev
 callback for USB, PCIe GDSCs
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-usb-pcie-gdsc-suspend-v1-2-485a08ffdc6f@oss.qualcomm.com>
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
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX49bl+bAQDWp1
 191zdPLyBKGXDz/3gvOQ9+5DOKf7lNGmMLlvtkbpGYYVNK4+OEY1uz2TgT/9PriOs2D08nLIig4
 QxmNhpNJvXm1QJPgtqjpMxSoZ/LKQoY=
X-Proofpoint-GUID: I9Ag0tonG897o90CzGUEYP7aedHLOxu4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfXyUYNDLsAWlhj
 zmV65oouC6I4kJh6yhxrokDPQXSP26jz2kLxaN0R65lF/1XKAI57XkJ00ptkZ45x0ejK4uppUnO
 SiWNIJSjU6C3oN/26AjfMN81AC7ysAbrB/v+rOHwb7Suv9MRflo9j1lRjs+LjRCx0PYiyksIlQz
 Q4Ri4c+xaJNnyRvrlKGUWrT8acVIhjzZgho4/lwuwh+kTPA9BJtPMa9+ZP94wL6M1dmpw0mtKEA
 1LWHbw4VmkWvWd4upc0I15rRUPy10bpstp5ESU2a/CdFP3coOZA7XotMokjLClh1cH77GzEBVbc
 cwRORBbXcTJ0MfG4qzRVJP2mkt849/Dzu3Xd1hnRXhHhirhixHZGF+VqhcHGopfyP4hKXGYVir0
 syJB59EWoh4vhjGv8wegoperpe0DqqOz/q1XyreQFfKegplzCe4Wr0cwHRXbEaYLcFbc40RYYMD
 lDkpzxRRRogHN1K99Ig==
X-Proofpoint-ORIG-GUID: I9Ag0tonG897o90CzGUEYP7aedHLOxu4
X-Authority-Analysis: v=2.4 cv=ePeGH3p1 c=1 sm=1 tr=0 ts=6b0881ab cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=DIGDBJpTELtvEum99LgA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_04,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 clxscore=1011 adultscore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 malwarescore=0 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611260074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_105956_791077_C5C1609F 
X-CRM114-Status: GOOD (  12.76  )
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

Register gdsc_set_hw_stay_on as set_hwmode_dev callback for USB & PCIe
GDSCs to allow the USB & PCIe consumer drivers to keep the GDSC ON based on
the requirement in USB host mode and PCIe non-D3 cold usecases. Also drop
the PWRSTS_RET_ON flag for USB GDSC's.

Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 drivers/clk/qcom/gcc-glymur.c | 46 +++++++++++++++++++++++++++++++++----------
 1 file changed, 36 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/qcom/gcc-glymur.c b/drivers/clk/qcom/gcc-glymur.c
index d8d33eff419eeb9885f8560c2c7c71d542371658..73013133fa27cf0b908a8e5552a6fe981ab197d4 100644
--- a/drivers/clk/qcom/gcc-glymur.c
+++ b/drivers/clk/qcom/gcc-glymur.c
@@ -7557,6 +7557,7 @@ static struct gdsc gcc_pcie_0_tunnel_gdsc = {
 	.collapse_mask = BIT(2),
 	.pd = {
 		.name = "gcc_pcie_0_tunnel_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE | VOTABLE,
@@ -7571,6 +7572,7 @@ static struct gdsc gcc_pcie_1_tunnel_gdsc = {
 	.collapse_mask = BIT(1),
 	.pd = {
 		.name = "gcc_pcie_1_tunnel_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE | VOTABLE,
@@ -7585,6 +7587,7 @@ static struct gdsc gcc_pcie_2_tunnel_gdsc = {
 	.collapse_mask = BIT(3),
 	.pd = {
 		.name = "gcc_pcie_2_tunnel_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE | VOTABLE,
@@ -7599,6 +7602,7 @@ static struct gdsc gcc_pcie_3a_gdsc = {
 	.collapse_mask = BIT(4),
 	.pd = {
 		.name = "gcc_pcie_3a_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE | VOTABLE,
@@ -7613,6 +7617,7 @@ static struct gdsc gcc_pcie_3a_phy_gdsc = {
 	.collapse_mask = BIT(5),
 	.pd = {
 		.name = "gcc_pcie_3a_phy_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE | VOTABLE,
@@ -7627,6 +7632,7 @@ static struct gdsc gcc_pcie_3b_gdsc = {
 	.collapse_mask = BIT(6),
 	.pd = {
 		.name = "gcc_pcie_3b_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE | VOTABLE,
@@ -7641,6 +7647,7 @@ static struct gdsc gcc_pcie_3b_phy_gdsc = {
 	.collapse_mask = BIT(7),
 	.pd = {
 		.name = "gcc_pcie_3b_phy_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE | VOTABLE,
@@ -7655,6 +7662,7 @@ static struct gdsc gcc_pcie_4_gdsc = {
 	.collapse_mask = BIT(10),
 	.pd = {
 		.name = "gcc_pcie_4_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE | VOTABLE,
@@ -7669,6 +7677,7 @@ static struct gdsc gcc_pcie_4_phy_gdsc = {
 	.collapse_mask = BIT(11),
 	.pd = {
 		.name = "gcc_pcie_4_phy_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE | VOTABLE,
@@ -7683,6 +7692,7 @@ static struct gdsc gcc_pcie_5_gdsc = {
 	.collapse_mask = BIT(8),
 	.pd = {
 		.name = "gcc_pcie_5_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE | VOTABLE,
@@ -7697,6 +7707,7 @@ static struct gdsc gcc_pcie_5_phy_gdsc = {
 	.collapse_mask = BIT(9),
 	.pd = {
 		.name = "gcc_pcie_5_phy_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE | VOTABLE,
@@ -7711,6 +7722,7 @@ static struct gdsc gcc_pcie_6_gdsc = {
 	.collapse_mask = BIT(12),
 	.pd = {
 		.name = "gcc_pcie_6_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE | VOTABLE,
@@ -7725,6 +7737,7 @@ static struct gdsc gcc_pcie_6_phy_gdsc = {
 	.collapse_mask = BIT(13),
 	.pd = {
 		.name = "gcc_pcie_6_phy_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE | VOTABLE,
@@ -7749,8 +7762,9 @@ static struct gdsc gcc_usb20_prim_gdsc = {
 	.clk_dis_wait_val = 0xf,
 	.pd = {
 		.name = "gcc_usb20_prim_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
-	.pwrsts = PWRSTS_RET_ON,
+	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 
@@ -7761,8 +7775,9 @@ static struct gdsc gcc_usb30_mp_gdsc = {
 	.clk_dis_wait_val = 0xf,
 	.pd = {
 		.name = "gcc_usb30_mp_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
-	.pwrsts = PWRSTS_RET_ON,
+	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 
@@ -7773,8 +7788,9 @@ static struct gdsc gcc_usb30_prim_gdsc = {
 	.clk_dis_wait_val = 0xf,
 	.pd = {
 		.name = "gcc_usb30_prim_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
-	.pwrsts = PWRSTS_RET_ON,
+	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 
@@ -7785,8 +7801,9 @@ static struct gdsc gcc_usb30_sec_gdsc = {
 	.clk_dis_wait_val = 0xf,
 	.pd = {
 		.name = "gcc_usb30_sec_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
-	.pwrsts = PWRSTS_RET_ON,
+	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 
@@ -7797,8 +7814,9 @@ static struct gdsc gcc_usb30_tert_gdsc = {
 	.clk_dis_wait_val = 0xf,
 	.pd = {
 		.name = "gcc_usb30_tert_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
-	.pwrsts = PWRSTS_RET_ON,
+	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 
@@ -7809,8 +7827,9 @@ static struct gdsc gcc_usb3_mp_ss0_phy_gdsc = {
 	.clk_dis_wait_val = 0x2,
 	.pd = {
 		.name = "gcc_usb3_mp_ss0_phy_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
-	.pwrsts = PWRSTS_RET_ON,
+	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 
@@ -7821,8 +7840,9 @@ static struct gdsc gcc_usb3_mp_ss1_phy_gdsc = {
 	.clk_dis_wait_val = 0x2,
 	.pd = {
 		.name = "gcc_usb3_mp_ss1_phy_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
-	.pwrsts = PWRSTS_RET_ON,
+	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 
@@ -7833,6 +7853,7 @@ static struct gdsc gcc_usb4_0_gdsc = {
 	.clk_dis_wait_val = 0xf,
 	.pd = {
 		.name = "gcc_usb4_0_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
@@ -7845,6 +7866,7 @@ static struct gdsc gcc_usb4_1_gdsc = {
 	.clk_dis_wait_val = 0xf,
 	.pd = {
 		.name = "gcc_usb4_1_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
@@ -7857,6 +7879,7 @@ static struct gdsc gcc_usb4_2_gdsc = {
 	.clk_dis_wait_val = 0xf,
 	.pd = {
 		.name = "gcc_usb4_2_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
@@ -7869,8 +7892,9 @@ static struct gdsc gcc_usb_0_phy_gdsc = {
 	.clk_dis_wait_val = 0x2,
 	.pd = {
 		.name = "gcc_usb_0_phy_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
-	.pwrsts = PWRSTS_RET_ON,
+	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 
@@ -7881,8 +7905,9 @@ static struct gdsc gcc_usb_1_phy_gdsc = {
 	.clk_dis_wait_val = 0x2,
 	.pd = {
 		.name = "gcc_usb_1_phy_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
-	.pwrsts = PWRSTS_RET_ON,
+	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 
@@ -7893,8 +7918,9 @@ static struct gdsc gcc_usb_2_phy_gdsc = {
 	.clk_dis_wait_val = 0x2,
 	.pd = {
 		.name = "gcc_usb_2_phy_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
-	.pwrsts = PWRSTS_RET_ON,
+	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
 };
 

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
