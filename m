Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40219D1266D
	for <linux-phy@archiver.kernel.org>; Wed,  3 Dec 2025 08:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wpzHbAOuvK0RZ+tzeiCsdTl16TalY8rdACuCONCYbhk=; b=j+Z5XOlDUzyRXk
	0ue4oiLYgpTeM4eVIqnozqZqS6j5XxUCAZByC8nQxuRlV53lij4giVK6b3AQQ0hbm2mqDvvAAwIVL
	aDr8wp02w1ublUittr6QNZqX+TugoGHMAmmMkohNAMUhLx1CNu4WyLf+/embLHCKTbVuJ8PQlEh7T
	SXkmSIGsdIxT3b65vOHjUTYn5SezjAdezEiYmqllLIDO0MQsPmtZtDk7J8GQMtVN64jHiwrTRuqPj
	9+Qfye0SNvkiHrS3lYZ+LnyxVS693iVlYUypkNs8qeqMcwxaTyqxCsq3RSyw7d8gI37unuK8meDB5
	ZykdSfxdclDjFlEGZcGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiLw-00000006JtN-3yC4;
	Wed, 03 Dec 2025 08:36:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiLu-00000006Jst-2avl
	for linux-phy@lists.infradead.org;
	Wed, 03 Dec 2025 08:36:48 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B37x9PF404682
	for <linux-phy@lists.infradead.org>; Wed, 3 Dec 2025 08:36:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=pXtm/w82FCaBm1by84KgFLixNlH2Fu75EuM
	S2Juh5DQ=; b=Q7lFsHS5Aw+czgBukkh6/BvpjJFvLAHPJLJ6TKGE9V3Gm7rf13N
	d+uM0/DWDrc1ZgUKJM+3u5cnZ/kd6MCDC/hVmzo34liSZWbpIp7he49WymJzj0tz
	ZnWrOmD5Uz7F4/P/521+mFWB98D3ev5W4ts+FrMFKccENgGU4/Znkv3l7VUIlGMw
	cUJ9MRBAEvxhgTHQNaszc2HKAdlLxLqoS98a2cCNm8C+dyMY5wmn0DECbl1TY6Wc
	cguYyJlOSHWW8cYxeZiN9GcSmmXuahB4lmeWe9DnoDVYzPWLHvEueyLTYdO9G2nN
	3L8iP/7q8dyxRkGC4KxICUQqXWTFdlU9Zng==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at9fc9f2q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 08:36:45 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2956a694b47so86317405ad.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 00:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764751005; x=1765355805; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pXtm/w82FCaBm1by84KgFLixNlH2Fu75EuMS2Juh5DQ=;
        b=P+eHFzrecAq48XCzJ5yE49osNUcLEIbQ9fvcjn79EUoKu7wb9PbIi8DJbnJFPdukM+
         5HkS9aiAzPGA3KFXhLatf4SjJev0bPCXVZxiLFTELNzuBC7Dpw6x7puXZ461rmZgqT/M
         74ixKyX36AZZpOqvg90WFcbZFC9EukftNx69fuDFGxkT/5JIysyz89ZjtUXXfB9nf5sn
         rOahMQsXc6pBe+e3pPMuHB/r7MRs91Wj/k2SXzNhsrOvGxYDb//5AZ01r9wwyH1H3FsP
         Pnmt06nhdJoKxtL4FLQrC4jHrEsFtE60HwZaTEOX+K1vhx4DheKE5OBtEGmXPU3o19L1
         KahA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764751005; x=1765355805;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pXtm/w82FCaBm1by84KgFLixNlH2Fu75EuMS2Juh5DQ=;
        b=PFw2YHAhvNZEoimrM2RJJbv+4dpYdfi/xizNiM5//QZ8s3clx9c5YFsIXJ6pnO+AUC
         B9nOiKgizZ8zdC0+fqu4tHM+NejYM5i9i+GAg5DjB/hqchaDwezjReWU4b+pcdwwaJeo
         BX6fbML/kx35KTervDHnuSStuH9aLA2kDv1N5bjCTaKvtot8i7RgIgN/DXYWxEFequHh
         jeyeBbix1gZgj4pn5SmFGAIK9ymeJ4mJm62U8Y3eKByf8Vj5Q4q80P8Cf579w4WUi9c0
         lD4Fq3x0Uwsm0QulMZ1igF/HRgikRULjvaUJ9VMS1YFr+748J4GKNPxIKv0l+huLRscX
         v/2A==
