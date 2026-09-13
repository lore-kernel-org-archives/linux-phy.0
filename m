Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D366EC88E65
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 14:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPt839nsn4zWaTgH5y1B8nPaEBKZspejmXpmuxKhRao=; b=OYj9IVy4G+rdao
	XLWQjPCrdQp8t0LK9oL4I0REOv+C/yz5hSfLgzJOcDroXlc8duMc0r/CcoOPpb5xCch6fLnkfrkg/
	uLCNd2dQXpH2hIOhTkfivI5/gsIivc/Knbn4P7HSgwP0znM5XlWY4BaAzY6n1kNxpB7nUnnrIPGJr
	zLCsmRRoMX2c6TattY62rv/QaTjnoIkJI0R469qCEu6PMTHBnKBbsr9O+Md/MxUK4f5zg4lZJZcCl
	wxjt4xMwS0vaRuFo3d5IpQIk3SruNdN+/fKuPks1beCJxC3Kwo3YZH3YhZtrfaAjXTnfDGagjX8wA
	iZEogKvWctLDiq4aEadA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5lOU-00000001iiz-2DAt;
	Sun, 13 Sep 2026 14:41:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5lOS-00000001iiJ-0ZW5
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 14:41:21 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DDxkc63039133
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:41:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PhPA2j4mqcFAfYzRHFfpXK69gK6PZSz1XQZ4NKgDFZU=; b=Uy8yQlUbf1gUF+iB
	+71bPwglz9o2s031kIPR1csnonmNmCKJanV+Y+744AgEEMX/bnT/MyATTZ3QLlWR
	cBQpOTYOdJkmhstIV9XXPHY1SxKJgsbdlusXQyWMaS2ewBTCJmhuz5E1PGnj0HBe
	QuNichSDYBCAA2Ce5XEYTQck9EdcLtFrQr8bdd31IKiV8thAjszExmDlH9YgNcoP
	gqhT2Ej3s9zzw8drIoBIF7B8PwZeZJgEa5ZNlTT+P4w96iZwgMWtUEfAWZ495ink
	SD50lkv9SnleRQHvYxh4osSUyeI+ZGBS0pVCOJ7Mf4uGrjnkilVj1J7ux3hZxcS1
	7Xm0bw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9ckf8m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:41:19 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-39dc5d85a9cso1029684a91.2
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 07:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789310479; x=1789915279; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PhPA2j4mqcFAfYzRHFfpXK69gK6PZSz1XQZ4NKgDFZU=;
        b=TvNwumaR4Ty8WYlRAFF8Ifr9R12azyIEIzNyKxDHzMH9DBONJwdhD3fqpIHKA9jEiB
         YIbYQ0iFxUDugN+qhkXrK/j3a6wUNYfhufqu9ZN/L6Q8z73CzvMM7d7RYLH0As/0+Fs+
         S9+Pvwy2c26Izu8yvk7goC3y90VL1ZUyVox28C/ntrARY2yCMtf1H6QYiKJ8gzmtAY+T
         xPk/s1Cx64tRWjSnHUf59/s4lZh2lBUjm5NeAwSvqsEnWIOlfc5hw3r3YRYYltQIR0vP
         wTJQ6TaxHxDRgUekppJVYn/yupvFuTrCyh11QbtHY0ZhUEoqlcJJu3SVFRgfBnZZRuTa
         eAiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789310479; x=1789915279;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PhPA2j4mqcFAfYzRHFfpXK69gK6PZSz1XQZ4NKgDFZU=;
        b=NKuHhTQO5Oth68Ch0SWVb27dyuSHITfIktIPKMT90dU11alQFvwFr4Ymlp2Yrwljwd
         EgKonxFQPxfwNk+A1RN4gNr0leMIGVbRsA6u8/oQNolfFeLGzO64Jjy9Y4F9g+5sKRrW
         KRw3WW6Nps53obuC3D3d9rDsaHmj0CUhG0iFGy38YqmLdljlIFXKyErG10xnMzIqJ96/
         YBCq5SUh9k+89RG/GcLMrc80y6wpR9nK38+UyNMDmUApYTZDH7JKU1Bse1as0UqF6td2
         0iP5+s7OtTa31dzj2piP+xq5W/Tz+KUV0dnLnnSafgoSD3eeiXFY5rWW8aMW9l/DGgG9
         BibQ==
X-Gm-Message-State: AFuF++lk/Opow0bXb0RRmqtHhrVQmuA2nyRiJ8Luqmxmx/K0huG5ws3y
	Jcdi858j8/z3nXZOLVaESvQpL4xmU5M5mHMRxJV1ux7PhTnN+gjFIPoQadV48b4LH6AAuDCVfv7
	MJAKfUv3jOxOb9lUdlatGGfUy/i3jxm6cQK+tVSUnNOv1HALBbYLNiDbx6DEywI4T/vHC
