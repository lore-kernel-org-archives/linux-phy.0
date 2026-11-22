Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9C6606A320
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 02:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dzkCdG7t;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=hqWur2w8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=gck3ogHs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3dKDh3s0GSq6Ft8FHKtMQ7inWh59jujzJk6bJGGhnyY=; b=dzkCdG7toZW1y7QWVPMRDkBgND
	UypQwyjhBiIEheLNrwNpG1mOhyRu7DnPKqtbSfgvEvqh4X6w3uUWDWbNi9l7stO5JrUzFUwdwLnXu
	8sTkS6+2AehWvRkq6VQBDoBuyKUlMbkEPDaIw8CMZDF34mA1Jz/p1arr2SJ7cXyXw6SwSj4W7FF1K
	wtBDXZ3jLgFwHWfUkrKLq5R1g1plVFNOAFRJ1o0JA4oieW6EvrtfoH0kumHhVY1T8JUg+Uuh171xL
	BBR7nafM32XWzfwaarNg+E4I08lEYi+wy8moZ+3ISrtMtSJjDw+elSy9kN0LqBga3eysRpchbEof0
	sg7WPNug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxlB-00000000h7c-09vB;
	Sun, 22 Nov 2026 02:56:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxl8-00000000h6u-0voT
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 02:56:56 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AM07rek1941209
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:56:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hNOKzPAn7+pXWluGC2/bHKGOVozO2Ky26vVL4ckdzBo=; b=hqWur2w8W55NOte0
	25+pYAciUDWJ6ENxlF9RXINK4LY/WDrdolJH+Gf7l0EpY2OB+vvE4kH9G8WRejTp
	MKeNetcdLc65tshrOleXckPJbR95hqM8UtaQ22Wp3dCHPnwSUEKAH72qEPERq/lG
	0WPiM4EVzMxsBpvIpTGv5wUABviXAIzloOwdlQKs9xDuiyrTwzbSUyy/KedHYFFZ
	FnfltOlw7BEgQ03SBlkWiGCa604MP78dPZxWAEJ1j9AkbxUs4CSyHPfxzws7ccYd
	fDQXRW6mRmAnCtX8oRHL5jVeh8AxPVV90rYb3/KlFOLS3iE9sn1S1BzfI+piiZqK
	iZipBA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j33h32hvq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:56:53 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30bcb065bfdso2517919eec.0
        for <linux-phy@lists.infradead.org>; Sat, 21 Nov 2026 18:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795316213; x=1795921013; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hNOKzPAn7+pXWluGC2/bHKGOVozO2Ky26vVL4ckdzBo=;
        b=gck3ogHs2Jiawpp9oXPRUTdygXv+XLBxtJWIRTyb7GbMA19G99vg23PKOnA0gqFAVB
         eEWzuhYBv6AyzLQBpFWnbotgYZWxtPkM7P5aODVjsCFpYnxR+xwlHf2Nxx+WNTbcrVZ5
         xa/Z95RO/Hi7Ut0yE84SyX5oddNF+a6/7NA0RGRVgvY/MJ1EfHv3Fvfdv6Lgq3jpCwhg
         Ttn5XlLw1Rkcz+n9XXxHy0AvOXRa/pXJ4KO2npE2gn9K9pYDErkuew332DU8lo0cXoou
         ez2xIlyv2rmItDywLcYFcd38ruBP6K0tInJO68gTi1KprZJ7YmuMLx9zsMQnTQOyrMIc
         4cgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795316213; x=1795921013;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hNOKzPAn7+pXWluGC2/bHKGOVozO2Ky26vVL4ckdzBo=;
        b=bOze7h+9Ncc+OOiW0x4AkRrBj+CKObsOUX69SfWdCdzqQZ42fTqvp2A8afN8X0nNkt
         EVdzT/0ub8yP/D6Unrj7druUej8yLk6Sc8/JiXf+6RbCwYbC/TArcyOOFtRnX3zauIro
         qvLwcA745bNz7vSE/ZSjZmDeUsNcwcc2/cBO10FqnZRmu+gICr/trLiNJTWX6eNYIL0H
         +BRFjPLhSDtZ4cJJi4IdFQ/WgbXV4dhLEdODkayYryRrQqunIkU8yg6Izo26FRafjxB7
         mUpPcGdafUBPVTJqsYky+2LJw9eKgO9em7krDuU0BNRH7BFf+JKftq1BAUrXzBCkBmoK
         Q7/Q==
