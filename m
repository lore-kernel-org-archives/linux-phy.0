Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B99606A320
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 02:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=N9RVIhNZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=K71w6Paw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=BZVpTLbq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=iGhwWo4RC6x5tjXmy/tBfQ71CuTxLftWCibNDbTfba8=; b=N9RVIhNZZh7sc61q/xXeA3DoZt
	RmWQtihcA5r/lP4GYuH3NRiYKkZFSEyfuQBxdkwihoRT6+fcI7BcH79lMNuOzOUPAzxA4OJ04mRQp
	jaUpLKp0Ctigszd5SRFxN1iew+ocFLBIm1VqUETRc1bnJIYQoQl9FjQZb5g76JoOgQ+3jGAngc2JY
	9MUUCSOTl0tgg8iWekNXLAjFVTD9V1LruxMbK6hk/vPjM+trIWjVexh72KGj360XYzVt0Zi3CNn4A
	HuXzLJ/6+8M0mjL8sj5XhGYSHDtAd1/RXN3dL6EEvPbFxP7cLRCgBLsrBrJ6cA1+GfjoA7Ui/18uY
	M9+C8iQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxlI-00000000h8Q-0OKi;
	Sun, 22 Nov 2026 02:57:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxlF-00000000h86-3INe
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 02:57:02 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AM095Xq1539989
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:57:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RpNdZRCvOUqczt/I6p/62SfdiYMe0geYQBIESrCqGvM=; b=K71w6PawdporSph0
	dnKuzUY4F29USvSCrf86yHj625sjEf14XoUba8J3V2lF1Jio/iZSLyE4RW2A5yUf
	PxRYAEkNM+mz2tiZ63EvyUC9At1Pl0PT6iJonVfQNJro4WxQ7Q6Hehu7XaoJA0HF
	tvr/AvbScps78NkPhtQsg6JKhuq1wXzVf0tp8pFadlU49zsFyEISoEqjNWyM/cqe
	p4IgsWcbjHjx9VlA3cajuYFZsoYMyktl96jPYtgvdgXqanrwyftNhOM90NqejHjs
	eBAJEXT5l05FJH5Fh8uQKUF0COBCkWxyDsUtkBJeGOiMypg7DCaTeCDt5zriihmI
	kalV0A==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j33p7tfmm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:57:00 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-33c35f5ca6cso3056487eec.1
        for <linux-phy@lists.infradead.org>; Sat, 21 Nov 2026 18:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795316220; x=1795921020; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RpNdZRCvOUqczt/I6p/62SfdiYMe0geYQBIESrCqGvM=;
        b=BZVpTLbqO6nsnfFjiAs0+lGxE6Aji0qVZ66tVT4bfSYUUGykXrZqsTNGmkLyii1eqA
         4dCvapOFDnm63039Rvvk6VGwfgPmMSuZNP2EjFIhr2oerzmWq/jwNPIXwzRstqZ/RUMQ
         zuRjo46qcPaR2vhQMrFg19WUE8fEs997bNUzwrL0kMt12L0vaemwbBAhoueaFin2MiEr
         h5/rNERiPLpfV/4VX6n6vlqNT3Trw3PqvjN6wnwCCgXUBBvZMPrizY+hdAGhq/t2wzjK
         v9BVMLqa71pJRfFyYq1NopZLgqqIHxI0bzVqUMD2DwEvqMzyck1GrewAPGbUyp570zIo
         aCSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795316220; x=1795921020;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RpNdZRCvOUqczt/I6p/62SfdiYMe0geYQBIESrCqGvM=;
        b=usHT1i/LQJDahyebRdg4tZ4H6QGosQbwlfkdUWScHilJo7L0dPdQKFJ5Injuag4T0s
         inknsFaNGne/Va9ieI9FornJt5mtw+QXLNJQKl01RXn3wuAos4JB+S1Uu7STEaN+zfPZ
         Mkur8cbB8ACDrZmD2poPjd/SGM1VHHP0jtGDAVe11yuuEA/BVVFqUnxwqd5TIj9CEhWI
         PM2xoAqByIWLFrvdanPkFOkG4JYnPT9LsqLQrY3uhocjyKhpVC55ZcGAR/ZU2dSP/N03
         AC7CwRvxtS0QTD3968o/UDVSpBc1LWgK5Dbo3+9xA56kVPgshHTsgOyeUswsHFGt5JRb
         9s5A==
X-Forwarded-Encrypted: i=1; AL+hErGwE1H47+vxmLuZrzzdXpbaPweKcFw5iXm1bLo9uGk4zEDqaWUFByelWem3dY8/DOAF0XdyS0s2Pb4=@lists.infradead.org
X-Gm-Message-State: APuU4Z/BZ9QNxzCi5GlNIwbRdeLzUSlZjpQvMEeyJ4vW3ldBNzqr+4U/
	RVJd1TRKU2EMgApwc9upBKn6wEM9UMjTazh2iaLAWUxKxfysjHYfH2HVGyacvbAlwyuY3Cx+yVh
	SNcNjGVah12B40vTiFIOu1qdpepxlmC9cqQxojufr8GK0vVuk1aJebW/7q4cZ7Et25azR
