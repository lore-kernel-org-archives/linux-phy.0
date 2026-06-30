Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 203BCC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 16:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dYegUKdHTqFC9BkdwBNOR3M61IU3cAjpl/7t9IwAwFo=; b=tD760nxTinN/In
	cITh8B4gJTp2hi2WN7QAS5+JACZc/dh2qTgpsQO0//7Z8aUkXOs8nBi39Hfpa3zeBdfjlKMt3cnjr
	UsDuahxmEphp8FbW8vHknj2DiE7B9r+ETMUetXDAUQJ5lWjalilqnTLzF2txr/YBLbEQ2B6Aqtd6t
	pm77JGFICSLxYBlYLcGXoDRQmk8+dIPrtjqTjK4DFjz6cb1vZk9/Uhf+g7641lO7k8gFX6narvnuM
	9MC+YnvgyTJZ7PafFTsqf2SYZMm+hO+pcnwWDdnr3YV15G+UDJ/LuHzMQEu7SYmWdvUmlZFKc308Q
	Pe6/WF8IqAO+bQff9fHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weblr-0000000HWvM-34e4;
	Tue, 30 Jun 2026 16:57:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weblp-0000000HWuu-3Mdn
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 16:57:15 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UEDG732216866
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 16:57:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=021fetJp+lEcp5FtkRBTh8oWI63wPki+tS4
	subRFo7Y=; b=kjCIgoiOWu6WVKH//7HmzRxG1mihS93SES6s0aGP9NrPJuQS1Hy
	/lKI5pN30EOvAzQNGC0HiATy8PxyXYqoZdnSjnPRgcHF2j0ZNgvelHKF3s/Bqbo2
	hjNQH86eaC+Vetd/5oeHgYhw0w3Tnq8uQTbXrGQy0f0LEsOwr/z+Oa/uMN5eTp26
	piilkGHcwsCabEhsWuximaga2i1UYSWuhsaTL2rYAcUqqRvfdoSvr8MAYNoeC2cO
	SX3S58uvY44Ss34HTf+vRL+Cfd7OVCpntDxyGrWnlExqF3s0S3awCsiupYSdHIp9
	0bbRBq98Sm2NhYbq4Rau8RW3WMKtzPxJJng==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f43vfku5x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 16:57:12 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-30ec59471a3so924502eec.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 09:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782838632; x=1783443432; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=021fetJp+lEcp5FtkRBTh8oWI63wPki+tS4subRFo7Y=;
        b=h8rwZASoUwgb5c2RSedf1VETWlzONBDs4Z9Y6m3BHtXfNURUAbX1x93peXNR20qxTT
         dY7e0c5g8RqupmTk8iEadzBIdClrID8456uTawBPWg9LhSL4VwHqkoNFyAVrV4jzVcZP
         x5I5xhd1A6GjypAuKirCdQbGpE/ZZBH/Eks6v2FSOHpuHB3+ty9zcUiAUPF1VgvbnWDy
         8d3u0yQTBEQRmXJOAiRGL/emAuG51z28CsuZKHffh2m3R7oV9uWZbZtxB4NhdIt7NpDD
         IzF+hVWhiezsKl3bnESbug3MfSdBzHsZ59od3zB04thFmeUVPXXkFJqPulFdrTyr/soG
         KDCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782838632; x=1783443432;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=021fetJp+lEcp5FtkRBTh8oWI63wPki+tS4subRFo7Y=;
        b=jm5aUrftyoTS95eseFogBLLVH0IaF3BsHf2FBJ7dUbyr246wE6uZGXSaiImBZgBIj4
         OcH6/dyNVlIMAMBQ4zwKnWXniL8rYJ0K5OA3BPGGirfJWdC50SmsTdIJsXHvH8QaHOQ6
         vZMgZdvXxKEJD2i9IwuDT855+uHrTnJ5SpA4MB8EZ54KL1nmpJVc8cH9useGLVpJWtWl
         mIf2xzXO2FcPOpXuVvVIadjZU7hxamo9Cp9CdAhZ+3iOqAi+XyRDQig68C3rqDJuO/G/
         mxdQ999el4D1oBuhkL4B7JviVkTOpE94qO8lZOakyPamafv0xR8LBRhJSbjmyePvKXDW
         WMEw==
X-Forwarded-Encrypted: i=1; AFNElJ94KF/G9JEjLI88oXWWUTDO6ng4BCpS5GyBnCVL5m4wki/DZaHGfbNp3cAPtpHUt5bkPmu8DzRoUtw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzELyF90e6CebO1uRHQqKVUbWQsQOFDKozHsbESIyi1n5EYyZKF
	u1DBJ1rGyb+tRNnt58C8CT7EOLAYnFo4Fu1K18ZtlU9PA1ayQxkJ8xwqCveYLanKwWzMhPsLyj3
	UY+HA6IgOY/XaPD3If9qb2hthqwMb7aX8soopQupUce2fPwyDJ/TLzzmblNIO4YS3YzZM
