Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFDD4CD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 10:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SajB9xEFoB8jJ1b2ZglATtztTrxtkQnnIBkBWp7lvAo=; b=3Idfk7g8N+0vXv
	cJ7dPFvxjo7NmPL7qToC1uDQ0fLKSM7B7x8llVrHQmDcqnP5hhqU8mXTTdjwHdL37OJbzpLszDrPc
	NhkwQpqXDH0v90+IFsxC32ZWtM+Ul0R1BbZIbwUsYNczInOJ4j215EHYL7L3bZchz7IBJhALl29M9
	bXNRbbbYNgHqduWDAIzpPMrWUDXVr9b5zJWqX4lKK5uU1+WSm3Zd5m0N/BHHPAT5xRTxRS39KW50S
	Fgc8lIhRW7SeTnuWYa+mCRd/mUtRfa7hjdEfwPGkh7uS8C8aEPvhCPgydiGjYsd7o8Iv/gKvvhHMw
	us2HojcD5qY43ZZpWXvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq5V-000000085b5-2MYJ;
	Fri, 15 May 2026 10:48:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq5U-000000085aB-1JA3
	for linux-phy@bombadil.infradead.org;
	Fri, 15 May 2026 10:48:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=RqmADDkqt5KHGaRm/cbB0jzfZAp0+Ju/seDw/FuUue8=; b=CuBg/Cc458ilDHdWqJrdDvqHNM
	ksmD/XEtTZg6WU6TFq8Kwv72FLa3XSf917tt4g0VBRLU2sCql4tJwAX/RNQ1ZGMS4v7i+TJ3o3XYH
	cPdLnVueIeZVM8Tb2jFAO4vcuIwu4zGm2GEq9eYX5LMFOZl1+3lMqWymm1zD30ni/YVkBHvmpXVwE
	QsTVJHILWKNQwj7sXtnPSeti0TM2K9UOQOG7+TetmIDCGMHilqib/VD5S0ThcNtVSvCcrwp3zAJxI
	A0cU1C5+YrArcnX9ipYkrQekSn/Kpm8rk16g5FKjmMGFmJ4ZzdN2HRsbVJfpKDAl7JzT5ZmjdhNgk
	qdbAhghQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq5Q-00000004wdj-3EtQ
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 10:48:11 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64F5U6Tn4008246
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:48:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RqmADDkqt5KHGaRm/cbB0jzfZAp0+Ju/seDw/FuUue8=; b=nuWfEiHN9t1HIMzE
	Psj3+VuTIp+gwIku0JfF21Nih3+fXQGYx55Mvfh2QcD4GQ4ye7jQPowZ0QltrWYE
	DhRNqOJqy3unjAfgUVwArjphV0hhOC8GzZaLIZqlox2KNDk56zwwlaLZbPLD2FJp
	lWo/WLF+Zkrmwd8lG+ranrSewEG7Ol+SqxHzkLl3v+SDn2WgLjacxNzsJixGEVtb
	/GD/OVgK0Geg79u5j9sFUrB1KgNQpaXsGMJVupt2HmGJylpS5pjYUJIofFbPPZ3/
	030Df6Tqxylqilb9aHuzCp42++A7oVXDWDGxgU2QOb7Q6TiOfi1wIoJdFKMTv+He
	+1RmXg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e5m1stwub-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:48:04 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c802545ae0eso5381944a12.2
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 03:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778842084; x=1779446884; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RqmADDkqt5KHGaRm/cbB0jzfZAp0+Ju/seDw/FuUue8=;
        b=j+Er6o05x0Kp6iC2213PDrFOofkmej5KxonCkH+4OsisJXspfvh41e2lmEhGgFYq6D
         vUSbFr3jNhyi2l5imiKPETOLUvXRyhNMZd/eHjOAcu4ZWxsX0jbdhlVnERp3CC/LGv+Y
         9U4sHsytrHTkrJnEh0/SGoTMBs9Sio/ZUpcKSMzzeZ+NrNdFDY16hh8hCZPuypb+xihv
         e7EFIxm3swMoYmBYL5u8c6tnqzNFCEshMPrFn/94l4N5uetbshG1SxuTiqLlYqeAxKiZ
         EbRbP4HbAcGAioTkS+sFUzuzBlnMubmJ6uSUtFAyN/s7wv+WZHrTZrTqCJQR1OwuUema
         s7vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778842084; x=1779446884;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RqmADDkqt5KHGaRm/cbB0jzfZAp0+Ju/seDw/FuUue8=;
        b=NdT5Lo+LDK+u4tp9Sqk49C28W23ciRq/3+YK/cgzW+7y0qBnbFwZHafqDqVCglFo3C
         0m3376n1UXbweEEGm5OOoS/mN+O6iU2qnm4nulby1cGrINd4kM1R/vCSfX3fI5AAiJR0
         Lfv8vxHcLfIpL/6dy8JLMvVE93t6Roy53QdvBVImjIcaqWxJheCXJnxz+zjYIyne0/+d
         EwYhqkbmPo49YoOuXeEhMkeCFLky4BUYi9GqWLHGMBZGSQ7DnpUqtAZa+WdUGbi8Z3av
         +gE5mdNiDEiAxclK1eaCcLJFJCN7zHKavPVD36KkvG3WP/2jDLkHxoSU9K7ei+sBZ7rM
         F+wQ==
