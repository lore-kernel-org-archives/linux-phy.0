Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E122CC624DB
	for <linux-phy@archiver.kernel.org>; Sat,  5 Sep 2026 15:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N86w7NmQGnvQMUMOdlsfIBHl9FFaYrwtzZ52rzfOPUI=; b=GjFgHFKNX3Xk+W
	1zK+qpIpZ6pLobxpXlFc4CYX1YVvMX0ULB7V9fxEnEilzDE1LgDTr9pu+LGP4/X42v3EljmQwvwh+
	eZSoWCbaU77Rk33KU2rWgq/YPFVP5ygto5L5+nplEneCTJwNFkB0+aEHCfpTvnMO+AlRbQlQzzh33
	T5pAk8r98SY9hQUmUVKwSHNqY213LXocV+qxb+Rj8Es6fNFHdKY5N/qiFTFI1AZ5JFqaymu4KQzpN
	WX8dvbSH1rt/oseR5QJZ4Id8rXVT8Ry00UmZV2rfvhLVzAqPiBouHJQub0kCXhKoDWkJOictlyZip
	WZ0KyPo/uiP23Z3dr1tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sKm-00000004CK8-2SRn;
	Sat, 05 Sep 2026 15:29:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2sKj-00000004CJR-1yx2
	for linux-phy@lists.infradead.org;
	Sat, 05 Sep 2026 15:29:34 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 685EioWG2004283
	for <linux-phy@lists.infradead.org>; Sat, 5 Sep 2026 15:29:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YhDPHYvbCWK+ZkvP3pGp1ZgPvAm0ynGerHy69+0k/2k=; b=AZsaroV42QA6Hik1
	uWNn6336NQJKpbkq3M6nRC+Z7y2XzLogIRLYf0npveW+7swy+vA0xWK6IRrzVL4H
	Hx8S3VmXnYT6KPuhAqO8btgH1o4mmjn1fbTWYpnQJBfh1LeRSsqfgDd5SGZjc3WL
	umC7dlLvgMnIHQZpp7YPTdKCEzjaCT4PgXCBF95IiJg2766TQTzlGnzaH2ARMo+7
	iOJGDZGT1YF0+beyK9BZ5KtoDiUd3tAD4X6gIH00phn2XqmpN1O9Ud3xzwry38FQ
	tuHSq5bvkt4SJQzDNdNf/ksqRWCBheqFvect3z9FnVijda8Xn48sZ7L/SQVuTkIt
	HJGqOA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ggbf8heqj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 15:29:32 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc18ced1a5aso3384385a12.1
        for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 08:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788622171; x=1789226971; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YhDPHYvbCWK+ZkvP3pGp1ZgPvAm0ynGerHy69+0k/2k=;
        b=SNqL0G7YKPB//nKAnh4znZJdg2ymH3syoLCVtv5gb6HXVZvn/0OJPpUHxPBvOL5tCw
         91dRXazXTB+bS4BYp+tll7Ul2+aXXTnd8HN5npl+5OZb7VTNs+W53oRV5Juy6h+MgkEn
         5NbLLlIAON4q7Fop9n8U82GJsynJl52HdAnVqhTgOIWkslDsoNUW3h0J0Eu3NC59Q0ae
         PD6r8WkoI+VRKIJNRmh9FoCBUiSWOjKC6j2wWWZ+DYER+OoUvodgvo9Wros5E0yajQrE
         en5qB4Mkc14+yE4coXvnO19wRPNNJyaV8gWC/gHzB3YnUJfgo3h7PZOKK2AIYkG0P9Ro
         k3tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788622171; x=1789226971;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YhDPHYvbCWK+ZkvP3pGp1ZgPvAm0ynGerHy69+0k/2k=;
        b=ied0DbHdkjqpTjQq6AxxM0MDQ7U/8Ct7sflO0C10VTFPMcDICmI7VSYdIeH4RLxvtI
         mDBvaTlovYviE15HgMwqgrNiNZty0dYS8UvgZocwD3pnv0n9a0Q2Gj24qBJxhHlhxCl5
         MXollNspIFE87iVTJ56lLsMOt2fSl7KSCNwbiEYeqwRRjZ+rLq/wVYjmMjfY2r8rSXQm
         uko03kDyDrQWASuSTqpzaTdVbYl1wEgYGLO+NUOTTyDU4wE+qIqUByf0ZATJRORbER8A
         B6R+bmzYYvFLhFeSClYZKUutfiUiDq7YF5TOsm9YddZ+hrrTpMvXbBsMfbTlFDDvJ27B
         AjTg==
X-Gm-Message-State: AFuF++k7Obo57KUGv7mzbnyalMyRsJ6IE/5+D4rPi1in+rxmYkWFxQz2
	KtDprZOxeUC7OkHfP99DOihd4kcwO3QnkwLxx1ZpKfsrvlI6MM8IB5LOFIwa6xEVrQWm+vLKRnG
	ljGve20IxRMKL/YsN+uyg/L52Jgz9McaAoMGAJVp/LADs63i596Jab1sNlWLaDjThj61l
