Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9C47C624DB
	for <linux-phy@archiver.kernel.org>; Sat,  5 Sep 2026 15:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFfZBlSAEHq/aEETRv6GDt0R+gKGrIAPoI1ZyrmbFaQ=; b=dRDLgqrgSj4r6r
	mC2RwXly8rEEbvtbVTzwRTyx0mqjKkLxv1/esb0vn1GXqMF6b/0Yl9CkLfaDGKmG8i5oWrLekg3dD
	WZwMxVzn8dAt4KX4oOKR77hpirBE8D8omIbe0ylXdljqCV1D2ep7KBgcbzaCXQT70WEawP0i7K+1a
	UYyZ1qVi+Sj24fyqzQQjvJhEkRPGFPqXS7gG7CY1jPxDDusHuLlllcqSqs9fv6U7P7EoISZLWyqH3
	lrBo7IKdbZW2ua2Ym3lFEDW7HxXUicA7omHCs4hK0mvWbEEFqIReiQ4AmJdWKbD/SFQjh7DuCqq4Q
	RDqsP8GWlBA9TvrJJWJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sKr-00000004CLM-2jEf;
	Sat, 05 Sep 2026 15:29:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sKp-00000004CKY-0kAU
	for linux-phy@lists.infradead.org;
	Sat, 05 Sep 2026 15:29:40 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 685EgmqT3165140
	for <linux-phy@lists.infradead.org>; Sat, 5 Sep 2026 15:29:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OYLz/v7Lr6tusPpXAKBs3opd3cEExdBka0TAqYd+6kA=; b=fNMvRxmL4WYPp1Nf
	jZAxHjZiO3kYlBn84wGxual14h3D/qeIJwKqLCBSspQaK2KQPW5qWvDMDuJJrlXN
	KmerJVA2bbybOAeSd5hz489emuX2Gx8755pRXBXaDNpV9/7DWGNT7V4FdMsV+9ND
	D7bkFQ7pB+2lRoK9Q2qig6+aWKT2s2bUvqljB4krBNNd2UlIMTmghNPYfjtIw/2w
	hlaXOo+Ov7bLUsNeURfNHbdZmn6f4C9y97dIPTWh+x4FB5Cpqj3ak2IDhPykDJX+
	TaejDrcUOJfdFD7jYTqKwRBaHQv/vqSvsAwg+QHF3NIqkidUqrEqGY0U6/soipeV
	MRDfIg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ggany1eww-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 15:29:37 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-38dc085b0a7so3548361a91.2
        for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 08:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788622177; x=1789226977; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OYLz/v7Lr6tusPpXAKBs3opd3cEExdBka0TAqYd+6kA=;
        b=ULJOd+QnkLY1+Tak8/KbJSWNOUkcb1gDecrTNuHVhVlksGLQeuNaloCRlJ76mXCGjI
         Mflmkc/JwhY/2MMdTznt7aebuEEeRqs9M9sgyRn4peqQ871ah4aCfEhXkZhlXZFwrNrY
         /cfe1Lr3dzkS07vMZW6j/UqMaXhbggT1EBm5APbKxKQUdoMSy8JAQw3vyLyniHSlykbx
         sAmrCi9yPMjdcpL58Vv3Ud53TJpumkbGCGEz4sdRGT2tomQbFXQoB9l1TwCptUeCycIR
         Kllmz8ZLr6pr1EArioN7wm0h+Qlb+Oz2O3mW4QH+PYReWT4014cyjs2jHhpZhn4ckTR7
         jKEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788622177; x=1789226977;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OYLz/v7Lr6tusPpXAKBs3opd3cEExdBka0TAqYd+6kA=;
        b=IJn6mfwnJATaQgsfOuu1PEHOei93Pw8TnLsoauuvaibhxcn3DnIPiz3Dwpg9VatIe/
         hcW16BeFWl9zLnGw9Uwyn4Em5FbSmv4Ky6/Iqi2nW73L+z77Ja0ISvOAHHhq3GE87Vsy
         wxULCXMGdhubwVEvl9Q7P22tweGeCZTzUBJ+ViZoOFijoioGV29zrzPkJv5f4iN39Xi/
         yve8FJ1OTBc5TeHYUSefxK88UQCrb+EZ9mcvSJSYMpYEjtulZDqt5UKBihmantLwmWPi
         yfz5ioGu74HyfbA9XeeaSyd+CdJqMew1k3ffMsBZNAOf+PnKglY1L184zQSb5lJ8kGqu
         m33A==
X-Gm-Message-State: AFuF++ly3wrNQWwnwGFs2MYat0Vak/tpLhtu3+YM4R9tL884cWPbEFBr
	EaMLUjYCnKf2ntZYXST0bb1seIsS9xHjvagPt2rnZwilRf6HquxgENVIvaNoznCJF25mIu41Uj0
	ov6PrI4gCy3jAgH57QIBkkFwfkm7jFJMZ37Ce4d2qRjzfsSriLy8CY3oDXdtG83+4XuEW
