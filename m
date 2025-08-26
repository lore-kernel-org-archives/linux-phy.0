Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89A23CA0EFA
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 05:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GIUK7PDiqYtRQENz5FZliAFBVM4ILOqbWIFgUDh6Eus=; b=m4C+0kXUJwfzBo
	Pg7+S/D0DuO/P+yu98YswRcmss36WEot3SWPWyI5O0WICpXB6IFUSXEGcKVpbWprB/C4ttCr4c4VN
	meKJx07DQ7iQCNwl7GgwGcxQSvrBE+jsCJcM8hhxaxMSBggxvJvEdL9tDPRfnsQYokQ9bWsmlQJX5
	R7WYfJ8cQ1Il48SRvwNgGhCN12b2saU7vRQ6v2QadUCwkss8H8JOvLd2BO7HLf/oA+CgKJVtRElwI
	dOW0KH+t1rGMfbpJFf39XA1lDC0MHNfANXX7Ct1JfK+geMaz+zHu9NyedHB/NPZXO5ka3bR2ah9mx
	PyNoh4GlLdbnfQ9Bncmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqm59-0000000AZso-1NZh;
	Tue, 26 Aug 2025 05:18:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqm56-0000000AZrj-1g03
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 05:18:53 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57PMjKYk027881
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 05:18:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IRp6cdwJoJAiTcDp3nWelrKASDmDxqau3MdAjXBSkaY=; b=R1C7iyelGJpNwWF4
	yIT3NNE5PL65EM7mgUDZMCcFa5LW9FOxpSbyxwL9YO1je2oxifYQ5PjqG+Vwi17z
	wCRo6QxuuoCuQ8HfW/U2hYR7an1Z5oqFzhR3fEl497r6DvrdHc05noPi43UyY4Ij
	R+4cNxmPys5xfecPrz6YPfwcd4XxSb1G0FfHfzryAccL9rPW5QYv0TWf5AI8H+vC
	oi6fsBbvFUTxPmqmKHQVepMERUz3w0uyyeHivMdOFVt2EfOAtwr5Ur3HE+Vjkusk
	MLJn6XMJQwXgNm90sFZr5hOdHoaoyH0wu+W84LZ7m5BH13nmc/tUuZ0RgQ54J4WV
	tku+sQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpesv0s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 05:18:51 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-244581c62faso64473895ad.2
        for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 22:18:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756185530; x=1756790330;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IRp6cdwJoJAiTcDp3nWelrKASDmDxqau3MdAjXBSkaY=;
        b=ItUcrdGLCvBF31MSpyErjr6dC+yekjiUQxXBYFGDRJM9WlJHtuY2fU9Pt6hk1hBVMD
         KjC3YKE6vdr36GYbdbK8gZcS5u22fp87pR69NJOO8OU/CpEwD8YjEpe9iJme0oTBTaCd
         ijhK90T26vMnDA1sjI9xe391seY3+TWGLc0S26e3ezOMNE6Gg5xDULpvC4Fo2FV7wtcY
         1tWSH4WZwSmG9LQVN/mhSw9xG/5UcIVroUeW5RulM5giWFvScNhzpcR0R2uf4TJ3RxXD
         oxqh2ZZFtAi42d8ugSLryILTFZErzfiiJFijEKe+ox6xrTL91ataNN74DN2PPYw8X6d4
         XC4w==
X-Forwarded-Encrypted: i=1; AJvYcCUw4g5vwO+svWllUNyG4YcIDaqBN993aUBVnLcGUvpJEgZHFfOwcfO5AZQzl33TkL/bypGZR/h2GEk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1GOsZ5iI4Rtsu0aicY8whu5xidn2518L4WJtRo6MB8vTBy9z8
	fo+aYQevFpypsjtFK2hSbhleqK32vzL3kVAnl3tpIzLxfiMzFQRi0A0G0rWDRbxCAxthV5cL6yC
	+UI/mTYrPFuD9qtWMoeH7wcXSA6iy5PT1fQWZes1FSBUpGf1HTURMjNQYJu0dcAVi7aS+
