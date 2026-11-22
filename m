Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62A4606A32C
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 02:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GsYhciq+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=bg1kxkQp;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=N48iEyG+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8aTt1c8IKOJMxNMt6kBhSzy+a9I6kOU1fkOGPd6/ncE=; b=GsYhciq+b9tJQxmZVF1ETUf2Md
	aQm4wu4FNyJ/Ynu26384K2dRzudZpYTeCgM5v7cIco82C7zlcnmY7TxoWF2hN9qAyw/lHgKFjhWub
	hmQplCqRnC8wn8NTlq9qQr7K7vGYjPVTnRANKAqtO0HwV8/F/0vwkKOyhJ3Ibz5Ij6Izj2pgvra3C
	RB7TGofPoUHKQkiGS7gPLdyJFmmRTEk0hA+dynD/E6avmYyiAWaEd8XSI22uIil3mxfKHIF61re+r
	7UflfPpSFVwXjWIsVqzzFdPhvnyGMhLEPbVSYRrH5uegNPlDeCnVTTuWBMrdhc29CEKkmO0VAuFPB
	LFGAe4uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxlo-00000000hE7-1vss;
	Sun, 22 Nov 2026 02:57:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxlm-00000000hDn-1iIV
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 02:57:35 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AM08JQ61942354
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:57:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6bHLtadpQ3PZnFRKDgMiZ1QZT7HKwXJXcGhdxPv4ego=; b=bg1kxkQpfoNFuQk1
	XU3tvuDHduXd5FSsTB88+hXeWCiBebY0+OrTzduUgdmhlw+6Q9IlHnfVrfNm4wRJ
	+Ik3kxTM8m4j+503cNMrmlEzE7wsnnKMi0Hz8PWWY7WClIB668/0THkwGOXA4Hy3
	PeZ1evtQPkO1RH4ezqRCurjiXGfnWyPUg7duec59KqRSSNrlXK17bu9cD3n+1O+I
	gAFqV9ObXzdqlRfCWLe9LdfGywq9d3D028cWuiADOrtzuqTsQKo1v3LdaYTziXDC
	tUl6Coc0JsRwzdYAW2//lEU7WPojwKGsAfWP04s6ZDuqpCbGqlemuOq1UKCJGosm
	YpVDdw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j33h32hyv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:57:33 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-38531c1a566so5773160eec.1
        for <linux-phy@lists.infradead.org>; Sat, 21 Nov 2026 18:57:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795316253; x=1795921053; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6bHLtadpQ3PZnFRKDgMiZ1QZT7HKwXJXcGhdxPv4ego=;
        b=N48iEyG+CQtntI7yr3kPxcRtS+PvgUkMJ6YDbTth/W1EV2us6GnOYIqVpblzmEqmHg
         7Ej3hrH5554WGHWoiV2ok7MiDTts6pmTEvi8M46enbzVqjGLlUUnOvEvqBo0HjbUtGWk
         aEz4qu1ru7Zg6V3iDm302/z2TIQLExksX41zcDxlAQPha3tqm339KHp8z0rgG98lrj6c
         bbncUfrjQOQCJ9L24Ntl/FXJ8Jbl5Nyz8lL6Gf6OxR20tMQGfFSvzlVdcAWE9e8/so1d
         qGAe0uLCEAgH6SaE4JRDEAXS9+UrmmVbHWjM82g1HPJsdcstN/405rS3V4ZLTLClS5Na
         qbCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795316253; x=1795921053;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6bHLtadpQ3PZnFRKDgMiZ1QZT7HKwXJXcGhdxPv4ego=;
        b=2NGf9tS8is6b2w4fpWQx+WU16xAXGedd+0ci6hMgnOxFJ1fdgHkK1fDlQYFjprqF6X
         eMXBx+JDmDBIFeMc8pwlQFtWTEjAlPukKeVBYAP7BvQ7FEAkztxedduAUama6GXrItY9
         20KfZi/UrgqkzczJWX+WRNxxpWAUneA4hLEEWak0h6p9+g+Sri3Chr3RFV6vxloOa6i1
         bAnZlXEatDtX81KvDSSRGqZAXWRvuK5OAP4tWFvLDheBK3FHmYhf+GuiLXvXMAUR5oUZ
         6+wg77JwZvMsti0lqVyudXRojVw75IZHz6kAIE55M5khkFX004BSD3wPy326SzBXmUgQ
         hD9g==