X-Gm-Gg: AYBFou3rhUzb2T4YW0HP48OALDWPugfXD6OSxoQyMPZctWT4j/3PvSgazVYOhsG+LWl
	IcD3WTgzaZtcDuC9wGqxLLxRg4jH08OMY84Y5eHL+i2JG3Y6xgpyfJGUMealVDQhswvNr8QO6VD
	v/0ZerV+2pbBc1DaajSBROQ8gKUgOlcNnKrPzWgw4cgHmdtgleTZQ5pn0pf7/lNLNw8WR2+AbJS
	PKd9UBuqjIgBy4GVfgHvksahsc2oraVo5xjqHksvnZ8L0KQ6aPMPuVOeQjH9f60Emobk5PqCwtl
	icQ/7PfgGPxPa9yzWmH5Ln6T6DoeE5eM3HL1MW+go3mkgu5RYJzt/+wfulK5LY8kFvtTJTgqLCb
	Wkrxnv2VlSlWPCX2aVMsvE8LJ3vuaZi5dO4DYx97okzdQQTMK30H3tvQfnX3hSrp6Uhjt6g==
X-Received: by 2002:a05:6a21:1788:b0:3d3:ae50:97c7 with SMTP id adf61e73a8af0-3da3a16a519mr20675427637.20.1788622171547;
        Sat, 05 Sep 2026 08:29:31 -0700 (PDT)
X-Received: by 2002:a05:6a21:1788:b0:3d3:ae50:97c7 with SMTP id adf61e73a8af0-3da3a16a519mr20675356637.20.1788622171138;
        Sat, 05 Sep 2026 08:29:31 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm23592635eec.16.2026.09.05.08.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 08:29:30 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sat, 05 Sep 2026 20:59:07 +0530
Subject: [PATCH v7 3/5] phy: snps-eusb2: Set phy type to EUSB2
MIME-Version: 1.0
Message-Id: <20260905-eusb2-interrupt-v7-v7-3-820cf5377a70@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788622149; l=841;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=ny6Hrk/6zrJ+j5PBR/sQwQVZSTpedg6BrsNkeWMaR/Y=;
 b=PFGi+VuwLJietQ9FZZr5Z1aJ+X03Kr/def49jv9TXXtB+7JzqGYpNP+7ObIo58mWFKOX5GEzR
 pHC4tsgXFiBBrYqiS+7QIo9id+lD4VLlsgRPAclJXdN3lCgEBFbI7pG
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA1MDE3MCBTYWx0ZWRfXwvp/sYMBVRDR
 c/K27jE6VCJcVS9MqReKAhZEu3gAzRTBr6JV2BF20KqlYzZ6W9GhFwS3s+9uVQmLqND3GG2M540
 slNXhAn7LGCz2K2kbkyS++fqnLihBP8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA1MDE3MCBTYWx0ZWRfXyj1R8NBwBanx
 nDqbQxaQV8oeOzWWlr9gQvDA3QMIf3Z5oWy8ZsFe33oztFSB7jevUhzWHaDqFHwf9I0BWTLuTmG
 VoPd92owB6bqGtSe7G6F/Dd+MCYLVQpID0gCa6velrGNBlOqe9GiNSXVn6tdKifuoSXG4YX2Vl6
 OKXDHlsVaYcWKqnGOphIYy0gsC9ul0HnmV5yFUDL7EAt/gqC7BCRYcg8zCy1velK7BXYlWvpB3v
 e5obuuftNEmnEf2hEMlhoS8vLl0IyTENzml50NYdkSSLVmJl3YxOM+7AS5QnQVZ26sWgATgsHhm
 pr6avwEmARIVhwY3/1STbpaQrvQrHm/daYhuY1hGApjo6dBuRJTsqcd/kOJmbNwGeSDGszHm70q
 sKtbBAYuRIYjHNl51zw/DBr7sYDqmAkSNQ5gqbQFCtlVZzhw9UTKX/XGGmdAyf+ps6PdVANOxSX
 74ywAtw71mINRuPTfPw==
X-Authority-Analysis: v=2.4 cv=UIjt2ify c=1 sm=1 tr=0 ts=6a9c355c cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=jIQo8A4GAAAA:8 a=EUspDBNiAAAA:8 a=ugjOiUgvsQrqGD8bgbUA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: 1rtWYMmMBWp8gDFH7z9lKNj1Z8eoR5vm
X-Proofpoint-ORIG-GUID: 1rtWYMmMBWp8gDFH7z9lKNj1Z8eoR5vm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-05_05,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 clxscore=1015 spamscore=0 suspectscore=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609050170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_082933_635090_2B79E5DD 
X-CRM114-Status: GOOD (  12.06  )
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
 drivers/phy/phy-snps-eusb2.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index af4fa17ac6cb..ab405108c727 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -596,6 +596,8 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
 		return PTR_ERR(generic_phy);
 	}
 
+	phy_set_type(generic_phy, PHY_TYPE_EUSB2);
+
 	dev_set_drvdata(dev, phy);
 	phy_set_drvdata(generic_phy, phy);
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