X-Gm-Gg: AZFdTZdkgBs4EQM8iGItZXCQzdP1xy8JXqNEzWHBvkkVIFPv+2nYcH9p//Sb9Rdd6qL
	OO6bbZx4i0ihJAXLcMoK+xKhF7LZBHGBaEc802AUoxxous+hE40AFZWfhNopHsSx0nv36YlDSkX
	D/KoMtzUplQMXaxx6t76PnZk5k72ACaXAgkU1zlogDx9FD7adHty35keFVIclGgPIafBfRVQWr1
	4xWQMI78657OaMX1yEugHcghPiWGtNrWwmsET29OFm1bQrQuk5gDE7XZWVSHwuDuR90cVN2LTGG
	csHlL+k252OzlmRb8G48V1bFUUuLDWlISj8c8/zSh7P86wCho9hh5AqDEt/wvR0EeE8v2ZHk1vF
	r4mhf5P/k6qgiJDM7w/EH+N4rrOvXvWtQqYRggV4S5Y0tsFoMUEBSTtYR9ZpN8PABenQgYK9j5I
	zk5lUa3AHc
X-Received: by 2002:a05:693c:6010:b0:385:2057:eb95 with SMTP id 5a478bee46e88-3857073f2a3mr10087782eec.31.1795316219719;
        Sat, 21 Nov 2026 18:56:59 -0800 (PST)
X-Received: by 2002:a05:693c:6010:b0:385:2057:eb95 with SMTP id 5a478bee46e88-3857073f2a3mr10087748eec.31.1795316219213;
        Sat, 21 Nov 2026 18:56:59 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aaae4960sm312044eec.18.2026.11.21.18.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2026 18:56:58 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sun, 22 Nov 2026 08:26:17 +0530
Subject: [PATCH 04/11] PCI: dwc: Preserve glue-provided eDMA HDMA channel
 separation
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261122-nord_ep-v1-4-6d8839ffa9aa@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795316183; l=1310;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=rD9zOfPOcAYlNN684/JsuvviV/gb5ok1TJTsrxdDyck=;
 b=/lOwFB1qjP7iTr8eSfhVpDz71Nc9Af2j4lHx6UdjaMj/dm9tVfScEt2jnKrs8S68TXY5KV5yF
 KEyzdXp8En6Dfq8cCoXNyUl6qyeeiGruxZavENr+qcudrrjvKu9e4aG
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=OrHaWC/t c=1 sm=1 tr=0 ts=6b0259fc cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX+M+fkCybe4oT
 L/z7YsOZ5pL/Ej2MuTsI2m4KKxHo7lN+O+sn9wkEdNtdg1bqdaOrciwcTlQ6DTP17fkVIuZjYO+
 JLuFCCTZ13B3FHSz8B+ZV5XHhhdjgkY=
X-Proofpoint-GUID: QgRdTNM665KCXDctl3Ch-ey2YqneYAco
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX+u9/iqhb6HZZ
 KiA7aINDU9UUUIE+8j78oq3ZInnqtv+RUKO/+S8YoupAFPUdm68SUsdXMTCyDcLD0LlSkJzyBvT
 MvRrqfvOFxB4g57KFPhWz2Aowteul3i9Gf1LWWH7BhP/5YwzLLw6VMyV4RZfR5+33X3k1h/yY6S
 1e4jFrXR9u4bmgMqUkdVDJc/FXi2olvB++sX351/y6Z8b+IOw8vHgWnJ9NLUeBjegNVLZMGTMoG
 fLHkbCjOnFyiYiARPBMWcNVG3E/iZtDVuUHvV2Oi+htuTN8MiabCcGpsocFXBV+z1Vl0K1P+kJN
 +kH20KiR96s9JrZLStxWP2q+VWMNfBtXr56ozVO88Q7+uflJhqQFvwErn8fPR0Lmavp0TcrQ6Vq
 aD4hJoFE30+KmbA3f2OjbPQC/TXGXOInRxzoA4SiYfDi+yARyYygc4ubYX9pbNRpXamsSIf7nSR
 R4ervnYRZ4aG3wbgJtA==
X-Proofpoint-ORIG-GUID: QgRdTNM665KCXDctl3Ch-ey2YqneYAco
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-21_06,2026-11-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611220011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_185701_953847_5A56BF89 
X-CRM114-Status: GOOD (  13.73  )
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

dw_pcie_edma_init_data() unconditionally programs the HDMA channel
register space size (ch_space_sz) to 256 bytes. Some controllers space
their per-channel HDMA register blocks further apart, and a glue driver
knows the correct separation for its hardware.

Only apply the 256-byte default when the glue driver has not already set
ch_space_sz, so a glue-provided value is preserved. No functional change
for existing drivers, which do not set it.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
index 12f102f48d5d..d55d4213be33 100644
--- a/drivers/pci/controller/dwc/pcie-designware.c
+++ b/drivers/pci/controller/dwc/pcie-designware.c
@@ -1041,7 +1041,10 @@ static void dw_pcie_edma_init_data(struct dw_pcie *pci)
 		pci->edma.ops = &dw_pcie_edma_ops;
 
 	pci->edma.flags |= DW_EDMA_CHIP_LOCAL;
-	pci->edma.ch_space_sz = 256;
+
+	/* Default unless a glue driver programmed a different separation */
+	if (!pci->edma.ch_space_sz)
+		pci->edma.ch_space_sz = 256;
 }
 
 static int dw_pcie_edma_find_mf(struct dw_pcie *pci)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