X-Gm-Gg: AfdE7cnaOqwiYTQwgSMLWYViwd4UEaw4mPeMgnVAKsOjZgzLCGHEd6lkQ24QzdZPhrS
	XVFUvJU1W44U41USXa/9CmCoty5RbaYj2fvl7V2BIxMd2UMeJTGjjqSQzC3dWHif4SgHInHSsWm
	k5lPLwvuGWTLwDoXJyNRH7zUJILfbTtXN4LGdJEHnzP3MpBir7/1wRoovmhL/UDmeuFbkgHCzFh
	Elo7NgrF4yZcH5n0E+tBRzhoU4FX4IhPyDGL0U49OlmTIqwPuBh3fZWOcBLEqmLfwurREqVlPf3
	YsPD1D7BArMKvygcPKxnNnuR1pSE8npPceXAJhiYHQLL6YPWexJTB/8HYHFp0uASAQwbry7hnpz
	/VCnmL96921EU1dXGiuT6sRaokSna6m9k/J/SY5/6M9Va2A==
X-Received: by 2002:a05:7022:6ba5:b0:139:ed5d:1b53 with SMTP id a92af1059eb24-13b2e32c0a9mr1683463c88.20.1782838631997;
        Tue, 30 Jun 2026 09:57:11 -0700 (PDT)
X-Received: by 2002:a05:7022:6ba5:b0:139:ed5d:1b53 with SMTP id a92af1059eb24-13b2e32c0a9mr1683429c88.20.1782838631472;
        Tue, 30 Jun 2026 09:57:11 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b2a9b425asm12690272c88.0.2026.06.30.09.57.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 09:57:10 -0700 (PDT)
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
Subject: [PATCH V2 0/2] arm64: dts: qcom: Shikra SD Card support
Date: Tue, 30 Jun 2026 22:26:58 +0530
Message-Id: <20260630165700.1886608-1-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: WlPdPoayZH_qnhLzYlWg3u6w6wdKu-3f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDE2MSBTYWx0ZWRfX3x0Msp07aRE8
 smzjsI1+x6u6jBMLGvFMJnuIqCaMynVsRntaG2LU46QlRYUztlm1KmaJYypv+yrLsXdWYeWeaML
 d655DB5y8Ved2JOzKCz4pxPCmCu90pE3PLwA1yF+zeNgXDYXHG0Sb3O27aagw/Ln962Zk3UiRi6
 b43FEGe0S3Nnd4BewKivlWOvEBFvYMXWQPMJjtQLqYZIqZ/kUQcWllTvI3zW7sZlh4CAG/l7Xzk
 4pYt3yAL7QOdrf07072ZSHHyZXwka2tUe/MYuc0mSde+mYlEruiowQydvlAE9MCspiohEDB6m3o
 wvHc3xgKtPvPJf50x4DjA1nmt0dPZ8WTwztt3/cLkQqf+Tri/ixdpz+GDeyfXoXPoU2gOMvYelq
 gBmWmlMnBs1Ng+LMaiW9FDHUnyz+aZXbSCwyk9mNPl3oDltDIOaPPCsRnvuuorufUz0liPB5x6P
 b2Hd+QtLEUmbtHajyxA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDE2MSBTYWx0ZWRfX5KRWCyMu4BkQ
 GQc1JSKLq8nW/PSHklwDDpUceCBn70Qeh1Q3JiVsQ3dSMV6EiW+W8kuPU6E+cKBeVPKaZrHCXBa
 zjXeKHOfXs+dv4daP31izq5GHrRnQ7s=
X-Proofpoint-GUID: WlPdPoayZH_qnhLzYlWg3u6w6wdKu-3f
X-Authority-Analysis: v=2.4 cv=PcXPQChd c=1 sm=1 tr=0 ts=6a43f568 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=1w3StAHzAm3vCDDRDnYA:9 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 clxscore=1015 impostorscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606300161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_095713_848922_B3B5C1A2 
X-CRM114-Status: GOOD (  11.93  )
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

This is v2 of the Shikra SD Card support series.

This series adds SD card support for the Shikra platform.

The first patch adds the SDHC2 controller node and the necessary pinctrl
configurations to the base Shikra SoC dtsi. The second patch enables 
this support on the Shikra EVK (CQS, CQM, and IQS variants) by defining
the regulator supplies and the card detection GPIO.

Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>

Changes in v2:
- Rectify the alignment for clocks and interconnect properties for SD
  card
- Link to v1: https://lore.kernel.org/all/20260604122045.494712-1-monish.chunara@oss.qualcomm.com

Testing:
- Validated on Shikra EVK variants.  

This series depends on:
- https://lore.kernel.org/all/20260612-shikra-dt-v6-2-6b6cb58db477@oss.qualcomm.com

Monish Chunara (2):
  arm64: dts: qcom: Add SD Card support for Shikra SoC
  arm64: dts: qcom: Enable SD card for Shikra EVK

 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 18 ++++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 18 ++++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 18 ++++
 arch/arm64/boot/dts/qcom/shikra.dtsi        | 97 +++++++++++++++++++++
 4 files changed, 151 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
