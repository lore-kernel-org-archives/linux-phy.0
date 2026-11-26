Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23DF606A323
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 19:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=phXJ4bmZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=KckpE27P;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=gzXt4Zi8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+ch2iMNow2MFzlP+3Z/zzpFPbT6XW+GkZOHFDp3SrNY=; b=phXJ4bmZhrT11yucAR6CcEl42E
	A1tKJf0B6JExb5BpVXXnSveC68j+ii7oZll5PyB0VhONXxDCt7EKP711LFGE3SYZ3zYG9LDHWyyVt
	xnQfSa2742bRluDH57tue6vt5me98XChmexEmzObRsbt+eKrdjNZk0lfJEwLlmmcNAp+a7f41L+ik
	dO2s4Tiovwf279e655vd74yYQcMJmMkDUCCfKMVE37vlnzS9bZerljhwKmVNI8RjEcdvHRIMpqMy3
	VF9qvg5f7nlwj92jk79tZGvm9iG1kyav88JQVHGCjM28cQtF/0mldTlRem7NQjCZ4160ftbeX+wi6
	HRWvIa9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWei7-0000000EDK7-2X0D;
	Thu, 26 Nov 2026 19:00:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWehz-0000000EDJH-3U1N
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 19:00:45 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQFu7Yk2068323
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 19:00:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ql1s6Wqvff45G+O9tfHzNyc2plPbkIqdZSJOZHvJEO8=; b=KckpE27Pnc7JARjp
	MzLs6mLmrBzDyxPH+8dr0RK9QQrlA5YHJ4hihocS4UJbIu36aKKeYt8A6OTwSQdC
	3KyxHR7ds9lYXsZFHBi/OYlf2lrFtkRT9VXywuQHjxV0bFd6J1xvpF7hJhB3Pz4Z
	ucygLQrTkRlN03NBrKunYg+1PRvwVOAtxEtyY3bLhtThVcWOZoGWqVC3Je+0y3YJ
	RdtrwOkiqgwG2Zv96p8a3E6uyuLW/qqiDAudAcTXX2qT92Wwq6FnBuZ9+CdDjSPu
	CPtxnrembLe2oCmgkn2iz0YACPJqp7PhDlQYN3Y+2wL3seP70law+vgCg2UW7Ja4
	HkFS2w==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j662y49pf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 19:00:39 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-1b56c696405so10474655c88.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 11:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795719639; x=1796324439; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ql1s6Wqvff45G+O9tfHzNyc2plPbkIqdZSJOZHvJEO8=;
        b=gzXt4Zi8AHMFwlNkvypzTQfw+qfEq6q1LUdFIBFMQP1XmigwT2dZ5K7NebrbOcWPVs
         7Jda5LCSXgVLOlyFxOBylERlCNlwaDqxTsfawL9o0TzXFJ5+C3MPyvmxSVYarlzWPmpS
         L3ZSpEkSF+oDhqMCH08zXwBzcnQD2yL/mtoTXsTuNu3WoxXSYBb6rjJOfU646b5OPH+E
         c5+ntZXGGkUKbEOSJknn80fwJBig9woBP6v0MybD/1eOcsAD0+Svu0Nf7rHIZsXyrpK6
         4cYR0t1iaPzHZgBNHSdLvzuBWDPT+uIa4sqVIl2eBy92V0PMH6mhYoDFOfrIO179Z+G4
         XrNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795719639; x=1796324439;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ql1s6Wqvff45G+O9tfHzNyc2plPbkIqdZSJOZHvJEO8=;
        b=etKhH5gpmc9GIT0e0AEy2oxM+Q1UevZ+w/3k6mOruc3h1It6aIMNTuX7M1xRu/qq1D
         Otl3bJ472K6PnAgfxDfbrfBPb81sc1iIJ205mEdhFRQklLrzlr1wyvyyq+fvI5344HNe
         ypcPjSh0v9B8xtzBkY/1MBMbBo+qrVZbfpsofwqbhkoZSgcO8qKjdSwaQn916EGqL2dt
         VgPaIuI7xl5gG04/afTP0/NCqxZ/tzMdJkl7ZIMUr50i+/OYZAVvGHGn34IUZOYid1Db
         PSBGkRS803W1CFpQW60Yjskvpq4VFqQYhVyOjEFufdeWs8bWPQ3bTtYmYE7YC3oCUcnD
         eUNA==
X-Forwarded-Encrypted: i=1; AL+hErEdnn/B3irv/tE2HId7sF8Ne9aA8bq5JAYY4IY7AoSwmikPm2fnEPuMrbBbf9NiSz7Y80eJBL7kbCo=@lists.infradead.org
X-Gm-Message-State: APuU4Z+WN9FgObah4PE7TMT5yXvYSBDs0ZPvxpdGIINaPlLrhSPqRk/H
	VNG9J4B3bC7ceEop5LNwRKVMd9Nj2aiMk1Rd1LP1opHLf+BcYHQ8+8n4PZI9geGERc//p014vqP
	QMgK8ysBxRH0AIRnqtL1weQIEAfBPrS9sua3NE1sC92wA04PvRRzX4ACA5P8EjtZRpehfhXi5ZW
	xX
