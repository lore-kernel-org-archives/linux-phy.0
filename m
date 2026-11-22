Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56258606A335
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 02:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VHGISrvW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=RQSI7j+K;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=TDdCV3E+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2ktmUwfuT00O60qHcl8TPSoJfIt7rHGTav03MgGllmk=; b=VHGISrvWDB9I/5nrKT40SIT6yi
	2VDvqWvRwdLVS/KHWg6XnAGYmvhGdd6A3LRs18J9XXwr+QXOBz4Ht8mL7FOeSXSp0GIozpEbqD9+L
	eOAV8oAY3kNl3a4VPH4TR3kLdhxrBIFEhYNzIA8vzhGlHcG8giAs/XdmDfOvnQX1V6hTUXWNryk9Q
	Zorkbdqi69B5ycB/35KcIZdTRcDyDSYXZkgXzfQkvJL8hrYA8nyk6PKE6G/dbbdE7Q5Lg2VbQeEqY
	VRAvMHxbmYwRn0UZJMuY2Uc+v4fuUSesa4Y9kFzZCOxBv64UfQc6xUk5AMeckn1Wfa7Bs1UV7h6+s
	rpTZs9lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxkv-00000000h5Y-0NPP;
	Sun, 22 Nov 2026 02:56:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxkt-00000000h4k-0KrJ
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 02:56:40 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AM08qti2174595
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:56:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AcqIKO45VLpChEWwEL7R1Lp2+6hXNgtElEHhQVWbBZQ=; b=RQSI7j+K5A8pmUvd
	UuJgvxgYgSLpodMd+K0ODeH3uJVk5686TTba1lHpmBjptUjPztoYxHh/rK58ULIK
	iAx21OezOkFDDMGqbL5XO/zkRy+RHF3bcOl81DWKbMlYbyy2VzYIBFKEKky6AewB
	c7D3PJbKx6Kq1piJ3THI0H8NTdXHu1AeUPBRxMSwKlkQZ5r/xriANaSj6iEE/2Ih
	1SpDdKJLHBhzP2ctCnPGMOOSgE/rocbd6qi+X3SufSgNLJBqOenijFVVICMt1Y37
	sZ7yPLZ+AxGEGqQ48yMUfzyzaLlXkqudPk6Ahxv88jIAc4SNMQB3AyUmA6qH91PR
	AVfNyQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j328rtq2q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:56:38 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-370230d93efso7154695eec.1
        for <linux-phy@lists.infradead.org>; Sat, 21 Nov 2026 18:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795316198; x=1795920998; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AcqIKO45VLpChEWwEL7R1Lp2+6hXNgtElEHhQVWbBZQ=;
        b=TDdCV3E+oX9FMSDH95Pxl7BBHOJBW1RNeujTOhUi3sCuV1+MvkUOMnp3sjDE69nOyQ
         u1G5X8dpJ4EwogmIaT4oIDtUDcN6cBINL4ZFaSN4ZLzTTwiqgb3h54QogcT01O2+0aDH
         t3ClH7WmSSTP4zbTjk5h8WoUK672nyenUBMG4jVuxiJKb01rrSY1J4Tl7ggJJy6uda1I
         xm6M48P7D+12e6YPf8RxsoU0o2CssOvL6f69Me7RiXgsCQl7gwzqHkOB+nX6IUu5XojE
         otUcab5+B+G74c1wsWXBWxtdWaoG/P+WcvRMOs6Y4PWwmdwYFTZkLtryfNbCTWIqCl+s
         MNuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795316198; x=1795920998;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AcqIKO45VLpChEWwEL7R1Lp2+6hXNgtElEHhQVWbBZQ=;
        b=Fq2/IVe5Y5hcRr3Gl+LOskfGYxoMlvRIIQKv2dUyIhQNmMfAME8VB22NsCOMUVbkqs
         zVpTsXA6mBi02P2QuPS5h0TKwr7QQ20QBhQS/g6rfZLPYrg1Nqr9BVXlx36PE9HVF06x
         kOvwjYdzS5SAwpjCZJfUo7rkS2z4SFlxNlQJqFonoc8GTblLT1TsJpGcVAFKSN6W4RIM
         PN4fCL8ef+HdUGdUnPRAjuPgLgML7lMFUKiZ4LucjhBfv9WD/fMSl0SCa9otBgahQ2QM
         tULShcS/+PMyhoKTBGAXpPedPRAiokLupXwZIH93Ze0gKDZ7qdOXm67YktBjMmgPCcJa
         lYtA==
X-Forwarded-Encrypted: i=1; AL+hErFqbSyww+26JnrqXZnC4lLIolUqYDm+nusl1NwxPARcpUq9pvDTGrtGTXTq3l/iiMnKCQ4OqxLorv8=@lists.infradead.org
X-Gm-Message-State: APuU4Z98VWTQJcyLYLTb+LwV9jcN5Dp1fXopRYeHBT/6JiXszdIORjWc
	Hp6x9pJ8Oa/xCXmsAdPiUH20DdsR8YQBCL3JLb0+Gk8Rsp7awttGsNLExT8msRcuLcCjvFxHbX3
	Ue5y0hBPt0CUFvA7arajBhH7J9np6UzCTy9/XjOwb/+BbPFQiL1zlIYb0l0g3+3yuqyp7
