Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1CF0C88E66
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 14:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGFoUuwuASSZKaSwC5YTGauD2ERdCG+tSiI1/YH4sq0=; b=a0z0sUWudXK0AG
	OFwcn0rF8iQl/xOI8NCKks1LQ+pTmDRMuJ0nfg1H2D2gRSowzZtBgQt7qJcYsfEXHlP9i9Qk5V929
	ZZXIfDtX9YJ3wxxLF0iWh8moslqWbgBhQqsrJh36LLfLf/85dLZ0ISttvqI3xd+5EWOfvpd2ohrZs
	EKltebcmoCrlbrNCr8ovwqGWwdnvq/OOPwUmW7cWyfSBNMXzoVwEK76OpuqEr+M47+cVfzWgUO2aN
	LnOTQbr4MXbMnLBICYuSprrKrJkdy1yUyvPFM4yTw+yTh8AZ08NxUFX+BcQzeWR6aw92ijfu9/Fvk
	HxxXcHbHW+dbMrsuVm1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5lOO-00000001ihX-1ktd;
	Sun, 13 Sep 2026 14:41:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5lOM-00000001igz-2R1O
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 14:41:15 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DE06LH1200379
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:41:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WmdRTxeOLyf0Pab2r9UoJT0vEIVmxiuf0Wt2l2dbmoY=; b=Eixe3jv3QRj5J4NM
	nA5JvZ/2Wb2ZuNnK66xKiCFeTYDXDKqX4atyKEAjplyCrFwb8XoX4JI5RmCTOOGS
	QN6CJzl4HOG68ouxTNzOTdgJELe+vvude9CGLTQGnbp9NyF5eEgT4nP3DAWxGcv8
	dJeMA3y7xjgxRf/Kq3Ewqhyf/a7LMoJ35snI18+yJL8qUl/W/jB1/1TuixUHMq9C
	BUG9B17AJoqerCtuX3WcptLQro2dgZgVX2PfAFP1x3kY4QSiO0h/ZH79Y2dS3sx4
	mjtyYNLkaNq9YRRtQyq8AdnddNj2GedisAWeO4ZggialQfZOZaW3HG4Rut+y/aUa
	fUuSfQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gn018kc3y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:41:14 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-39de4e72b33so14557a91.2
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 07:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789310473; x=1789915273; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WmdRTxeOLyf0Pab2r9UoJT0vEIVmxiuf0Wt2l2dbmoY=;
        b=NAUa0NsFvqqXkJ2eQ4TQ/IqX5371aoZLr0SvLFkfc4V2HE+v9KT7BaNazy4G9z/tE9
         MhcAtf/kiEnyEZsggtTiBK50g2sX1zYWVlb4H/h1i65psWPp+HuCUahtwAdZzeSpuljJ
         PoIc3E8ZW09/YBWpoL5tpDwk74SaEr/sPHjge3o8Y4YQpfAEB6D2BaJpaEk+bpArP2gu
         jot80sAH8eP6gyJ0ISX4Wo/yQl9dSMJbn6+kKL9QjtUx1UJiWcUyAbvOvjmzBye9y6oY
         i/LxV85J7fLw/yEGALuOaJEMNxwz7srVzOsVP3S+Z32xScAXNFeH40WBZi9xHs+nhlz2
         sN9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789310473; x=1789915273;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WmdRTxeOLyf0Pab2r9UoJT0vEIVmxiuf0Wt2l2dbmoY=;
        b=IuXPExdSwDuUYaVlihSwie0O4y4nliHcKbmQ4rTrWXWTVASVnhGaxBmekwmZput6u4
         4Zft/4IkNBFB0P/Rw/DLgY3lMKxuLS83dqzHLr+R0F7CPhmbYpA/QzOfcGdByWRQN29S
         Zv7gYPio41TDMrzXn9xs3lggLNaydt8S4XrFzzIRcdBGioscONZwcy/3vggiKnVkkNF9
         FcGWIlksaEIDtqbuGSpb+3PHY+3Xbig/wRnFQHAEmYMj/gXV5/Q28wFfKTE0Xwwt7cGK
         xEpT/y6a/Ug4/zxD40jjsYdrVQoypm2B1Qh/sP5bzLiwk3PQzaKr/zzAoQxJB4uwim4o
         3x8g==
X-Gm-Message-State: AFuF++mf5hsRUd+3RUsGcSxBFSV9H8/ACztXIelwnfGtFjTgZHlrzXLq
	iR5K8qKoXiP0VGnLxreApSaLG1RNsA5uskMTjtU54ceyo8wkwYDQE3Gq9R893vh5DI0fdTWoeAI
	pCru54woN6sVOa4XgMqdkLUW36+UNQ3engKByg/yHpvTWABLKvt9ZkOAWj2cfJc0EqUCP
