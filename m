Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C14606A32C
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 02:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RuYQQuTY;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=GE/At4Qo;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=R5WIe1EF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/Zk2rgAvZWdJn6REtH/IxehQhqhKvt6lGi+V2qpyjWM=; b=RuYQQuTYw3KdhMDcQK+xWCVcDN
	loVMm82052jYa6Cx5nugnNi1wVPauCQfo09jjbXO8MPxh3NIe/DYTE8pq7GPxiRnUwPTsgQUeOXDR
	iRDKxAt07k1ANC+Znt3+YOzOffyySBsGhLDwO5pln3ulErVRawiyEdnvDlBL3V8driN7ZBtuoJC/T
	8Fdhbr82mpLbhlHUJMKJlu2bC+BZnvwcKldNrNip4YMdlGD+LYYYQpOFsfN1ft45iY+QSnofYNndl
	ySG8cezR9nyihwYnyK7Y9bQGNCHpzmdK0XHLQKwQ+JFkDqao0K1HBpABXjnff56SjAvvJJFltaDkE
	pcT/e2eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxlv-00000000hFV-2DUv;
	Sun, 22 Nov 2026 02:57:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxlt-00000000hF6-1oWZ
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 02:57:42 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AM07w2e1941614
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:57:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ajZ9+9KtJUTTKAdnFhbIdGT0gBjexH1+YfCI9PsJIPc=; b=GE/At4Qo7h5pN6b2
	Hq4t5NqVmxcIzG+rKO5E6zYPYTDTO9abWEdyi0wTiDR8NvZ3oxDK93zPan384Yem
	LkAEI9M5o4OnlaBx9lpi61C2fzX0BASMgCj3w+3Xo4jYZkwTYXNEtPz08uXJHPgp
	3G03OPZlA//wZx52V9ex0v0dwDJ4i+UMrpCMiMTfItsAKKEOrcuNfU/2K1mtBA96
	9i/MXRNgPaheSVzOgUrxoyebhWbDluBr51j5JhPKkkt+uF9xn2lS9nijnfL8r7Gh
	ucYWZmAX66MuX5KoPZd19NhRRkpMx0Uy40Fm3E75a7v2GHmX62t3JZkbDlhbfYL9
	Oq7TXQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j33h32j0e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:57:40 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-384c78aa0dbso3120059eec.0
        for <linux-phy@lists.infradead.org>; Sat, 21 Nov 2026 18:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795316260; x=1795921060; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ajZ9+9KtJUTTKAdnFhbIdGT0gBjexH1+YfCI9PsJIPc=;
        b=R5WIe1EF1vauH3iWqsfi0i2K/ofKf+mA9+xKzHYk3vaAT2WaGIcqBVxxg7881rbU3z
         Dr8NGA6IiyHtKUCwUbwI7Qh1ujiEYhN7iXlyN9Jl3P4UBwZ1GamVwHIqlcw9GnbnV5kF
         Dc0Fomg5oHHvZS4Tr5c40OKmQH1ArfIB4iZSt6jTgsNw/1YuNGV2hVmRfnrD8x6hF0DE
         ZrCdaK/JjmOOz2CTjhXBG8ziv6meiV3uJ+VinHLSrUdwJ+I+fDfJB96qY4Un6ByxeEm+
         5QJw3hUstnLm+zcBcu5+TUMt0P4ic2NnxCwx6hHMIpLUZ9U932lkJU+oRnnYGq/LoE98
         tizA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795316260; x=1795921060;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ajZ9+9KtJUTTKAdnFhbIdGT0gBjexH1+YfCI9PsJIPc=;
        b=FJANS+IfOxJvrVbqZ4IpqALR3UDrcXOyE7gT22X3WV0w9cWhaaMHw67qbNZtBiTBjm
         sAzXcyJTpSLhYZOEuEsmLrC+Q5R4nZnlFzUxiKgFYtnS0IhuLwpKHmW1HeclcBVPqSka
         jChxz3LvBYvM/qCwGTz6IWEQdJjF4rvgif7wkz9eTQwqnPtXy471dM+K2KqaoqUg61u3
         +nlPGrDXSXeC6IVXacRjkgwRk70g6pPiaeXUZ/eMPwHhAXI8uZ61JUXyq5sTiTQDJgJ+
         tDInQ7hZ4EldLn7h0qqf34zLq9wgcJHVgjU6K4IFmZN401dqzXvXOM22oArGSPLjaFEN
         HfLw==
