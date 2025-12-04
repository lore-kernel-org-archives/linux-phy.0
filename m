Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 438D4D1CDD0
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 04:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3nk7X93iO/7bm6T6mO0HRP/P+MGA1S4CFi1s85ElP9g=; b=33uKjEOXRZ2slZ
	JFwZF+dxlOhbHG7a0QgwVw7jxJS4yON+sIwkE+dynvSSwVKOLAvY8qyhP/HvSLoQivADqJbKbIx33
	wvgyFCo8zFkrMzk5T8oXlVZ3rtb6dHxVAE25XohRRGFvqDDeUxI0tWeEAM6UPTcs8bulhP1zCSmlL
	wIAQLurcRxXBzD1OItEA4f4+2nhNFYp1lpj1Kb8a1QOfnMXX75sZlO04RA/99A6TWD/ASjOLYfRMn
	A9C5ULJs6I6IQTemtIAIrZiRIcuh5oeARryo84qRz42rJiQfQVQlL9GnYPji1VzxMRJX7g2+8p7eG
	xDg0sdf9UqhRGjOBnnGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR1F9-00000007TNc-2DCG;
	Thu, 04 Dec 2025 04:47:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR1F5-00000007TN9-1VZL
	for linux-phy@lists.infradead.org;
	Thu, 04 Dec 2025 04:47:02 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3NmrMo2627188
	for <linux-phy@lists.infradead.org>; Thu, 4 Dec 2025 04:46:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=fRASef2ssEdNjfEjozIetUr10fm7LhWC/Id
	/kXGp8Sc=; b=M5urEgjm/cPngHOMzRAcQZCRQi99xz8c2Px2D0cYQhKcKHJYX9P
	GWQF51jtKY+VjeE342xerr9Q1KPj/YSAMaxcbeWbpydrfzZ0888fxQP+aeJ6l6sF
	qshr0fMlZflt2BU6V7i6s7F81C5UpEaDqszdrwwJ+dMxTfUK6YbWfJ0DXruule8D
	A2XGHk6giKQ6v9deu5x5KDx51VLbp7xSWKjCx/0eZYWylIDyLTh8D+UL/lMjYQPE
	bHYYIumHDVrvJz1fL8IWP/GrBGnk1/a+kzVb5hmYEtLXqmLTAjkXSjzHfY440f+e
	PQ6xOPQwB2/t84bIt/kpKpAyigP7kZXeIeg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atm12aqk0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Dec 2025 04:46:57 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29845b18d1aso9201845ad.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Dec 2025 20:46:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764823617; x=1765428417; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fRASef2ssEdNjfEjozIetUr10fm7LhWC/Id/kXGp8Sc=;
        b=YcfeCQm6aOFA7ZmVIpCpx+u1A0ElFDyYD9aXNmC+VY2GVTY6GYUFvx9eQkfhFsvqJU
         I2h82iClmx9cCqOkGdTr39ND00mgki0MxT8IjnJ92X9q81Ouzfr0EbZDJDN8kmA3JRtU
         +IfVs9QTIMTqp3FXI5r+Dfwjl6XVFOZEuYHpfOgpqIs8xPKtqaHd9sH+i35z+WycY+f0
         T2qZ0kSsChJVi40fbRgIJ1BeBibVUPBDfxWdRpGSoUsSMjlBoh/0YBVdMvwSyGDvl+99
         bUqXAeY2BZJc5pVsuhzmsgbIJVDUSI0hyfMAvlA/ayYxE/UO5k821xi84hF3L7HOyet7
         0Pmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764823617; x=1765428417;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fRASef2ssEdNjfEjozIetUr10fm7LhWC/Id/kXGp8Sc=;
        b=qAOYE73TrfCatY/fWOYyQn7g09XkWc0WjY46sWb6+8jPQWo90+l/2HZ/riQjqrajIN
         MSviGXpBTuT7hdaCLSTEE0Qfxas3JXBv5OAOhtRFLMbY9GNZQI6Zy/xNUGTma7QKwsOA
         bxr/pZwScL67DjLGFsTdnWHI0b/8ROjUj3dHYWqfKfATJwIofr0vnrNAXEIg0HTpX83C
         S3xqRbebmJ03XIntvB7ekyAd2uRqdDN/ewgvz8g6BoGeMyeN2Ie5hyVDj6Pl+HiLvj6z
         90uolgVKIacD6GJNXjRmTYcEz88SoQZloaGLTqn9eggheRW6YdLGwMS280S8n/DVfOKw
         x/qQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfm//gd4pDlqaxfN1ZH8pujL0EweM7yEg+c3hoRhCKjnqaCJCodKVwIsWvHX9e466VA0l2nkW1Vi0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz17baTpVIrqALxq+b1rAjtlnYQmThIQ8JCe1up1jRQsctVjmSa
	5AnIZt1i5F4lJpzvRxbBmHvwpKlTfwbMFBF/g2EyOuhGmlkaJlWGIoCUeQCTt/Z5uYKvgjASEbZ
	t5QbwRL0skSNyjRs0Zsxd6qoyN709dJT6W+4v1yoAQUHEyBg4tGETFFuckRhxH7qf+l56