X-Forwarded-Encrypted: i=1; AFNElJ9Wl+dYVQOF8g1VpPQMjN2vb5KaUnrEJ5rs6sdGUdNU0Af/eUUEtqmIVFJIFyf2RuHgDMdhkpagsg8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwJCdjfwTAZjnWhB5G60teUlVvbvHWaa3jrZ73Y5KdLurPvj2kl
	cmc3wZgt2dMsWMkQw9pLK9HXDIxzft021yrft87l/UlMvfwVMHjf1DeAcXSkVuuL8doNap8L+LH
	yZTemOBvcwd60Argsvhi02UnuMxR1Pvp+fXa7DtbpJpttrmWMrCGpWe7erNjcOh0oARzk
X-Gm-Gg: Acq92OEEK1hvF4CiWexn1LlTHQ7FqMDw205n732RGk1wrQ+jEQQ7cZW4+WIJ+5sqtGT
	otg1Tu6j2qrq1ybJagy7uKU2/2+BtFEB2PUxw+Z9BAsl49bc0ARGLLCIzGPls0H2kMWVQZOVZ6R
	0hnp2l7wYsaDWh642qfgYhus5gS3VhUGFMGWTqrKfw8bcyihEC6AE0w9jWlq+RSp3zN7wuTiV3S
	ZsPZ+errgyp6GT6OcHkHD4fazX9bGX0PwfKNFliyOBLQaO9jm0YzRu9VbpsRfJKuhb6hSOp4Ebt
	lRQdxsGh6xx959Y4BHYI28h+otdqiVX1Z7sCixRyZyhCf/DoVozm/4P/7h1tqd7zUv3B2wri1QQ
	ovBPpgoGNIfbMJ0dPiEoQTvsqH5DAtFg1eS2tIn/iv63m7BFxKsA1grUDZr0K15meAS13ZT80kT
	rOxuGWff28HhIJh2vb0vy8i9+Ay1dm1exhr6fM2YK0CZYuMvuZEsIELNyaaSi8eA==
X-Received: by 2002:a05:6a21:3298:b0:3aa:f9cb:d436 with SMTP id adf61e73a8af0-3b22e67bb98mr3744700637.3.1778842083584;
        Fri, 15 May 2026 03:48:03 -0700 (PDT)
X-Received: by 2002:a05:6a21:3298:b0:3aa:f9cb:d436 with SMTP id adf61e73a8af0-3b22e67bb98mr3744662637.3.1778842083082;
        Fri, 15 May 2026 03:48:03 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c82bb1006fbsm4955221a12.21.2026.05.15.03.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 03:48:02 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Fri, 15 May 2026 16:17:44 +0530
Subject: [PATCH 3/5] dt-bindings: usb: qcom,dwc3: Add ipq5210 to USB DWC3
 bindings
MIME-Version: 1.0
Message-Id: <20260515-usb2phy-v1-3-5f8338d466bf@oss.qualcomm.com>
References: <20260515-usb2phy-v1-0-5f8338d466bf@oss.qualcomm.com>
In-Reply-To: <20260515-usb2phy-v1-0-5f8338d466bf@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: Lhkf9U0nytQ8LZ7BnY1R3OhssVe0GpKv
X-Proofpoint-GUID: Lhkf9U0nytQ8LZ7BnY1R3OhssVe0GpKv
X-Authority-Analysis: v=2.4 cv=cZPiaHDM c=1 sm=1 tr=0 ts=6a06f9e4 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=EcSGSXt-TE7RrzoSa2cA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE1MDEwOSBTYWx0ZWRfX9A3aZFUUhE6i
 5lUYsmKy2vv0DcXqDwE9xjQIq/6qfpzB5bZPfpgu1SK18VKouid/SJlqUxx8MojCwvLtzOSCYJL
 3LzTZXMZoWwQXyDoJybCbnCO6qXK5YUUnJFBeb5u7twdmA4sDYF3nrWVHunhBMEhWRkUusTEAxV
 N0STNPRwQbuSXvvL/sciCIekMd0wUBc+3ziejuUWYmHBE3uPYMgI8jvbopKaOymoVJjvGmx7GqR
 7mhzMMYlUu0IN9AidRZfjRC9GyTw7f+y/GF5H6B6Niu9DXfyFjaPufHtn54q+j3Omd0gozIVX3n
 R8Lp03KtmVuMHNTKYFFMmbh/ffkCK0mXfRhakgvQN7HdTBiB95rBmUDyklBhfWWIntiYbO/2t1e
 46iFSFjlat36HpTdsOLhawiyvZshgzj7NRT+Q5+/5+9JZXbr+Wbi6kHB4p5MmGPZIwCbSfQLobl
 eP2u477EfQNEnknwY6A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 adultscore=0 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605150109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_114809_487570_086741DB 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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

Update dt-bindings to add ipq5210 to USB DWC3 controller list.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index a7f58114c02e..f8e0819be894 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -26,6 +26,7 @@ properties:
       - enum:
           - qcom,ipq4019-dwc3
           - qcom,ipq5018-dwc3
+          - qcom,ipq5210-dwc3
           - qcom,ipq5332-dwc3
           - qcom,ipq5424-dwc3
           - qcom,ipq6018-dwc3

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