X-Forwarded-Encrypted: i=1; AL+hErEMv2FSX2O13Ip2hGpdsrVG4oPzBsmeMHt8eW74WPxbu7V1ItUba9jCUb/oJm3VeeQZ6hW1STT9ox0=@lists.infradead.org
X-Gm-Message-State: APuU4Z8uF6wa2dDjcF+CJL+2Pgu3cvYegkiC2gU8qdCA8cvhdnk1rLK2
	qhNXGvcqxX+L7/rrhuxbQuN2SyJqlRhaRJYASK1EnG1efx0JYloRrnL2FPXsKLEQfCgwrY5TdW8
	SP6WHpo2c382fltCafvMOmCvSsPM+Puwm3sTdu740ku+Bfx4ptaitidfqgS9Sv+P+1aC2
X-Gm-Gg: AZFdTZcn6oM5Tt9K+jxXiXnl+jK4g1qbt2C+eterQZdCqFb4kUOiBU+JriWa04FRExL
	dvNeWgd06Z4Pix0DHUJNA6JFdOi8IZMu/ARk8n1vm4JPaPgcaE6EZOo4wNTi6d53SAuhdZ4sm0e
	9hAJoRxxClqqTzIy8QetnYRKWaAuOQMzEPvYs16EjX3rOjWddHPseRNh5OLNtvy94lBYZakoewo
	g34+lomuuXY/x0czz4VOLyzXqPNTof7IFiyrx+BRHRYJmvOexu7KmayfG1bnYxYAFGejYoj2y3k
	xsmKil1OzmhXm6602QnXlKIHBQv42C6Lo38KpBgOnw5IiZNSdxBEffV27lznL1YR7AGL0PDJnPY
	MmwkBXHhiCYD9+UvjTTEN914r4ZgmHaKEFfvKYq1ufGahDBQL43TcDZzFCx83YHPJFO4hNv0fO1
	WUon6fjiaR
X-Received: by 2002:a05:7022:f51b:b0:1b5:10cf:c458 with SMTP id a92af1059eb24-1b5568af41amr5927497c88.23.1795316260299;
        Sat, 21 Nov 2026 18:57:40 -0800 (PST)
X-Received: by 2002:a05:7022:f51b:b0:1b5:10cf:c458 with SMTP id a92af1059eb24-1b5568af41amr5927456c88.23.1795316259479;
        Sat, 21 Nov 2026 18:57:39 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aaae4960sm312044eec.18.2026.11.21.18.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2026 18:57:39 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sun, 22 Nov 2026 08:26:23 +0530