X-Gm-Gg: ASbGnct8giOQ3XV19y8Xui+Z+yV8q4jpjM3e0XDklGAeBt7tXGBDq3Arl43v4kGTvjq
	VRyZXGeNB9a5UOXjn6FHTGBglY6O9NwS5X4Jl73eg56nSWh5u9TAnjasTzBKb6/Ac5VPjwi41R1
	1n9VDqb+4JzXSFkAoOkEpPbswcg4X0JtumJvfO8lXz48hM/K/ArUiF/MSBjoWn1XNSY8rtHbwHf
	KcWDpqAiEsX01dhjR8dhz2hBiOmPkwrZ6mTOJ+x1nJ3s88wZg5INilf0jIgB0vFI6au0dh4BHAX
	VwOQEWdLvA5SD/PUKg+dml1qw1QPDOffKLTH3LwT6o+HgpZhRPndu2sXETnfY4BUlD10rIHQD/c
	hMhePaVW8ARfiLOfBXbCxZTSMbfSiMszQOALpwIxAycdl/Oo=
X-Received: by 2002:a17:902:da48:b0:297:ddb6:ef81 with SMTP id d9443c01a7336-29d683454c9mr55254675ad.16.1764823617002;
        Wed, 03 Dec 2025 20:46:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFUshjjSgC/IdoRAZPEirOCKbfhASGTUkq4M6XbT1En4gA+2D7+OJKrKrqsdWN3zSjhjoZYSQ==
X-Received: by 2002:a17:902:da48:b0:297:ddb6:ef81 with SMTP id d9443c01a7336-29d683454c9mr55254265ad.16.1764823616532;
        Wed, 03 Dec 2025 20:46:56 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cf97fsm5217995ad.25.2025.12.03.20.46.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 20:46:55 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 0/3] Add eusb2 repeater squelch detect parameter override
Date: Thu,  4 Dec 2025 10:16:41 +0530
Message-Id: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDAzNiBTYWx0ZWRfXx7YsyujB0Rq5
 InbpbY2pwEd8p0HVXkjT6zTH6imeu0X2Xnqa8SFziEbCUcKQlkM/xVucFTGaxtk7Hq3J/jmau/k
 qeTe8qUFJpiBBu76i+Sx7vmbbJ2Bk69YYu3piEU187ksyYXHo7mHgPDElM4cmiaIpj1aeh7YvSr
 HBy3RPzdP92kiG1vctBJQRj1i8TO9aUCV7+LPhg9+cwbxnZALeoeQuvbX45Y3Axk5dZKgkKxy+c
 mbTb99nQ3S2sAirvCmHP36agjV+OJkRsJNGyriohK6YY6wLqYXyBlP5866KsZBYv8vgz1JNK5gW
 FnaTCmeuFEfQOEdzLdhFpdDkcDhu6jJuU6Ita7JcMMryDzwZsci5WmPwkEpbdpSjFIMZaF1n5nh
 Zn5k2ktROnFwYhtDTtPshKAob2Y47g==
X-Authority-Analysis: v=2.4 cv=JY6xbEKV c=1 sm=1 tr=0 ts=69311242 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=vgYOIwM3FMrG93tDnggA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: hQBcXrSA3TiedtfOd4a9Ray9qojPg04D
X-Proofpoint-ORIG-GUID: hQBcXrSA3TiedtfOd4a9Ray9qojPg04D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_01,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_204701_279292_66BDB6D8 
X-CRM114-Status: GOOD (  10.24  )
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

Changes in v2:
- Modified logic to write to squelch related register in driver code
- Added multipleOf property in bindings to reflect values can be multiple
  of 1000.

Link to v1:
https://lore.kernel.org/all/20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com/

Krishna Kurapati (3):
  dt-bindings: phy: qcom,snps-eusb2-repeater: Add squelch param update
  phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch detect param
    update
  arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater tuning parameters

 .../phy/qcom,snps-eusb2-repeater.yaml         |  8 +++++++
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts       |  4 ++++
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 22 +++++++++++++++++++
 3 files changed, 34 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