X-Gm-Gg: ASbGncta8ga9dJZIt5b1uniLvZUuB1PRb/S8KryJjtdrNFEf32IQa+9SDTXFObeBY//
	fRZsx6Q25lZhx6E4Sk2d6ohmTj+Lmqnu7847AnNxmdxWDNhjHHJRxOqh1GOnUdeU8EUPNMMEXaa
	jAQRCwJ/dZwwAie+YfghSCMrJcceFU5/1NwpUv+Dr1MTJ/w7j48EECNPk0p/5+Po2cFu/lee1mw
	g9V8ELxX1ywdcd7eLz4Isx0kyAjFVSoaNiS1JMikasbajplNShme6xmr8IY4puF813i6Rrcjxdx
	fYpidqsKdTSrxpdsqSgdEFo43AF/KikqHZSq4s614BZswgGEe7XQSqg1z5Pz6van0sp682ZI5ic
	=
X-Received: by 2002:a17:902:f611:b0:246:60d4:8708 with SMTP id d9443c01a7336-24660d4883amr174590585ad.49.1756185530322;
        Mon, 25 Aug 2025 22:18:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4JdOmaJA7OmHsYMG/CkXVnmja78fd1yAOoHORZ5cWVQm1Qx961LRCZYJGnATy013N+WjhYw==
X-Received: by 2002:a17:902:f611:b0:246:60d4:8708 with SMTP id d9443c01a7336-24660d4883amr174590205ad.49.1756185529841;
        Mon, 25 Aug 2025 22:18:49 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2466889f188sm84348085ad.146.2025.08.25.22.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 22:18:49 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 10:48:19 +0530
Subject: [PATCH v2 3/3] PCI: qcom: Restrict port parsing only to pci child
 nodes
MIME-Version: 1.0
Message-Id: <20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com>
References: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
In-Reply-To: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756185504; l=1205;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=wlA+2w9i3rvfjzC5fz0O/R7zRgngreodUE1qsXoUZew=;
 b=UwcfXS73nNRO2s3mxdpzLdlG8KmBpuaS5B2msciN19rX7pkriIsewIyloiqjb+cZUtUFg0Qm8
 7BxFoRtAt6xACSVgIYAa6M0tFapi6WTspE4kKX4sitpOfD9WfrJ8I4y
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: hgIj-GnkaBuZTPq36LyCDrT5KjTWz7bL
X-Proofpoint-ORIG-GUID: hgIj-GnkaBuZTPq36LyCDrT5KjTWz7bL
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68ad43bb cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfXx6oCV8FO41TX
 B1+SLws+jxKznShJrRAdyhpZ5s/I+RUjUfP7lgZgYXHKkogaXDQeU1INvW5UtH+2CWpUuBwQJuc
 8C9fQJtdapTMlK9WslkFia0WzhUPEq1bx/0M4stH+pxOxkrOBDx9JQf56HB1LUE0lTSByXwCrSN
 6PgZ5lGN2s8JffxhdA705PFtAfyIng9xWSoTFw5Xvn6bLVayyWLnRCNu8vJx/l4YZXpSlO9Qyvb
 UhYTa6DnP4Ev/2hCfr4C9HQH9G0sT56JMgyPkCyxVA2mhuLEPrigRT3Jo3yt4bLdl9qegzGnXwx
 99naeJjEV9MU4H+Z06/HK99NEBeX5X3UOBnXLhRUipr9itXed8KatAncHDWIHYkKhxUtfXMIS/G
 Jo9/nQR/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_221852_565339_F12517F4 
X-CRM114-Status: GOOD (  12.35  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The qcom_pcie_parse_ports() function currently iterates over all available
child nodes of the PCIe controller's device tree node. This can lead to
attempts to parse unrelated nodes like OPP nodes, resulting in unnecessary
errors or misconfiguration.

Restrict the parsing logic to only consider child nodes named "pcie" or
"pci", which are the expected node names for PCIe ports.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 294babe1816e4d0c2b2343fe22d89af72afcd6cd..5dbdb69fbdd1b9b78a3ebba3cd50d78168f2d595 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1740,6 +1740,8 @@ static int qcom_pcie_parse_ports(struct qcom_pcie *pcie)
 	int ret = -ENOENT;
 
 	for_each_available_child_of_node_scoped(dev->of_node, of_port) {
+		if (!(of_node_name_eq(of_port, "pcie") || of_node_name_eq(of_port, "pci")))
+			continue;
 		ret = qcom_pcie_parse_port(pcie, of_port);
 		if (ret)
 			goto err_port_del;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