Subject: [PATCH 10/11] bus: mhi: host: pci_generic: Add support for
 Qualcomm Nord
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261122-nord_ep-v1-10-6d8839ffa9aa@oss.qualcomm.com>
References: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
In-Reply-To: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
        Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Frank Li <Frank.Li@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Niklas Cassel <cassel@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: mhi@lists.linux.dev, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795316184; l=1704;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=mxFfCYSZbkYPAAgKqdymawNDYArxhGIJNHckvlEpvaU=;
 b=oUzExgrBWSn/PJZCJ0tHQmMjmfUaXiqNmMvt8aljTqHa33vZFBIIrcxrI8RsDB0GGv7RBkKtN
 E000wZ2y4yTBS2JziFrJBs47LDsZIqxbgtl9PQ4SPSizSQ9a5ESRSGJ
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=EsxHPicA c=1 sm=1 tr=0 ts=6b025a25 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=MXGvhfJtNsboA4ndukAA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: PIq5bwGGzQyYZay4TubgmbUUZ15VUjBo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX+u4RDDzKZdAU
 w41FnF2sZVo7u/zZikYahu9gsVQ/NzfgKqbY+EBf4Tg0oUlQhOB82/bfTQLL00vvRl5Pg71YW5D
 m7BDd6auMuYhguN7V/Dx7GgcvWrxK+rbjjXVV6iS94A8w0JdEKvq8ppNYh4jPzBNZP6fa6k4r6B
 yedHb8FoShS/7UrAMidPIGXm3QXPlMDXVv/dd2J9ql+/xw7pwH2BZ7Q4q5yrDY92zxCKYG7ZaTJ
 CRh6XfHuzT6dLLg0qVxwVzxLeSYBwZebW8voQAeFcodeSQ5aJRd3hdl+agnQJ1Wu+TRUnTR1L4Z
 3UBwkWYS3hay1juwV4vDHOnXlcOEx4RWjwbKAmT1kFIRWFQHjtBpuX0/WUDgNR8UlX/nzwMe3o6
 3/UgU4ZOGgiute/GOA687QZIyNj12jXOHihjVqGZEbehY3p7yI9Wycq8WHPNBGDUTU5HCTzyUpI
 NpVw9XtXM2SLVWbduWA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX3qGOm1xRwmgF
 kGhycMjmODNayQsvL/pkuJzPY0Ft0BU9FpytIEkINOkL70Prlp4mXx6rDaYsWGe1/rgKB2zNb+U
 FGk8BHCFQrWIj07mkpvwUh7jpHlt4kc=
X-Proofpoint-GUID: PIq5bwGGzQyYZay4TubgmbUUZ15VUjBo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-21_06,2026-11-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 clxscore=1015
 adultscore=0 spamscore=0 impostorscore=0 phishscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611220011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_185741_478646_5610E146 
X-CRM114-Status: GOOD (  12.87  )
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

Add an MHI PCI device entry for the Qualcomm Nord endpoint (device ID
0x0120), so a Linux host can enumerate and drive it over MHI. Nord
exposes the same software IP channel configuration as sa8775p, so reuse
its controller config.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/bus/mhi/host/pci_generic.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/bus/mhi/host/pci_generic.c b/drivers/bus/mhi/host/pci_generic.c
index ca9ef4aaa014..65201ec8dc76 100644
--- a/drivers/bus/mhi/host/pci_generic.c
+++ b/drivers/bus/mhi/host/pci_generic.c
@@ -383,6 +383,17 @@ static const struct mhi_pci_dev_info mhi_qcom_sa8775p_info = {
 	.sideband_wake = false,
 };
 
+static const struct mhi_pci_dev_info mhi_qcom_nord_info = {
+	.name = "qcom-nord",
+	.edl_trigger = false,
+	.config = &mhi_qcom_sa8775p_config,
+	/* The endpoint places the MHI registers in BAR 1 */
+	.bar_num = 1,
+	.dma_data_width = 32,
+	.mru_default = 32768,
+	.sideband_wake = false,
+};
+
 static const struct mhi_pci_dev_info mhi_qcom_sdx75_info = {
 	.name = "qcom-sdx75m",
 	.fw = "qcom/sdx75m/xbl.elf",
@@ -966,6 +977,8 @@ static const struct mhi_pci_dev_info mhi_netprisma_fcun69_info = {
 static const struct pci_device_id mhi_pci_id_table[] = {
 	{PCI_DEVICE(PCI_VENDOR_ID_QCOM, 0x0116),
 		.driver_data = (kernel_ulong_t) &mhi_qcom_sa8775p_info },
+	{PCI_DEVICE(PCI_VENDOR_ID_QCOM, 0x0120),
+		.driver_data = (kernel_ulong_t) &mhi_qcom_nord_info },
 	/* Telit FN920C04 (sdx35) */
 	{PCI_DEVICE_SUB(PCI_VENDOR_ID_QCOM, 0x011a, 0x1c5d, 0x2020),
 		.driver_data = (kernel_ulong_t) &mhi_telit_fn920c04_info },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