X-Gm-Gg: AYBFou2vuwF4ECRdBknN9wWlo/NUOezgIsb3gxVhQjJSs+JdtC6bIHl2jPtD7M/Rc7U
	Rz7XZ9SCIlLbFLr/ivQU93U1iPCr5kgLQ2Ee5u94V3p4iP2GW6tL5rUZMexAW/bcouhlo3bvWUZ
	oYWLyic9/A1nybfeKBmWyXLfDDGvnMHLGd9iVHzU885Z7GcM7JkiSUj9iLYVRY/4fLrduRf0ecd
	A8DFoiNPNA80h2d16VPBsu37MkCDOJ/QkeOyMSjiiBFuq1uao6w8V1N5K+XXorFcnjn1BQOXkMW
	i5kjotmtVoUZU3emC0P7D9uPTbZDoqCISyS0zM5VakeiAaW3PszZkWu4O7pNHT4rbnNOSqdfzv/
	knyr043EFYFuGxUBjCOWf93H79eBcL6IdaBFGdSeO2IVrcEsGs+aHYaQ5/5/heuqhLxj0DA==
X-Received: by 2002:a17:90a:e7d2:b0:381:1c96:829b with SMTP id 98e67ed59e1d1-39b260d296cmr17826460a91.3.1788622176854;
        Sat, 05 Sep 2026 08:29:36 -0700 (PDT)
X-Received: by 2002:a17:90a:e7d2:b0:381:1c96:829b with SMTP id 98e67ed59e1d1-39b260d296cmr17826389a91.3.1788622176272;
        Sat, 05 Sep 2026 08:29:36 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm23592635eec.16.2026.09.05.08.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 08:29:35 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sat, 05 Sep 2026 20:59:08 +0530
Subject: [PATCH v7 4/5] phy: qcom: m31-eusb2: Set phy type to EUSB2
MIME-Version: 1.0
Message-Id: <20260905-eusb2-interrupt-v7-v7-4-820cf5377a70@oss.qualcomm.com>
References: <20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com>
In-Reply-To: <20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788622149; l=998;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=GPrSCfl0Yj1JdV2FeMmFmQLmwm1cIxqJOqZ+rh98oHs=;
 b=FPapLMim7Tuu2xVBDLSJ5NPTIkisSUpeapsgsPQC/tESB4TSoiya7Y9g0hnCJsq9IuL0xtZYA
 Gvtg1j8YxjhBuh2cdiwuWDugjf0l9VfapK0TJsXSae0+tSNc/4d5gmc
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Authority-Analysis: v=2.4 cv=X45i7mTe c=1 sm=1 tr=0 ts=6a9c3561 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=jIQo8A4GAAAA:8 a=EUspDBNiAAAA:8 a=GXgYrK0FegosRrsl_UwA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: V0SrPnB_2InVQ_Pqy17QKnLp_si3ydgM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA1MDE3MCBTYWx0ZWRfX0O8TThLC91Xw
 TZyaonhmsHRx9RaJ7fhJc0fOFLQbb/Un3hy+t0Ku5GLQwPZru9/ZHWzKvAJjI44kWVonwGV3tHp
 dZ24pQsxvn16x2Vm3ZjkHodsn20kLdGZxXRgXHDAUp70xeOAhf1NmBKtA23I0cNRD2+DxEXct67
 HXW4hQ9jIwsYIl4u7E3vZUNNHTfmhBUhjos4bdmtqRrbch+bobe+z0VnnuzssyUPBgcy0Wba4Vm
 pbtBLZ584orJrya4a9vY7ZDfyPJ9l/sTl38BBFtHqZXJDC6KcJrSGLsTrSO9Rz8uBo1dfXnDbGp
 0Uwykny3/fMjGp2DSOeApB2zagpx/NkbzTIiJPN+LVRvoeaH/bIHp7qqvCq3VrSHnyp5hqkcwLS
 hK5zNCBZ4n+rsqjbFVI0eYJjMt9zu9Re+QWNtoTBZ+l7KbcNBXNTz2ZRb3M2rPSVQhVdjQmmulQ
 70X9YowEfEyo0Hfa07Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA1MDE3MCBTYWx0ZWRfXye7UkQnyg67X
 IQeepKLdmlMdSDbUrRojj1tcKgmiR+nC43UxcELwvJpwN6lS0czzAhYImJP2NVStJmUpB5n4uGC
 PigYwCK5bLsufGhFEC+1+Cz0PDcqHk4=
X-Proofpoint-GUID: V0SrPnB_2InVQ_Pqy17QKnLp_si3ydgM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-05_05,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609050170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_082939_499499_36B9330F 
X-CRM114-Status: GOOD (  11.77  )
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

USB controllers like DWC3 are agnostic of the kind of phy (USB2/eUSB2)
connected to it. Set the phy type to EUSB2 to let the controller know
the phy type when queried during its probe.

Reviewed-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 275df38256de..72fa71003fd9 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -277,6 +277,8 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(phy->phy),
 				     "failed to create phy\n");
 
+	phy_set_type(phy->phy, PHY_TYPE_EUSB2);
+
 	ret = devm_regulator_bulk_get_const(dev, M31_EUSB_NUM_VREGS,
 					    m31_eusb_phy_vregs, &phy->vregs);
 	if (ret)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
