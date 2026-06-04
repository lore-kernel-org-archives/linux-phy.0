Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64862CD6E6B
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 12:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hJpHNZ69VSO6JJlzKWK6244DUx/+9X8onH7aw+pL0AE=; b=AJddNB1BgXfual
	eih3MAUvOcf0gHtkCWRXx8ntcZNPYedM1FXgbmNyD1b9CQU4B/J5kbRng+7vk5+4q+o9JTZJrzpqc
	9pSIhSffKS+sXZjuBT9GZreyhLnI+xKAtj0Ia63xrE6muyVf7DPC32UOIEY3RpKczThFT1BigCfQG
	bE5bTl1J35//ddZa7OPrnutf0iHBZdIpb3S+JaHu4TFEkYbCMalcJWtD9WZg0FJqfHXxzs6CeppAP
	fafukuDSI0RGXY9EAoXPhTbCF63Et80T9rObqjdHWhqIDMk33ZiKfHSDOakvMzC/ASYBy8K1jAYCh
	MlN4d4xbolodGdNYyBtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV74G-0000000Gi4w-49M5;
	Thu, 04 Jun 2026 12:21:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV74E-0000000Gi4U-0qnI
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 12:20:59 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 654BJoSE944403
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 12:20:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=shQsQJ31RNDx6YS8P72R3K54LrumYBDuPna
	sYDlIeVs=; b=GkSlNpTv+1E4moRuv1BAC3kOWj9w1MEWZ/fO3nBL9VAO5wSCqkH
	7YVqndGukM2rGajUq2S1pyvmeK4kNDdHt54v0TxoPKeZHsjycCRnPCMQ5JcJ/Wex
	Q9uKprDdd2ecL8fPs1JmKhq4tGCAixM9ies6bUvuVGvnF9Rv7+7fSG/b7P+iFVWW
	/epj3CKhdKrxNLiY9WRLroZqDZNMoufrJ9PsIB4vI90Zb81yJ2SuI/iIW96D0m3B
	3nwJvSXnWpQ3ncnvbjEs+Y2K0zhsXdL4RW2CgoFqhZEoxn7TDx9H5OLIiizXVwdO
	FMfbbw4llryJnvkU+Ol9XIYjgWG3VJ4tvhA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ek8d507d3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 12:20:56 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c850ff84ddfso869320a12.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 05:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780575656; x=1781180456; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=shQsQJ31RNDx6YS8P72R3K54LrumYBDuPnasYDlIeVs=;
        b=WPADvKGMwfqOYh27/JwOrYfqb/+lF35PZ+cQeZQSVdpr7wHLIgCuAXQD4ykhoqx9gP
         V6dVZIFxxge4PRU8QvS/v+gexsS7ExY+gvniZ6cGa392KZWbUQh3wGzWc2dRtrQqYDPX
         5WdUjlAUjZdReXvBj1c3dvtmZbWWihIHKjrVXUVKBaPgxQw5VIHItaFjXqt6YrASYuF6
         JlKT6BtRDq+WXsVPmRU9MRo+zo7MpqW358lOYl4fLQvhct1vwUrZHg5/H34HssAZ1xrm
         fc7MFYVzlpaxnS05u6MCAVnEu32reb0Pe5Oe3KqsjM926xePF+TSYpzeG88EiuG3Ws1z
         FuIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780575656; x=1781180456;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=shQsQJ31RNDx6YS8P72R3K54LrumYBDuPnasYDlIeVs=;
        b=IxIpZ+xn4mJ7l/0ltHYOvy+HGBWqbQSsAtoCrhBaHk/25OgCGx1cyfmKJLw0sSXvru
         d3TZGTBPoZYMMP7D7O1rQ2oVqmtXaMLMYaLgKZ3AZd+rwfq+OCMAxGsUCR/WXFpsJMwJ
         3wG0C3k0AO0B/ogCl69vf8vwufJSrIHHYdnxU9OgZhHrvRm+p/2JgDU/nlYl7fT9+OKx
         v01ViVIJ6KUSc3bs2J6jHYriVRh8EwAkI8BFE7daBcxPNpeB34jW4SdJ8ivZAugyCxAT
         hL+WGb+c6eYxlVgbKIH/bIPADeXi8+P15di9DsyeuW/OcK46eU2WeiS0tkZ8o7xVQpkh
         KvOA==
X-Forwarded-Encrypted: i=1; AFNElJ/8V0PBxPT/BcnxYz1ERmvssru6Z9hSpPV04MTHMIrNg/TeVfiJOx1ywMEsw6N/VCC05i1xB1XwBJM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2VgbwCsYtn/53gWIvGHfg95lI3P4VhOxFc9Rg7HS4BVj9GA8f
	F+SyuzL3lmfT0ZiJ0DjiGXy0cW6XeG8EpF2Ep3lQhBxknlGCszCc8diIhDyEqzkQVsRS1GdoXzl
	knEO9MOJjgc2+i5mq9qZXcOZSAH6TGHyU+Te5ryyAdqV8SvfJdj0eWic2EKTk7hPdA1iu