X-Gm-Gg: AZFdTZdWRd5AqHuLgtLw8k8AAZyr0MC/HlEyfPdlCoFycauiwoybRtn7gJuRGAnkx9y
	aQS8wwiaKXGwHSke317IIkPUM7pG2i1Gr9Ivxf0KX2gxeJYInJhMa/wbLwIUcYNabHvAeBN+AnY
	b+d621FRSAutufos/BehuECtbHT7vNeOpFWv6MyKnuXZgVIpyq8x5JO+AQ6HzFfHVepsyf9YOhy
	OQviYA9iOOCCqNVY0V7k87s/52lS3mZ7O8PtKXKW7PKnF8xxsoov/EutLSDqi03Svto13B4Zhh2
	yXKiXzncO6iNkEkX4Nt2jhwxr9HpQBY5v6jIEZQsFNk3Gh6Ifv1Q25wmibt4SUWVp0OhDNpnlwG
	QJntrr5qwsEdzZSmT4rGJ0dh28YryU3uN2m5m8OvFPKHiBmU/nKs97KwBrzpjx7bxyhJ9JKBWHj
	ZGquoD
X-Received: by 2002:a05:701b:4308:b0:15a:9834:73f2 with SMTP id a92af1059eb24-1b55692031cmr22317822c88.38.1795719638627;
        Thu, 26 Nov 2026 11:00:38 -0800 (PST)
X-Received: by 2002:a05:701b:4308:b0:15a:9834:73f2 with SMTP id a92af1059eb24-1b55692031cmr22317792c88.38.1795719638043;
        Thu, 26 Nov 2026 11:00:38 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5567ffa8csm60868190c88.7.2026.11.26.11.00.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 11:00:37 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 00:27:16 +0530
Subject: [PATCH 8/8] PCI: qcom: Keep GDSC enabled during non-D3cold suspend
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-usb-pcie-gdsc-suspend-v1-8-485a08ffdc6f@oss.qualcomm.com>
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
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX4zh+X19uKRD9
 MS7X+wQjiW66BTnmokgxe7p+OGV+uvFG1FZB4URsrbGQRtKkjHkgK//IvL0NNqqngI6wJWZNQ5V
 ellKyMNgXZdSW0SiBLnoVpPgKTdVxLl0x8bW3OAeT/1b/6HraHXR9hUjyfAeyOuFKg6M+JZHNYl
 vX2OEi21PjL/KUapDnsNSyZ17EAMwvXfREbR+R+r7WzHK+PqsyKzQuYIrpRudQiDfZ5vFEYR4mb
 EeDQIZNmBmhmrj+pMqrIUtI8AC2DKAANIY6Vj7gYb6poByhR0Xgcj1KxJfT1ZBNygO6v/kflWz5
 WKmMlDdYvdO1HVcOHt+6wk14+dKnetCdtAMVzXYRX9SPcV1LprPJQjhcRkuV13rnGsC4O4tdbpi
 kYCw96XK4Bs/AWlCXwnpo6HQXOWU2ZXLGMa1Ofcs3TUw8+IiLNp5dNgWuBvJyvTjqsuxjTuQFEK
 LajU99LkpfW2JM4Nykw==
X-Proofpoint-GUID: uDt5OlEA3Tkfqcwnz7qnfH6d-6L7rn1b
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX3rg5FFSouwZH
 g8igoOXZyTGpWn4F19HoaEoyn5cHN2RSCbXItiv5dciGazwHvXNV8bbBtZ9Tn8LuIOkQ2quInCz
 LOhvss8vJ3BZKoFM+nv2YvUHLzWwRIQ=
X-Proofpoint-ORIG-GUID: uDt5OlEA3Tkfqcwnz7qnfH6d-6L7rn1b
X-Authority-Analysis: v=2.4 cv=W/KtxhWk c=1 sm=1 tr=0 ts=6b0881d7 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=qWrkvF7FP1bAQ4F7tlgA:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_04,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 impostorscore=0 phishscore=0 malwarescore=0 adultscore=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_110044_232914_59913562 
X-CRM114-Status: GOOD (  14.66  )
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

From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

The PCIe controller powers down the link during D3cold suspend but the
GDSC is required to be kept ON for non-D3 cold usecases.

Set the GDSC hwmode to true for non-D3cold suspend paths to keep the
GDSC ON during suspend since the link remains operational and the
controller resources are still required and set it to false for the D3cold
link shutdown sequence to disable the GDSC.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index eba1b2cb30f0a22b22a40aaf2ec75cafc12b054b..a4cbd7dc896e5472dd2cfda3846c6ff38cf34ef3 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -26,6 +26,7 @@
 #include <linux/pci.h>
 #include <linux/pci-ecam.h>
 #include <linux/pci-pwrctrl.h>
+#include <linux/pm_domain.h>
 #include <linux/pm_opp.h>
 #include <linux/pm_runtime.h>
 #include <linux/platform_device.h>
@@ -2495,7 +2496,12 @@ static int qcom_pcie_suspend_noirq(struct device *dev)
 
 		if (pcie->use_pm_opp)
 			dev_pm_opp_set_opp(pcie->pci->dev, NULL);
+
+		dev_pm_genpd_set_hwmode(dev, false);
 	} else {
+		/* Keep the GDSC ON in non-D3 cold usecase. */
+		dev_pm_genpd_set_hwmode(dev, true);
+
 		/*
 		 * Set minimum bandwidth required to keep data path
 		 * functional during suspend.

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