X-Forwarded-Encrypted: i=1; AJvYcCXHgwr2ctC1vnyg18tUKeej+Q5Hg8oqKmPEa7bzTqA6YIgQi/JQfnogkHGrNbVLe8o07rTCoQyiqcs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+I69gFnrfBzQWNz8xl2scy1vYfM3DSwxTMe7t6aafKtgMWPMF
	QpAbpoEssN8Vytm8ZyrLd6Xc6Uod+Ef13h5laxlqkNPzD2lWsyLMcM1l0T11bJpxJtMPlt0f+LT
	vZ40OzT1zC2sxBwkwR7opZfjKW4OXYzyQltKs1Q1j9UC4uyPLYhcINYhnQkG3/8xBtA6b
X-Gm-Gg: ASbGncuauOyn5TefZDilDETbN0dkG8/Nr6Cjtr9kmvdXZy+GvOEM7accCneCC8YeUWj
	d62jLDt90Bb2EqXu0UOA18WWmYiyAXXZicbwYbhxqXH2I2CBYrVz53FF0s3NFon+EWkHnOzEzuF
	ei1EBGNdVBOOTROqOYcO2ARWSxC26SlnQqC2y2SQAViDDpzDSUtNfN6pdFZput/FsLSzLtAxbB6
	uAfe12ODfZ10pKs6Hz5NOv5/23/7Gv4CsbDj6/CsCnFkc46GouEex3F7Nu3djC+j63HRJB7spUA
	k4/XAdvEGm/la8wWIQKux9Y4cgN6svap6E63wgUs2dF0hM5dEq7bjjv2Dt5K7dAGXMBj5xV/OPq
	8l+whvDWRJgMAODoYCg0U2+ttlNLe7qpeVQ56QTHUFUbOOzU=
X-Received: by 2002:a17:903:fa5:b0:295:1a63:57b0 with SMTP id d9443c01a7336-29d6838352amr17021165ad.23.1764751004983;
        Wed, 03 Dec 2025 00:36:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGD1wqNYFIl7/73ihJ4E6qcXulLO0vk7dODBkZ2L9T9AUjr0FfC2yXCyeWxKbKWoj9RugOWzw==
X-Received: by 2002:a17:903:fa5:b0:295:1a63:57b0 with SMTP id d9443c01a7336-29d6838352amr17020915ad.23.1764751004442;
        Wed, 03 Dec 2025 00:36:44 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bce41785bsm175707985ad.20.2025.12.03.00.36.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 00:36:43 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 0/3] Add eusb2 repeater squelch detect parameter override
Date: Wed,  3 Dec 2025 14:06:26 +0530
Message-Id: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA2NyBTYWx0ZWRfX5CsQu+QEMI8G
 1ffG4baUEKGnrKJyKoqje1osAzo5/ZbHpWkLOAMZZl1I98p3AqhZdQ15mrZNIsRCm6NW5PlOgs9
 c54kksShKFziwRMlQse/3ywALnZNlkfLCQUNiUBUYnTi/kL7tPrGAm8BYT+x4muohQ19bj+Bq5m
 EAyFXpsbaVTpMTjDbl+9HFwJ84jsq/shDC62zogwKPeJsWiTi74Skowxlk599Sjl265CfSik3AP
 WmDawSgvfeVAaEgyJC6gabKbGzFmS5k+bxxsinNbxOlI1f08MzHhYmSJsGjTWerQSLAdGeDG1tr
 Nb9HT5Ht/Nljv6a34GSv1a5ozLH+k+RUPhkM/DPPxM08S+WKgX/gVudSyvrrPiuIk/R0yWvfU4L
 Sbn9I9R77ooSn5hG5N4pW2qtOi4/+g==
X-Authority-Analysis: v=2.4 cv=Qblrf8bv c=1 sm=1 tr=0 ts=692ff69d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=fJu4ZNkWQRc-xYxwqNwA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: jh3BAjiGrz7pnyWlLQfG4t5f8M1u30RF
X-Proofpoint-ORIG-GUID: jh3BAjiGrz7pnyWlLQfG4t5f8M1u30RF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 adultscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_003646_667468_07B49FE6 
X-CRM114-Status: UNSURE (   8.86  )
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

Add support for eusb2 repeater squelch detect parameter override via DT.

Squelch detect parameter adjusts the voltage level for the threshold used
to detect valid high-speed data.

Krishna Kurapati (3):
  dt-bindings: phy: qcom,snps-eusb2-repeater: Add squelch param update
  phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch detect param
    update
  arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater tuning parameters

 .../phy/qcom,snps-eusb2-repeater.yaml         |  7 +++++++
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts       |  4 ++++
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 21 +++++++++++++++++++
 3 files changed, 32 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