X-Forwarded-Encrypted: i=1; AL+hErHkb4YZpHx8cXRxllFJKYQcQDnsAl/KuAssd3GAt/bTPle0qJhwYPGN8kMyu1eAV5B6kTE2fly1zlA=@lists.infradead.org
X-Gm-Message-State: APuU4Z+h4iIg1NK+upNYOrg5Dw8vJgHTZoZdZH/PabKzJLlBX0wzDpsi
	S1ioO3NgOIqVkj/RT/JfjCXU6ZjbX1/gz9DQbQlicrdtaObbLPXWvyFKNNMS2hzzKlaqFwQkkod
	a7kwTyydaXoJUE1Ajn1qqT3LKQ2NqwUM7/VoRM+jlLB50xMTcfG4HgK2ODYAQBOR345pU
X-Gm-Gg: AZFdTZfkLmUgyTLhPFj9m/fPxl/RFfyFF3qEp0sfn04QAzHsPhwWzWAeLcFKXqm8+BI
	OzDEmIYCZXy/Ed3/pC0/F7LIh4ESMe3ePSv0X7Nvq49hcuLwmcRWkR0ntbghsRZNAzS+ZIeL70m
	9B8tRxXChtZp4m1dwNfcTPU2BE9peCDUCzrFzYwFGTERyz77uAiX1dTm1h+vVPs1Iw4JB3I7zKS
	1kfIGbZTCqiCuZZLc/ui7e5f7NxCFUTl/lMljAvh3+pJrnaUC6Kz2KZsFecIAcSfo6l3za7EZCr
	I3KUNGpS6FXTXtl68Y5BeLjsi7EIucSjtu2hKQeZoilwqJu2B+CpXF4bimsSbqeFUN97sgJVG15
	u1ewZxLSzJrGQqXpsX8hpzUTHL4y3mfztRazS2CHIBCT/3ToQpIWr+XJ9LLXtrGpfh03fTAvvxH
	9Dsdgk+NtR
X-Received: by 2002:a05:7300:e9ce:10b0:385:2564:c509 with SMTP id 5a478bee46e88-385700541a6mr9071431eec.24.1795316213019;
        Sat, 21 Nov 2026 18:56:53 -0800 (PST)
X-Received: by 2002:a05:7300:e9ce:10b0:385:2564:c509 with SMTP id 5a478bee46e88-385700541a6mr9071403eec.24.1795316212484;
        Sat, 21 Nov 2026 18:56:52 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aaae4960sm312044eec.18.2026.11.21.18.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2026 18:56:52 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sun, 22 Nov 2026 08:26:16 +0530
Subject: [PATCH 03/11] PCI: epf-mhi: Add MSI-X support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261122-nord_ep-v1-3-6d8839ffa9aa@oss.qualcomm.com>
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
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Anvita T <anvita.t@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795316183; l=5864;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=7QjmuTlVRoKXrIZssiDHzu7/1X+z/zLg7WzPuVHICII=;
 b=A+SSmX+nlmQiS0zohEwoQRgbuhdqSdqltmeiJRJ4cuV6hvQdHXPdssILPJFHnDIKWCA7pMPvW
 lmYm2D9QhSWB0lAbIJnkZ+p401ZCAT36i2ymGTzuXi+p2JBNrfdJLcM
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=EsxHPicA c=1 sm=1 tr=0 ts=6b0259f5 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=aWPhZf5PStJQkATrKZ4A:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: 1cNClUKoYT36OkOVBdvRMK7ucqDAWMfZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX3XakHVKICyU/
 JBJyKMmDoRzfT5p4gzNUJfgWE/7/uOXe3vcrubuorTDTuV5JswPQK4zwSlf74W8+pB34SM/juCc
 7beFIlOfER400HKyYUfKqOZeEhhNarZRNK7oG/d1QVa5+I18Dp7tYDHoIdCJ/uMSiDtsbAThwVg
 3fqER4CPryVV4pn/rRU8EzH+/oDOnNYEcXI7e6L2bgHYwlE1ZBYt38oATP4o8+7U6hpZ9ClyamL
 0agrc+mYTpl8jDmKk01pxvTrsZpmhAW5B0j8+iDvd3IYsmB2v1su1ol7772W5ZHEja/B32mW/Gw
 pNRCBJORjds6BS3RoYSFdrZlkLkf89TXmwKsjnx8OnURcuQlyw0G3q/Ng675XiVe17S/7/8aWGz
 52wZif53Cp+eTp1zgSxkTbjeUXnmx6N6S5yUa8sZ0Rdg36pkpFSrmHZSRqf4KTSCgQabNoymHvF
 4QL8gSwFmPY3+OYWrqw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfXwrNqoRduOyBn
 rUyGDfJxXQLJOZTROW7H+kP6rciLaG7qL8/r+sWqufkA/SU4SG7Tu012DGe3pymdiWIkLBQtpHs
 alymGoYUydnaZ/+vbf5hloK60XE4mBo=