X-Gm-Gg: AYBFou1vmIZLZKQpR4VPprvz0LGFZ/7dPQ0KLu6Vapa+V4h4IqbxABH4gJtZ/AG/8fv
	fiKT3klLeD1aaJE6Zu0MnKJPxF4o6jMcWGHZIgZT9/sgvI6A+f4XmlneHCw/bcQhbGqKjtb+A3q
	D2AYFL5Ge9zkpWlO1gG89PPVh9rtsI4+LcQ3JkiRtoUG0V1MVlKqMZSfIdZOlcTzdI0YwphRwdm
	CmeJi2jcT5ALTmUftIG4dRyHB5vLaHKwpp2B9rHP1+2ebsOVQDFraJQW98vtMLUYTJeNxg1NTht
	ycWlfRYOJBmtoeJ4Iy4nqI2lhn1MYrcc7DZQUXybNNpNMHORsdTHFhb1bDsT8Ci3kN6V49OicvT
	Ad/Rwu5/DqHOaO2oHS6X77RakRSgLUFs5b7HYsUQspHbirA4f2xJjmtk7Ef4BFG/e3DZalw==
X-Received: by 2002:a17:90b:1d51:b0:38d:b36e:9813 with SMTP id 98e67ed59e1d1-39dbc1d770emr13606718a91.11.1789310473429;
        Sun, 13 Sep 2026 07:41:13 -0700 (PDT)
X-Received: by 2002:a17:90b:1d51:b0:38d:b36e:9813 with SMTP id 98e67ed59e1d1-39dbc1d770emr13606659a91.11.1789310472987;
        Sun, 13 Sep 2026 07:41:12 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14382741839sm2904705c88.6.2026.09.13.07.41.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 07:41:12 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sun, 13 Sep 2026 20:10:46 +0530
Subject: [PATCH v8 3/5] phy: snps-eusb2: Set phy type to EUSB2
MIME-Version: 1.0
Message-Id: <20260913-eusb2-interrupt-v8-v8-3-0f505b9c394b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789310452; l=918;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=9HkS3wxfvgP0/0gQboWN88Ps/r7tlaD0hKV9cwObfFE=;
 b=hFTLP85/zIcgbaptlBh/BmvV3xuqMw0s+k6Ph6T8oM3NL+PnmNbm/0eEaDDFGvOmPncgOywup
 G2OVf7ppvxKAuafSuanXxZkWqHK9043pYh8jPNfg8ErIs729ddDDvQo
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Authority-Analysis: v=2.4 cv=c4g+0h9l c=1 sm=1 tr=0 ts=6aa6b60a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=jIQo8A4GAAAA:8 a=EUspDBNiAAAA:8 a=ugjOiUgvsQrqGD8bgbUA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDIxMCBTYWx0ZWRfX5nfUd/yvWgjT
 7LgW4Ti9UbEiSWSDJpsKYO0KnbI+CRtWYl2RoiujESHfDyj+Wx3IU2NjNxm4wKarYLYU2fgkbY8
 cVr6uxHS9H+g4uhJZ55lMVKE5BR7VXA=
X-Proofpoint-GUID: GvPH4bTVsD24uYpJiLnvxTsQg8BYJZNu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDIxMCBTYWx0ZWRfX0cN70u6PJj6v
 cBolGAtP2tuGpblJN2g+8aopdLaGdlgR5toiGmDxWPx1au+fdmY2roLy6SHBIMHwqrLGX1kUkKY
 Lc+RB5pndhDZDDG78gSnxJai5TEO9L70QGl//eLHbV+Sbkg6vxRmHlI1Krxm1olnNQQYcbTYSXn
 VzhOBRNL3o7mHQCUb37NA2sQuHZ+CRJHxeGYueIiPWEXwviERtuuT23IzDmrJtL/Bsu/uzKS5hi
 4Ng7mIO1jIazzFtcu2aGSRXewvAfr5Iax9h9dxanO/JFWi2vSEIEY0jg9B0HP6c0qViDWK7PbvX
 ubI0j4Q3Q9ae28GPBZAeS1NQseDGmcRtEPph5wsowQ5ESlmvffVh8wGgGLkt1ex7FYgPwOicLFD
 8gMrV5B578MWCZoSG1+uDtdlFr/ajd9wqA3U83zxyIpY4X1P5HQo/+f5AEETpsDqV5S9jF9aoMt
 VL4TLaphxhfBh+6Y6NQ==
X-Proofpoint-ORIG-GUID: GvPH4bTVsD24uYpJiLnvxTsQg8BYJZNu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609130210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_074114_633692_9A1D5BD5 
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