X-Gm-Gg: AYBFou1ZA4bHxtadte/p/Rh+sjXOqJxRmCsobazQ/AWLF30AIQfDV/mDj3So6+I0fwl
	68ttzlFyXe5cNHo6lFwKHylCiRsbZbD5QU1dsColbpXPhq3/N9T8qBP0CyDvrPf47cSUWOTYL9w
	vYWUV7oj6ZqkvCjW1VQWZIdX8wJjSKHIEK2aJB1+FV/ifnWKhv0Df9YAt+sTfIpNqNxouirlwpn
	Wy5yuXdQV42ap0IU5jYzDt51BF/OCBmN3EHo0dtAzi044zHYFXtXMdv8tvrSovbJGW8uJZyfqyD
	+SfVH4jwOyOXC0yLub/lz4OtKxhCVWu3MMA/1KXpmGz3BVKit+AewMyGYlJEkwvoin1y7KxQF7A
	zQ8pknDF12ZL+Fv+JEgBwjAQIK6KLccyB1dMR8CNQIO4uDHugZDiKN1RZGlcBhzzONizouQ==
X-Received: by 2002:a17:90b:2f03:b0:398:c3ca:1ebc with SMTP id 98e67ed59e1d1-39d9c21b37bmr23537025a91.18.1789310478514;
        Sun, 13 Sep 2026 07:41:18 -0700 (PDT)
X-Received: by 2002:a17:90b:2f03:b0:398:c3ca:1ebc with SMTP id 98e67ed59e1d1-39d9c21b37bmr23536970a91.18.1789310478080;
        Sun, 13 Sep 2026 07:41:18 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14382741839sm2904705c88.6.2026.09.13.07.41.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 07:41:17 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sun, 13 Sep 2026 20:10:47 +0530
Subject: [PATCH v8 4/5] phy: qcom: m31-eusb2: Set phy type to EUSB2
MIME-Version: 1.0
Message-Id: <20260913-eusb2-interrupt-v8-v8-4-0f505b9c394b@oss.qualcomm.com>
References: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
In-Reply-To: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789310452; l=1075;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=jS28VZk0Rau0JqBMt8Al/jaaN4+ZOI4m8Zl8cLC3QjM=;
 b=p47Uw+B6PdI0txbmU/WyZOWDfgwfIDM2jiEHu7HO4vSu8Ia0F8aTmiV5xA/VOh5A1Ijo+xmlf
 VOXJgMG4uwIDLZGO0TddxHW2apN7kUokmOu779N9gen8REScYeh4SWa
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDIxMCBTYWx0ZWRfX94iNkTePgXiy
 1m8zKXklbSxqLnbANfUyJf2XE5/wGCB5CZHUaS4T7zYj/3llXNEQFPo0JMQaOVXrZMoEph9g8b7
 pW+3TT0OWTYFxQXElHTSc4JeVVC8LmjEHB62RG/shty5tz0yyfLFL8cKeIkn4vd1eyd+ecfL86S
 ySLKgjFW5HyA5Rx+4CFfvjQHp9a693D72c2j7DbrGbEG+w6tDcgKHQqeY9Fq8wHZ/tyXb9xMvw0
 kv/yMYaf511yMVY+smVS1Y6dQq/2QBiIRDcBMCpAeAmNmrAcyOKCbAx/60vrLzBSftPXJAxfSkG
 vH1lz4CDfD2wZLySjujzjnPUvV33m+cwoMZErNZCGkwed2vRnt1TZj33dVQ1HTELTmwZa1VfvQv
 30tC5Jsd2Ps+n6l+USiewW9NcITc0RsCP7Rya5gnarcdWQp3gjrsLezaME14+JrrpXIywQe4ZNA
 dXLJWptK5btwdjcEYyQ==
X-Authority-Analysis: v=2.4 cv=EMyTQFZC c=1 sm=1 tr=0 ts=6aa6b60f cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=jIQo8A4GAAAA:8 a=EUspDBNiAAAA:8 a=2OgWd8xqfRB7MZEj-yQA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDIxMCBTYWx0ZWRfX+47MyPqizkYb
 O8ncHHWj0ho9srK1OrCrxCJ3tUpzU9j3bQKsoxBWV60YSVnZ7lH0I0fKNZ03OJVi3xtqqTwfR8l
 avbZwc4Ocg5QIPgmQ862BKQjBiZZYRo=
X-Proofpoint-GUID: _ujUUACls69MHyU1TtgIAHEKQfke5lyi
X-Proofpoint-ORIG-GUID: _ujUUACls69MHyU1TtgIAHEKQfke5lyi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609130210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_074120_187490_A6B9C37E 
X-CRM114-Status: GOOD (  12.24  )
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
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
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