X-Gm-Gg: AZFdTZfTn2UcQpo0VkvI8OPibgnU0lNSfnyc5F8GqR3FqSlnWzKfKfD+aeUsQ6EnVSH
	xutu80ciJHk9FUXg7kKlWQOaS4qZE40eHUWTb4aBesNnAoVlj2+wM7VnFS4b6wanzVzURTPoWJx
	+Qomy9TS36jI+MKZo68mRWyQEHYab2scrmjc+NbV6dTgnYtq4f0jQMUgznmuk7S8Lx9rxFZ3FLN
	tujWJZZ7lt3H4RNVITi6DDKtk2iCtYHX4wyeRhrObSglCArcBMcjn2n1kqunlObp6r80kIcgIY7
	dLTi8NC+IK5EpjotZGnqOan5SvFRQ5X56gRCH4zBjysnotmC5advmcD7Vb5umw50F0f2VO3XX1P
	YJfcxFBe3RLuZJ/+5LMN+wg4agwgQSWFU/PoUumjZgUbEx/lZWPCFhI30dMZH1R+LFo64q7xArB
	J4ofWlRbJO
X-Received: by 2002:a05:7300:d788:b0:386:83e2:a8 with SMTP id 5a478bee46e88-38683e2019bmr6001427eec.40.1795316197961;
        Sat, 21 Nov 2026 18:56:37 -0800 (PST)
X-Received: by 2002:a05:7300:d788:b0:386:83e2:a8 with SMTP id 5a478bee46e88-38683e2019bmr6001400eec.40.1795316197534;
        Sat, 21 Nov 2026 18:56:37 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aaae4960sm312044eec.18.2026.11.21.18.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2026 18:56:37 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sun, 22 Nov 2026 08:26:14 +0530
Subject: [PATCH 01/11] PCI: epf-mhi: Pass the actual number of MSI vectors
 to pci_epc_set_msi()
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261122-nord_ep-v1-1-6d8839ffa9aa@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795316183; l=1340;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=6lmFv0LMj1kepMVfDNDhSTwXYq+rLdkqa0JXEDLBBAw=;
 b=tnhk8AOWx876pmrvroA7ZDRtfUiwnAUBPSnRNygL6UV6R/OUsYeZ7zAh7AZIjO3nYJCs9xbPf
 pQ7msA7ylnuBQdZX9/LqbRBB4npuNlgQ/QymPj1mWjJOZcAVYnUpaxl
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX0P7otW1HQmhI
 HO6rl4jK70hjHylNY8xtA1GCokr6OUiIrdRZlbU3DpoGn4Z1Xcn02+PSAAV1CoRoc8oKn6d5yfN
 E5oBGZ8EobXUoU2Aa19Jj84+uobJF58=
X-Proofpoint-GUID: CeRJqtfV51Ah09tQ2mK8sZmQtZvhqZ5n
X-Proofpoint-ORIG-GUID: CeRJqtfV51Ah09tQ2mK8sZmQtZvhqZ5n
X-Authority-Analysis: v=2.4 cv=c9w+0h9l c=1 sm=1 tr=0 ts=6b0259e6 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=-BGyM8POLA_osPWRVsoA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX43JixCLwJgdL
 QZUGr+8R4/elrqnlZt2OHcCDyg1ne2UB5cuEfZIRwgt2RCTPLyVa21qumN+bc5tjYEAWjTX9EEc
 JqcX4pBfTpqR1xqc1gAU2QGTjhXFysNd2eMowxxng4JrJJUSAGQAsSq6sP7H1jzHspCu8gpCFjI
 SPX4irM/V2euuVCb/7PB3Ys4i3osrxgnM8EgLvzFn7u9wQEVko5910a7a04AOQ7kiucpDKCUqEf
 K/Yp7T+tmiXNgBiJ4UPl3MF5SRJhpFouKneeQfs9sogfVO7Pl4Tu2qAaC+0VDWgycfVRZ60y2uN
 VmH3xjvd4Ig1LtSH6vX2hztuSIl99yhoAzn/c2vY9kwArCXjmZf28K+C6jGPD4zvu4LRQB7Gb/c
 yEGoisxZ+UGwgr+rU8KDAhv+I7+Tahn9/kY/agOUlbaEmNiU7BifLlAv5/KsK6uOJ9t3vL2RMjn
 W30DY2E3diTnBAJSaug==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-21_06,2026-11-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611220011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_185639_132286_2CE900D5 
X-CRM114-Status: GOOD (  12.99  )
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

Since commit f62da6e7270c ("PCI: endpoint: Align pci_epc_set_msi(),
pci_epc_ops::set_msi() nr_irqs encoding"), pci_epc_set_msi() takes the
number of MSI interrupts directly; the controller driver encodes it into
the Multiple Message Capable field.

The MHI function driver still passes order_base_2(info->msi_count), which
is now encoded a second time: for msi_count = 32 the controller advertises
only 8 MSI vectors instead of 32.

Pass info->msi_count directly.

Fixes: f62da6e7270c ("PCI: endpoint: Align pci_epc_set_msi(), pci_epc_ops::set_msi() nr_irqs encoding")
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/endpoint/functions/pci-epf-mhi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-mhi.c b/drivers/pci/endpoint/functions/pci-epf-mhi.c
index a633e47edf2f..52cfffcfd5ca 100644
--- a/drivers/pci/endpoint/functions/pci-epf-mhi.c
+++ b/drivers/pci/endpoint/functions/pci-epf-mhi.c
@@ -730,7 +730,7 @@ static int pci_epf_mhi_epc_init(struct pci_epf *epf)
 	}
 
 	ret = pci_epc_set_msi(epc, epf->func_no, epf->vfunc_no,
-			      order_base_2(info->msi_count));
+			      info->msi_count);
 	if (ret) {
 		dev_err(dev, "Failed to set MSI configuration: %d\n", ret);
 		return ret;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