X-Forwarded-Encrypted: i=1; AL+hErFW8uFac9yNYZXM5Ab4r8SK/BGiAMh/Zia6BcT/W23baIHAdE7fpx5SQs4IxawG/rhLoCA8Enmpe68=@lists.infradead.org
X-Gm-Message-State: APuU4Z+eHktYxVihLXjoeh2gZWNmu7eNJ2y84gBz+riEzMkoZvUcLunB
	NnrevMVbPNAM4BDrEAeB81kqMwvJffbT6uqSjVEkDlE0VyCp2rRNzvpaKnL6Vo6lFEoaUpnJEhR
	DzFGe8NpaH/tGdoSuwbUvcTK8UwsIAS3vCgn6sq+xb9SJm5r1Yu4eB67l7T5lP7Mm7Npz
X-Gm-Gg: AZFdTZcqkhk6PNlo3T4iEEzu/ITNB+MP3opf410PkxuxWv5yHfZzV2tHlvqxT1D/jXt
	YCFcL36Vm5l4EUFhszGF8yzZQ3sUhW4Hu8ZAGp94g22uF0O4+6rdT3luUMLRMPfDjRFT3meeTvU
	aibsVfKEIErPYaYVC24daRt8QEQA3zPqjCFrnGDe5x3OVuGJWA4Db9xP+d33o3sr2DINQmCpp6t
	OzTzfEJfAmGXQnezqjFm2xVh2I7brxJvebUfuMCpfxV8GObkHz+d6FlIccufdhXSg7yfK1K3F4h
	mVfVXgX0lMWuLSJFynBTj1CAVtxW4o3KptxYF15YDVKe3ifGgoBgF9Yko8GLrAZq/3FeqQaDFZv
	0i99QlVwuTrJ3xyAo/MkFOZkas6QGges6mC1jC83vmBd27Wbs+EMnqaEGS8uwYeS+pwpw1VFbT0
	0tB4WGhgpI
X-Received: by 2002:a05:7300:2156:b0:386:42f5:37c4 with SMTP id 5a478bee46e88-38642f53d72mr8113374eec.6.1795316253271;
        Sat, 21 Nov 2026 18:57:33 -0800 (PST)
X-Received: by 2002:a05:7300:2156:b0:386:42f5:37c4 with SMTP id 5a478bee46e88-38642f53d72mr8113338eec.6.1795316252785;
        Sat, 21 Nov 2026 18:57:32 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aaae4960sm312044eec.18.2026.11.21.18.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2026 18:57:32 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sun, 22 Nov 2026 08:26:22 +0530