X-Gm-Gg: Acq92OEjj1pjPsk6WgvY1tS7yALZu3YPp36Yg1BxcTK+0yLY4tmERTTABXimGy4DXdD
	pcKj5aqxzEvICyUUJg/TSiMJTvW3rCvTjnp07hBtE66ZML17OIDrY907K7D7qX4GiVSHjDk3WL7
	lZVMnDibTTE7AaHbRWsEbPHOj9BIM4IDnGTuFsINNPd5/j05pRFzB/k1e2fm7wCTT0i61K0/19L
	akXWc4Lmbesz3B++BzNmWauDdM5JdsqgEiTyyFcsEpvl+1w/WgSOjfiRoMTS084+HIl8na7cMvd
	8B6cxLY6SoSpcCOsQ05Ss1J/L7Re+OtiqWvIAv96DFfHOJFL1DrNVr0cACHYklNcaLyjfAEF2+8
	BG2skvqcngZfiYlVm80Q88xlAxXIAbrx4loKeMuw41LefvxQikbs58kfGDxTQwhsq/Ww=
X-Received: by 2002:a05:6a20:d612:b0:3b2:924f:70af with SMTP id adf61e73a8af0-3b49798a73fmr9004102637.45.1780575656076;
        Thu, 04 Jun 2026 05:20:56 -0700 (PDT)
X-Received: by 2002:a05:6a20:d612:b0:3b2:924f:70af with SMTP id adf61e73a8af0-3b49798a73fmr9004067637.45.1780575655609;
        Thu, 04 Jun 2026 05:20:55 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85df045c2csm4796903a12.12.2026.06.04.05.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 05:20:55 -0700 (PDT)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V1 0/2] arm64: dts: qcom: Shikra SD Card support
Date: Thu,  4 Jun 2026 17:50:43 +0530
Message-Id: <20260604122045.494712-1-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: p1-xQeWzTZ9k4sf0f-oF1FD4lgbj_aQx
X-Authority-Analysis: v=2.4 cv=IZG3n2qa c=1 sm=1 tr=0 ts=6a216da8 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=ms6Ar7DOZ4z9uL9UNCMA:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDExOSBTYWx0ZWRfXxoRAYRSASA8s
 YEelEddiqRCvGj0DnnFAcimQ8uTxmRzTCs8W7vbLkamMYJcy4NmRSpis96eYiI0XMHVBmmzjwAV
 eYcMDH0XWBL4NmWB7DNum9G32O3+hfH8PB7qeBzx+q9x9mTPOM/utZBho5uX+K01tnMPCyScQ2j
 1/SFMwnRAoaf3fa5GyM8flEej+E9oV7F64zsOoEnZunK5L8W0aAFxylwW4WNs0wROlRlAp9Nm7L
 kWMdKclYD9zxeu1fHEKaY1g06SKOC7Jd5ijZ4qO+nQeUdST+0/9f6ter1q5jtEyz18sbQTKuLES
 UiCuJzXmXtmlE1PhHTUAcFXtb1IenMQpJNnLSk7cZA35d8dxuM+yWiQ3RZYjICJcztQmP2vsBtH
 /lzyrFT9jbQBXyoEyZj8aPUsxJZ9E3qOTHh85ebCzOQY4USIjN5F04+cGLIdhIltq6E/0LyRlyx
 PFnQimEJK4PRm7l8W6g==
X-Proofpoint-GUID: p1-xQeWzTZ9k4sf0f-oF1FD4lgbj_aQx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_03,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 spamscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606040119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_052058_269806_85A3C0E1 
X-CRM114-Status: GOOD (  10.57  )
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

This series adds SD card support for the Shikra platform.

The first patch adds the SDHC2 controller node and the necessary pinctrl
configurations to the base Shikra SoC dtsi. The second patch enables 
this support on the Shikra EVK (CQS, CQM, and IQS variants) by defining
the regulator supplies and the card detection GPIO.

Testing:
- Validated on Shikra EVK variants.

This series depends on:
- https://lore.kernel.org/all/20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com/
- https://lore.kernel.org/all/20260521-shikra-rproc-v3-0-2fca0bbe1ad7@oss.qualcomm.com/
- https://lore.kernel.org/linux-devicetree/20260513-tsens_binding-v1-1-1780c6a6caf2@oss.qualcomm.com/
- https://lore.kernel.org/all/20260524-shikra_epss_l3-v1-0-b1528a436134@oss.qualcomm.com/
- https://lore.kernel.org/all/20260522-shikra-cpufreq-scaling-v4-0-f042a25896c5@oss.qualcomm.com/
- https://lore.kernel.org/all/20260530-shikra-dt-m1-v2-0-6bb581035d13@oss.qualcomm.com/

Monish Chunara (2):
  arm64: dts: qcom: Add SD Card support for Shikra SoC
  arm64: dts: qcom: Enable SD card for Shikra EVK

 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 18 ++++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 18 ++++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 18 ++++
 arch/arm64/boot/dts/qcom/shikra.dtsi        | 93 +++++++++++++++++++++
 4 files changed, 147 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