X-Proofpoint-GUID: 1cNClUKoYT36OkOVBdvRMK7ucqDAWMfZ
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
X-CRM114-CacheID: sfid-20261121_185655_035864_47AA70F7 
X-CRM114-Status: GOOD (  22.00  )
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

From: Anvita T <anvita.t@oss.qualcomm.com>

Allow the MHI endpoint function to signal interrupts using MSI-X when the
endpoint controller supports it. On controllers whose epc_features
advertise msix_capable, set up a dedicated MSI-X BAR (BAR_0) from a
"msix" memory region supplied by the platform and program the MSI-X
configuration.

The "msix" resource is optional and only looked up during bind; it is
required only when the controller reports MSI-X capability. At interrupt
time, select PCI_IRQ_MSIX over PCI_IRQ_MSI based on whether MSI-X has
been enabled by the host.

Fetch epc_features earlier in epc_init() so the MSI-X capability can be
checked before setting up the BARs.

Signed-off-by: Anvita T <anvita.t@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/endpoint/functions/pci-epf-mhi.c | 54 +++++++++++++++++++++++++---
 1 file changed, 49 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-mhi.c b/drivers/pci/endpoint/functions/pci-epf-mhi.c
index 52cfffcfd5ca..a8765beffe06 100644
--- a/drivers/pci/endpoint/functions/pci-epf-mhi.c
+++ b/drivers/pci/endpoint/functions/pci-epf-mhi.c
@@ -148,6 +148,7 @@ struct pci_epf_mhi {
 	struct mutex lock;
 	void __iomem *mmio;
 	resource_size_t mmio_phys;
+	resource_size_t msix_phys;
 	struct dma_chan *dma_chan_tx;
 	struct dma_chan *dma_chan_rx;
 	struct workqueue_struct *dma_wq;
@@ -155,6 +156,7 @@ struct pci_epf_mhi {
 	struct list_head dma_list;
 	spinlock_t list_lock;
 	u32 mmio_size;
+	u32 msix_size;
 	int irq;
 };
 
@@ -230,12 +232,16 @@ static void pci_epf_mhi_raise_irq(struct mhi_ep_cntrl *mhi_cntrl, u32 vector)
 	struct pci_epf_mhi *epf_mhi = to_epf_mhi(mhi_cntrl);
 	struct pci_epf *epf = epf_mhi->epf;
 	struct pci_epc *epc = epf->epc;
+	unsigned int type = PCI_IRQ_MSI;
+
+	if (pci_epc_get_msix(epc, epf->func_no, epf->vfunc_no) > 0)
+		type = PCI_IRQ_MSIX;
 
 	/*
 	 * MHI supplies 0 based MSI vectors but the API expects the vector
 	 * number to start from 1, so we need to increment the vector by 1.
 	 */
-	pci_epc_raise_irq(epc, epf->func_no, epf->vfunc_no, PCI_IRQ_MSI,
+	pci_epc_raise_irq(epc, epf->func_no, epf->vfunc_no, type,
 			  vector + 1);
 }
 
@@ -714,11 +720,40 @@ static int pci_epf_mhi_epc_init(struct pci_epf *epf)
 {
 	struct pci_epf_mhi *epf_mhi = epf_get_drvdata(epf);
 	const struct pci_epf_mhi_ep_info *info = epf_mhi->info;
+	struct pci_epf_bar *msix_bar = &epf->bar[BAR_0];
 	struct pci_epf_bar *epf_bar = &epf->bar[info->bar_num];
 	struct pci_epc *epc = epf->epc;
 	struct device *dev = &epf->dev;
 	int ret;
 
+	epf_mhi->epc_features = pci_epc_get_features(epc, epf->func_no, epf->vfunc_no);
+	if (!epf_mhi->epc_features)
+		return -ENODATA;
+
+	if (epf_mhi->epc_features->msix_capable) {
+		if (!epf_mhi->msix_phys) {
+			dev_err(dev, "MSI-X BAR address not configured in DT\n");
+			return -EINVAL;
+		}
+
+		msix_bar->phys_addr = epf_mhi->msix_phys;
+		msix_bar->size = epf_mhi->msix_size;
+		msix_bar->barno = BAR_0;
+		msix_bar->flags = info->epf_flags;
+		ret = pci_epc_set_bar(epc, epf->func_no, epf->vfunc_no, msix_bar);
+		if (ret) {
+			dev_err(dev, "Failed to set MSI-X BAR: %d\n", ret);
+			return ret;
+		}
+
+		ret = pci_epc_set_msix(epc, epf->func_no, epf->vfunc_no,
+				       info->msi_count, BAR_0, 0);
+		if (ret) {
+			dev_err(dev, "Failed to set MSI-X configuration: %d\n", ret);
+			return ret;
+		}
+	}
+
 	epf_bar->phys_addr = epf_mhi->mmio_phys;
 	epf_bar->size = epf_mhi->mmio_size;
 	epf_bar->barno = info->bar_num;
@@ -743,10 +778,6 @@ static int pci_epf_mhi_epc_init(struct pci_epf *epf)
 		return ret;
 	}
 
-	epf_mhi->epc_features = pci_epc_get_features(epc, epf->func_no, epf->vfunc_no);
-	if (!epf_mhi->epc_features)
-		return -ENODATA;
-
 	if (info->flags & MHI_EPF_USE_DMA) {
 		ret = pci_epf_mhi_dma_init(epf_mhi);
 		if (ret) {
@@ -763,6 +794,7 @@ static void pci_epf_mhi_epc_deinit(struct pci_epf *epf)
 	struct pci_epf_mhi *epf_mhi = epf_get_drvdata(epf);
 	const struct pci_epf_mhi_ep_info *info = epf_mhi->info;
 	struct pci_epf_bar *epf_bar = &epf->bar[info->bar_num];
+	struct pci_epf_bar *msix_bar = &epf->bar[BAR_0];
 	struct mhi_ep_cntrl *mhi_cntrl = &epf_mhi->mhi_cntrl;
 	struct pci_epc *epc = epf->epc;
 
@@ -773,6 +805,8 @@ static void pci_epf_mhi_epc_deinit(struct pci_epf *epf)
 		mhi_ep_unregister_controller(mhi_cntrl);
 	}
 
+	if (epf_mhi->epc_features && epf_mhi->epc_features->msix_capable)
+		pci_epc_clear_bar(epc, epf->func_no, epf->vfunc_no, msix_bar);
 	pci_epc_clear_bar(epc, epf->func_no, epf->vfunc_no, epf_bar);
 }
 
@@ -880,6 +914,13 @@ static int pci_epf_mhi_bind(struct pci_epf *epf)
 	if (!epf_mhi->mmio)
 		return -ENOMEM;
 
+	/* MSI-X BAR address is optional; only present on EPCs that support MSI-X */
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "msix");
+	if (res) {
+		epf_mhi->msix_phys = res->start;
+		epf_mhi->msix_size = resource_size(res);
+	}
+
 	ret = platform_get_irq_byname(pdev, "doorbell");
 	if (ret < 0) {
 		iounmap(epf_mhi->mmio);
@@ -896,6 +937,7 @@ static void pci_epf_mhi_unbind(struct pci_epf *epf)
 	struct pci_epf_mhi *epf_mhi = epf_get_drvdata(epf);
 	const struct pci_epf_mhi_ep_info *info = epf_mhi->info;
 	struct pci_epf_bar *epf_bar = &epf->bar[info->bar_num];
+	struct pci_epf_bar *msix_bar = &epf->bar[BAR_0];
 	struct mhi_ep_cntrl *mhi_cntrl = &epf_mhi->mhi_cntrl;
 	struct pci_epc *epc = epf->epc;
 
@@ -912,6 +954,8 @@ static void pci_epf_mhi_unbind(struct pci_epf *epf)
 	}
 
 	iounmap(epf_mhi->mmio);
+	if (epf_mhi->epc_features && epf_mhi->epc_features->msix_capable)
+		pci_epc_clear_bar(epc, epf->func_no, epf->vfunc_no, msix_bar);
 	pci_epc_clear_bar(epc, epf->func_no, epf->vfunc_no, epf_bar);
 }
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