Subject: [PATCH 09/11] PCI: epf-mhi: Add Nord endpoint support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261122-nord_ep-v1-9-6d8839ffa9aa@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795316184; l=1777;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=rwRoe+74f7bx2POD29Ux+YxHW+5iqQHbqs8P/8PmtSU=;
 b=YZQKTBQOD10iDyG681HTh0xmsqt4Qmo5XYL1FKzxtHq5eUKwzTtsF7luTOX+KE2ZcdN//i0Gu
 l+gQgQfTVhGAeykiDXJVJhvPyafafbh6y6wu5HMuigJUIPsLaVD/vZc
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=EsxHPicA c=1 sm=1 tr=0 ts=6b025a1d cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=-BGyM8POLA_osPWRVsoA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: r2m_k-Ds5mg0xo9u1K-4n6Lgk0JREwIf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfXzKyMJTgVA2lB
 x4sTgYRwfE8OJMJBK7VS8mH/ePOeV/Ix39i5noOdjlxJZ29+f5rgwLWoz32bnAR/J/bZ3E2pQnW
 AyObEwKj7FQVjWC5IkIpP9RDp0meeWdM+Ap5NiOAuRLyw1yrybnDb4KsNuGvRmYjhhRKEyqKWfv
 tHJ5Bg6ktZMMQRNFSgj7DTXcDE1W14UBBc4RvuYlQbrTtOSc6QbInavfLuybUzdkOI9Ds2nrkL5
 Vx9zTTh7hkZpDcwVcRwYd8ruXn8hdxEa8CWF0HAF5+EoSzCiin18btpVfZcNTkHewPGz9PznktV
 rQQARFAYl740U7E/Iwb7xXc5s7yro7Nj2yTQ3MBkXRmImZS5UZbsjvTrQljyMwK1e150BTemf+w
 ABZTqL+JDyWenqNXRcHPMs3ql7OEn9+U7Y/ze6QmSPJWuJinwY576fY5Vjlw3eD76ypkhASxsZW
 SSKPbzxhxehNpBbyjjw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX21KGjMpWjUkW
 kVk8JVQCOJ6WM+ed9PZNIjUnUe2jyzXEr9CYCwgxF6x4ssRDSTJdq+bsxdyksZmuLjwWlnSnT8c
 AKtr1LCpDv9OWyYJPLrbEeD4euf4ZvQ=
X-Proofpoint-GUID: r2m_k-Ds5mg0xo9u1K-4n6Lgk0JREwIf
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
X-CRM114-CacheID: sfid-20261121_185734_458294_13169544 
X-CRM114-Status: GOOD (  11.77  )
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

Add the pci_epf_mhi_nord endpoint function info for the Nord platform.
It uses the v1 MHI config over BAR_1 with 32 MSI vectors and eDMA, and a
Qualcomm vendor/device ID.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/endpoint/functions/pci-epf-mhi.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/pci/endpoint/functions/pci-epf-mhi.c b/drivers/pci/endpoint/functions/pci-epf-mhi.c
index a8765beffe06..6476a2f33f6d 100644
--- a/drivers/pci/endpoint/functions/pci-epf-mhi.c
+++ b/drivers/pci/endpoint/functions/pci-epf-mhi.c
@@ -140,6 +140,23 @@ static const struct pci_epf_mhi_ep_info sa8775p_info = {
 	.flags = MHI_EPF_USE_DMA,
 };
 
+static struct pci_epf_header nord_header = {
+	.vendorid = PCI_VENDOR_ID_QCOM,
+	.deviceid = 0x0120,
+	.baseclass_code = PCI_CLASS_OTHERS,
+	.interrupt_pin = PCI_INTERRUPT_INTA,
+};
+
+static const struct pci_epf_mhi_ep_info nord_info = {
+	.config = &mhi_v1_config,
+	.epf_header = &nord_header,
+	.bar_num = BAR_1,
+	.epf_flags = PCI_BASE_ADDRESS_MEM_TYPE_32,
+	.msi_count = 32,
+	.mru = 0x8000,
+	.flags = MHI_EPF_USE_DMA,
+};
+
 struct pci_epf_mhi {
 	const struct pci_epc_features *epc_features;
 	const struct pci_epf_mhi_ep_info *info;
@@ -993,6 +1010,7 @@ static int pci_epf_mhi_probe(struct pci_epf *epf,
 }
 
 static const struct pci_epf_device_id pci_epf_mhi_ids[] = {
+	{ .name = "pci_epf_mhi_nord", .driver_data = (kernel_ulong_t)&nord_info },
 	{ .name = "pci_epf_mhi_sa8775p", .driver_data = (kernel_ulong_t)&sa8775p_info },
 	{ .name = "pci_epf_mhi_sdx55", .driver_data = (kernel_ulong_t)&sdx55_info },
 	{ .name = "pci_epf_mhi_sm8450", .driver_data = (kernel_ulong_t)&sm8450_info },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
